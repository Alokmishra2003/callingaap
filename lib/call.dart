import 'package:flutter/material.dart';

class Calling extends StatefulWidget {
  const Calling({Key? key}) : super(key: key);

  @override
  State<Calling> createState() => _CallingState();
}

class _CallingState extends State<Calling> {
  bool pickedUp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Column(
              children: [
                Text(
                  "Ringing..",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 50),
                CircleAvatar(
                  backgroundColor: Colors.white60,
                  radius: 90,
                  child: CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 80,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(
                          "https://imgs.search.brave.com/c_SYVlJP8qMJQq6vLNfTKLhXdIbIAQzMTa_cEwWwzvc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/NTg0OTQ5NDktZWYw/MTBjYmRjYzMxP2l4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4TVRkOGZH/NWxkSGR2Y210OFpX/NThNSHg4TUh4OGZE/QT0mdz0xMDAwJnE9/ODA"),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                // Insert the missing widget here
              ],
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: pickedUp
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pickedUp = false;
                      });
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 50,
                      child: Icon(
                        Icons.call_end,
                        size: 40,
                      ),
                    ),
                  ),
                  if (!pickedUp)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          pickedUp = true;
                        });
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 50,
                        child: Icon(
                          Icons.call,
                          size: 40,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
