import 'package:flutter/material.dart';
import 'package:pokerking/Locale/locales.dart';
import 'package:pokerking/components/entry_field.dart';
import 'package:pokerking/components/login_header.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.centerEnd,
            children: [
              LoginHeader(
                title: locale.myProfile,
                subtitle: locale.everythingAboutYou,
              ),
              Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Image.asset('assets/avatars/avatar5.png'),
                  ),
                  Image.asset(
                    'assets/icons/ic_camera.png',
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              children: [
                const SizedBox(
                  height: 40,
                ),
                EntryField(
                  title: locale.teamName,
                  hintText: locale.teamName,
                  initialValue: 'Samanthateam123',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 30,
                ),
                EntryField(
                  title: locale.emailAddress,
                  hintText: 'samantha@mail.com',
                  initialValue: 'samantha@mail.com',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 30,
                ),
                EntryField(
                  title: locale.phoneNumber,
                  hintText: locale.phoneNumber,
                  initialValue: '+1 987 654 3210',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 30,
                ),
                EntryField(
                  title: locale.birthdate,
                  hintText: locale.birthdate,
                  initialValue: '22 Jun 1990',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  locale.logout,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
