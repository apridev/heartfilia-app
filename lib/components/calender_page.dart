import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';
import 'package:heartfilia_app/widgets/daily_schedule_tile.dart';
import 'package:heartfilia_app/widgets/data_schedule_tile.dart';
import 'package:heartfilia_app/widgets/menu_profile_tile.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderPage extends StatefulWidget {
  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: defaultMargin),
              child: Text(
                'Daily Schedule',
                style: primaryTextStyle.copyWith(
                    fontSize: 14, fontWeight: semiBold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/cart-page');
                      },
                      icon: Image.asset(
                        'assets/icons/icon_cart.png',
                        width: 24,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/icon_notification.png',
                        width: 24,
                      )),
                ],
              ),
            ),
          ],
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: blackColor),
      ),
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: RefreshIndicator(
          color: pinkOne,
          onRefresh: _refresh,
          child: ListView(
            children: [
              TableCalendar(
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                startingDayOfWeek: StartingDayOfWeek.monday,
                locale: "en_US",
                rowHeight: 43,
                selectedDayPredicate: (day) => isSameDay(day, today),
                availableGestures: AvailableGestures.all,
                focusedDay: today,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                onDaySelected: _onDaySelected,
                calendarStyle: CalendarStyle(
                  todayDecoration:
                      BoxDecoration(color: pinkTwo, shape: BoxShape.circle),
                  selectedDecoration:
                      BoxDecoration(color: greenOne, shape: BoxShape.circle),
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                    weekendStyle: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: semiBold)),
              ),
              Container(
                // todo menurunkan konten
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.020),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: backgroundColor,
                ),
                child: Container(
                  margin: EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // !Isi Widget Disini
                      Text(
                        '' + today.toString().split(" ")[0],
                        style: primaryTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DataScheduleTile(
                          timer: '10 am',
                          tittle: 'Sun Screen',
                          description:
                              'Wardah UV Shield Essential Sunscreen..'
                      ),
                      DataScheduleTile(
                          timer: '6 am',
                          tittle: 'Serum',
                          description:
                              'Scarlett Whitening Brightly to Glow Mini...'
                      ),
                      DataScheduleTile(
                          timer: '7 pm',
                          tittle: 'Toner',
                          description:
                              "Kiehl's Calendula Herbal Extract Alcohol..."
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/create-calendar');
        },
        backgroundColor: pinkOne,
      ),
    );
  }

  Future<void> _refresh() {
    return Future.delayed(Duration(seconds: 2));
  }
}
