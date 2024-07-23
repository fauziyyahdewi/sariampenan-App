class RepairDataModel {
  final String repairId;
  final String description;
  final String shipId;

  RepairDataModel(this.repairId, this.description, this.shipId);
}

final List<RepairDataModel> dummyDataRepair = [
  RepairDataModel('1', 'Perbaikan Bagian A', '1'),
  RepairDataModel('2', 'Perbaikan Bagian B', '1'),
  RepairDataModel('3', 'Perbaikan Bagian C', '1'),
  RepairDataModel('4', 'Perbaikan Bagian D', '1'),
  RepairDataModel('5', 'Perbaikan Bagian E', '1'),
  RepairDataModel('6', 'Perbaikan Bagian A', '2'),
  RepairDataModel('7', 'Perbaikan Bagian B', '2'),
  RepairDataModel('8', 'Perbaikan Bagian C', '2'),
  RepairDataModel('9', 'Perbaikan Bagian A', '3'),
  RepairDataModel('10', 'Perbaikan Bagian B', '3'),
  RepairDataModel('11', 'Perbaikan Bagian C', '3'),
  RepairDataModel('12', 'Perbaikan Bagian D', '3'),
  RepairDataModel('13', 'Perbaikan Bagian E', '3'),
  RepairDataModel('14', 'Perbaikan Bagian F', '3'),
  RepairDataModel('15', 'Perbaikan Bagian G', '3'),
];
