import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade300, Colors.blue.shade900],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu, color: Colors.white),
                      Text(
                        "Weatherman",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.add, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Harlem",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Tuesday, January 10, 2019",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "15°C",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Cloudy",
                    style: TextStyle(color: Colors.white70, fontSize: 20),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "25°C / 28°C",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WeatherDayWidget(day: "Today", temp: "25°C / 28°C", icon: Icons.wb_sunny),
                  WeatherDayWidget(day: "Friday", temp: "20°C", icon: Icons.nights_stay),
                  WeatherDayWidget(day: "Saturday", temp: "20°C", icon: Icons.cloud),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherDayWidget extends StatelessWidget {
  final String day;
  final String temp;
  final IconData icon;

  WeatherDayWidget({required this.day, required this.temp, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        SizedBox(height: 5),
        Text(
          day,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        Text(
          temp,
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
      ],
    );
  }
}
