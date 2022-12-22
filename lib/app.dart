import 'package:flutter/material.dart';
import 'package:hyperion/parallax/parallax_screenshot.dart';

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
        toolbarHeight: 80,
        // backgroundColor: const Color.fromRGBO(191, 191, 191, 1),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        // Заголовок в шапке
        title: Text(
          "HYPERION",
          style: Theme.of(context).textTheme.headline4?.copyWith(
                // color: const Color.fromRGBO(83, 255, 150, 1),
                color: Theme.of(context).colorScheme.primaryContainer,
                fontWeight: FontWeight.w600,
                fontFamily: 'Unbounded',
              ),
        ),
        centerTitle: false,
        elevation: 0,
        leading: const SizedBox(width: 100),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height * .3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRect(
                child: Align(
                  alignment: Alignment.center,
                  heightFactor: 0.5,
                  child: Image.network('https://raw.githubusercontent.com/pabushabi/hyperion_web/main/assets/images/background.jpg'),
                ),
              ),
              // 1-й заголовок
              Text(
                'Змейка',
                style: Theme.of(context).textTheme.headline3?.copyWith(
                      fontFamily: 'Unbounded',
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              const SizedBox(height: 12),
              // 1-й абзац
              const Text(
                'ПАшка молодец, мы пытались...., '
                'sed do eiusmod tempor incididunt ut labore et dolore magna '
                'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
                'ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                'Duis aute irure dolor in reprehenderit in voluptate velit '
                'esse cillum dolore eu fugiat nulla pariatur. Excepteur sint '
                'occaecat cupidatat non proident, sunt in culpa qui officia '
                'deserunt mollit anim id est laborum.',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 24),
              // 2-й заголовок
              Text(
                'HEADLINE 2',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      fontFamily: 'Unbounded',
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              const SizedBox(height: 16),
              // 2-й абзац
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                'sed do eiusmod tempor incididunt ut labore et dolore magna '
                'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
                'ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                'Duis aute irure dolor in reprehenderit in voluptate velit '
                'esse cillum dolore eu fugiat nulla pariatur. Excepteur sint '
                'occaecat cupidatat non proident, sunt in culpa qui officia '
                'deserunt mollit anim id est laborum.',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 24),
              ParallaxScreenshot(
                image:
                    'https://raw.githubusercontent.com/pabushabi/hyperion_web/main/assets/images/screenshot1.jpg',
                title: 'Скриншот 1',
                subtitle: 'description',
                isNetwork: true,
              ),
              ParallaxScreenshot(
                image:
                    'https://raw.githubusercontent.com/pabushabi/hyperion_web/main/assets/images/screenshot2.jpg',
                title: 'Скриншот 2',
                subtitle: 'description',
                isNetwork: true,
              ),
              ParallaxScreenshot(
                image:
                    'https://raw.githubusercontent.com/pabushabi/hyperion_web/main/assets/images/screenshot3.jpg',
                title: 'Скриншот 3',
                subtitle: 'description',
                isNetwork: true,
              ),
              const SizedBox(height: 24),
              // 3-й заголовок
              Text(
                'HEADLINE',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      fontFamily: 'Unbounded',
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              const SizedBox(height: 16),
              // Абзац
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                'sed do eiusmod tempor incididunt ut labore et dolore magna '
                'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
                'ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                'Duis aute irure dolor in reprehenderit in voluptate velit '
                'esse cillum dolore eu fugiat nulla pariatur. Excepteur sint '
                'occaecat cupidatat non proident, sunt in culpa qui officia '
                'deserunt mollit anim id est laborum.',
                style: TextStyle(fontSize: 20),
              ),
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
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.add_circle_outline_sharp),
            // ),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.call),
            // ),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.campaign),
            // ),
          ],
        ),
      ),
    );
  }
}
