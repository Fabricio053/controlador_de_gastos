import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:projeto_f7/componentes/appbar_custom.dart';
import 'package:projeto_f7/cores/cores.dart';

class Agenda extends StatefulWidget {
  const Agenda({super.key,});

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  late List<DateTime> dates;
  @override
  void initState() {
    super.initState();
  dates = [];
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const AppBarCustom(title: 'Agenda', ),
      body: Center(child: 
      Container(
        color: MinhasCores.claro,
        child: CalendarDatePicker2(
          config: CalendarDatePicker2Config(
            selectedDayHighlightColor: MinhasCores.terciaria,
        calendarType: CalendarDatePicker2Type.multi,
          ),
          value: dates,
          onValueChanged: (dates) => dates = dates,
        ),
      )),
    );
  }
}