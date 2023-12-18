import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:projeto_f7/componentes/appbar_custom.dart';
import 'package:projeto_f7/cores/cores.dart';

class Agenda extends StatefulWidget {
  const Agenda({
    super.key,
  });

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  late List<DateTime?> dates; // Alteração para List<DateTime?>

  @override
  void initState() {
    super.initState();
    dates = [
      DateTime(2023, 12, 1),
      DateTime(2023, 12, 15),
      DateTime(2023, 12, 10),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.primaria,
      appBar: const AppBarCustom(
        title: 'Agenda',
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: MinhasCores.terciaria,
              borderRadius: BorderRadius.circular(20)),
          child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              currentDate: null,
              dayTextStyle: const TextStyle(color: MinhasCores.claro),
              selectedDayHighlightColor: MinhasCores.claro,
              calendarType: CalendarDatePicker2Type.multi,
              selectedDayTextStyle:
                  const TextStyle(color: MinhasCores.terciaria),
              // disableModePicker: false
              selectableDayPredicate: (DateTime day) => false,
              disabledDayTextStyle: const TextStyle(color: MinhasCores.claro),
              yearTextStyle: const TextStyle(color: MinhasCores.claro),
              selectedYearTextStyle:
                  const TextStyle(color: MinhasCores.terciaria),
              weekdayLabels: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb'],
              weekdayLabelTextStyle: const TextStyle(color: MinhasCores.claro),
              controlsTextStyle: const TextStyle(color: MinhasCores.claro),
              // firstDayOfWeek: 0
            ),
            value: dates,
            onValueChanged: (newDates) {
              if (newDates.isNotEmpty) {
                setState(() {
                  dates = newDates;
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
