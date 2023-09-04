

import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'filter_form.g.dart';
@riverpod
FormGroup  filterForm(FilterFormRef ref)=>FormGroup({
  FilterFormKeys.intersts:FormControl<String>(validators: [Validators.required,]),
    FilterFormKeys.subIntersts:FormControl<String>(validators: [Validators.required,]),

 FilterFormKeys.priceFrom:FormControl<double>(validators: [Validators.required],value: 10),
   FilterFormKeys.priceTo:FormControl<double>(validators: [Validators.required],value: 100),
    FilterFormKeys.durationFrom:FormControl<int>(validators: [Validators.required],value: 0),
  //  FilterFormKeys.durationTo:FormControl<int>(validators: [Validators.required],value: 60),

});
class FilterFormKeys{
  static const String intersts="intersts";
  static const String subIntersts="subIntersts";
    static const String priceFrom="priceFrom";

  static const String priceTo="priceTo";
   static const String durationFrom="durationFrom";
    // static const String durationTo="durationTo";

}