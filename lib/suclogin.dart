import 'package:flutter/material.dart';

class Mysuccesslogin extends StatefulWidget {
  const Mysuccesslogin({super.key});

  @override
  State<Mysuccesslogin> createState() => _MysuccessloginState();
}

class _MysuccessloginState extends State<Mysuccesslogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/blankwallpaper.JPEG"),
              fit: BoxFit.cover)),
      child: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.black,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Center(
                child: const Text(
                  "Successfully Logged In!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 390),
                child: Column(children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "Continue",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        child: IconButton(
                          color: Colors.black,
                          onPressed: () {
                            Navigator.pushNamed(context, "homepage");
                          },
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      )
                    ],
                  )
                ]),
              )
            ],
          )),
    );
  }
}
