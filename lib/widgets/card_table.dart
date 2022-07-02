import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            icon: Icons.grid_view_rounded,
            title: 'General',
            color: Colors.blue,
          ),
          _SingleCard(
            icon: Icons.car_rental,
            title: 'Transport',
            color: Color.fromARGB(255, 150, 71, 66),
          )
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.shopify_rounded,
            title: 'Shpping',
            color: Color.fromARGB(255, 65, 21, 106),
          ),
          _SingleCard(
            icon: Icons.cloud,
            title: 'Bill',
            color: Color.fromARGB(255, 180, 181, 244),
          )
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.movie,
            title: 'Entertainment',
            color: Color.fromARGB(255, 243, 33, 159),
          ),
          _SingleCard(
            icon: Icons.food_bank_sharp,
            title: 'Grocery',
            color: Color.fromARGB(255, 150, 71, 66),
          )
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.nights_stay,
            title: 'Stay',
            color: Color.fromARGB(255, 19, 3, 112),
          ),
          _SingleCard(
            icon: Icons.help_outline_sharp,
            title: 'Others',
            color: Color.fromARGB(255, 145, 230, 111),
          )
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard(
      {Key? key, required this.icon, required this.title, required this.color})
      : super(key: key);

  final IconData icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
            radius: 30,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Column child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
