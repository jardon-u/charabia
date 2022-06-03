import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Charabia',
      theme: ThemeData(primaryColor: Colors.black),
      home: const MyHomePage(title: 'Charabia : Parlez avec votre chat'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.height / 5 * 4,
      height: MediaQuery.of(context).size.height,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        children: [
          Button(text: "Papa", icon: FontAwesomeIcons.person),
          Button(text: "Maman", icon: FontAwesomeIcons.personDress),
          Button(text: "Princesse", icon: FontAwesomeIcons.cat),
          Button(text: "Noisette", icon: FontAwesomeIcons.cat),
// line
          Button(text: "Oui", icon: FontAwesomeIcons.check),
          Button(text: "Non", icon: FontAwesomeIcons.xmark),
          Button(text: "Aime", icon: FontAwesomeIcons.heart),
          Button(text: "Veux", icon: FontAwesomeIcons.wandMagic),
// line
          Button(text: "Jouer", icon: FontAwesomeIcons.masksTheater),
          Button(text: "Manger", icon: FontAwesomeIcons.bowlFood),
          Button(text: "Carresser", icon: FontAwesomeIcons.tencentWeibo),
          Button(text: "Venir", icon: FontAwesomeIcons.arrowDown),
// line
          Button(text: "Eau", icon: FontAwesomeIcons.water),
          Button(text: "Croquette", icon: FontAwesomeIcons.bowlRice),
          Button(text: "Paté", icon: FontAwesomeIcons.burger),
          Button(text: "Nourriture", icon: FontAwesomeIcons.carrot),
// line
          Button(text: "Voiture", icon: FontAwesomeIcons.car),
          Button(text: "Chien", icon: FontAwesomeIcons.dog),
          Button(text: "Chat", icon: FontAwesomeIcons.cat),
          Button(text: "Humain", icon: FontAwesomeIcons.person),
// line
        ],
      ),
    ));
  }
}

AudioPlayer audioPlayer = AudioPlayer();

class Button extends StatelessWidget {
  final IconData icon;
  final String text;

  Button({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: InkWell(
        onTap: () => audioPlayer.play("assets/${text.toLowerCase()}.wav"),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0), child: FaIcon(icon))),
            ),
            const SizedBox(height: 8),
            Text(text),
          ],
        )),
      ),
    );
  }
}
