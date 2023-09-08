import 'package:dream11clone/widgets/drawer.dart';
import 'package:dream11clone/widgets/mainmatchinfo.dart';
import 'package:dream11clone/widgets/matchinfo.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as logger;
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int sI = 0;

    @override
  void initState() {
    // TODO: implement initState
      sI = 0;
    super.initState();

    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor: Colors.transparent,
        onDestinationSelected: (index) {
            setState(() {
              sI = index;
            });
        },
        selectedIndex: sI,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined,
              size: 30,
           ),
            label: 'Home',
            selectedIcon:Icon(Icons.home_outlined,
                size: 30,
            color: Colors.red),

          ),
          NavigationDestination(
            icon: Icon(Icons.cake_outlined,  size: 30,
            ),
            label: 'My Matches',
            selectedIcon: Icon(Icons.cake_outlined,
              size: 30,
            color: Colors.red,),
          ),
          NavigationDestination(
            icon: Icon(Icons.gif_box_outlined,  size: 30,),
            label: 'Rewards',
            selectedIcon: Icon(Icons.gif_box_outlined,
              size: 30,
            color: Colors.red,),
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_outlined,  size: 30,),
            label: 'Chat',
            selectedIcon: Icon(Icons.chat_outlined,
              size: 30,
            color: Colors.red,),
          ),
          NavigationDestination(
            icon: Icon(Icons.money_outlined,  size: 30,),
            label: 'Winners',
            selectedIcon: Icon(Icons.money_outlined,
              size: 30,
            color: Colors.red,),
          ),
        ],

      ),
      drawer: const MainDrawer(),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03)),
              CircleAvatar(
                  backgroundColor: Colors.white,
                  // radius: 5,
                  child: IconButton(
                    icon:
                        const Icon(Icons.person, color: Colors.grey, size: 26),
                    onPressed: () {
                      logger.log("Menu Button is Pressed");
                      Scaffold.of(context).openDrawer();
                    },
                  )),
            ],
          );
        }),
        actions: [
          IconButton(
              onPressed: () {
                logger.log('Alert Button is Pressed');
              },
              icon: const Icon(Icons.add_alert_outlined)),
          IconButton(
              onPressed: () {
                logger.log('Wallet Icon is pressed');
              },
              icon: const Icon(Icons.account_balance_wallet_outlined)),
        ],
        title: const Text(
          'Dream11 Clone',
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: const Color.fromRGBO(140, 28, 34, 1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          ),
          const Text('  Upcoming Matches Info',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
          Container(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(197, 214, 239, 1)),
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: CarouselSlider(
              items: const [
                MatchInfoWidget(),
                MatchInfoWidget(),
                MatchInfoWidget(),
                MatchInfoWidget(),
              ],
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.20,
                viewportFraction: 0.7,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const Text(' Scheduled Matches',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: const [

                MainMatchInfo(),
                MainMatchInfo(),
                MainMatchInfo(),

              ],
            ),
          )


        ],
      ),
    );
  }
}
