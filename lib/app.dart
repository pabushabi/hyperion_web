import 'package:flutter/material.dart';
import 'package:hyperion/parallax/parallax_screenshot.dart';
import 'package:share_plus/share_plus.dart';

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
          // padding: EdgeInsets.symmetric(
          //     horizontal: MediaQuery.of(context).size.height * .3),
          child: Column(
            children: [
              ClipRect(
                child: Align(
                  alignment: Alignment.topCenter,
                  heightFactor: 0.43,
                  child: Image.network(
                      'https://raw.githubusercontent.com/pabushabi/hyperion_web/main/assets/images/background.jpg'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.height * .3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // 1-й заголовок
                    Text(
                      'Змейка и её невероятные приключения.',
                      style: Theme.of(context).textTheme.headline3?.copyWith(
                            fontFamily: 'Unbounded',
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                    const SizedBox(height: 12),
                    // 1-й абзац
                    const Text(
                      'Добро пожаловать на демонстрацию игры Змейка! В этой игре вы будете играть за змею, которая охотится на яблоки. Но будьте осторожны, ведь на вашем пути могут встретиться стены и другие змеи, которые могут помешать вам достичь цели. Надеюсь, вы готовы принять вызов и стать лучшим змейком всех времен!'
                      ,
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 24),
                    // 2-й заголовок
                    Text(
                      'Начнем игру!',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            fontFamily: 'Unbounded',
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                    const SizedBox(height: 16),
                    // 2-й абзац
                    const Text(
                      'Различные локации, каждая со своими уникальными средами и препятствиями.'
                      'Боссы в каждой локации, требующие уникальных тактик и умений.'
                      'Разнообразные способы улучшения Змейки, такие как увеличение скорости или увеличение запаса здоровья.'
                      'Возможность приобретения уникальных способностей, таких как способность проходить сквозь стены или увеличение урона, которые помогут вам в борьбе против сильных противников.'
                      'Различные режимы игры, такие как карьерный режим и режим времени, которые предлагают разнообразие игровых возможностей.'
                      'Множество дополнительных мини-игр и сюжетных заданий, которые помогут вам узнать больше о мире игры и погрузиться в него еще глубже.'
                      ,
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 24),
                    ParallaxScreenshot(
                      image:
                          'https://raw.githubusercontent.com/pabushabi/hyperion_web/main/assets/images/screenshot1.jpg',
                      title: 'Безграничные возможности.',
                      subtitle: 'description',
                      isNetwork: true,
                    ),
                    ParallaxScreenshot(
                      image:
                          'https://raw.githubusercontent.com/pabushabi/hyperion_web/main/assets/images/screenshot2.jpg',
                      title: 'Интересные персонажи.',
                      subtitle: 'description',
                      isNetwork: true,
                    ),
                    ParallaxScreenshot(
                      image:
                          'https://raw.githubusercontent.com/pabushabi/hyperion_web/main/assets/images/screenshot3.jpg',
                      title: 'Неповторимое окружение.',
                      subtitle: 'description',
                      isNetwork: true,
                    ),
                    const SizedBox(height: 24),
                    // 3-й заголовок
                    Text(
                      'Что же дальше?!',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            fontFamily: 'Unbounded',
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                    const SizedBox(height: 16),
                    // Абзац
                    const Text(
                      'Ты можешь быть как Змейка, но ты никогда не узнаешь, что придет за следующим углом. Будь готов к любым изменениям и препятствиям, которые могут встретить тебя на твоем пути. В конечном итоге, твоя гибкость и умение адаптироваться будут ключевыми факторами для твоего успеха в игре Змейка.',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 124),
                  ],
                ),
              ),
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
              onPressed: () {
                Share.share(
                    'Посмотрите какой крутой проект! https://hyperion.codemagic.app');
              },
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
