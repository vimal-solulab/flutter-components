import 'package:flutter/material.dart';
import 'package:my_app/common_components_screen.dart';
import 'package:my_app/common_text_screen.dart';
import 'package:my_app/theme/components/text.dart';

import 'theme/app_colors.dart';
import 'theme/app_text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.purpleL),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.light,
      appBar: AppBar(
        // Using AppColors for background
        backgroundColor: AppColors.purpleL,
        title: Text(widget.title, style: AppTextStyles.headline1.white50),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            body_grey('You have pushed the button this many times:'),
            Text('$_counter', style: AppTextStyles.title1.dark),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CommonTextScreen(),
                  ),
                );
              },
              child: const Text('Go to Common Text Screen'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CommonComponentsScreen(),
                  ),
                );
              },
              child: const Text('Go to Common Components Screen'),
            ),
            const SizedBox(height: 20),
            headline2_leah('Displaying some theme styles:'),
            const SizedBox(height: 10),
            subhead1_lagunaD('Subtitle 1'),
            subhead2_redG('Subtitle 2'),
            caption_greenD('Caption'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: AppColors.greenD,
        child: const Icon(Icons.add),
      ),
    );
  }
}
