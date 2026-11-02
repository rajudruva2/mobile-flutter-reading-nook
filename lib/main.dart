import 'package:flutter/material.dart';

      void main() => runApp(const DemoApp());

      class DemoApp extends StatelessWidget {
        const DemoApp({super.key});

        static const Color accent = Color(0xFF5D4037);

        @override
        Widget build(BuildContext context) {
          return MaterialApp(
            title: 'Reading Nook',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: accent),
              useMaterial3: true,
            ),
            home: const DemoHomePage(),
          );
        }
      }

      class DemoHomePage extends StatelessWidget {
        const DemoHomePage({super.key});

        static const List<Map<String, String>> entries = [
          {'title': 'The Secret Garden', 'detail': 'Frances Hodgson Burnett'},
{'title': 'A Wizard of Earthsea', 'detail': 'Ursula K. Le Guin'},
{'title': 'The Hobbit', 'detail': 'J. R. R. Tolkien'}
        ];

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Reading Nook'),
              backgroundColor: DemoApp.accent.withOpacity(0.12),
            ),
            body: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Card(
                  color: DemoApp.accent.withOpacity(0.08),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Reading Nook',
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text('A simple reading list'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                ...entries.map((entry) => Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.menu_book),
                    ),
                    title: Text(entry['title']!),
                    subtitle: Text(entry['detail']!),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                )),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Demo app · sample data only',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        }
      }
