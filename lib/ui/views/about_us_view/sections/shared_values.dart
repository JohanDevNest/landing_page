import 'package:flutter/material.dart';

class SharedValues extends StatelessWidget {
  const SharedValues({super.key});

  @override
  Widget build(BuildContext context) {
  return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Shared Values',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ValueCard(
              title: 'Customer-first',
              content: 'Pipe values its customers and strives to provide them with the best possible experience. We\'re committed to understanding and meeting the needs of our customers, and delivering products and services that exceed their expectations.',
            ),
            ValueCard(
              title: 'Teamwork',
              content: 'Collaboration is essential to success. We encourage everyone to work together, share knowledge and expertise, and support each other in achieving common goals.',
            ),
            ValueCard(
              title: 'Innovation',
              content: 'We\'re constantly looking for new ideas and approaches, and encourage everyone to be innovative and take creative ownership in their work.',
            ),
            ValueCard(
              title: 'Excellence',
              content: 'We\'re committed to achieving the highest standard of quality in all aspects of the business. And we\'re dedicated to continuous improvement, striving to be the best for all of our customers.',
            ),
            ValueCard(
              title: 'Accountability',
              content: 'Transparency and honesty are key pillars at Pipe, and we strive to earn the trust and confidence of all of customers and partners.',
            ),
          ],
        ),
      ),
    );
  }
}

class ValueCard extends StatelessWidget {
  final String title;
  final String content;

  ValueCard({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            content,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}