import 'package:flutter/material.dart';
import 'package:lets_accommodate/tenant/settings%20tenant/edit_profile_tenant.dart';

class SettingsTenant extends StatefulWidget {
  const SettingsTenant({Key? key}) : super(key: key);

  @override
  State<SettingsTenant> createState() => _SettingsTenantState();
}

class _SettingsTenantState extends State<SettingsTenant> {
  String dropdownValuemail = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1589317621382-0cbef7ffcc4c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                    radius: 100,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return EditProfileTenant();
                          }));
                        },
                        child: Text('Edit Profile')),
                  ),
                  Text(
                    'Bernice Mensah',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.help,
                    color: Colors.blueAccent,
                  ),
                  const Text(
                    'Need help?  Contact us',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      color: Colors.blueAccent,
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView(
                                padding: EdgeInsets.all(16),
                                children: const [
                                  Icon(
                                    Icons.email,
                                    size: 100,
                                    color: Colors.lightBlue,
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text(
                                        'Email: letsaccommodateof4@gmail.com',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.facebook_rounded,
                                    size: 100,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text(
                                        'Facebook: Lets Accomodate Mobile app',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            });
                      },
                      icon: Icon(Icons.arrow_drop_down_circle_rounded))
                ],
              ),
            ],
          ),
        ));
  }
}
