import 'package:flutter/material.dart';
import 'package:pathfinder/currency_converter/currency.dart';
import 'package:pathfinder/resturants/nearby_resturants.dart';

class DrawerData extends StatelessWidget {
  const DrawerData();
  @override
  Widget build(BuildContext context) {
    final List<DrawerItem> drawer = [
      DrawerItem('Profile', Icons.account_circle),
      DrawerItem('Messages', Icons.message),
      DrawerItem('Activity', Icons.compare_arrows),
      DrawerItem('Bookmarks', Icons.bookmark),
      DrawerItem('Sign Out', Icons.exit_to_app),
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 48, 24, 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/malaysia.jpg'),
            Text(
              'Pathfinder',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Divider(
              color: Colors.white54,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.account_circle_rounded),
              title: Text('Profile'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.directions),
              title: Text('Travel Guide'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.contactless_outlined),
              title: Text('Contact Tracing'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.ac_unit),
              title: Text('Covid Traker'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Resturants()));
              },
              leading: Icon(Icons.add_location_alt_outlined),
              title: Text('Nearby'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.add_location_alt_outlined),
              title: Text('Nearby Resturants'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              title: Text('Travel Blog'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Currency()));
              },
              leading: Icon(Icons.money),
              title: Text('Currency Converter'),
            ),
            const Divider(
              color: Colors.white54,
            ),
            Container(
              height: 48,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.share),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Tell a Friend',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 48,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.help_outline),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Help and Feedback',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerItem {
  final String name;
  final IconData icon;

  const DrawerItem(this.name, this.icon);
}
