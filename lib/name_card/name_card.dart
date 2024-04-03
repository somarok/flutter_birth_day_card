import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  const NameCard({
    super.key,
    this.name,
    this.job,
    this.phone,
    this.linkUrl,
    this.email,
  });

  final String? name;
  final String? job;
  final String? phone;
  final String? linkUrl;
  final String? email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 150,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color.fromARGB(255, 209, 186, 255),
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Color.fromARGB(255, 74, 74, 74),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                '🌸${name ?? 'YunZi Song'}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 20),
              child: Text(
                '${job ?? 'Flutter Developer'}✨',
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 30),
              child: Divider(),
            ),
            SizedBox(
              width: 250,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Icon(Icons.phone),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: Text(phone ?? '010.1234.5678'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Icon(Icons.link),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: Text(
                          linkUrl ?? 'somarok.tistory.com',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Icon(Icons.email),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: Text(email ?? 'yoonji5809@gmail.com'),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
