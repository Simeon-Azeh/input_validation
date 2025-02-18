# Flutter Multi-Form App

## 📌 Overview
This is a **multi-form Flutter application** that allows users to fill in various types of input fields, including:
- **Text fields** (Name, Email, Address, Phone)
- **Multiline text area** (Comments)
- **Date Picker** (Selecting Birthdate)
- **Checkbox** (Terms & Conditions)

The application follows **best practices**, including:
- **Form validation** for each input field
- **Navigation between multiple screens**
- **Error handling and user feedback**

## 🚀 Features
✅ Multi-step form with navigation between screens  
✅ Validation for each input field  
✅ Date picker for selecting a birthdate  
✅ Checkbox to confirm terms & conditions  
✅ Proper error handling and feedback messages  

## 📂 Folder Structure
```
/flutter_form_app
│── /lib
│   │── main.dart          # Entry point of the app
│   │── /screens
│   │   │── form_screen1.dart  # First form screen
│   │   │── form_screen2.dart  # Second form screen
│   │── /utils
│   │   │── validation.dart   # Input validation functions
│── pubspec.yaml
```

## 🛠 Installation
1. **Clone the repository**
```sh
 git clone https://github.com/Simeon-Azeh/input_validation.git
 cd flutter_form_app
```
2. **Install dependencies**
```sh
 flutter pub get
```
3. **Run the app**
```sh
 flutter run
```

## 📖 Usage
1. **Launch the app**
2. **Fill out the first form** (Name & Email)
3. **Click "Next" to proceed to the second form**
4. **Fill out the second form** (Address, Phone, Comments, Date of Birth, Accept Terms)
5. **Click "Submit"** (Successful form submission message will appear)

## 🛡 Validation Rules
- Name: Cannot be empty
- Email: Must be a valid email format
- Address: Cannot be empty
- Phone: Must be at least 10 characters long
- Comments: Cannot be empty
- Date of Birth: Must be selected
- Terms & Conditions: Must be accepted

## 📜 License
This project is open-source and available under the **MIT License**.

## 🤝 Contributing
1. Fork the repository
2. Create a new branch (`feature-new`)
3. Commit your changes
4. Push to the branch and create a pull request

## 💬 Contact
For questions or feedback, reach out at [s.kongnyuy@alustudent.com](mailto:s.kongnyuy@alustudent.com)