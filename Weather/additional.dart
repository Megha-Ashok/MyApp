import 'package:flutter/material.dart';

class Additional extends StatelessWidget{
      final IconData icon;
      final String label;
      final String value;
      const Additional({
             super.key,
             required this.icon,
             required this.label,
             required this.value,
      });
  @override
  Widget build(BuildContext context) {
    return  Card(
                   elevation: 15,
                     child: Container( 

                    padding:const EdgeInsets.all(6),
                    decoration:
                  BoxDecoration(borderRadius:BorderRadius.circular(10)),
                 
               child: Column(
                 children:[
               const SizedBox(height:8),
                Icon(icon,size:40),
                Text(label,style:const TextStyle(fontSize: 20)),
                Text(value,style:const TextStyle(fontSize:17)),
                 ],
                ),
                     ),
    );
                  
                
            
                    
  }
}