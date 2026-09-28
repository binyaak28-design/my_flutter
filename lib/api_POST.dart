import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApiPost extends StatefulWidget {
  const ApiPost({super.key});

  @override
  State<ApiPost> createState() => _ApiPostState();
}

class _ApiPostState extends State<ApiPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title:  Text("Dio Post Request Example"),),
body: PostRequestWidget(),



    );
  }
}

class PostRequestWidget extends StatefulWidget {
  @override
  _PostRequestWidgetState createState()=>_PostRequestWidgetState();
}

class _PostRequestWidgetState extends State<PostRequestWidget> {

String _responseMessage="";
 TextEditingController firstnameCtrl=TextEditingController();
 final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
Future <void> makePostRequest() async{
  final dio=Dio();
  final url=
   'https://fressery.b4production.com/index.php?route=api/register';
   final formData=FormData.fromMap({
    'firstname':firstnameCtrl.text,
    'lastname': _lastNameController.text,
      'email': _emailController.text,
      'password': _passwordController.text,
      'Telephone': _telephoneController.text,

   });
   try {
    final response=await dio.post(url, data: FormData);
     print("response---------$response");
     if(response.statusCode== 200){
      final responseData = response.data;
      final apiResponse=ApiResponse.fromJson(responseData);
      if (apiResponse.success=="text_success") {
        setState(() {
           _responseMessage = 'Request was successful!';
          });
        } else {
          setState(() {
            _responseMessage = 'Request failed with response: ${responseData}'; 
          });
        }
      } else {
        setState(() {
          _responseMessage = 'Error: ${response.statusCode}';
        });
      }
    } catch (e) {
      // Handle any errors
      setState(() {
        _responseMessage = 'Exception: $e';
      });
        
        
      }
}

@override
Widget build(BuildContext context){
 return Padding(
  padding: const EdgeInsets.all(8.0),
  child: SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              label: Text(
                "First Name"
              ),
              border: OutlineInputBorder()
            ),
            controller: firstnameCtrl,
          ),
        ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                    label: Text("Lastname Name"), border: OutlineInputBorder()),
                controller: _lastNameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                    label: Text("Email ID"), border: OutlineInputBorder()),
                controller: _emailController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                    label: Text("Password"), border: OutlineInputBorder()),
                controller: _passwordController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                    label: Text("Telephone"), border: OutlineInputBorder()),
                controller: _telephoneController,
              ),
            ),
            ElevatedButton(onPressed: makePostRequest,
          child: Text("Make POST Request"),
          
          ),
          SizedBox(height: 20,),
          Text(_responseMessage)
      ],
    ),
  ),
);
}

}
class ApiResponse {
  final String? success;
  ApiResponse({required this.success});
 
    factory  ApiResponse.fromJson(Map<String, dynamic>json){
    return ApiResponse(success: json['success'] as String?);     
    }
  }
  
