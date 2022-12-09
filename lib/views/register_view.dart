import 'package:flutter/material.dart';
import 'package:learningdart/constants/routes.dart';
import 'package:learningdart/services/auth/auth_exceptions.dart';
import 'package:learningdart/services/auth/auth_service.dart';
import 'package:learningdart/utilities/show_error_dialog.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();

  class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;
}

  @override
  void initState() {
  _email = TextEditingController();
  _password = TextEditingController();
  super.initState();
  }
  @override
  void dispose() {
  _email.dispose();
  _password.dispose();
  super.dispose();
  }
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: const Text('Register'),
  ),
  body: Column(
  children: [
  TextField(
  controller: _email,
  enableSuggestions: false,
  autocorrect: false,
  keyboardType: TextInputType.emailAddress,
  decoration: const InputDecoration(
  hintText: 'Enter your email here',
  ),
  ),
  TextField(
  controller: _password,
  obscureText: true,
  enableSuggestions: false,
  autocorrect: false,
  decoration: const InputDecoration(
  hintText: 'Enter your password here',
  ),
  ),
