import 'package:bassic/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          //? Background
          Background(),
          // ?Home of body
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustomButtonNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          children: const [
            //? Title
            PageTitle(),

            //? Card table
            CardTable(),
          ],
        ),
      ),
    );
  }
}
