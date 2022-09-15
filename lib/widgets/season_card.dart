import 'package:daily_exercises_app/constants.dart';
import 'package:flutter/material.dart';

class SeasonCard extends StatelessWidget {
  final int? seasonNum;
  final bool? isDone;
  final VoidCallback? press;
  const SeasonCard({
    Key? key, this.seasonNum, this.isDone = false, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraint) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: constraint.maxWidth / 2 -10,
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 23,
                    spreadRadius: -13,
                    color: kShadowColor,
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: press,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 42,
                          width: 43,
                          decoration: BoxDecoration(
                            color: isDone! ? kBlueColor : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: kBlueColor),
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: isDone! ?  Colors.white : kBlueColor,
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          "Session $seasonNum",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}