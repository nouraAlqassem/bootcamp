import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {

int x =1;
int y =0;
int c =2;
print( swapNumber(x));
print(swapNumber(y));
print(swapNumber(c));

print("---------");

String str1 = "The quick brown fox jumps over three meter and better than a lazy dog";
String str2 = " toosmallword";
print(checkletters(str1));
print(checkletters(str2));

print("---------");

String str3 = "HoUse";
String str4 = "DARt";
print(checkCase(str3));
print(checkCase(str4));

String st ="aaakkkkdiwidhw";
countLettersList(st);
}

int swapNumber (int num){//حله بالاراو
    return num -1;
  }
////////
bool checkletters(String str){
  String lower =str.toLowerCase();
  List list = lower.split("");
  Set set = list.toSet();
  set.removeAll({" "});
 
  return set.length==26;
}

////////

  String checkCase(String s){
    int upperCase=0;
    
    for(int i=0; i<s.length; i ++){
       int asciiCode = s.codeUnitAt(i);

    if (asciiCode >= 65 && asciiCode <= 92) {
      upperCase++;
    }
    }
   return (upperCase> s.length /2)? s.toUpperCase() : s.toLowerCase();
  }
//////

void countLetters(String str){
  Map<String, int> map = {};
  str = str.trim();//يحذف المسافه اللي قبل واللي بعد الكلمه
  for(int i =0; i<str.length; i++){
    String letter = str[i];
    if(map.containsKey(letter)){
      map[letter]= map[letter]!+1;
    }else {
      map[letter]=1;
    }
  }
  print(map);
}

void countLettersList(String str){
  List<int> list = List.generate(26, (item)=>item =0);
 
  for(int i=0; i<str.length; i++){
    String letter = str[i];
    int index = letter.codeUnitAt(0)-97;
    list[index]++;
  }
  
  for(int i=0; i<list.length; i++){
    int count = list[i];
    String letter = String.fromCharCode(i+97);

    if(count>0){
      print("$letter: $count");
    }
}
}