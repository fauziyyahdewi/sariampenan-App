class MailDataModel {
  final String repairId;
  final String description;
  final String shipId;

  MailDataModel(this.repairId, this.description, this.shipId);
}

final List<MailDataModel> dummyDataMail = [
  MailDataModel('1', 'Perbaikan Bagian A', '1'),
  MailDataModel('2', 'Perbaikan Bagian B', '2'),
  MailDataModel('3', 'Perbaikan Bagian C', '2'),
  MailDataModel('4', 'Perbaikan Bagian D', '3'),
];
