import 'package:skill_race/src/hiring/domain/need_employe_request.dart';

abstract class NeedEmployeedRequestRepository{
  Future<void> create(NeedEmployeeRequest needEmployeeRequest);
}