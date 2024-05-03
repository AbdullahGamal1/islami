import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/constance/constance.dart';

class TasbehTab extends StatefulWidget {
  TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int tasbehCounter = 0;
  double angle = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/head of seb7a.png'),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .094),
                child: InkWell(
                    onTap: () {
                      onSebhaClicked();
                    },
                    child: Transform.rotate(
                        angle: angle,
                        child: Image.asset('assets/images/body of seb7a.png'))),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'عدد التسبيحات ',
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor),
              child: Text(
                '$tasbehCounter',
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              )),
          SizedBox(
            height: 10.h,
          ),
          Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor),
              child: Text(
                tasbehList[index],
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }

  void onSebhaClicked() {
    angle += 30;
    tasbehCounter++;
    if (tasbehCounter % 33 == 0) {
      index++;
    }
    if (index == tasbehList.length) {
      index = 0;
      tasbehCounter = 0;
    }
    setState(() {});
  }
}
