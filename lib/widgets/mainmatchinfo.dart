import 'package:flutter/material.dart';


class MainMatchInfo extends StatelessWidget {
  const MainMatchInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.22,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.02,
          left: MediaQuery.of(context).size.width * 0.02,
          right: MediaQuery.of(context).size.width*0.02 ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: constraints.maxHeight*0.03)),
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [Color.fromRGBO(248, 249, 251,1),Colors.white])
                ),
                child: Row(
                  children: [
                    Padding(padding : EdgeInsets.only(left : constraints.maxWidth*0.05)),
                    const Text('KCA Presidents Cup T20'),
                    SizedBox(width: constraints.maxWidth*0.12,),
                    const Icon(Icons.sports_cricket,color:
                    Colors.green,),
                    const Text('Lineups Out',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: constraints.maxHeight*0.15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: constraints.maxWidth*0.03),
                    child: const CircleAvatar(),
                  ),
                  const Text('ROY',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 246, 247, 1)
                        ),
                        child: const Text('0s',style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      const Text('11:30 AM',style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(202, 202, 202, 1),
                      ),),
                    ],

                  ),
                  const Text('TIG',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
                  Padding(
                    padding: EdgeInsets.only(right: constraints.maxWidth*0.03),
                    child: const CircleAvatar(),
                  ),
                ],

              ),
              Padding(padding: EdgeInsets.only(top: constraints.maxHeight*0.1)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: constraints.maxWidth*0.03),
                    child: const Text('KCA Royals',style: TextStyle(

                    )),
                  ),
                  Padding(
                      padding : EdgeInsets.only(right : constraints.maxWidth*0.03),
                      child: const Text('KCA Tigers')),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color.fromRGBO(255, 247, 233,1),Colors.white]
                    )
                ),
                width: constraints.maxWidth,
                height: constraints.maxHeight*0.15,
                child: const Center(child: Text('MEGA Coming Soon',
                  style: TextStyle(
                    color: Color.fromRGBO(145, 110, 32, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),),),
              )
            ],
          );
        },
      ),
    );
  }
}
