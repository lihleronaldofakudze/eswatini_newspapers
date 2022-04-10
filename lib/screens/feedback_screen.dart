import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Feedback'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 16),
            TextField(
              controller: messageController,
              maxLength: 24,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your feedback',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                if (messageController.text.isEmpty) {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.ERROR,
                    animType: AnimType.BOTTOMSLIDE,
                    title: 'Error',
                    desc: 'Please enter your message',
                    btnOkOnPress: () {},
                  ).show();
                } else {
                  String? encodeQueryParameters(Map<String, String> params) {
                    return params.entries
                        .map((e) =>
                            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                        .join('&');
                  }

                  final Uri emailLaunchUri = Uri(
                    scheme: 'mailto',
                    path: 'code.clout.developers@gmail.com',
                    query: encodeQueryParameters(
                        <String, String>{'subject': messageController.text}),
                  );

                  launch(emailLaunchUri.toString());
                }
              },
              child: Text('Send Feedback',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
