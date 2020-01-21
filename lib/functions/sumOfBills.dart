import 'package:budget_app/database/data.dart';


sumOfBills(bills){
    return bills.fold(0,(sum, bill) => sum + bill.newprice).toString();
  }
sumOfCategoryBills( bills, String category){
  double sum = 0;
  bills.forEach((Bill bill){
    if(bill.category == category)
      sum += bill.newprice;
  });
  return sum.toString();
}
