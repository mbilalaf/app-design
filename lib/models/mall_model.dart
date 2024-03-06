class MallModel {
  final String days;
  final String image;
  final String title;
  final String price;

  MallModel({
    required this.days,
    required this.image,
    required this.title,
    required this.price,
  });
}

List<MallModel> rideList = [
  MallModel(
    days: '7',
    image: 'assets/images/blue-car.png',
    title: 'Blue Sports Car',
    price: '3000',
  ),
  MallModel(
    days: '9',
    image: 'assets/images/aeroplane.png',
    title: 'Ride - Duke',
    price: '4000',
  ),
  MallModel(
    days: '4',
    image: 'assets/images/red-flag-car.png',
    title: 'Red Flag Vehicle',
    price: '5000',
  ),
  MallModel(
    days: '3',
    image: 'assets/images/sports-bike.png',
    title: 'Red Sports Bike',
    price: '2500',
  ),
  MallModel(
    days: '2',
    image: 'assets/images/wings.png',
    title: 'Flying wing to wing',
    price: '7000',
  ),
  MallModel(
    days: '1',
    image: 'assets/images/new-year-vehicle.png',
    title: 'New Year Vehicle',
    price: '3000',
  ),
  MallModel(
    days: '3',
    image: 'assets/images/carriage-ride.png',
    title: 'Carriage Ride',
    price: '4500',
  ),
  MallModel(
    days: '8',
    image: 'assets/images/dragon-bike.png',
    title: 'Dragon Motorcycle',
    price: '2000',
  ),
];
