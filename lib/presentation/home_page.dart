import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NewWidget(
              images: "assets/images/pngs/u_calculator.png",
              text: "Current Weight",
              text2: "--- kgs",
            ),
            SizedBox(
              height: 10,
            ),
            NewWidget(
              images: "assets/images/pngs/u_calculator.png",
              text: "Target Weight",
              text2: "--- kgs",
            ),
            SizedBox(
              height: 10,
            ),
            NewWidget(
              images: "assets/images/pngs/u_ruler.png",
              text: "Height",
              text2: "--- cms",
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.images,
    required this.text,
    required this.text2,
  });
  final String text;
  final String images;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            blurRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 20,
        ),
        child: Row(
          children: [
            Image.asset(
              images,
              width: 20,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 20, 0),
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Spacer(),
            Text(
              text2,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
