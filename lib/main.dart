import 'package:flutter/material.dart';
import 'screens/portfolio_screen.dart';
import 'models/portfolio_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final portfolioData = PortfolioData(
      name: 'Kumah Rodney Teye',
      title: 'BSc Level Computer Science Student',          
      bio:  'I am a student studying Information Technology in Valley View University in Level 300 \n', 
      skills: ['C++', 'Java', 'Xampp', 'Python', 'HTML'],
      education: [
        Education(
          institution: 'Valley View University',
          degree: 'BSc Information Technology',
          year: '2022–Present',
        ),
      ],
    );

    return MaterialApp(
      title: 'Professional Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioScreen(data: portfolioData),
    );
  }
}