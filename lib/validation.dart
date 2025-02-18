String? validateName(String? value) {
  if (value == null || value.isEmpty) {
    return "Name is required";
  }
  if (value.length < 3) {
    return "Name must be at least 3 characters long";
  }
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return "Email is required";
  }
  if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
    return "Enter a valid email";
  }
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return "Password is required";
  }
  if (value.length < 6) {
    return "Password must be at least 6 characters long";
  }
  return null;
}

String? validateAddress(String? value) {
  if (value == null || value.isEmpty) {
    return "Address is required";
  }
  return null;
}

String? validatePhoneNumber(String? value) {
  if (value == null || value.isEmpty) {
    return "Phone number is required";
  }
  if (!RegExp(r'^\d{10,15}$').hasMatch(value)) {
    return "Enter a valid phone number";
  }
  return null;
}
