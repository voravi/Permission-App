import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PermissionStatus? camaraStatus;
  PermissionStatus? smsStatus;
  PermissionStatus? locationStatus;
  PermissionStatus? calenderStatus;
  PermissionStatus? bluetoothStatus;
  PermissionStatus? storageStatus;
  PermissionStatus? microphoneStatus;
  PermissionStatus? contactStatus;

  myDialogBox() async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 50),
          title: Text(
            "Permission Status :",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Camera Status : ",
                  ),
                  Text("${camaraStatus.toString().split(".")[1]}"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "SMS Status : ",
                  ),
                  Text("${smsStatus.toString().split(".")[1]}"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Location Status : ",
                  ),
                  Text("${locationStatus.toString().split(".")[1]}"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Calender Status : ",
                  ),
                  Text("${calenderStatus.toString().split(".")[1]}"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "buletooth Status : ",
                  ),
                  Text("${bluetoothStatus.toString().split(".")[1]}"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Storage Status : ",
                  ),
                  Text("${storageStatus.toString().split(".")[1]}"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Microphone Status : ",
                  ),
                  Text("${microphoneStatus.toString().split(".")[1]}"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Contact Status : ",
                  ),
                  Text("${contactStatus.toString().split(".")[1]}"),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Permissions"),
        leading: IconButton(
          icon: Icon(Icons.accessibility_new_sharp),
          onPressed: () {
            myDialogBox();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              openAppSettings();
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Reqest permission ...",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SimpleOutlinedButton(
                  outlineColor: Colors.teal,
                  onPressed: () async {
                    camaraStatus = await Permission.camera.request();
                  },
                  child: const Text("Camera"),
                ),
                SimpleOutlinedButton(
                  outlineColor: Colors.teal,
                  onPressed: () async {
                    smsStatus = await Permission.sms.request();
                  },
                  child: const Text("SMS"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SimpleOutlinedButton(
                  outlineColor: Colors.teal,
                  onPressed: () async {
                    locationStatus = await Permission.location.request();
                  },
                  child: const Text("Location"),
                ),
                SimpleOutlinedButton(
                  outlineColor: Colors.teal,
                  onPressed: () async {
                    calenderStatus = await Permission.calendar.request();
                  },
                  child: const Text("Calender"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SimpleOutlinedButton(
                  outlineColor: Colors.teal,
                  onPressed: () async {
                    bluetoothStatus = await Permission.bluetooth.request();
                  },
                  child: const Text("Bluetooth"),
                ),
                SimpleOutlinedButton(
                  outlineColor: Colors.teal,
                  onPressed: () async {
                    storageStatus = await Permission.storage.request();
                  },
                  child: const Text("Storage"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SimpleOutlinedButton(
                  outlineColor: Colors.teal,
                  onPressed: () async {
                    microphoneStatus = await Permission.microphone.request();
                  },
                  child: const Text("Microphone"),
                ),
                SimpleOutlinedButton(
                  outlineColor: Colors.teal,
                  onPressed: () async {
                    contactStatus = await Permission.contacts.request();
                  },
                  child: const Text("Contact"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SimpleOutlinedButton extends StatelessWidget {
  const SimpleOutlinedButton(
      {this.child,
      this.textColor,
      this.outlineColor,
      required this.onPressed,
      this.borderRadius = 6,
      this.padding = const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
      Key? key})
      : super(key: key);
  final Widget? child;
  final Function onPressed;
  final double borderRadius;
  final Color? outlineColor;
  final Color? textColor;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: padding,
        textStyle: TextStyle(color: currentTheme.primaryColor),
        side: BorderSide(color: outlineColor ?? currentTheme.primaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        foregroundColor: textColor ?? outlineColor ?? currentTheme.primaryColor,
      ),
      onPressed: onPressed as void Function()?,
      child: child!,
    );
  }
}
