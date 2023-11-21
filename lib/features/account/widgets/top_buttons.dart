import 'package:ecom/features/account/widgets/account_button.dart';
import 'package:flutter/material.dart' hide Badge;

class TopButtons extends StatefulWidget {
  const TopButtons({Key? key}) : super(key: key);

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(text: 'Seus pedidos', onTap: () {}),
            AccountButton(text: 'Virar vendedor', onTap: () {}),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            AccountButton(text: 'Sair', onTap: () {}),
            AccountButton(text: 'Lista de desejos', onTap: () {}),
          ],
        ),
      ],
    );
  }
}
