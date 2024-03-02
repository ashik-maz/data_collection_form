import 'package:flutter/material.dart';

class datepeaker extends StatefulWidget {
  const datepeaker({super.key});

  @override
  State<datepeaker> createState() => _datepeakerState();
}

class _datepeakerState extends State<datepeaker> {
  TextEditingController monthcontroller = new TextEditingController();
  TextEditingController daycontroller = new TextEditingController();
  TextEditingController yearcontroller = new TextEditingController();
  List<String> monthlist = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  List<String> daylist = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31'
  ];
  List<String> yearlist = [
    '1995',
    '1996',
    '1997',
    '1998',
    '1999',
    '2000',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2006',
    '2007',
    '2008',
    '2009',
    '2010',
    '2011',
    '2012',
    '2013',
    '2014',
    '2015',
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
    '2022',
    '2023',
    '2024',
    '2025',
  ];
  bool displaymounthlist = false;
  bool displaydaylist = false;
  bool displayyearlist = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              inputfield("Month", monthcontroller),
              displaymounthlist
                  ? selectionfield("Month", monthcontroller)
                  : SizedBox(),
              SizedBox(
                width: 10,
              ),
              inputfield("Day", daycontroller),
              displaydaylist
                  ? selectionfield("Day", daycontroller)
                  : SizedBox(),
              SizedBox(
                width: 10,
              ),
              inputfield("Year", yearcontroller),
              displayyearlist
                  ? selectionfield("Year", yearcontroller)
                  : SizedBox(),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.calendar_month_outlined),
            ],
          )
        ],
      ),
    );
  }

  Widget inputfield(String type, TextEditingController controller) {
    return Container(
      width: 95,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextField(
        style: TextStyle(fontSize: 12),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            hintText: type,
            border: InputBorder.none,
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    switch (type) {
                      case "Month":
                        displaymounthlist = !displaymounthlist;
                        break;
                      case "Day":
                        displaydaylist = !displaydaylist;
                        break;
                      case "Year":
                        displayyearlist = !displayyearlist;
                        break;
                    }
                  });
                },
                child: Image.asset(
                  'images/db.png',
                  
                ))),
        controller: controller,
      ),
    );
  }

  Widget selectionfield(String type, TextEditingController controller) {
    return Container(
      height: 200,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 1),
            )
          ]),
      child: ListView.builder(
          itemCount: type == "Month"
              ? monthlist.length
              : type == "Day"
                  ? daylist.length
                  : yearlist.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  switch (type) {
                      case "Month":
                        controller.text=monthlist[index];
                        break;
                      case "Day":
                        controller.text=daylist[index];
                        break;
                      case "Year":
                        controller.text=yearlist[index];
                        break;
                    }


                  
                });
              },
              child: ListTile(
                title: Text(type == "Month"
                    ? monthlist[index]
                    : type == "Day"
                        ? daylist[index]
                        : yearlist[index]),
              ),
            );
          }),
    );
  }
}
