import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:testapp/screens/assessment_screen.dart';
import 'package:testapp/utils/colors.dart';
import 'package:testapp/widgets/buttons.dart';

class ZoomClassDetail extends StatefulWidget {
  const ZoomClassDetail({super.key});

  @override
  State<ZoomClassDetail> createState() => _ZoomClassDetailState();
}

class _ZoomClassDetailState extends State<ZoomClassDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 108,
        backgroundColor: green,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.notifications),
          )
        ],
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.png', // Path to your logo image asset
          height: 32,
          width: 64, // Adjust height as needed
        ),
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(150.0),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 30,
                        backgroundColor: Color.fromRGBO(16, 117, 116, 1),
                        child: Icon(Icons.add),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Me"),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 30,
                        backgroundColor: Color.fromRGBO(16, 117, 116, 1),
                        child: Image(
                            image: AssetImage("assets/images/Avatar1.png")),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Me"),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 30,
                        minRadius: 30,
                        backgroundColor: Color.fromRGBO(16, 117, 116, 1),
                        child: Image(
                          image: AssetImage("assets/images/Avatar2.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Me"),
                    ],
                  ),
                ],
              ),
            )),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(
                text: "Join Zoom Link",
                onpressed: () {
                  _zoomBottomSheet(context);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                text: "Edit Profile",
                onpressed: () {
                  _profileBottomSheet(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _zoomBottomSheet(context) {
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext) {
        return Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage("assets/images/zoom logo.png"),
                    height: 110,
                    width: 110,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Zoom class details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      "Please join by clicking on the button or writing the meeting credentials on zoom mobile app.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400]),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Meeting ID",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Container(
                        width: 172,
                        height: 32,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 245, 245, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "874859798456489",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                              Image(image: AssetImage("assets/images/copy.png"))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Container(
                        width: 172,
                        height: 32,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 245, 245, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "5457484",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                              Image(image: AssetImage("assets/images/copy.png"))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Color.fromRGBO(115, 98, 159, 1),
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "View Instructions",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(115, 98, 159, 1)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ButtonWidget(
                    text: "View Instructions",
                    onpressed: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ButtonWidget(
                    text: "Join assessment",
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AssessmentScreen()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ],
        );
      });
}

void _profileBottomSheet(context) {
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext) {
        return Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 43),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Edit",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(
                                context); // Pop the bottom sheet when cancel is pressed
                          },
                          child: CircleAvatar(
                              maxRadius: 15,
                              backgroundColor: Colors.grey[200],
                              child: const Image(
                                  image:
                                      AssetImage("assets/images/close.png"))),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 35, bottom: 20),
                      child: Text(
                        "Change avatar",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: [
                        DottedBorder(
                            color: green,
                            borderType: BorderType.Circle,
                            dashPattern: const [3, 5],
                            strokeWidth: 2,
                            child: Container(
                              height: 64,
                              width: 64,
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              child: Center(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 48,
                                      width: 48,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(198, 255, 224, 1),
                                      ),
                                      child: const Image(
                                          image: AssetImage(
                                              "assets/images/Avatar2.png")),
                                    ),
                                    // ignore: prefer_const_constructors
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: const CircleAvatar(
                                        maxRadius: 10,
                                        backgroundColor:
                                            Color.fromRGBO(198, 255, 224, 1),
                                        child: Icon(
                                          Icons.check,
                                          size: 10,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        DottedBorder(
                            color: const Color.fromRGBO(237, 237, 237, 1),
                            borderType: BorderType.Circle,
                            dashPattern: const [3, 5],
                            strokeWidth: 2,
                            child: Container(
                              height: 64,
                              width: 64,
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              child: Center(
                                child: Container(
                                  height: 48,
                                  width: 48,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(198, 255, 224, 1),
                                  ),
                                  child: const Image(
                                      image: AssetImage(
                                          "assets/images/Avatar1.png")),
                                ),
                              ),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        DottedBorder(
                            color: const Color.fromRGBO(237, 237, 237, 1),
                            borderType: BorderType.Circle,
                            dashPattern: const [3, 5],
                            strokeWidth: 2,
                            child: Container(
                              height: 64,
                              width: 64,
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              child: Center(
                                child: Container(
                                  height: 48,
                                  width: 48,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(198, 255, 224, 1),
                                  ),
                                  child: const Image(
                                      image: AssetImage(
                                          "assets/images/Avatar3.png")),
                                ),
                              ),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        DottedBorder(
                            color: const Color.fromRGBO(237, 237, 237, 1),
                            borderType: BorderType.Circle,
                            dashPattern: const [3, 5],
                            strokeWidth: 2,
                            child: Container(
                              height: 64,
                              width: 64,
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              child: Center(
                                child: Container(
                                  height: 48,
                                  width: 48,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(223, 212, 255, 1),
                                  ),
                                  child: const Image(
                                      image: AssetImage(
                                          "assets/images/Avatar4.png")),
                                ),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    const Text(
                      "Name",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyTextField(),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Age",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    NumberList(),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Gender",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GenderDropdown(),
                    const SizedBox(
                      height: 40,
                    ),
                    ButtonWidget(
                      text: "Save changes",
                      onpressed: () {},
                    ),
                  ]),
            )
          ],
        );
      });
}

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: const Color.fromRGBO(246, 247, 247, 1),
      ),
      child: TextField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Enter your name',
        ),
        controller: TextEditingController(text: 'Amal'),
      ),
    );
  }
}

class NumberList extends StatefulWidget {
  @override
  _NumberListState createState() => _NumberListState();
}

class _NumberListState extends State<NumberList> {
  final int totalNumbers = 10;
  final int visibleNumbers = 5;
  final ScrollController _scrollController = ScrollController();
  int selectedIndex = 2; // Initially selecting the middle number

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  if (selectedIndex > 0) {
                    selectedIndex--;
                  }
                  _scrollToSelectedIndex();
                });
              },
            ),
            Container(
              height: 50, // Fixed height for the list
              width: MediaQuery.of(context).size.width *
                  0.63, // Adjust width according to screen size
              child: ListView.builder(
                controller: _scrollController,
                itemCount: totalNumbers,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            index == selectedIndex ? green : Colors.transparent,
                      ),
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          fontSize: 18,
                          color: index == selectedIndex
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                setState(() {
                  if (selectedIndex < totalNumbers - 1) {
                    selectedIndex++;
                  }
                  _scrollToSelectedIndex();
                });
              },
            ),
          ],
        ),
      ],
    );
  }

  void _scrollToSelectedIndex() {
    final double offset = selectedIndex * 50.0 -
        MediaQuery.of(context).size.width / 2 +
        25; // Adjust according to screen size
    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}

class GenderDropdown extends StatefulWidget {
  @override
  _GenderDropdownState createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  String _selectedGender = 'Female'; // Set initial value to Female

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335, // Set width as desired
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), // Set circular border
          color: const Color.fromRGBO(246, 247, 247, 1)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          hint: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('Select Gender'),
          ),
          value: _selectedGender,
          icon: const Icon(Icons.keyboard_arrow_down),
          onChanged: (newValue) {
            setState(() {
              _selectedGender = newValue!;
            });
          },
          items: <String>['Male', 'Female'].map((String gender) {
            return DropdownMenuItem<String>(
              value: gender,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(gender),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
