import 'package:f290_dsm_pdm2_guiame_poc/pages/event_list_card_page.dart';
import 'package:f290_dsm_pdm2_guiame_poc/pages/eventos_page.dart';
import 'package:f290_dsm_pdm2_guiame_poc/pages/websocket_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GuiaMe POC'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListCardEvents(),
                  ),
                );
              },
              child: const Text('List Card Design'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EventosArtefatos(),
                  ),
                );
              },
              child: const Text('ExpansionPanel Design'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebSocketPage(),
                  ),
                );
              },
              child: const Text('WebSocket'),
            ),
          ],
        ),
      ),
    );
  }
}
