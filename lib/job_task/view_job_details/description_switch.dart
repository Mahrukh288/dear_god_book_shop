import 'package:flutter/material.dart';

import '../../app_theme/app_constants.dart';

class DescriptionSwitch extends StatefulWidget {
  const DescriptionSwitch({Key? key}) : super(key: key);

  @override
  State<DescriptionSwitch> createState() => _DescriptionSwitchState();
}

class _DescriptionSwitchState extends State<DescriptionSwitch> {
  late bool isDes;
  @override
  void initState() {
    isDes = true;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: primaryColor),
      ),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  isDes = true;
                });
              },
              child: Container(
                alignment: Alignment.center,
                //width: double.infinity / 2,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    //border: Border.all(color: primaryColor),
                    color: !isDes ? Colors.white : primaryColor),
                child: Text(
                  'Description',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: isDes ? Colors.white : primaryColor),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  isDes = false;
                });
              },
              child: Container(
                alignment: Alignment.center,
                //width: double.infinity / 2,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    //border: Border.all(color: primaryColor),
                    color: isDes ? Colors.white : primaryColor),
                child: Text(
                  'Company',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: !isDes ? Colors.white : primaryColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
