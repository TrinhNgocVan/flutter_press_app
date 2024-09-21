


Future<bool> login(String email, String password) async{
  print('User credential : email - ${email} , password :  ${password}');
  try{
    var uri = Uri.parse("https://jsoplaceholder.typicode.com/albums/1");
    var result  = await http.get(uri);
    return result.statusCode == 200;
  }catch(e){
    print(e.toString());
    return false;
  }
}

