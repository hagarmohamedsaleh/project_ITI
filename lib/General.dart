// TODO Implement this library.import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class General extends StatelessWidget {
  const General({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SingleChildScrollView(),
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          height: 300,
          width: 280,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(children: [
            const Padding(padding: EdgeInsets.all(12)),
            const Text(
              "General",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Icon(
                  Icons.rate_review_sharp,
                  color: Colors.black,
                  size: 30,
                ),
                Text(
                  "  Rate Us",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.blue,
                  size: 20,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),

            //2second

            Row(
              children: const [
                Icon(
                  Icons.account_box_rounded,
                  color: Colors.black,
                  size: 30,
                ),
                Text(
                  "  Business Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.blue,
                  size: 20,
                )
              ],
            ),

            const SizedBox(
              height: 15,
            ),

            //third3
            Row(
              children: const [
                Icon(
                  Icons.note_alt,
                  color: Colors.black,
                  size: 30,
                ),
                Text(
                  "  Terms & Conditions",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.blue,
                  size: 20,
                )
              ],
            ),

            const SizedBox(
              height: 15,
            ),
            //4fourth
            Row(
              children: const [
                Icon(
                  Icons.privacy_tip,
                  color: Colors.black,
                  size: 30,
                ),
                Text(
                  "  Privacy Policy",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.blue,
                  size: 20,
                )
              ],
            ),
          ]),
        ),
      ],
    );
  }
}
