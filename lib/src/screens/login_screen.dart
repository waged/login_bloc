import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
            ),
            submitButton()
          ],
        ));
  }

  Widget emailField() {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
//         onChanged: (newValue){
//           bloc.changeEmail(newValue);
//         },
            decoration: InputDecoration(
              hintText: 'you@example.com',
              labelText: 'E-mail Address',
              errorText: snapshot.error,
            ),
          );
        });
  }

  Widget passwordField() {
   return StreamBuilder(
     stream: bloc.password,
     builder: (context, snapshot){
       return TextField(
         onChanged: bloc.changePassword,
         obscureText: true,
         decoration: InputDecoration(
           hintText: '*********',
           labelText: 'Password',
           errorText: snapshot.error
         ),
       );
     },
   );



  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('Login'),
      color: Colors.blue,
      onPressed: () {},
    );
  }
}