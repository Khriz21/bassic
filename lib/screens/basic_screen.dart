import 'package:bassic/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BasisScreen extends StatelessWidget {
  const BasisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            // ?Imagen principal
            MainImage(),

            // ?Seccion del titulo
            TitleSection(),

            // !Seccion de los botones
            _ButtonsContainer(),

            // ? Descripcion
            Padding(
              padding: EdgeInsets.only(left: 32, right: 32, top: 15),
              child: Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',
                softWrap: true,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 32, right: 32, top: 10),
              child: Text(
                'Excepteur ullamco exercitation laborum incididunt non dolore magna fugiat anim ad. Ad consectetur labore sunt sunt labore dolore labore sunt dolore. Velit sunt quis elit enim. Reprehenderit pariatur mollit eu aliquip anim sit cillum fugiat ad enim ex exercitation ea reprehenderit.',
                softWrap: true,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 32, right: 32, top: 10, bottom: 5),
              child: Text(
                'PVoluptate ex deserunt culpa qui aute commodo consequat sint officia. Cillum fugiat amet minim excepteur exercitation fugiat elit officia. Nostrud aute proident adipisicing eiusmod et officia ea nulla. Ad ex ut sit est non velit. Consequat id ullamco occaecat laborum. Sunt tempor reprehenderit laborum cupidatat irure duis cillum occaecat ut consequat velit. Commodo ea sunt nostrud enim sint nostrud tempor nulla.',
                softWrap: true,
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ButtonsContainer extends StatelessWidget {
  const _ButtonsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ButtonSection(
            icon: Icons.call,
            label: 'CALL',
            color: Colors.blue,
          ),
          ButtonSection(
            icon: Icons.near_me,
            label: 'ROUTE',
            color: Colors.blue,
          ),
          ButtonSection(
            icon: Icons.share,
            label: 'SHARE',
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class MainImage extends StatelessWidget {
  const MainImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: FadeInImage(
        placeholder: AssetImage('assets/images/jar-loading.gif'),
        image: NetworkImage(
            'https://us.123rf.com/450wm/kesu87/kesu871907/kesu87190700139/127039478-hermoso-paisaje-con-amanecer-en-la-cascada-kirkjufellsfoss-y-la-monta%C3%B1a-kirkjufell-islandia-.jpg?ver=6'),
        fit: BoxFit.cover,
      ),
    );
  }
}
