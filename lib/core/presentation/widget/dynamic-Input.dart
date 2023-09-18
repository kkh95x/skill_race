// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart' as intl;
import 'package:flutter/material.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';

import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';


class ToggleState extends StateNotifier<bool> {
  ToggleState() : super(true);

  void toggle() {
    state = !state;
  }
}

enum IconPosition {
  end,
  start,
}

final toggleProvider = StateNotifierProvider<ToggleState, bool>((ref) => ToggleState());

enum Type {
  text,
  number,
  double,
  phoneNumber,
  date,
}

class DynamicInput extends ConsumerWidget {
  DynamicInput({
    super.key,
    this.title,
    this.placeholderIcon,
    this.placeholderIconPosition = IconPosition.start,
    this.iconPosition = IconPosition.end,
    this.radius = 20,
    this.width = 300,
    this.height = 40,
    this.titleIcon,
    this.titleIconPosition = IconPosition.start,
    required this.placeholder,
    this.description,
    this.control,
    this.numreicFormat,
    this.dateFormat,
    this.multiLine = false,
    this.type = Type.text,
    this.obscure = false,
    this.textInputAction = TextInputAction.next,
    this.crossAxisAlignment,
    this.autoFoucs = false,
    this.onchange,
    this.validationMessages,
    this.fieldType = "تكون كلمة المرور",
    this.fillColor
  });
  final String fieldType;
  final String? control;
  final String? title;
  final Widget? titleIcon;
  final Widget? placeholderIcon;
  final Map<String, String Function(Object)>? validationMessages;
  final double radius;
  final double width;
  final double height;
  final IconPosition titleIconPosition;
  final IconPosition placeholderIconPosition;

  final String placeholder;
  final String? description;
  final intl.NumberFormat? numreicFormat;
  final intl.DateFormat? dateFormat;
  final bool? multiLine;
  final Type type;
  final IconPosition iconPosition;
  final bool obscure;
  final TextInputAction? textInputAction;
  final CrossAxisAlignment? crossAxisAlignment;
  final void Function(FormControl<Object?>)? onchange;
  final bool autoFoucs;
  final Color? fillColor;
  PhoneNumberInputValidator? _getValidator() {
    List<PhoneNumberInputValidator> validators = [];
    validators.add(PhoneValidator.validMobile());
    validators.add(PhoneValidator.valid());
    return validators.isNotEmpty ? PhoneValidator.compose(validators) : null;
  }

  final phoneKey = GlobalKey<FormFieldState<PhoneNumber>>();

  @override
  Widget build(BuildContext context, ref) {
    return ReactiveFormConsumer(
      builder: (BuildContext context, FormGroup formGroup, Widget? child) {
        bool enable = ref.watch(toggleProvider);

        return Column(
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: Row(
                  children: [
                    if (titleIconPosition == IconPosition.start && titleIcon != null) titleIcon!,
                    Text(
                      title ?? '',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black),
                    ),
                    if (titleIconPosition == IconPosition.end && titleIcon != null) titleIcon!,
                  ],
                )),
            type == Type.phoneNumber
                ? ReactivePhoneFormField<PhoneNumber>(
                  smartDashesType: SmartDashesType.enabled,
                
                  // strutStyle: StrutStyle(),
                     countrySelectorNavigator: const CountrySelectorNavigator.draggableBottomSheet(searchBoxTextStyle: TextStyle(color: Colors.black)),
                  defaultCountry: IsoCode.TR,
                  formControlName: control,
                  
                  // focusNode: FocusNode(),
                 style: Theme.of(context).textTheme.labelSmall?.copyWith(color:Colors.black),
                 countryCodeStyle: const TextStyle(color: Colors.black),
                
                 
                  decoration:InputDecoration(
                
                        
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
                        // fillColor: Theme.of(context).colorScheme.tertiaryContainer,
                            
                        labelStyle: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.onPrimary, ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(radius))),
                        filled: true,
                      ))
                
                : type == Type.date
                    ? ReactiveDateTimePicker(
                      
                      dateFormat: dateFormat,
                  
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer),

                      formControlName: control,
                    
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        suffixIcon: placeholderIconPosition == IconPosition.end
                            ? placeholderIcon
                            : null,
                        prefixIcon: placeholderIconPosition == IconPosition.start
                            ? placeholderIcon
                            : null,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
                        // fillColor: Theme.of(context).colorScheme.tertiaryContainer,
                        //  hintStyle: Theme.of(context).textTheme.bodyLarge.copyWith(color: Colors.b),

                        labelText:
                            '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                         labelStyle: Theme.of(context).textTheme.labelSmall?.copyWith(color:Colors.black, ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(radius))),
                        filled: true,
                      ),
                    )
                    : ReactiveTextField(
                        onChanged: onchange,
                        autofocus: autoFoucs,
                        maxLines: multiLine == true ? 5 : 1,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer),
                        formControlName: control,
                        keyboardType:
                            type == Type.text ? TextInputType.text : TextInputType.number,
                        obscureText: obscure ? enable : false,
                        
                        decoration: InputDecoration(
                          fillColor:fillColor,
                          
                          hintText: placeholder,
                          hintStyle: Theme.of(context).textTheme.bodyLarge,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          suffixIcon: placeholderIconPosition == IconPosition.start
                              ? placeholderIcon
                              : null,
                          prefixIcon: placeholderIconPosition == IconPosition.end
                              ? obscure
                                  ? GestureDetector(
                                      onTap: () {
                                        ref.read(toggleProvider.notifier).state =
                                            !ref.read(toggleProvider.notifier).state;
                                      },
                                      child: enable
                                          ? const Icon(Icons.visibility)
                                          : const Icon(Icons.visibility_off))
                                  : placeholderIcon
                              : null,
                         labelStyle: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.onPrimary, ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(radius))),
                        filled: true,
                        ),
                        validationMessages: validationMessages ??
                            {
                              ValidationMessage.required: (error) => 'يرجى إدخال هذا الحقل',
                              ValidationMessage.mustMatch: (error) =>
                                  'يجب أن تتطابق كلمة المرور مع التأكيد',
                              ValidationMessage.minLength: (error) =>
                                  'يجب أن  $fieldType أكثر من 7 حروف',
                              ValidationMessage.email: (error) =>
                                  'يرجى ادخال عنوان بريد إلكتروني صالح',
                            },
                        textInputAction: textInputAction,
                        textAlign: TextAlign.start,
                       ),
            description != null
                ? Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: Text(
                      description ?? '',
                      style: Theme.of(context).textTheme.labelSmall,
                    
                    ),
                  )
                : const SizedBox()
          ],
        );
      },
    );
  }
}
