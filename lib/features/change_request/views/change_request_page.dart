import 'package:flutter/material.dart';

class ChangeRequestPage extends StatefulWidget {
  const ChangeRequestPage({super.key});

  @override
  State<ChangeRequestPage> createState() => _RequestViewState();
}

class _RequestViewState extends State<ChangeRequestPage> {

  bool isPickupSelected = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: const Text(
          "Request",
          style: TextStyle(color: Colors.black),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 20),

            const Text(
              "Change pickup or drop-off for",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Tomorrow (Wednesday 05/11)",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 25),

            /// 🔥 Dynamic Toggle
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: Row(
                children: [

                  /// Pickup
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPickupSelected = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isPickupSelected
                              ? const Color(0xffDCC8A1)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Pickup",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: isPickupSelected
                                ? Colors.black
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),

                  /// Dropoff
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPickupSelected = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: !isPickupSelected
                              ? const Color(0xffDCC8A1)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Dropoff",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: !isPickupSelected
                                ? Colors.black
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}