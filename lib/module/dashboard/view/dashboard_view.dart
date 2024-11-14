import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/mahasiswa/view/mahasiswa_view.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Badge(
                label: Text(
                  "6",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Icon(MdiIcons.chatQuestion),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Badge(
                label: Text(
                  "3",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Icon(Icons.notifications),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  QSearchField(
                    label: "Searchs",
                    value: null,
                    prefixIcon: Icons.search,
                    suffixIcon: null,
                    onChanged: (value) {},
                    onSubmitted: (value) {},
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  QGridMenu(
                    items: [
                      {
                        "label": "Product",
                        "icon": Icons.store,
                        "color": Colors.red,
                        "view": UkFormView(),
                      },
                      {
                        "label": "Customer",
                        "icon": Icons.people,
                        "color": Colors.green,
                        "view": UkDashboard9View(),
                      },
                      {
                        "label": "Supplier",
                        "icon": Icons.emoji_people,
                        "color": Colors.blue,
                        "view": UkDashboard10View(),
                      },
                      {
                        "label": "User",
                        "icon": Icons.person,
                        "color": Colors.grey,
                        "view": UkDashboard8View(),
                      },
                      {
                        "label": "Report",
                        "icon": Icons.list_alt,
                        "color": Colors.purple,
                        "view": UkDashboard7View(),
                      },
                      {
                        "label": "Stock",
                        "icon": Icons.numbers,
                        "color": Colors.orange,
                        "view": MahasiswaView(),
                      },
                      {
                        "label": "Export/Import",
                        "icon": Icons.import_contacts,
                        "color": Colors.blueAccent,
                        "view": UkNavigationView(),
                      },
                      {
                        "label": "Backup/Restore",
                        "icon": Icons.backup,
                        "color": Colors.pink,
                        "view": UkButtonView(),
                      }
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
