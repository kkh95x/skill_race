// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'messages_state.freezed.dart';

@freezed
abstract class MessagesState<T> with _$MessagesState<T> {
  const factory MessagesState.data(List<T> recipes) = _Data;
    const factory MessagesState.waitingSendNewMessage(List<T> recipes,T newMessage) = _WaitingSendNewMessage;
    const factory MessagesState.onSendError(List<T> recipes,T newMessage) = _OnSendError;

  const factory MessagesState.loading() = _Loading;
  const factory MessagesState.error(Object? e, [StackTrace? stk]) = _Error;
  const factory MessagesState.onGoingLoading(List<T> recipes) =
      _OnGoingLoading;
  const factory MessagesState.onGoingError(List<T> recipes, Object? e,
      [StackTrace? stk]) = _OngoingError;
}