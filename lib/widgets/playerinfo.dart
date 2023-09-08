import 'package:flutter/material.dart';


List<Widget> tableRowData(BuildContext context){
  return [
    SizedBox(
      height: MediaQuery.of(context).size.height*0.1,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              const Icon(Icons.info_outline,
                color: Colors.grey,
                size: 18,),
              const Image(
                image: NetworkImage('https://cdn.sportmonks.com/images/cricket/players/3/3.png'),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: constraints.maxWidth*0.06,
                        bottom: constraints.maxHeight*0.04
                    ),
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white,Colors.orangeAccent]
                        )
                    ),
                    width: constraints.maxWidth*0.58,
                    height: constraints.maxHeight*0.21,
                    child: const Text('AFG BAT',style: TextStyle(
                        fontSize: 13
                    ),),
                  ),
                  Container(),
                ],
              )

            ],
          );
        },

      ),
    ),
    Column(

      children: [
        Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02)),
        const Text('R Gurbaz', style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.003)),
        const Text('17 Pts',style: TextStyle(
          fontWeight: FontWeight.w400,
        ),),
      ],

    ),
    Column(
      children: [
        Padding(
            padding: EdgeInsets.only(
                top:MediaQuery.of(context).size.height*0.01,
                bottom: MediaQuery.of(context).size.width*0.01
            ),
            child: const CircleAvatar(
              backgroundColor: Colors.grey,
              radius:20,
              child: CircleAvatar(
                radius: 19,
                backgroundColor: Colors.white,
                child: Text('C',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            )
        ),
        const Text('12.47%', style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400
        ),)
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
            padding: EdgeInsets.only(
                top:MediaQuery.of(context).size.height*0.01,
                bottom: MediaQuery.of(context).size.width*0.01
            ),
            child: const CircleAvatar(
              backgroundColor: Colors.grey,
              radius:20,
              child: CircleAvatar(
                radius: 19,
                backgroundColor: Colors.white,
                child: Text('VC',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            )),
        const Text('7.17 %',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400
          ),)
      ],
    ),

  ];
}


