class User {
  String name;
  double price;
  String label;
  int wrapText;

  User(
      {required this.name,
      required this.price,
      required this.label,
      required this.wrapText});

  static User fromJson(json) => User(
      name: json['name'],
      price: json['price'],
      label: json['label'],
      wrapText: json['wrapText']);
}

List<User> getUsers() {
  const hairCutRateList = [
    {
      "name": "Normal Hair Cut",
      "price": 12.00,
      "label": "",
      "wrapText": 0,
    },
    {
      "name": "Shave Or Razor Hair Cut",
      "price": 19.00,
      "label": "",
      "wrapText": 1,
    },
    {
      "name": "Beard With Razor",
      "price": 9.00,
      "label": "",
      "wrapText": 0,
    },
    {
      "name": "Hair Wash And Dry",
      "price": 4.00,
      "label": "",
      "wrapText": 0,
    },
    {
      "name": "Hair Colors With Wash And Dry",
      "price": 19.00,
      "label": "",
      "wrapText": 1,
    },
    {
      "name": "Zero HairCut Or Skin Fade",
      "price": 16.00,
      "label": "",
      "wrapText": 1,
    },
    {
      "name": "Beard With Trimmer",
      "price": 6.00,
      "label": "",
      "wrapText": 0,
    },
    {
      "name": "Kids Under 12",
      "price": 10.00,
      "label": "",
      "wrapText": 0,
    },
    {
      "name": "Mini Facial",
      "price": 30.00,
      "label": "",
      "wrapText": 0,
    },
    {
      "name": "Bread Colour",
      "price": 7.00,
      "label": "",
      "wrapText": 0,
    },
    {
      "name": "Mini Facial",
      "price": 30.00,
      "label": "",
      "wrapText": 0,
    },
  ];
  return hairCutRateList.map<User>(User.fromJson).toList();
}

final openDays = [
  {"day": "Mon", "time": "11 am - 8pm"},
  {"day": "Tues:", "time": "11 am - 8pm"},
  {"day": "Wed:", "time": "11 am - 8pm"},
  {"day": "Thurs:", "time": "11 am - 8pm"},
  {"day": "Fri:", "time": "11 am - 8pm"},
  {"day": "Sat:", "time": "11 am - 8pm"},
  {"day": "Sun:", "time": "11 am - 8pm"},
];
