import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation {
  car, plane, boat, sunmarine
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTrasport = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper, onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
        }),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTrasport'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar por carro'),
              value: Transportation.car, 
              groupValue: selectedTrasport, 
              onChanged: (value) => setState(() {
                selectedTrasport = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Viajar por bote'),
              value: Transportation.boat, 
              groupValue: selectedTrasport, 
              onChanged: (value) => setState(() {
                selectedTrasport = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By Plaine'),
              subtitle: const Text('Viajar por avion'),
              value: Transportation.plane, 
              groupValue: selectedTrasport, 
              onChanged: (value) => setState(() {
                selectedTrasport = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar por submarino'),
              value: Transportation.sunmarine, 
              groupValue: selectedTrasport, 
              onChanged: (value) => setState(() {
                selectedTrasport = Transportation.sunmarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Desayuno'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Comida'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Cena'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}

