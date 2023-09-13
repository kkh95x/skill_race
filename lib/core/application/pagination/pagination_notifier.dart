import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pagination_state.dart';

class PaginationNotifier<T> extends StateNotifier<PaginationState<T>> {
  PaginationNotifier({
    required this.getSnapshoots,
    required this.recordPerBatch,
  }) : super(const PaginationState.loading());

  final int recordPerBatch;
  final Stream<List<T>> Function(int limit) getSnapshoots;

  final List<T> _list = [];
  int currentIteration = 0;
  StreamSubscription<List<T>>? _subscription;
  Timer _timer = Timer(const Duration(seconds: 0), () {});

  void init() {
    if (_list.isEmpty) {
      currentIteration = 1;
      fetchFirstBatch();
    }
  }

  bool noMoreRecord = false;
  void updateData(List<T> result) {
    noMoreRecord = result.length < recordPerBatch * currentIteration;
    _list.clear();
    _list.addAll(result);

    state = PaginationState.data(_list);
  }

  Future<void> sartAgain() async {
    try {
      state = const PaginationState.loading();
      _list.clear();
      await Future.delayed(const Duration(seconds: 1));
      noMoreRecord = false;
      currentIteration = 1;
      _subscription?.cancel();
      _subscription =
          getSnapshoots(currentIteration * recordPerBatch).listen((event) {
        updateData(event);
      });
    } catch (e, stk) {
      state = PaginationState.error(e, stk);
    }
  }

  Future<void> getSameRecords() async {
    try {
      state = const PaginationState.loading();
      _subscription?.cancel();
      _subscription =
          getSnapshoots(currentIteration * recordPerBatch).listen((event) {
        updateData(event);
      });
    } catch (e, stk) {
      state = PaginationState.error(e, stk);
    }
  }

  Future<void> fetchFirstBatch() async {
    try {
      state = const PaginationState.loading();

      if (_list.isEmpty) {
        _subscription?.cancel();
        _subscription =
            getSnapshoots(currentIteration * recordPerBatch).listen((event) {
          updateData(event);
        });
      } else {
        currentIteration++;
        _subscription?.cancel();
        _subscription =
            getSnapshoots(currentIteration * recordPerBatch).listen((event) {
          updateData(event);
        });
      }
    } catch (e, stk) {
      state = PaginationState.error(e, stk);
    }
  }

  Future<void> fetchNextBatch() async {
    if (_timer.isActive && _list.isNotEmpty) {
      return;
    }
    _timer = Timer(const Duration(milliseconds: 1000), () {});

    if (noMoreRecord) {
      return;
    }

    if (state == PaginationState<T>.onGoingLoading(_list)) {
      return;
    }
    state = PaginationState.onGoingLoading(_list);
    try {
      await Future.delayed(const Duration(seconds: 1));
      currentIteration++;
      _subscription?.cancel();
      _subscription =
          getSnapshoots(currentIteration * recordPerBatch).listen((event) {
        updateData(event);
      });
    } catch (e, stk) {
      state = PaginationState.onGoingError(_list, e, stk);
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
