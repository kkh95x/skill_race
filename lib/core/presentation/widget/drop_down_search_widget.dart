import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_dropdown_search/reactive_dropdown_search.dart';
import 'package:reactive_forms/reactive_forms.dart';

class DropdownSearchWidget extends ConsumerWidget {
  const DropdownSearchWidget(
      {Key? key,
      required this.formControlName,
      this.placeholderIcon,
      this.radius = 20,
      required this.placeholder,
      // this.width = 325,
      this.height = 61,
      this.maxheight = 350,
      required this.item,
      this.search = true,
      this.validationMessages,
      this.title,
      this.readOnly = false})
      : super(key: key);
  final String formControlName;
  final Widget? placeholderIcon;
  final Map<String, String Function(Object)>? validationMessages;
  final double radius;
  final String placeholder;
  final List<String> item;
  final double? maxheight;
  final bool? search;
  final String? title;
  // final double width;
  final double height;
  final bool readOnly;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Row(
                children: [
                  Text(
                    title ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Colors.black),
                  ),
                ],
              )),
        SizedBox(
          height: 50.h,
          // width: width,
          child: ReactiveDropdownSearch<String, String>(
            onBeforeChange: (prevItem, nextItem) {
              // ref.read(checkBoxesProvider.notifier).state = nextItem;
              return Future.value(true);
            },
            formControlName: formControlName,
            validationMessages: validationMessages ??
                {
                  ValidationMessage.required: (error) => 'هذا الحقل مطلوب',
                },
            dropdownDecoratorProps: DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                // suffixIconColor: colorProvider.natural.shade400,
                hintText: placeholder,
                hintStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400
                    ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 16.w),
                floatingLabelBehavior: FloatingLabelBehavior.never,

                suffixIcon: placeholderIcon,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(radius.r))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(
                      radius,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(
                      radius,
                    )),
                // fillColor: colorProvider.primaryLight,
                filled: true,
              ),
            ),
            popupProps: PopupPropsMultiSelection.menu(
              
                showSelectedItems: true,
                showSearchBox: search!,
                
                searchFieldProps: TextFieldProps(
                  autofocus: true,
                  decoration: InputDecoration(
                    suffixIcon: placeholderIcon,
                    // suffixStyle: Theme.of(context)
                    //     .textTheme
                    //     .labelLarge!
                    //     .copyWith(color: colorProvider.natural.shade400),
                    errorMaxLines: 1,
                    // fillColor: colorProvider.onPrimary,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(
                          radius.r,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(
                          radius.r,
                        )),
                    filled: true,
                      hintText: placeholder,
                hintStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                menuProps: const MenuProps(),
                fit: FlexFit.loose,
                constraints: BoxConstraints(maxHeight: maxheight!),
                listViewProps: const ListViewProps()),
            items: item,
            filterFn: (item, filter) {
              return item.toLowerCase().contains(filter.toLowerCase());
              
            },
            focusNode: FocusNode(),
            showClearButton: true,
            // dropdownSearchTextStyle:
            //     Theme.of(context).textTheme.labelLarge!.copyWith(color: colorProvider.onPrimary),
          ),
        ),
      ],
    );
  }
}
