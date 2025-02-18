import 'package:flutter/material.dart';
import '../validation.dart';

class FormScreen2 extends StatefulWidget {
  @override
  _FormScreen2State createState() => _FormScreen2State();
}

class _FormScreen2State extends State<FormScreen2> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  DateTime? selectedDate;
  String? maritalStatus;
  bool agreeToTerms = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Screen 2")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(labelText: "Address"),
                validator: validateAddress,
              ),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(labelText: "Phone Number"),
                keyboardType: TextInputType.phone,
                validator: validatePhoneNumber,
              ),
              Row(
                children: [
                  Text("Date of Birth: "),
                  TextButton(
                    onPressed: () => _selectDate(context),
                    child: Text(selectedDate == null
                        ? "Select Date"
                        : "${selectedDate!.toLocal()}".split(' ')[0]),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("Marital Status:"),
                  RadioListTile(
                    title: Text("Single"),
                    value: "Single",
                    groupValue: maritalStatus,
                    onChanged: (value) => setState(() => maritalStatus = value),
                  ),
                  RadioListTile(
                    title: Text("Married"),
                    value: "Married",
                    groupValue: maritalStatus,
                    onChanged: (value) => setState(() => maritalStatus = value),
                  ),
                ],
              ),
              CheckboxListTile(
                title: Text("I agree to the terms and conditions"),
                value: agreeToTerms,
                onChanged: (value) => setState(() => agreeToTerms = value!),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() && agreeToTerms) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Form Submitted Successfully!")),
                    );
                  } else if (!agreeToTerms) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text("You must accept the terms to proceed")),
                    );
                  }
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
