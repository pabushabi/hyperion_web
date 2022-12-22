import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HYPERION"),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height * .2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'HYPERION',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(height: 12),
              const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                  'sed do eiusmod tempor incididunt ut labore et dolore magna '
                  'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
                  'ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                  'Duis aute irure dolor in reprehenderit in voluptate velit '
                  'esse cillum dolore eu fugiat nulla pariatur. Excepteur sint '
                  'occaecat cupidatat non proident, sunt in culpa qui officia '
                  'deserunt mollit anim id est laborum.'),
              const SizedBox(height: 24),
              Text(
                'HEADLINE',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 16),
              const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                  'sed do eiusmod tempor incididunt ut labore et dolore magna '
                  'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
                  'ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                  'Duis aute irure dolor in reprehenderit in voluptate velit '
                  'esse cillum dolore eu fugiat nulla pariatur. Excepteur sint '
                  'occaecat cupidatat non proident, sunt in culpa qui officia '
                  'deserunt mollit anim id est laborum.'),
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                            'sed do eiusmod tempor incididunt ut labore et dolore magna '
                            'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
                            'ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                            'Duis aute irure dolor in reprehenderit in voluptate velit '
                            'esse cillum dolore eu fugiat nulla pariatur. Excepteur sint '
                            'occaecat cupidatat non proident, sunt in culpa qui officia '
                            'deserunt mollit anim id est laborum.'),
                    TextSpan(
                      text: 'google.com',
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Colors.orange,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          const url = 'https://google.com';
                          if (await canLaunchUrlString(url)) {
                            await launchUrlString(url);
                          }
                        },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'HEADLINE',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 16),
              const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                  'sed do eiusmod tempor incididunt ut labore et dolore magna '
                  'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
                  'ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                  'Duis aute irure dolor in reprehenderit in voluptate velit '
                  'esse cillum dolore eu fugiat nulla pariatur. Excepteur sint '
                  'occaecat cupidatat non proident, sunt in culpa qui officia '
                  'deserunt mollit anim id est laborum.'),
              const SizedBox(height: 124),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 30.0, bottom: 30.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_circle_outline_sharp),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.call),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.campaign),
            ),
          ],
        ),
      ),
    );
  }
}
