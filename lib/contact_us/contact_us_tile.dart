import 'package:flutter/material.dart';

import '../app_theme/app_constants.dart';

class ContactUsTile extends StatelessWidget {
  const ContactUsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      color: Colors.grey[100],
      child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Get In Touch',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: 30,
          ),
          Text('Address: Lahore, Pakistan',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontSize: 16, height: 1)),
          SizedBox(
            height: 30,
          ),
          Text('03011111111',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontSize: 16, height: 1)),
          SizedBox(
            height: 30,
          ),
          Text('info@deargodbookshop.com',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontSize: 16, height: 1)),
          SizedBox(
            height: 30,
          ),
          Text(
            'If you have any questions or want to contact us, feel free to send us a message',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: primaryColor),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 260,
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Name'),
                  )),
              SizedBox(
                width: 30,
              ),
              SizedBox(
                  width: 260,
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Email'),
                  )),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
              width: 550,
              child: TextField(
                decoration:
                    InputDecoration(hintText: 'Type your messsage here.'),
                maxLines: 5,
              ))
        ],
      ),
    );
  }
}
