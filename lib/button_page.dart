import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  String? chosenValue = null;
  List<String> languages = ['English', 'Indonesian', 'Mandarin'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
              TextButton(onPressed: () {}, child: Text('TextButton')),
              OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
              DropdownButton(
                  hint: Text('Choose the language'),
                  icon: Icon(Icons.arrow_drop_down_circle),
                  items: languages
                      .map(
                        (String currentLanguage) => DropdownMenuItem(
                          child: Text(currentLanguage),
                          value: currentLanguage,
                        ),
                      )
                      .toList(),
                  value: chosenValue,
                  onChanged: (String? newValue) {
                    print(newValue);
                    setState(() {
                      chosenValue = newValue!;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
