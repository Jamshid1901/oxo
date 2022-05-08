

class Converter{

 static String convertFormat({required  String date}){

    List h = [];
    if(date.isNotEmpty){
      h= date.split('-');
    }

    return '${h[1]}/${h[2]}/${h[0]}';
  }
  static String convertFormatDivider({required  String date}){

    List h = [];
    if(date.isNotEmpty){
      h= date.split('/');
    }

    return '${h[2]}-${h[0]}-${h[1]}';
  }

 static String isFormatted(int date){
   String res = '$date';
   if(date < 10 && date > 0){
      res = '0$date';

     return res;
   }else{
      return res;
   }

 }

}
