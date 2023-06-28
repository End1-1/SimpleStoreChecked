const strStock = 'Stock';
const strUsername = 'Username';
const strPassword = 'Password';
const strSave = 'Save';
const strConfig = 'Config';
const strOther = 'Other';
const strGroupOfGoods = 'Quantity of group';

Map<String, Map<String, String>> _translations = {};
String lo(String key) {
  Map<String, String> tr = {
    strStock : 'Պահեստ',
    strUsername: 'Օգտագործող',
    strPassword: 'Գատնաբառ',
    strSave: 'Պահպանել',
    strConfig: 'Կոնֆիգուրացիա',
    strOther: 'Այլ',
    strGroupOfGoods: 'Խոմբի քանակը',
  };
  if (tr.containsKey(key)) {
    return tr[key]!;
  }
  return key;
}