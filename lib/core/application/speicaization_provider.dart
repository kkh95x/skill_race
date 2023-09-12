import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/core/data/firestor_specialization_repository.dart';
import 'package:skill_race/core/domain/specialization.dart';

final specializationProvider=FutureProvider<List<Specialization>>((ref) =>ref.read(specializationRepositoryProvider).get());
final sprcializationName=FutureProvider.family<List<Specialization>,String>((ref,pattren)async =>(await ref.read(specializationProvider.future)).toList().where((element) => element.name.startsWith(pattren)).toList());
final supSprcializationNameProvider=FutureProvider.family<List<String>,String>((ref,sprcializationName)async =>(await ref.read(specializationProvider.future)).singleWhere((element) => element.name==sprcializationName,orElse:() => const Specialization(name: "", subSpecialization: []),).subSpecialization);
