// home screen
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/button_page.dart';
import 'package:flutter_demo/pages/text_page.dart';
import 'package:flutter_demo/pages/textfield_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // widget list
      body: ListView(
        children: <Widget>[
          ListTile(
            // button
            title: const Text('Button'),
            subtitle: const Text('Button subtitle'),
            leading: const Icon(Icons.add),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, '/button');
            },
          ),
          ListTile(
            title: const Text('Text'),
            subtitle: const Text('Subtitle'),
            leading: const Icon(Icons.access_alarm),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, '/text');
            },
          ),
          ListTile(
            title: const Text('TextField'),
            subtitle: const Text('Subtitle 3'),
            leading: const Icon(Icons.access_time),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, '/textField');
            },
          ),
          ListTile(
            title: const Text('Item 4'),
            subtitle: const Text('Subtitle 4'),
            leading: const Icon(Icons.account_balance),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Item 5'),
            subtitle: const Text('Subtitle 5'),
            leading: const Icon(Icons.account_balance_wallet),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Item 6'),
            subtitle: const Text('Subtitle 6'),
            leading: const Icon(Icons.account_box),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Item 7'),
            subtitle: const Text('Subtitle 7'),
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Item 8'),
            subtitle: const Text('Subtitle 8'),
            leading: const Icon(Icons.add),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Item 9'),
            subtitle: const Text('Subtitle 9'),
            leading: const Icon(Icons.add_a_photo),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Item 10'),
            subtitle: const Text('Subtitle 10'),
            leading: const Icon(Icons.add_alarm),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ],
      ),
      // 设置侧边栏
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 24,
                ),
              ),
            ),
            UserAccountsDrawerHeader(
              accountName: const Text('Flutter'),
              accountEmail: const Text('mail'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/flutter.png'),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
