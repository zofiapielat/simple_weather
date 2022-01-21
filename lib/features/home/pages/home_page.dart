import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pogoda'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '-5',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'degree',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 60),
            Text(
              'London',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('City'),
                        hintText: 'London',
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Get'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
