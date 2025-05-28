import "package:flutter/material.dart";
import "package:get/get.dart";
import "controller_class.dart";

class CounterApp extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        final CounterController controller = Get.put(CounterController());

        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    centerTitle: true,
                    title: Text("GetX Counter sample"),
                    
                ),
                body: Center(
                    child: Obx(() => Text("Count: ${controller.count}")),
                ),
                floatingActionButton: FloatingActionButton(
                    onPressed: controller.increment,
                    child: Icon(Icons.add),
                )
            )
        );
    }
}