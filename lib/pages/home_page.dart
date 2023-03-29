import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/bottombar.dart';
import '../widgets/cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottem Nav Bar

      bottomNavigationBar: const BottemNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            // TabBar
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(0))),
              child: TabBar(
                indicatorColor: Theme.of(context).colorScheme.error,
                indicatorSize: TabBarIndicatorSize.label,
                controller: tabController,
                tabs: [
                  Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    child: "Ongoing".text.lg.make(),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    child: "Listed".text.lg.make(),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    child: "Sme".text.lg.make(),
                  ),
                ],
              ),
            ),
            // TabView
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(0),
                child: TabBarView(
                  controller: tabController,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          SizedBox(height: 20),
                          ShowCard(),
                          SizedBox(height: 20),
                          ShowCard(),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          SizedBox(height: 20),
                          ShowCard(),
                          SizedBox(height: 20),
                          ShowCard(),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          SizedBox(height: 20),
                          ShowCard(),
                          SizedBox(height: 20),
                          ShowCard(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
