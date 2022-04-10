import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('About'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Eswatini Newspapers',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Eswatini Newspapers is a free app that allows you to read the latest news from the official websites of the government of the Kingdom of Eswatini. The app is developed by the team of the Eswatini Newspapers and Clout Developers.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Developed by:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '\t Lihle Ronaldo Fakudze (Software Developer)\n\t Mthundzi Dlamini (Business Analyst)',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/feedback');
                },
                child:
                    Text('Send Us Feedback', style: TextStyle(fontSize: 16))),
          ],
        ),
      ),
    );
  }
}
