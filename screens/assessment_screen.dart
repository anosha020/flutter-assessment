import 'package:flutter/material.dart';
import 'package:testapp/utils/colors.dart';
import 'package:testapp/widgets/buttons.dart';

class AssessmentScreen extends StatefulWidget {
  const AssessmentScreen({super.key});

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // toolbarHeight: 108,
        backgroundColor: green,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            // color: Colors.amber,
            height: 32,
            width: 335,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(
                          context); // Pop the bottom sheet when cancel is pressed
                    },
                    child: Image.asset("assets/images/chevron-left.png")),
                Expanded(
                  child: Image.asset(
                    'assets/images/logo.png', // Path to your logo image asset
                    height: 32,
                    width: 64, // Adjust height as needed
                  ),
                ),
                const SizedBox(
                  width: 30,
                )
                // Text displayed next to the image
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Positioned(right: 0, child: Image.asset("assets/images/pattern.png")),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "78%",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Assessment score",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[400]),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    thickness: 1,
                    height: 20,
                    color: Color.fromRGBO(216, 223, 220, 1),
                  ),
                ),
                Container(
                  height: 100,
                  // width: 335,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(247, 252, 254, 1),
                      borderRadius: BorderRadius.circular(20),
                      border: const Border(
                          bottom: BorderSide(width: 4, color: green),
                          left: BorderSide(width: 1.5, color: green),
                          right: BorderSide(width: 1.5, color: green),
                          top: BorderSide(width: 1.5, color: green))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "A1",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Basic competencies level",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[400]),
                            ),
                          ],
                        ),
                        Image.asset(
                          "assets/images/card.png",
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 22),
                  child: Text(
                    "Distinguishing between the sounds of given letters and their forms",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Alphabet(
                      word: 'assets/images/waow.png',
                    ),
                    Alphabet(
                      word: 'assets/images/laam.png',
                    ),
                    Alphabet(
                      word: 'assets/images/Haa.png',
                    ),
                    Alphabet(
                      word: 'assets/images/Raa.png',
                    ),
                    Alphabet(
                      word: 'assets/images/baa.png',
                    ),
                    Alphabet(
                      word: 'assets/images/seen.png',
                    ),
                    Alphabet(
                      word: 'assets/images/geem.png',
                    ),
                    Alphabet(
                      word: 'assets/images/daal.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Alphabet(
                      word: 'assets/images/waow.png',
                    ),
                    Alphabet(
                      word: 'assets/images/laam.png',
                    ),
                    Alphabet(
                      word: 'assets/images/Haa.png',
                    ),
                    Alphabet(
                      word: 'assets/images/Raa.png',
                    ),
                    Alphabet(
                      word: 'assets/images/baa.png',
                    ),
                    Alphabet(
                      word: 'assets/images/seen.png',
                    ),
                    Alphabet(
                      word: 'assets/images/geem.png',
                    ),
                    Alphabet(
                      word: 'assets/images/daal.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Alphabet(
                      word: 'assets/images/baa.png',
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Alphabet(
                      word: 'assets/images/seen.png',
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Alphabet(
                      word: 'assets/images/geem.png',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 22),
                  child: Container(
                    // width: 335,
                    height: 160,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(233, 247, 245, 1),
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/star.png"),
                              const SizedBox(
                                width: 16,
                              ),
                              const Expanded(
                                child: Text(
                                  "Linking between the shape of the letter, its sound, and the vocabulary it represent",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(108, 108, 137, 1)),
                                  maxLines: 2,
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/star.png"),
                              const SizedBox(
                                width: 16,
                              ),
                              const Expanded(
                                child: Text(
                                  "Linking between the shape of the letter, its sound, and the vocabulary it represent",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(108, 108, 137, 1)),
                                  maxLines: 2,
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/star.png"),
                              const SizedBox(
                                width: 16,
                              ),
                              const Expanded(
                                child: Text(
                                  "The students write their name correctly",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(108, 108, 137, 1)),
                                  maxLines: 2,
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Guidance for educators",
                  style: TextStyle(
                      color: green, fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Container(
                    // width: 335,
                    height: 256,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(233, 247, 245, 1),
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/dot.png"),
                              const SizedBox(
                                width: 16,
                              ),
                              const Expanded(
                                child: Text(
                                  'We name the letter by its sound, so we say "دال" and not "د".',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(108, 108, 137, 1)),
                                  maxLines: 2,
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/dot.png"),
                              const SizedBox(
                                width: 16,
                              ),
                              const Expanded(
                                child: Text(
                                  "The student learns the letter with its open sound, like (د).",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(108, 108, 137, 1)),
                                  maxLines: 2,
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/dot.png"),
                              const SizedBox(
                                width: 16,
                              ),
                              const Expanded(
                                child: Text(
                                  "From this level onwards, we start training the students on phonetic skills by combining the letters they have learned, even if they are limited.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(108, 108, 137, 1)),
                                  maxLines: 4,
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/dot.png"),
                              const SizedBox(
                                width: 16,
                              ),
                              const Expanded(
                                child: Text(
                                  " Writing might be challenging at this age, so the educator should train the child on.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(108, 108, 137, 1)),
                                  maxLines: 2,
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ButtonWidget(
                  text: "Select Group",
                  onpressed: () {},
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class Alphabet extends StatelessWidget {
  const Alphabet({super.key, required this.word});
  final String word;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(8),
          color: green,
        ),
        child: Image.asset(word));
  }
}
