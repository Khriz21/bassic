import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      height: 50,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Kanderstage,Switzerland',
                style: TextStyle(fontSize: 16, color: Colors.black45),
              )
            ],
          ),
          const SizedBox(
            width: 100,
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const SizedBox(
            width: 5,
          ),
          const Text('41')
        ],
      ),
    );
  }
}
