import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const MagellanApp());

class MagellanApp extends StatelessWidget {
  const MagellanApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magellan',
      debugShowCheckedModeBanner: false,
      supportedLocales: const [Locale('ar'), Locale('en')],
      locale: const Locale('ar'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.red),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _qty = 1;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('Magellan — قائمة المطعم')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('طبق اليوم: كبسة دجاج', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('وصف مختصر للطبق مع السعر 25 SAR'),
              const SizedBox(height: 16),
              Row(
                children: [
                  IconButton(onPressed: () => setState(() { if(_qty>1) _qty--; }), icon: const Icon(Icons.remove_circle_outline)),
                  Text('$_qty'),
                  IconButton(onPressed: () => setState(() { _qty++; }), icon: const Icon(Icons.add_circle_outline)),
                  const SizedBox(width: 16),
                  ElevatedButton(onPressed: (){}, child: const Text('أضف إلى العربة'))
                ],
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: FilledButton(onPressed: (){}, child: const Text('انتقال إلى السلة')),
              )
            ],
          ),
        ),
      ),
    );
  }
}