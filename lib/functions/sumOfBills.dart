import 'package:budget_app/database/data.dart';


sumOfBills(List<Bill> bills){
    return bills.fold(0,(sum, bill) => sum + bill.newprice).toString();
  }
sumOfCategoryBills(List<Bill> bills, String category){
  double sum = 0;
  bills.forEach((bill){
    if(bill.category == category)
      sum += bill.newprice;
  });
  return sum.toString();
}
