import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();

  var firstName = '';
  var lastName = '';
  var email = '';
  var pw = '';

  trySubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      submitForm();
    } else {
      debugPrint('error');
    }
  }

  submitForm() {
    debugPrint('$firstName - $lastName - $email');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form widgets'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  key: const ValueKey('firstName'),
                  validator: (val) {
                    if (val.toString().isEmpty) {
                      return 'name should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (val) {
                    firstName = val.toString();
                  },
                  decoration: const InputDecoration(
                    hintText: 'enter ur first name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  key: const ValueKey('lastName'),
                  validator: (val) {
                    if (val.toString().isEmpty) {
                      return 'name should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (val) {
                    lastName = val.toString();
                  },
                  decoration: const InputDecoration(
                    hintText: 'enter ur last name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  key: const ValueKey('email'),
                  validator: (val) {
                    if (!val.toString().contains('@')) {
                      return 'invalid email ';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (val) {
                    email = val.toString();
                  },
                  decoration: const InputDecoration(
                    hintText: 'enter ur email  id',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  key: const ValueKey('pw'),
                  obscureText: true,
                  validator: (val) {
                    if (val.toString().length < 6) {
                      return 'password should be more than 6 chars';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (val) {
                    setState(() {
                      pw = val.toString();
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'enter ur password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    trySubmit();
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
