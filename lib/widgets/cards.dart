import 'package:flutter/material.dart';

import 'clippath.dart';

class ShowCard extends StatelessWidget {
  const ShowCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Adani Enterprise Limited IPO",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          // 2nd BOX
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //1st
              Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: const FadeInImage(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/e/e4/Adani_2012_logo.png"),
                    width: 80,
                    placeholder: AssetImage("assets/images/error.png"),
                  )),

              Flexible(
                flex: 3,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1),
                    ),
                  ),
                  child: Column(children: const [
                    Text("Offer Date", style: TextStyle(fontSize: 16)),
                    SizedBox(height: 5),
                    Text("Jan 27 - Jan 31",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text(
                      "Offer Price: ₹3276",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ]),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1),
                    ),
                  ),
                  child: Column(children: const [
                    Text("Premium", style: TextStyle(fontSize: 16)),
                    SizedBox(height: 5),
                    Text("₹0/Share",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text("Lot size: 4", style: TextStyle(fontSize: 16)),
                  ]),
                ),
              ),
            ],
          ),
          // LAST BOX
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Theme.of(context).primaryColor),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipPath(
                        clipper: CustomClipPath(),
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                          ),
                          child: const Text(
                            "Exp Return: ₹0 (0%)    ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Icon(Icons.share),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "More details are coming soon!",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 14),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
