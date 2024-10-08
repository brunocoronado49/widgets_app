import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon
  });

}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Theme Changer Screen',
    subtitle: 'Pantalla para cambiar el tema de la app',
    link: '/theme',
    icon: Icons.color_lens_outlined
  ),
  MenuItems(
    title: 'Riverpod Counter Screen',
    subtitle: 'Pantalla de contador e introduccion a Riverpod',
    link: '/counter',
    icon: Icons.add
  ),
  MenuItems(
    title: 'Botones',
    subtitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),
  MenuItems(
    title: 'Tarjetas',
    subtitle: 'Contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card
  ),
  MenuItems(
    title: 'Progress Indicators',
    subtitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded
  ),
  MenuItems(
    title: 'Snackbars y dialogos',
    subtitle: 'Indicadores en pantalla',
    link: '/snackbar',
    icon: Icons.info_outline
  ),
  MenuItems(
    title: 'Animated Container',
    subtitle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.check_box_outlined
  ),
  MenuItems(
    title: 'UI Controls + Tiles',
    subtitle: 'Serie de controles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined
  ),
  MenuItems(
    title: 'App Tutorial',
    subtitle: 'Introduccion a la app',
    link: '/tutorial',
    icon: Icons.accessible_rounded
  ),
  MenuItems(
    title: 'Infinite Scroll & Pull',
    subtitle: 'Listas infinitas y pull para refrescar',
    link: '/infinite',
    icon: Icons.list_alt_rounded
  ),
];

