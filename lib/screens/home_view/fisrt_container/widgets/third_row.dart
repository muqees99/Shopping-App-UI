import 'package:flutter/material.dart';
import 'package:ui_project/constants/colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class ThirdRow extends StatefulWidget {
  const ThirdRow({super.key});

  @override
  State<ThirdRow> createState() => _ThirdRowState();
}

class _ThirdRowState extends State<ThirdRow> {
  final List<String> cityNames = [
    'Karachi',
    'Lahore',
    'Islamabad',
  ];

  final List<String> deliveryTime = [
    '1 Hour',
    '2 Hours',
    '3 Hours',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "DELIVERY TO",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: UpdatedColors.black),
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                style: TextStyle(
                  color: TextColors.textColor1,
                ),
                isDense: false,
                hint: Text(
                  'Select Destination',
                  style: TextStyle(
                      fontSize: 14,
                      color: UpdatedColors.black,
                      fontWeight: FontWeight.w500),
                ),
                items: cityNames
                    .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: UpdatedColors.black),
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                buttonStyleData: const ButtonStyleData(
                  height: 38,
                  width: 140,
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                      color: TextColors.textColor1,
                      borderRadius: BorderRadius.circular(10)),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 38,
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "WITHIN",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: UpdatedColors.black),
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                style: TextStyle(
                  color: TextColors.textColor1,
                ),
                isDense: false,
                hint: Text(
                  'Time',
                  style: TextStyle(
                      fontSize: 14,
                      color: UpdatedColors.black,
                      fontWeight: FontWeight.w500),
                ),
                items: deliveryTime
                    .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: UpdatedColors.black,
                            ),
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                buttonStyleData: const ButtonStyleData(
                  height: 38,
                  width: 100,
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                      color: TextColors.textColor1,
                      borderRadius: BorderRadius.circular(10)),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 38,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
