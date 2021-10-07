class MyCheckinHistory{
  MyCheckinHistory(
      {this.date,
      this.checkinTime,
      this.checkoutTime,
      this.islate,
      this.tTime});
  bool islate;
  String checkinTime;
  String checkoutTime;
  String date;
  String tTime;
}

List mycheck = [
  MyCheckinHistory(
    date: '02-05-2021 Thu',
    checkinTime: '09:25am',
    checkoutTime: '6hr 20min',
    islate: false,
    tTime: '6hr 20min',
  ),
  MyCheckinHistory(
    date: '02-05-2021 Thu',
    checkinTime: '09:25am',
    checkoutTime: '6hr 20min',
    islate: true,
    tTime: '6hr 20min',
  ),
  MyCheckinHistory(
    date: '02-05-2021 Thu',
    checkinTime: '09:25am',
    checkoutTime: '6hr 20min',
    islate: true,
    tTime: '6hr 20min',
  ),
  MyCheckinHistory(
    date: '02-05-2021 Thu',
    checkinTime: '09:25am',
    checkoutTime: '6hr 20min',
    islate: false,
    tTime: '6hr 20min',
  ),
];
