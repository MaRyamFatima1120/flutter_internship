
import 'package:circular_progress_bar_with_lines/circular_progress_bar_with_lines.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  double _percent = 0;
  double _percent1 = 0;
  double _percent2 = 0;

  void _updateValue(double newValue) {
    setState(() {
      _percent = newValue;
    });
  }
  void _updateValue1(double newValue1) {
    setState(() {
      _percent1 = newValue1;
    });
  }
  void _updateValue2(double newValue2) {
    setState(() {
      _percent2 = newValue2;
    });
  }
  final List<String> text = ["Personal", "Work", "Event"];
  final List<IconData> icon = [
    Icons.person,
    Icons.work,
    Icons.access_time_filled_sharp
  ];
  final List<Color> color = [
    const Color(0xff488cfc),
    const Color(0xff222445),
    const Color(0xff2d5cd3),
  ];
  final List<String> subtitle =[
    "245K","125.75K","100.00K"
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var baseWidth = 375.0;
    var scaleFactor = screenWidth / baseWidth;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dashboard",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 20 * scaleFactor,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.underline,
                  decorationColor:const Color(0xff2d5cd3),
                  decorationThickness: 3,


                    ),
              ),
              Row(
                children: [
                  Container(
                    width: screenWidth / 5.5,
                    height: screenHeight / 5.5,
                    decoration: const BoxDecoration(
                      color: Color(0xff2d5cd3),
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/1.png",
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Maryam Fatima",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontSize: 15 * scaleFactor,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "New York",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontSize: 15 * scaleFactor,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                width: screenWidth,
                height: screenHeight * 0.1,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff2d5cd3),
                    width: 2,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "105",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontSize: 18 * scaleFactor),
                        ),
                        Text(
                          "Lorem Ipsum",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: const Color(0xff2d5cd3),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18 * scaleFactor),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "56",
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontSize: 18 * scaleFactor,
                                  ),
                        ),
                        Text(
                          "Lorem Ipsum",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: const Color(0xff2d5cd3),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18 * scaleFactor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin:const EdgeInsets.symmetric(vertical: 5.0),
                      child: ListTile(
                        leading: Icon(
                          icon[index],
                          size: 50,
                          color: Colors.white,
                        ),
                        title: Text(
                          text[index],
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.white),
                        ),
                        tileColor: color[index],
                        subtitle: Text(
                          subtitle[index],
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                        ),
                        isThreeLine: true,
                      ),
                    );
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child:Text("Statistics",style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w500),)
                  ),
                  Expanded(
                      child:Align(
                        alignment: Alignment.topRight,
                          child: Text("March 2004",style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w500),))
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        CircularProgressBarWithLines(
                          linesColor: const Color(0xff2d5cd3),
                          linesLength: 8,
                          percent: _percent,
                          centerWidgetBuilder: (context) => Text(
                            '${_percent.round()}%',
                          ),
                          radius: 40,

                        ),
                        Slider(
                          value: _percent.toDouble(),
                          min: 0,
                          max: 100,
                          onChanged: _updateValue,
                        ),

                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CircularProgressBarWithLines(
                          linesColor: const Color(0xff2d5cd3),
                          linesLength: 8,
                          percent: _percent1,
                          centerWidgetBuilder: (context) => Text(
                            '${_percent1.round()}%',
                          ),
                          radius: 40,

                        ),
                        Slider(
                          value: _percent1.toDouble(),
                          min: 0,
                          max: 100,
                          onChanged: _updateValue1,
                        ),

                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CircularProgressBarWithLines(
                          linesColor: const Color(0xff2d5cd3),
                          linesLength: 8,
                          percent: _percent2,
                          centerWidgetBuilder: (context) => Text(
                            '${_percent2.round()}%',
                          ),
                          radius: 40,

                        ),
                        Slider(
                          value: _percent2.toDouble(),
                          min: 0,
                          max: 100,
                          onChanged: _updateValue2,
                        ),

                      ],
                    ),
                  ),


                ],
              ),

          ],
              )
          ),
        ),
      ),
    );
  }
}
