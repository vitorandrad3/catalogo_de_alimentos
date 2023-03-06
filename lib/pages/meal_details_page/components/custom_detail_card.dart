import 'package:flutter/material.dart';

class CustomDetailCard extends StatelessWidget {
  const CustomDetailCard({super.key, required this.mealInformation});

  final List<String> mealInformation;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 20,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.88,
        child: ListView.builder(
          itemCount: mealInformation.length,
          itemBuilder: ((___, index) {
            return Container(
              padding: const EdgeInsets.only(left: 10, bottom: 3),
              child: Text(
                mealInformation[index],
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class CustomDetailCard2 extends StatelessWidget {
  const CustomDetailCard2({super.key, required this.mealInformation});

  final List<String> mealInformation;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 20,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        width: MediaQuery.of(context).size.width * 0.88,
        child: ListView.builder(
          itemCount: mealInformation.length,
          itemBuilder: ((___, index) {
            return Container(
                padding: const EdgeInsets.all(3),
                child: ListTile(
                  title: Text(
                    '${index + 1}º: ${mealInformation[index]}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ));
          }),
        ),
      ),
    );
  }
}
