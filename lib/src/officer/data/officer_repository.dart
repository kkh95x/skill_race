

import 'package:skill_race/src/officer/domain/officer.dart';
import 'package:skill_race/src/officer/domain/officer_state.dart';

abstract class OfficerRepository{
  Stream<Officer?> getOfficerStreamById(String id);
  Stream<List<Officer>>getMyOfficers(String userId,int limit,bool isEmp,OfficerState state,String text);
  Future<void> update(Officer officer);
  Future<void> create(Officer officer);
  Future<void> delete(String officerId);
}