class ShipMonitorDataModel {
  final String shipId;
  final String name;
  final String destinationFrom;
  final String destinationTo;
  final DateTime tglID;
  final DateTime tglTA;


  ShipMonitorDataModel(this.shipId, this.name, this.destinationFrom, this.destinationTo, this.tglID, this.tglTA);
}

final List<ShipMonitorDataModel> dummyDataShip = [
  ShipMonitorDataModel('1', 'Kapal Kargo CPH2387', 'Surabaya', 'Tarakan', DateTime(2024, 12, 25), DateTime(2024, 12, 25)),
  ShipMonitorDataModel('2', 'Kapal Kargo DGH1678', 'Jakarta', 'Surabaya', DateTime(2024, 9, 21), DateTime(2024, 9, 25)),
  ShipMonitorDataModel('3', 'Kapal Kargo PAH2787', 'Mojokerto', 'Gresik', DateTime(2024, 6, 6), DateTime(2024, 6, 9)),
];