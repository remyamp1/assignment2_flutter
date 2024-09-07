import 'package:flutter/material.dart';
class Breakfast extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    List<Map> myList=[
{
  "image":"assets/images/Mushroom.jpeg",
  "name":"Mushroom Sauce",
  "weight":"240Z",
  "Rs":"\$8,92",
},
{
  "image":"assets/images/ghetto gastro.jpeg",
  "name":"Ghetto Gastro",
  "weight":"1 Kg",
  "Rs":"\$20,72",
},
{
  "image":"assets/images/avocado.jpg",
  "name":"Avocado",
  "weight":"0.5 Kg",
  "Rs":"\$4,29",
},
{
  "image":"assets/images/egg.jpeg",
  "name":"6 Pieces Eggs",
  "weight":"6 Pieces",
  "Rs":"\$6,92",
},
{
  "image":"assets/images/cupcake.jpeg",
  "name":"Cupcake",
  "weight":"5.0 gm",
  "Rs":"\$100",
},
{
  "image":"assets/images/dryfurit.jpg",
  "name":"Dryfurit",
  "weight":"1 kg",
  "Rs":"\$1000",
},
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 239, 239),
      appBar: AppBar(
        leading: Text("Back",
        style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold,color: Colors.green),),
        title: Text("Items",
        style: TextStyle(fontSize: 15,
        fontWeight: FontWeight.bold,color: Colors.black,),),
        centerTitle: true,
        actions: [
          Icon(Icons.badge_outlined),
          Text("  02",
          style:TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),
        ],

         ),
    body:Column(
      children: [
        Padding(
          padding:EdgeInsets.all(13.0),
        
        child:Row(
          children: [
          Text("Snack",style:TextStyle(fontSize:25,
          color:Color.fromARGB(255, 211, 209, 209))),
          Spacer(),
          Text("Breafast",style:TextStyle(fontSize:25,color:Colors.black)),
          Spacer(),
          Text("Lunch",style:TextStyle(fontSize:25,
          color:Color.fromARGB(255, 211, 209, 209))),
          
        
              ],
        ),
    ),
    
    
    Expanded(

     child:GridView.builder(itemCount:6, 
     gridDelegate:SliverGridDelegateWithFixedCrossAxisCount
        (crossAxisCount:2,crossAxisSpacing: 15,mainAxisSpacing: 15), 
         itemBuilder: (context,index)
           {

            return Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                
                decoration:BoxDecoration(color:Colors.white),
                child:Column(
                  children: [
                 Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(myList[index]["image"]),
                  fit: BoxFit.cover)),
                  height: 400,
                  width: double.infinity,
                 ),
                 Padding(
                   padding: const EdgeInsets.all(7.0),
                   child: Row(
                    children: [
                      Text(myList[index]["name"],style: TextStyle(fontSize: 15)),
                    ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(7.0),
                   child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(myList[index]["weight"],style: TextStyle(fontSize: 15)),
                    ],
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.all(7.0),
                   child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(myList[index]["Rs"],style: TextStyle(fontSize: 20)),
                      Spacer(),
                      CircleAvatar(radius: 15,
                      backgroundColor: Colors.black,
                      child: Text("+",style: TextStyle(fontSize: 20,color: Colors.white),),
                      ),
                    ],
                   ),
                   ),
                  ],
                ),
              ),
            );
           }),
    ),
    ],
    ),
    );
  }}
                