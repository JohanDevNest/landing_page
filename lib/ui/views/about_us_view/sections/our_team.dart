import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurTeam extends StatelessWidget {
  const OurTeam({super.key});

 @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.black,
            Colors.black87,
            Colors.black87,
            Colors.black,
          ],
          stops: [0.0, 0.5, 0.5, 1.0],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Meet the Team',
              style: GoogleFonts.notoSerif(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF00B8),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildTeamInfoCard('10', 'Desarrolladores'),
                _buildTeamInfoCard('5', 'Diseñadores'),
                _buildTeamInfoCard('20', 'Proyectos completados'),
              ],
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Our team is made up of experienced professionals who are passionate about using technology to solve problems and create value for our clients. We have a deep understanding of software development best practices, and we\'re constantly learning and adapting to stay ahead in a fast-paced industry.',
                style: GoogleFonts.notoSerif(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.white54,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeamInfoCard(String number, String title) {
    return Container(
      padding: EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: Offset(2.0, 2.0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: GoogleFonts.notoSerif(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: GoogleFonts.notoSerif(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}