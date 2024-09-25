//
//
// import 'package:flutter/material.dart';
//
// class LoginForm extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _LoginFormState();
//   }
// }
//
// class _LoginFormState extends State<LoginForm>{
//   // create global key that unique identitfy form
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return
//         Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 TextFormField(
//                   validator: (value){
//                     if(value == null  || value.isEmpty){
//                       return  'Please enter some text';
//                     }
//                     return null;
//                   }, // todo  : recheck
//                 ),
//                 Padding(
//                     padding:
//                   EdgeInsets.symmetric(vertical: 16.0),
//                   child: ElevatedButton(
//                       onPressed: (){
//                         if(_formKey.currentState!.validate()){
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             const SnackBar(content: Text('process data'))
//                           );
//                         }
//                       },
//                       child: Text('submit')
//                   )
//                 )
//               ],
//             )
//         );
//   }
// }