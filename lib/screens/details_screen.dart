import 'package:daily_exercises_app/constants.dart';
import 'package:daily_exercises_app/widgets/bottom_nav_bar.dart';
import 'package:daily_exercises_app/widgets/search_bar.dart';
import 'package:daily_exercises_app/widgets/season_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Screen"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * .45,
              decoration: const BoxDecoration(
                color: kBlueLightColor,
                image: DecorationImage(
                  image: AssetImage("assets/images/meditation_bg.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Meditation",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "3-10 MIN Course",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      width: size.width * .6,
                      child: const Text(
                          "Live happier and healthier by learning Live happier and healthier by learning the fundamentals of meditation"),
                    ),
                    SizedBox(
                        width: size.width * .5,
                        child: SearchBar(hintText: "Search bar",)
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        SeasonCard(
                          seasonNum: 1,
                          isDone: true,
                          press: () {},
                        ),
                        SeasonCard(
                          seasonNum: 2,
                          isDone: false,
                          press: () {},
                        ),SeasonCard(
                          seasonNum: 3,
                          isDone: false,
                          press: () {},
                        ),SeasonCard(
                          seasonNum: 4,
                          isDone: false,
                          press: () {},
                        ),SeasonCard(
                          seasonNum: 5,
                          isDone: false,
                          press: () {},
                        ),SeasonCard(
                          seasonNum: 6,
                          isDone: false,
                          press: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Text(
                      "Meditation",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset("assets/icons/Meditation_women_small.svg"),
                          const SizedBox(width: 20,),
                          Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Basic 2",
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),
                                  Text(
                                    "Start your deepen you practice",
                                  ),
                                ],
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.all(16),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

