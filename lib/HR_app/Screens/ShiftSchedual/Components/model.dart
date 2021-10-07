
class MyShiftSchedule {
  MyShiftSchedule({
    this.shifttime,
    this.text1,
    this.text2,
    this.text3,
  });
  String shifttime;
  String text1;
  String text2;
  String text3;
}

List myshiftschedule = [
  MyShiftSchedule(
    shifttime: 'Morning Shift (9am-06pm)',
    text1: '15 Members',
    text2: 'Software Deparrtment',
    text3: '20-15-2021',
  ),
  MyShiftSchedule(
    shifttime: 'Shift 02 (11am-8pm)',
    text1: '15 Members',
    text2: 'Software Deparrtment',
    text3: '20-15-2021',
  ),
  MyShiftSchedule(
    shifttime: 'Shift 03 (01pm-09pm)',
    text1: '15 Members',
    text2: 'Software Deparrtment',
    text3: '20-15-2021',
  ),
];
