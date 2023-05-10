import 'package:first_day_flutter/profSp.dart';
import 'package:flutter/material.dart';

class FawryPaymentPage extends StatefulWidget {
  @override
  _FawryPaymentPageState createState() => _FawryPaymentPageState();
}

class _FawryPaymentPageState extends State<FawryPaymentPage> {
  TextEditingController _amountController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Center(child: Text("  Fawry Payment          ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
      backgroundColor: Colors.white,
      leading: TextButton(onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => profSp()),
        );


      },
          child: Text("Back  ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)),

    ),

        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: _isLoading
              ? Center(
            child: CircularProgressIndicator(),
          )
              : Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  "https://th.bing.com/th/id/OIP.kHsX7pal9U8EsARVb2WytAHaDv?w=318&h=176&c=7&r=0&o=5&pid=1.7",
                  width: 500.0,
                  height: 250.0,
                ),
                TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Enter The Period You Need To Show Your Ad. for",
                      fillColor:Colors.blue,
                      labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20))

                  ),
                ),
                SizedBox(height: 20.0),

                TextField(
                  controller: _phoneNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: "Enter phone number",
                      fillColor:Colors.blue,
                      labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20))

                  ),
                ),
                SizedBox(height: 20.0),

                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Enter email",
                      fillColor:Colors.blue,
                      labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20))

                  ),
                ),
                SizedBox(height: 20.0),

                TextField(
                  controller: _descriptionController,
                  decoration: InputDecoration(

                      labelText: "Enter description",
                      fillColor:Colors.blue,
                      labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20))

                  ),
                ),
                SizedBox(height: 20.0),

                Center(
                  child: ElevatedButton(

                    child: const Text('Pay',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),),
                    onPressed: () {
                      setState(() {
                        _isLoading = true;
                      });
                      _makePayment();
                    },

                    style: ElevatedButton.styleFrom(

                      primary:Colors.black ,
                      padding: EdgeInsets.symmetric(horizontal: 50),),

                  ),
                ),
                SizedBox(height: 20.0),

              ],
            ),
          ),

        ));
  }

  void _makePayment() {
    // Perform payment logic here
    // After payment is successful, set _isLoading to false
    setState(() {
      _isLoading = false;
    });
  }
}
