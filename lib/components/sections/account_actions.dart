import 'package:flutter/material.dart';
import 'package:mobflix/components/box_card.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text('Ações da conta',
                style: Theme.of(context).textTheme.titleMedium),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(
                      Icons.account_balance_wallet,
                      size: 28,
                    ),
                    text: 'Depositar',
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(
                      Icons.cached,
                      size: 28,
                    ),
                    text: 'Transferir',
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(
                      Icons.receipt_long,
                      size: 28,
                    ),
                    text: 'Fatura',
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final Icon icon;
  final String text;

  const _AccountActionsContent(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: icon,
          ),
          Text(text),
        ],
      ),
    );
  }
}
