import 'package:flutter/material.dart';


class MatchInfoWidget extends StatelessWidget {
  const MatchInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white,
        width: 3),

        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius : BorderRadius.circular(20),
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            children: [
              Container(
                width: double.infinity,
                height: constraints.maxHeight*0.5,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.redAccent,Colors.yellow],
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(radius: 23,
                        backgroundImage: NetworkImage('https://www.worldometers.info/img/flags/af-flag.gif'),),
                        Text('AFG V/S SL',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),),
                        CircleAvatar(radius: 23,
                        backgroundImage: NetworkImage('https://www.worldometers.info/img/flags/ce-flag.gif')),
                      ],
                    ),
                    Container(
                      height: constraints.maxHeight*0.09,
                      width: constraints.maxWidth*0.5,
                      color: Colors.white,
                      child: const Center(
                        child: Text('3h 28m',style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 13
                        ),),
                      ),
                    )


                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: constraints.maxHeight*0.5,
                child: Column(
                    children: [
                      Container(
                        height: constraints.maxHeight*0.09,
                        width: constraints.maxWidth*0.5,
                        color: Colors.white,
                        child: const Center(
                          child: Text('03:00 PM',style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                              fontSize: 12
                          ),),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: constraints.maxHeight*0.12),),
                      Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Color.fromRGBO(255, 246, 229, 1),Colors.white]
                              )
                          ),
                          height: constraints.maxHeight*0.15,
                          width: constraints.maxWidth,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('MEGA SALE 30 Crore',style : TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(154, 120, 51, 1),
                              )),
                              Icon(Icons.accessibility),

                            ],
                          )

                      )
                    ]

                ),
              ),

            ],
          );
        }),
      ),
    );
  }
}
