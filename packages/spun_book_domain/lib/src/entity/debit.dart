import 'package:core_domain/core_domain.dart';
import 'person.dart';

class Debit extends Entity {
  Person debtor;
  Person receiver;
  Money value;
  String? observation;

  Debit(
      {required this.debtor,
      required this.receiver,
      required this.value,
      this.observation = null});
}
