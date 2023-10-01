

import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'messages_state.dart';

class MessagesNotifier<T> extends StateNotifier<MessagesState<T>> {
  MessagesNotifier({
    required this.getSnapshoots,
    required this.recordPerBatch,
    required this.sendNewMessage,
  }) : super(const MessagesState.loading());

  final int recordPerBatch;
  final Stream<List<T>> Function(int limit) getSnapshoots;
  final Future<void> Function(T newMessage) sendNewMessage;
bool get isSending=>_isSending;

  final List<T> _list = [];
 bool _isSending=false;


  int currentIteration = 0;
  StreamSubscription<List<T>>? _subscription;
  
  Timer _timer = Timer(const Duration(seconds: 0), () {});

  void init() {
    if (_list.isEmpty) {
      currentIteration = 1;
      fetchFirstBatch();
    }
  }




  Future<void> sendMessage(T newMessage) async{
    if(!_isSending){
    _isSending=true;
    _subscription?.cancel();
    state= MessagesState.waitingSendNewMessage(_list, newMessage);
    await sendNewMessage(newMessage);
    _isSending=false;
    // if(isSend){
        _subscription =
          getSnapshoots(currentIteration * recordPerBatch).listen((event) {

        updateData(event);
      });
      

    // }else{

    // state= MessagesState.onSendError(_list, newMessage);

    //   // _subscription =
    //   //     getSnapshoots(currentIteration * recordPerBatch).listen((event) {
    //   //   updateData(event);
    //   // });
    //   state=MessagesState.onSendError(_list, newMessage);
    // }
    }
  }


  bool noMoreRecord = false;
  void  updateData(List<T> result) {
    noMoreRecord = result.length < recordPerBatch * currentIteration;
    _list.clear();
    _list.addAll(result);

    state = MessagesState.data(_list);
  }
  
  
  Future<void> sartAgain() async {
    try {
      state = const MessagesState.loading();
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
      state = MessagesState.error(e, stk);
    }
  }

  Future<void> getSameRecords() async {
    try {
      state = const MessagesState.loading();
      _subscription?.cancel();
      _subscription =
          getSnapshoots(currentIteration * recordPerBatch).listen((event) {
        updateData(event);
      });
    } catch (e, stk) {
      state = MessagesState.error(e, stk);
    }
  }

  Future<void> fetchFirstBatch() async {
    try {
      state = const MessagesState.loading();

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
      state = MessagesState.error(e, stk);
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

    if (state == MessagesState<T>.onGoingLoading(_list)) {
      return;
    }
    state = MessagesState.onGoingLoading(_list);
    try {
      await Future.delayed(const Duration(seconds: 1));
      currentIteration++;
      _subscription?.cancel();
      _subscription =
          getSnapshoots(currentIteration * recordPerBatch).listen((event) {
        updateData(event);
      });
    } catch (e, stk) {
      state = MessagesState.onGoingError(_list, e, stk);
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
