import 'package:flutter/material.dart';

import '../helpers/menu/menu_items.dart';

// una vez se crean estos objetos nunca se van a cambiar
const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/card',
    icon: Icons.credit_card_outlined,
  ),
];
