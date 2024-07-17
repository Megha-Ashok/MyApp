import 'package:flutter/material.dart';

import 'additional.dart';
import 'weather.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  void initState() {
    super.initState();
    getCurrentWeather();
  }

  Future getCurrentWeather() async {
    String cityname = 'London';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Weather App',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    /*child:BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10,),*/
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '300° K',
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.cloud,
                            size: 70,
                          ),
                          Text('Rain',
                              style: TextStyle(
                                fontSize: 20,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Weather ForeCast',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
              ),
              const Row(
                children: [
                  HourlyForeCastItems(
                    label: '00:00',
                    icon: Icons.cloud,
                    value: '301.22',
                  ),
                  HourlyForeCastItems(
                    label: '03:00',
                    icon: Icons.sunny,
                    value: '300.52',
                  ),
                  HourlyForeCastItems(
                    label: '06:00',
                    icon: Icons.cloud,
                    value: '302.22',
                  ),
                  HourlyForeCastItems(
                    label: '09:00',
                    icon: Icons.sunny,
                    value: '300.12',
                  ),
                  HourlyForeCastItems(
                    label: '12:00',
                    icon: Icons.cloud,
                    value: '302.24',
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                'Addition Information',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Additional(
                    icon: Icons.water_drop,
                    label: 'Humidity',
                    value: '91',
                  ),
                  Additional(
                    icon: Icons.air,
                    label: 'Wind Speed',
                    value: '7.67',
                  ),
                  Additional(
                    icon: Icons.beach_access,
                    label: 'Pressure',
                    value: '1000',
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
