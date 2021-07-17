import 'package:flutter/material.dart';
import 'box_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottombutton.dart';
import 'resultspage.dart';
import 'functionality.dart';

const Color activecolor=Color(0xff1d1e33);
const Color inactivecolor=Color(0xff111328);

int val=180;
int weight=60,age=18;

enum Gender{
  male,
  female,
}


Gender ?selectedgender;

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedgender=Gender.male;
                    });
                  },
                  child: Boxcontent(
                    colour: selectedgender==Gender.male?activecolor:inactivecolor,
                    childbox: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.mars,
                          size: 90,
                        ),
                        Text('MALE',
                          style: TextStyle(
                            color: Color(0xff8e8e99),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedgender=Gender.female;
                    });
                  },
                  child: Boxcontent(
                    colour: selectedgender==Gender.female?activecolor:inactivecolor,
                    childbox: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.venus,
                          size: 90,
                        ),
                        Text('FEMALE',
                          style: TextStyle(
                            color: Color(0xff8e8e99),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
          ),
          Expanded(
            child: Boxcontent(
              colour: activecolor,
              childbox: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 25,
                      color:Color(0xff8e8e98),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      Text(val.toString(),
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                      Text('cm',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
                      thumbColor: Color(0xffeb1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xff8e8e99),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      overlayColor: Color(0x13eb1555)
                    ),
                    child: Slider(
                      value: val.toDouble(),
                      min: 20,
                      max: 200,
                      onChanged: (double newdata){
                          setState(() {
                            val=newdata.round();
                          });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(
                child: Boxcontent(
                  colour: activecolor,
                  childbox: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: TextStyle(
                          fontSize: 25,
                          color:Color(0xff8e8e98),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text(weight.toString(),
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                          Text('kg',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            constraints: BoxConstraints.tightFor(width: 56,height: 56),
                            shape: CircleBorder(),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            fillColor: Color(0xff4c4f5e),
                            onPressed: (){
                            setState(() {
                              if(weight > 20)
                                weight--;
                            });
                          },
                          ),
                          SizedBox(width: 10,),
                          RawMaterialButton(
                            constraints: BoxConstraints.tightFor(width: 56,height: 56),
                            shape: CircleBorder(),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            fillColor: Color(0xff4c4f5e),
                            onPressed: (){
                              setState(() {
                                  weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Boxcontent(
                  colour: activecolor,
                  childbox: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: TextStyle(
                          fontSize: 25,
                          color:Color(0xff8e8e98),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text(age.toString(),
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                          Text('yrs',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            constraints: BoxConstraints.tightFor(width: 56,height: 56),
                            shape: CircleBorder(),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            fillColor: Color(0xff4c4f5e),
                            onPressed: (){
                              setState(() {
                                if(age > 1)
                                  age--;
                              });
                            },
                          ),
                          SizedBox(width: 10,),
                          RawMaterialButton(
                            constraints: BoxConstraints.tightFor(width: 56,height: 56),
                            shape: CircleBorder(),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            fillColor: Color(0xff4c4f5e),
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
          ),
          Bottombutton(fun: (){
            Fun res=Fun(weight: weight, height: val);


            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Reuslt(
                bmi: res.bmire(),
                status: res.bmistage(),
                sug: res.suggestion(),
              );
            })
            );
          },
          title: 'CALCULATE',
          )
        ],
      ),

    );
  }
}

