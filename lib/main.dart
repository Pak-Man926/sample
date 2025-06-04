import "package:flutter/material.dart";
import "package:get/get.dart";
import "controller_class.dart";

void main() 
{
    runApp(CounterApp());
}
class CounterApp extends StatelessWidget
{
  const CounterApp({super.key});

    @override
    Widget build(BuildContext context)
    {
        final CounterController controller = Get.put(CounterController());

        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    backgroundColor: Colors.blue,
                    centerTitle: true,
                    title: Text("GetX Counter sample"),
                    
                ),
                body: Column(
                    children:[
                         Obx(() => Text("Count: ${controller.count}")),
                    SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                            onPressed: controller.increment,
                            child: Icon(Icons.add),
                        ),
                        SizedBox(width: 10),
                        FloatingActionButton(
                            onPressed: controller.decrement,
                            child: Icon(Icons.remove),
                        ),
                      ],
                    ),
                    ]
                )
                ),
        );
    }
}