import 'package:dgecommerc/Global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextFormField extends StatefulWidget {
 // const SearchTextFormField({Key? key}) : super(key: key);
  SearchTextFormField(this.hint, this.h, this.w);
  String? hint;
  double? h,w;
  @override
  State<SearchTextFormField> createState() => _SearchTextFormFieldState();
}

class _SearchTextFormFieldState extends State<SearchTextFormField> {

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height:widget.h,
      width:widget.w,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search,color: Colors.grey.shade300),
          enabledBorder:  OutlineInputBorder(
            borderRadius:  BorderRadius.circular(10.0.sp),
            borderSide:   BorderSide(color: Colors.grey.shade300),

          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius:  BorderRadius.circular(10.0.sp),
            borderSide: const  BorderSide(color: Colors.pinkAccent ),

          ),
          //hintText:widget.hint??"null",
          label: Text(widget.hint??"null",style: TextStyle(color: Colors.grey.shade500),),
        ),
      ),
    );
  }
}
