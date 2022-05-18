import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Welcome to Flutter',

      home: Scaffold(
        
        body: Center(

          // ignore: avoid_unnecessary_containers
          child: Container(
            
            child: SfRadialGauge(

              title: const GaugeTitle(
                
                text: 'Heart Rate',

                textStyle: TextStyle(

                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Times'

                ),
                
                alignment: GaugeAlignment.center
              
              ),

              axes: <RadialAxis>[RadialAxis(

                minimum: 50, maximum: 200, labelOffset: 20, 
                axisLineStyle: const AxisLineStyle(thickness: 30), showTicks: false,

                ranges: <GaugeRange>[
                  
                  GaugeRange(startValue: 50, endValue: 75, startWidth: 30, endWidth: 30,
                    color: Color.fromARGB(255, 215, 215, 215)
                  ),

                  GaugeRange(startValue: 75, endValue: 100,  startWidth: 30, endWidth: 30,
                    gradient: const SweepGradient(
                      colors: <Color>[Color.fromARGB(255, 215, 215, 215), Colors.green],
                      stops: <double>[0.3,1]
                      ),
                  ),
                  GaugeRange(startValue: 100, endValue: 200, startWidth: 30, endWidth: 30,
                    gradient: const SweepGradient(
                      colors: <Color>[Colors.green,Colors.yellow,Colors.red],
                      stops: <double>[0.0,0.7,1]                    
                    )
                  )

                ],

                pointers: const <GaugePointer>[
                  NeedlePointer(

                    value: 140,
                    enableAnimation: true,
                    needleStartWidth: 0, needleEndWidth: 5, needleColor: Colors.black,
                    knobStyle: KnobStyle(

                      color: Colors.white, borderColor: Colors.black, 
                      knobRadius: 0.04, borderWidth: 0.02

                    ),
                    tailStyle: TailStyle(

                      color: Colors.black, width: 5, length: 0

                    )

                  ),

                ],
              
              annotations:  <GaugeAnnotation>[
              
              GaugeAnnotation(widget: Column(
                children: const <Widget>[

                  Text('140', style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('BPM', style: TextStyle(fontSize: 16  , fontWeight: FontWeight.bold))
                
                ],
              ),
              angle: 90, positionFactor: 2.6)

              ],
              
              )
            ]
          )
        )
        )
      ),
    );
  }
}