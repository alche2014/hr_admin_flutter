class Card1 {
  int totalEmployee;
  int present;
  int absent;
  DateTime date;

  Card1({int present, int totalEmployee, DateTime date}) {
    this.present = present;
    this.totalEmployee = totalEmployee;
    this.date = date;
    this.absent = totalEmployee - present;
  }
}

List<Card1> mycard1 = [
  Card1(
    totalEmployee: 174,
    present: 89,
    date: DateTime(2021, 05, 12),
    // date: DateTime.now(),
  ),
  Card1(
    totalEmployee: 170,
    present: 80,
    date: DateTime(2021, 05, 11),
  ),
  Card1(
    totalEmployee: 174,
    present: 150,
    date: DateTime(2021, 05, 10),
  ),
  Card1(
    totalEmployee: 174,
    present: 102,
    date: DateTime(2021, 05, 09),
  ),
];
