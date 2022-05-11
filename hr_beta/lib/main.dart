import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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

                  fontSize: 45,
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

                  GaugeRange(startValue: 50, endValue: 100, color: Colors.grey, startWidth: 30, endWidth: 30),
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

                  Text('140', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
                  SizedBox(height: 25),
                  Text('BPM', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                
                ],
              ),
              angle: 90, positionFactor: 1.6)

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