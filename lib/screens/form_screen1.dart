import 'package:flutter/material.dart';
import 'form_screen2.dart'; // Import second screen for navigation
import '../validation.dart'; // Import validation functions

class FormScreen1 extends StatefulWidget {
  @override
  _FormScreen1State createState() => _FormScreen1State();
}

class _FormScreen1State extends State<FormScreen1> {
  final _formKey = GlobalKey<FormState>();  // Key to track form state
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? selectedGender;
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Screen 1")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: "Name"),
                validator: validateName,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: "Email"),
                validator: validateEmail,
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                ),
                obscureText: !isPasswordVisible,
                validator: validatePassword,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: "Gender"),
                value: selectedGender,
                items: ["Male", "Female", "Other"]
                    .map((gender) => DropdownMenuItem(
                          child: Text(gender),
                          value: gender,
                        ))
                    .toList(),
                onChanged: (value) => setState(() => selectedGender = value),
                validator: (value) =>
                    value == null ? "Please select a gender" : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FormScreen2()),
                    );
                  }
                },
                child: Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
