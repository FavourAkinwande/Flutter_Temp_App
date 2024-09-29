import 'package:flutter/material.dart';

void main() {
  runApp(TemperatureConverterApp());
}

class TemperatureConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temperature Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TemperatureConverterScreen(),
    );
  }
}

class TemperatureConverterScreen extends StatefulWidget {
  @override
  _TemperatureConverterScreenState createState() =>
      _TemperatureConverterScreenState();
}

class _TemperatureConverterScreenState
    extends State<TemperatureConverterScreen> {
  String _selectedConversion = 'F to C'; // Default conversion type
  TextEditingController _temperatureController = TextEditingController();
  String _result = '';
  List<String> _conversionHistory = [];

  void _convertTemperature() {
    double inputTemp = double.tryParse(_temperatureController.text) ?? 0;
    double convertedTemp;

    if (_selectedConversion == 'F to C') {
      convertedTemp = (inputTemp - 32) * 5 / 9;
    } else {
      convertedTemp = inputTemp * 9 / 5 + 32;
    }

    setState(() {
      _result = convertedTemp.toStringAsFixed(2);
      _conversionHistory.add(
          '$_selectedConversion: $inputTemp => $_result'); // Add to history
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Temperature Converter',
          style: TextStyle(color: Colors.white), // Set the text color to white
        ),
        backgroundColor:
            const Color.fromARGB(255, 145, 74, 158), // Change the AppBar color here,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Temperature input
            TextField(
              controller: _temperatureController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter temperature',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            // Conversion type selection
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Conversion Type: '),
                DropdownButton<String>(
                  value: _selectedConversion,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedConversion = newValue!;
                    });
                  },
                  items: <String>['F to C', 'C to F']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 12.0),
            // Convert button
            ElevatedButton(
              onPressed: _convertTemperature,
              child: Text('Convert'),
            ),
            SizedBox(height: 12.0),
            // Result display: show "Converted Temperature" with or without result
            Text(
              'Converted Temperature: ${_result.isNotEmpty ? _result : ''}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 12.0),
            // History display in Expanded ListView to ensure scrolling in landscape
            Expanded(
              child: ListView.builder(
                itemCount: _conversionHistory.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_conversionHistory[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
