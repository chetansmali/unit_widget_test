import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController phone=TextEditingController();
  TextEditingController address=TextEditingController();
  TextEditingController age=TextEditingController();
  TextEditingController city=TextEditingController();

  final FormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Column(
        children: [
          Text('Sign up'),
          Form(
            key: FormKey,
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  validator: (value){
                    if(value!.isEmpty || value == null){
                      return "Enter the value";
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Entet the value",
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(20))
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(),
                SizedBox(height: 20,),
                TextFormField(),
                SizedBox(height: 20,),
                TextFormField(),
                SizedBox(height: 20,),
                TextFormField(),
                SizedBox(height: 20,),
                TextFormField(),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  if(FormKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Proccessing data..!')));
                  }
                }, child:Text('ok') ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
