class TestModel<T> {
  int? id;
  String? packageName;
  String? expireDate;
  int? remainingAmount;
  int? billingPackage;
  int? stockPackage;
  int? customerMember;
  int? totalPackage;

  TestModel(
      {this.id,
      this.packageName,
      this.expireDate,
      this.remainingAmount,
      this.billingPackage,
      this.stockPackage,
      this.customerMember,
      this.totalPackage});

  TestModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    packageName = json['package_name'];
    expireDate = json['expire_date'];
    remainingAmount = json['remaining_amount'];
    billingPackage = json['billing_package'];
    stockPackage = json['stock_package'];
    customerMember = json['customer_member'];
    totalPackage = json['total_package'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['package_name'] = this.packageName;
    data['expire_date'] = this.expireDate;
    data['remaining_amount'] = this.remainingAmount;
    data['billing_package'] = this.billingPackage;
    data['stock_package'] = this.stockPackage;
    data['customer_member'] = this.customerMember;
    data['total_package'] = this.totalPackage;
    return data;
  }
}
