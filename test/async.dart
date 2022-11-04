void main() async {
  func1();
//  await func4(60).then(
//  (value) {
//    print(value);
//    print('then');
//  }. 
//  ).catchError((error) {
//    print(error);
//    print('error');
//  });
  
  try{
    var value = await func4(30);
  print(value);
    print('then'); 
  }catch(error){
    print(error);
    print('error');
  }
    
  func2();
  func3();
}

func1() {
  print("function 1");
}

func2() {
  print("function 2");
}

func3() {
  print("function 3");
}

Future<String> func4(int nilai) {
  return Future.delayed(Duration(seconds: 3), () {
    
 //  int nilai:
    
    if(nilai >40){
      return "Lulus";
    }else{
      return "Tidak Lulus";
    }
    return "Hitung nilai";
  });
}