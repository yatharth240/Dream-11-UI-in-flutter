import 'package:flutter/material.dart';

import '../widgets/playerinfo.dart';

class CreateTeam extends StatelessWidget {
  const CreateTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.arrow_back),
        title: const Column(
          children: [
            Text(
              'Create Team 1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              '3h 25m left',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.help_outline),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.10,
            color: const Color.fromRGBO(245, 245, 245, 1),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      top: constraints.maxHeight * 0.2,
                    )),
                    const Text(
                      'Choose your Captain and Vice Captain',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(top: constraints.maxHeight * 0.07)),
                    const Text(
                      'C gets 2X points, VC gets 1.5x  points',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    )
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Table(
                columnWidths: <int, TableColumnWidth>{
                  0: FlexColumnWidth(MediaQuery.of(context).size.width * 0.016),
                  1: FlexColumnWidth(MediaQuery.of(context).size.width * 0.015),
                  2: FlexColumnWidth(MediaQuery.of(context).size.width * 0.015),
                  3: FlexColumnWidth(MediaQuery.of(context).size.width * 0.015),
                },
                children: [
                  TableRow(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01,
                              // left: MediaQuery.of(context).size.height * 0.005,
                              bottom: MediaQuery.of(context).size.height * 0.005),
                          child: Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.0008,
                                left: MediaQuery.of(context).size.width*0.05,
                                bottom: MediaQuery.of(context).size.height * 0.0008),
                            child: const Row(
                              children: [
                                Text(
                                  'TYPE',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Icon(Icons.arrow_downward_sharp),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01,
                              left: MediaQuery.of(context).size.width*0.05,

                              bottom: MediaQuery.of(context).size.height * 0.005),
                          child:
                              const Text('POINTS', style: TextStyle(fontSize: 14)),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01,
                              left: MediaQuery.of(context).size.width*0.05,

                              bottom: MediaQuery.of(context).size.height * 0.005),
                          child:
                              const Text('%C BY', style: TextStyle(fontSize: 14)),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01,
                              left: MediaQuery.of(context).size.width*0.05,

                              bottom: MediaQuery.of(context).size.height * 0.005),
                          child:
                              const Text('%VC BY', style: TextStyle(fontSize: 14)),
                        )
                      ]),

                  TableRow(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.08)
                    ),
                    children: tableRowData(context)
                  ),
                  TableRow(
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.08)
                      ),
                      children: tableRowData(context)
                  ),
                  TableRow(
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.08)
                      ),
                      children: tableRowData(context)
                  ),
                  TableRow(
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.08)
                      ),
                      children: tableRowData(context)
                  ),
                  TableRow(
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.08)
                      ),
                      children: tableRowData(context)
                  ),
                  TableRow(
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.08)
                      ),
                      children: tableRowData(context)
                  ),
                  TableRow(
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.08)
                      ),
                      children: tableRowData(context)
                  ),
                  TableRow(
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.08)
                      ),
                      children: tableRowData(context)
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                )
      ),
              onPressed: () {

          }, child: const Row(
            children: [
              Icon(Icons.remove_red_eye_outlined),
              Text('  PREVIEW   /   '),
              Icon(Icons.sports_cricket),
              Text('  LINEUP  ')
            ],
          )

          ),
          Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.03)),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
              ),
              onPressed: () {

              }, child: const Text('SAVE',
          ),

          )
        ],
      ),
    );
  }
}
