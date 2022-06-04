import 'package:equatable/equatable.dart';

class CounterModal extends Equatable {
  int? count;
  CounterModal({this.count});

  @override
  // TODO: implement props
  List<Object?> get props => [count];

  List<CounterModal> counterModal = [CounterModal(count: 0)];
}
