class MyOfficeLocation {
  MyOfficeLocation({this.text1, this.text2, this.map});
  String text1;
  String text2;
  String map;
}

List<MyOfficeLocation> myOfficeLocation = [
  MyOfficeLocation(
      text1: 'Lahore Office',
      text2:
          '3rd Floor, Vogue Towers, MM Alam Rd, Block C2, Gulberg III, Lahore-54000, Pakistan.',
      map: 'assets/images/map.png'),
  MyOfficeLocation(
      text1: 'Dubai Office',
      text2:
          'Astrolabs Dubai, Parkside Retail Level – Cluster R, Jumeirah Lakes Towers, Dubai, United Arab Emirates.',
      map: 'assets/images/map.png'),
];
