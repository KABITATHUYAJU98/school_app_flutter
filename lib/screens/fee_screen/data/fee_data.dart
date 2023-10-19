class FeeData {
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(this.receiptNo, this.month, this.date, this.paymentStatus,
      this.totalAmount, this.btnStatus);
}


List<FeeData> fee = [
  FeeData('90000', 'November', '8 Nov 2023', 'Pending', '980\$', 'PAY NOW'),
  FeeData('9000', 'July', '8 Jul 2023', 'Paid', '980\$', 'DOWNLOAD'),
  FeeData('10000', 'December', '8 Dec 2023', 'Paid', '980\$', 'DOWNLOAD'),
];
