import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'core/theme.dart';
import 'features/layout_manager/presentation/layout_manager.dart';
import 'features/home/state/home_page_provider.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

void main() => runApp(Providers());

class Providers extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<HomeTabP>,value(value: HomeTabP()),
        ],
        child: Material(),
      ),//MultiProvider
    );
  }
}

/// [LayoutManagjer] Is a widget that manages the navigation of the app, conjtains a bottom navigation bar
/// and contains logic to switch fromj page to page.

class Material extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      onGenerateTitle: (BuildContext context) => DemoLocalizations.of(context).title,
      localizationsDelegates: [
        const DemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('es', ''),
      ],
      // Watch out: MaterialApp creates a Localizations widget
      // with the specified delegates. DemoLocalizations.of()
      // will only find the app's Localizations widget if its
      // context is a child of the app.
      home: LayoutManager(),
      theme: AppTheme.main(),
      title: "Tok-Tik",
    ); // MaterialApp
  }
}