class LogisticDataModel {
  final String repairId;
  final String description;
  final String shipId;

  LogisticDataModel(this.repairId, this.description, this.shipId);
}

final List<LogisticDataModel> dummyDataLogistic = [
  LogisticDataModel('1', 'Logistic A', '1'),
  LogisticDataModel('2', 'Logistic B', '1'),
  LogisticDataModel('3', 'Logistic A', '2'),
  LogisticDataModel('4', 'Logistic B', '2'),
  LogisticDataModel('5', 'Logistic C', '2'),
  LogisticDataModel('6', 'Logistic A', '3'),
  LogisticDataModel('7', 'Logistic B', '3'),
  LogisticDataModel('8', 'Logistic C', '3'),
  LogisticDataModel('9', 'Logistic D', '3'),
  LogisticDataModel('10', 'Logistic E', '3'),
  LogisticDataModel('11', 'Logistic F', '3'),
];
