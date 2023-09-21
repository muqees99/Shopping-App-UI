import 'package:flutter/material.dart';
import 'package:ui_project/constants/colors.dart';

class SecondRow extends StatefulWidget {
  const SecondRow({super.key});

  @override
  State<SecondRow> createState() => _SecondRowState();
}

class _SecondRowState extends State<SecondRow> {
  TextEditingController searchController = TextEditingController();
  late String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: TextStyle(color: UpdatedColors.black),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          filled: true,
          fillColor: TextColors.textColor1,
          hintText: "Search Product",
          hintStyle: TextStyle(
              color: UpdatedColors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(Icons.search),
          ),
          prefixIconColor: UpdatedColors.blue,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: UpdatedColors.black, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: UpdatedColors.black, width: 1),
          ),
        ),
        controller: searchController,
        onSubmitted: (String value) {
          setState(() {
            text = searchController.text;
            searchController.clear();
          });
        },
      ),
    );
  }
}
