import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/my_setup.dart';
import 'package:sariampenan/pages/approve_ppkk_page.dart';
import 'package:sariampenan/pages/input_data_page.dart';
import 'package:sariampenan/pages/profile_page.dart';
import 'package:sariampenan/widgets/settings_request.dart';
import 'package:sariampenan/widgets/shortcut_box.dart';
import 'package:sariampenan/widgets/shortcut.dart';
import 'package:sariampenan/widgets/trip_monitor.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'App V1',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: mySetup.primaryColor,
                ),
              ),
              Text(
                'Hello Direksi @name',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: mySetup.primaryColor,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: mySetup.primaryColor,
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(
                      40,
                    )),
                child: Icon(
                  Icons.person_2_rounded,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.06 * height),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: mySetup.primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Kapal Kargo CPH2387',
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: mySetup.primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TripMonitorBox(),
            // SettingRequest(),
            SizedBox(height: 10),
            createInfoButtons(),
            SizedBox(height: 10),
            createOtherMenuButtons(),
          ],
        ),
      ),
    );
  }

  Widget createInfoButtons() {
    double space = 15.0;
    double size = (MediaQuery.of(context).size.width - 20.0 * 2 - space) / 2;

    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: Wrap(
        spacing: space,
        runSpacing: space,
        children: [
          createShortCutInfo(
            size,
            Icons.build,
            'Perbaikan',
            '5',
            Color.fromARGB(255, 239, 90, 111),
            onClick: () {},
          ),
          createShortCutInfo(
            size,
            Icons.shopping_cart_checkout,
            'Logistic',
            '2',
            Color.fromARGB(255, 63, 162, 246),
            onClick: () {},
          ),
          createShortCutInfo(
            size,
            Icons.mail,
            'Surat',
            '1',
            Color.fromARGB(255, 239, 184, 90),
            onClick: () {},
          ),
        ],
      ),
    );
  }

  Widget createOtherMenuButtons() {
    double space = 15.0;
    double size = (MediaQuery.of(context).size.width - 20.0 * 3 - space) / 3;

    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: Wrap(
        spacing: space,
        runSpacing: space,
        children: [
          createShortCutOtherMenu(
            size,
            Icons.shopping_cart_checkout,
            'Aproval Logistik',
            onClick: () {},
          ),
          createShortCutOtherMenu(
            size,
            Icons.build,
            'Aproval Perbaikan',
            onClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ApprovePpkkPage(),
                ),
              );
            },
          ),
          createShortCutOtherMenu(
            size,
            Icons.people,
            'Crew Kapal',
            onClick: () {},
          ),
          createShortCutOtherMenu(
            size,
            Icons.directions_boat,
            'Input LKK',
            onClick: () {},
          ),
          createShortCutOtherMenu(
            size,
            Icons.security_update,
            'Input PPKK',
            onClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputDataPage(),
                ),
              );
            },
          ),
          createShortCutOtherMenu(
            size,
            Icons.document_scanner,
            'Input Hasil Perbaikan',
            onClick: () {},
          ),
        ],
      ),
    );
  }
}
