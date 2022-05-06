import 'package:flutter/material.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  var _keyForm = GlobalKey<FormState>();
  String name = '';
  String email = '';
  @override
  Widget build(BuildContext context) {
    String text = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Form(
          key: _keyForm,
          child: Column(
            children: [
              TextFormField(
                onSaved: (String? value) {
                  name = value!;
                },
                validator: validateString,
                decoration:
                    InputDecoration(hintText: 'Name', labelText: 'Name'),
              ),
              TextFormField(
                onSaved: (String? value) {
                  email = value!;
                },
                validator: validateString,
                decoration:
                    InputDecoration(hintText: 'Email', labelText: 'Email'),
              ),
              ElevatedButton(onPressed: submit, child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }

  submit() {
    if (_keyForm.currentState!.validate()) {
      _keyForm.currentState!.save();
      print('name: $name email: $email');
    }
  }

  String? validateString(String? value) {
    if (value!.isEmpty) {
      return 'Please fill data';
    }
    return null;
  }
}
