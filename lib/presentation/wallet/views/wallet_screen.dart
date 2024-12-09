import 'package:flutter/material.dart';
import 'package:uang_bijak/core/widgets/build_spending_item.dart';
import 'package:uang_bijak/presentation/wallet/widgets/upcoming_bills_list.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Wallet",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Total Balance",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 8),
              const Text(
                "Rp 2.000.000",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildActionButton(Icons.add, "Top Up", context),
                  _buildActionButton(Icons.qr_code_rounded, "Scan", context),
                  _buildActionButton(Icons.telegram, "Send", context),
                ],
              ),
              const SizedBox(height: 40),
              Container(
                height: 50,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(text: "Transactions"),
                    Tab(text: "Upcoming Bills"),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    _SpendingList(),
                    _UpcomingList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(
    IconData icon,
    String label,
    BuildContext context,
  ) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Icon(icon, size: 30, color: Colors.white),
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}

class _SpendingList extends StatelessWidget {
  const _SpendingList();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        BuildSpendingItem(
          title: 'Starbucks',
          date: 'Jan 12, 2022',
          amount: '- Rp 100.000',
          amountColor: Colors.red,
        ),
        SizedBox(height: 16),
        BuildSpendingItem(
          title: 'Transfer',
          date: 'Yesterday',
          amount: '- Rp 85.000',
          amountColor: Colors.green,
        ),
        SizedBox(height: 16),
        BuildSpendingItem(
          title: 'YouTube',
          date: 'Jan 16, 2022',
          amount: '- Rp 100.000',
          amountColor: Colors.red,
        ),
      ],
    );
  }
}

class _UpcomingList extends StatelessWidget {
  const _UpcomingList();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        UpcomingBillsList(
          title: 'Starbucks',
          date: 'Jan 12, 2022',
          text: 'Pay',
          textColor: Colors.red,
        ),
        SizedBox(height: 16),
        UpcomingBillsList(
          title: 'Transfer',
          date: 'Yesterday',
          text: 'Pay',
          textColor: Colors.green,
        ),
        SizedBox(height: 16),
        UpcomingBillsList(
          title: 'YouTube',
          date: 'Jan 16, 2022',
          text: 'Pay',
          textColor: Colors.red,
        ),
      ],
    );
  }
}
