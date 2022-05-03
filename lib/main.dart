import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'enums.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Her Güne Örnek',
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber,
        ),
        iconTheme: new IconThemeData(
          color: Colors.blue,
          size: 30,
        ),
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(244, 255, 255, 255),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(250),
            child: Stack(
              children: [
                AppBar(
                  systemOverlayStyle: SystemUiOverlayStyle.light,
                  leading: IconButton(
                    icon: Icon(
                      Icons.navigate_before,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  centerTitle: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.elliptical(
                              MediaQuery.of(context).size.width, 250))),
                ),
                Image.asset(
                  "assets/images/people.png",
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                )
              ],
            )),
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            textwidgetValue(
              textValue: "What sould we call you?",
              textwidgetStyle: TextStyle(color: Colors.black, fontSize: 25),
            ),
            textwidgetValue(
              textValue: "My name is Goldburg, and yours?",
              textwidgetStyle: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                runSpacing: 25,
                children: [
                  _textFieldWidget(textfieldValue: "First Name", errorText: "Please enter your first name",),
                  _textFieldWidget(textfieldValue: "Last Name", errorText: "Please enter your last name"),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 55,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Next"),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 156, 68, 9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.elliptical(15, 15),
                          top: Radius.elliptical(15, 15)),
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}

class textwidgetValue extends StatelessWidget {
  const textwidgetValue(
      {Key? key, required this.textValue, required this.textwidgetStyle})
      : super(key: key);
  final String textValue;
  final TextStyle textwidgetStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        textValue,
        style: textwidgetStyle,
      ),
    );
  }
}

class _textFieldWidget extends StatelessWidget {
  const _textFieldWidget({Key? key, required this.textfieldValue, required this.errorText}): super(key: key);
  final String textfieldValue;
  final String errorText;
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      fillColor: Colors.white,
      filled: true,
      hintText: textfieldValue,
      border: borderSettings,
      enabledBorder: borderSettings,
      errorText: errorText,
    ));
  }
}
