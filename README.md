**Temperature Converter App**

Project Overview: The Temperature Converter App is a simple Flutter application that allows users to convert temperatures between Fahrenheit and Celsius. It provides a user-friendly interface for inputting a temperature value, selecting the desired conversion type, and displaying the converted temperature. Additionally, the app keeps a history of all conversion operations performed during the session.


Table of Contents
Purpose
Architecture
Features
Installation
Usage
Codebase Overview
Critical Components
Contributing


The primary purpose of this application is to:
Provide a basic, easy-to-use interface for temperature conversion between Fahrenheit and Celsius.
Demonstrate fundamental Flutter concepts, such as state management, layout structure, widgets, and user input handling.

Architecture
The app follows a single-page architecture and is built using Flutter’s StatelessWidget and StatefulWidget components for structuring UI and managing state.

StatelessWidget: Used for the app’s root, i.e., TemperatureConverterApp, which provides the material design structure and theme to the app.
StatefulWidget: Used in the TemperatureConverterScreen class to manage the state of user input, the conversion process, and the history of conversions.
The architecture leverages Flutter's widget tree and state management for rendering dynamic content based on user interaction. The UI components are arranged using Material Design principles, ensuring consistent layout and appearance across different screen sizes.


Features
Temperature Conversion: Convert between Fahrenheit and Celsius using the following formulas:

Celsius to Fahrenheit: °F = (°C × 9/5) + 32
Fahrenheit to Celsius: °C = (°F - 32) × 5/9
User Input:

Input temperature via a text field.
Select conversion type via a dropdown menu (Fahrenheit to Celsius or Celsius to Fahrenheit).
Conversion History:

Every conversion is recorded in a scrollable history list displayed below the result.
Responsive UI:

The app adapts well to both portrait and landscape modes.
Simple & Intuitive Design:

Clean and easy-to-navigate interface with Material Design styling.
Installation
Prerequisites
Flutter SDK: Make sure you have Flutter installed. You can download it from the official site.
Dart SDK: Installed as part of Flutter SDK.
An emulator or a physical device for testing.
Steps to Install:
1. Clone the Repository: git clone https://github.com/FavourAkinwande/Flutter_Temp_App.git
2.Navigate to the Project Directory:cd temperature-converter-app
Install Dependencies: Run the following command to install the necessary packages:
3.Run the App: Launch the app on an emulator or physical device using: flutter run

Usage
1.Open the app, and you will see a text field to enter the temperature.
2.Select the conversion type from the dropdown (F to C or C to F).
3.Press the Convert button to see the result of the conversion.
The converted temperature will be displayed below the button.
Every conversion will be saved in the history list, displayed at the bottom.

Codebase Overview
1. main.dart
The entire app's functionality is contained within the main.dart file. Below is an overview of the structure:
TemperatureConverterApp: This is the root widget (MaterialApp), providing the app's theme and home screen.
TemperatureConverterScreen: The main screen where the user interacts with the app. It is a StatefulWidget that contains:
AppBar: A header bar that displays the app's title.
TextField: Allows the user to input the temperature to be converted.
DropdownButton: Enables the user to select the conversion type (F to C or C to F).
ElevatedButton: Triggers the conversion process when pressed.
Text: Displays the result of the conversion.
ListView.builder: Displays the conversion history in a scrollable list.
2. Widgets Used
MaterialApp: For setting up the app's structure.
Scaffold: Provides the basic layout, including the app bar and body.
AppBar: Displays the title of the app.
Padding: Adds spacing around the UI elements.
Column: Arranges UI elements vertically.
TextField: Allows the user to input temperature.
Row: Places the dropdown menu next to the label horizontally.
DropdownButton: Allows selection of conversion type.
ElevatedButton: Triggers the conversion.
Text: Displays the result.
ListView.builder: Displays the conversion history.

Critical Components
1. State Management (setState)
The app uses setState to manage the input, conversion results, and history dynamically. When the user inputs a temperature and presses convert, setState is called to update the UI with the converted result.

2. Conversion Logic
The app calculates the converted temperature based on the selected conversion type using the standard Fahrenheit-to-Celsius and Celsius-to-Fahrenheit formulas:

Celsius to Fahrenheit: (°C × 9/5) + 32
Fahrenheit to Celsius: (°F - 32) × 5/9
3. History List
The app uses a ListView.builder widget to display each conversion as a new list item in the history section, ensuring a scrollable display when many conversions have been performed.

Contributing
Contributions to improve the app are welcome! Here's how you can contribute:
Fork the repository.
Create a feature branch (git checkout -b feature-branch-name).
Commit your changes (git commit -m "Add some feature").
Push the branch (git push origin feature-branch-name).
Create a Pull Request, describing the changes you've made.
