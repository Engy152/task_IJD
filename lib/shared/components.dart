import 'dart:ffi';

import 'package:flutter/material.dart';
Widget defaultRaw ({required String text} ) => Row(
  children: [
    Padding(
      padding: const EdgeInsets.only(top: 14.0,left: 19,),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0,),
        child: Image(
          image: AssetImage(
            'images/Rectangle 4.png',

          ),
          width: 89.0,
          height: 76.0,

        ),
      ),
    ),
    SizedBox(width: 15.0,),
    Column(
      children: [
        Text('Model-B',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontFamily: 'Acme-Regular.ttf',
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 15.0,
            color: Color(0xFF5885BC),
            fontFamily: 'Acme-Regular.ttf',
          ),
        ),
      ],
    ),
    Spacer(),
    IconButton(
      onPressed: (){},
      icon: Icon(
        Icons.arrow_forward_ios,
        color: Color(0xFF5885BC),
      ),
    ),

  ],
);
Widget defaultDivider () => Divider(
  color: Color(0xFFB8C0CB),
  thickness: 1,
  indent: 55,
  endIndent: 55,
);
////////////////
Widget defaultContainer({
  required Color backgroundColor,
  required String text,
  required Color colorText1,
  required Color colorText2,
}) => Container(

width: 272,
height: 160,
decoration: BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: Colors.grey,
        blurRadius: 5,
    ),

  ],
borderRadius: BorderRadius.circular(20.0,),
color: backgroundColor,
),
child: Column(
children: [
Row(
children: [
Padding(
padding: const EdgeInsets.only(top: 14.0,left: 19,),
child: ClipRRect(
borderRadius: BorderRadius.circular(15.0,),
child: Image(
image: AssetImage(
'images/Rectangle 3.png',

),
width: 89.0,
height: 76.0,

),
),
),
Padding(
padding: const EdgeInsets.only(left: 20.0),
child: Text(
text,
style: TextStyle(
color: colorText1,
fontFamily: 'Acme-Regular.ttf',
fontSize: 30.0
),),
)
],

),
SizedBox(height: 20.0,),
Row(
children: [
Padding(
padding: const EdgeInsets.only(left: 25.0),
child: Text(
'Progress',
style: TextStyle(
color: colorText2,
fontFamily: 'Acme-Regular.ttf',
fontSize: 20.0
),),
),
SizedBox(
width: 100.0,
),
Text(
'50/100',
style: TextStyle(
fontSize: 15.0,
fontFamily: 'Acme-Regular.ttf',
color: Color(0xFFB8C0CB),
),

),
],
),
],),

);
Widget title() => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image(image: AssetImage('images/titleicon.png'),),
    SizedBox(width: 23.0,),
    Text(
      'sv-Test',
      style: TextStyle
        (
        color: Colors.black,
        fontSize: 50.0,
        fontFamily: 'Acme-Regular.ttf',
      ),
    ),
  ],);
Widget text({required String text, required double fontSize, required Color colorText}) => Text(
  text,
  style: TextStyle
    (
    color: colorText,
    fontSize: fontSize,
    fontFamily: 'Acme-Regular.ttf',
  ),
);

////////////////////////////

// Widget defaultFormField({
//   required TextEditingController emailAddress,
//   required String text,
//   required String returnSyntex,
//   required TextInputType keyboardtype,
//   Function onsubmitt(value)?,
//   Function onchange(value)?,
//   bool ispassword = false,
//   Icon? suffix,
//   Function? suffixPressed,
// }) =>
//     TextFormField(
//       validator: (value) {
//         if (value!.isEmpty) {
//           return returnSyntex;
//         } else if (value.length < 7) {
//           return 'password must be at least 8 characters';
//         }
//         return null;
//       },
//       controller: emailAddress,
//       decoration: InputDecoration(
//         labelText: text,
//
// //border: InputBorder.none,
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(17.0)),
//
//
//         suffixIcon: suffix != null
//             ? IconButton(
//           onPressed: () {
//             suffixPressed!();
//           },
//           icon: suffix,
//
//         )
//             : null,
//       ),
//       keyboardType: keyboardtype,
//       onFieldSubmitted: onsubmitt,
//       onChanged: onchange,
//       obscureText: ispassword,
//     );

// Widget textFormField({
//   TextEditingController? controller,
//   required TextInputType type,
//   required String? Function(String?)? validate,
//   required String hint,
//   bool isSecure = false,
//   Function(String?)? onSave,
//   Function(String?)? onChange,
//   Function()? onTap,
//   Widget? suffixIcon,
//   bool isExpanded = false,
//   bool fromLTR = false,
//   int maxLines = 1,
// }) {
//   return Padding(
//     padding: EdgeInsets.symmetric(vertical: 5, horizontal: isExpanded ? 0 : 20),
//     child: Directionality(
//       textDirection: fromLTR ? TextDirection.ltr : TextDirection.ltr,
//       child: TextFormField(
//         onTap: onTap,
//         keyboardType: type,
//         onChanged: onChange,
//         onSaved: onSave,
//         maxLines: maxLines,
//         controller: controller,
//         validator: validate,
//         obscureText: isSecure,
//         autocorrect: false,
//         enableSuggestions: false,
//         textCapitalization: TextCapitalization.none,
//         textAlignVertical: TextAlignVertical.center,
//         //cursorColor: petroleum,
//         decoration: InputDecoration(
//           suffixIcon: suffixIcon,
//           hintText: hint,
//           hintStyle: TextStyle(
//             fontWeight: FontWeight.w500,
//            // color: petroleum,
//           ),
//           filled: true,
//           //fillColor: white,
//           focusedBorder: OutlineInputBorder(
//            // borderSide: BorderSide(color: black),
//             borderRadius: BorderRadius.circular(30),
//           ),
//           enabledBorder: OutlineInputBorder(
//            // borderSide: BorderSide(color: orange),
//             borderRadius: BorderRadius.circular(30),
//           ),
//         ),
//       ),
//     ),
//   );
// }