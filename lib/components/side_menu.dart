import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  void Function({required String newPage}) changePage;

  SideMenu({required this.changePage});

  @override
  State<SideMenu> createState() => _SideMenuState(changePage: changePage);
}

class _SideMenuState extends State<SideMenu> {
  List<bool> _isOpen = [false, false, false, false, false, false, false];
  void Function({required String newPage}) changePage;

  _SideMenuState({required this.changePage});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
          child: Image.network(
              "https://pbs.twimg.com/profile_images/1414659268318568450/eQPmgbFO_400x400.jpg"),
        ),
        ListTile(
            title: Text('Home'),
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
            onTap: () => changePage(newPage: 'markdown/home.md'),
            autofocus: true),
        Divider(
          height: 1,
          thickness: 1,
        ),
        ExpansionPanelList(
          expandedHeaderPadding: EdgeInsets.all(0),
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _isOpen[index] = !isExpanded;
            });
          },
          children: [
            ExpansionPanel(
                canTapOnHeader: true,
                backgroundColor: Color(0xFFfafafa),
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text('Guide'),
                    leading: Icon(
                      Icons.grid_view_rounded,
                      color: Colors.black,
                    ),
                  );
                },
                body: Column(
                  children: [
                    ListTile(
                        title: Text('Overview'),
                        leading: Icon(Icons.adjust),
                        onTap: () =>
                            changePage(newPage: 'markdown/overview.md')),
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    ListTile(
                        title: Text('Informações iniciais'),
                        leading: Icon(Icons.adjust),
                        onTap: () =>
                            changePage(newPage: 'markdown/overview.md')),
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    ListTile(
                      title: Text('Fluxos'),
                      leading: Icon(Icons.account_tree),
                      onTap: () {
                        Navigator.pushNamed(context, 'event_categories');
                      },
                    ),
                  ],
                ),
                isExpanded: _isOpen[0]),
            // ExpansionPanel(
            //     canTapOnHeader: true,
            //     backgroundColor: Color(0xFFfafafa),
            //     headerBuilder: (context, isExpanded) {
            //       return ListTile(
            //         title: Text('Users'),
            //         leading: Icon(
            //           Icons.person,
            //           color: Colors.black,
            //         ),
            //       );
            //     },
            //     body: Column(
            //       children: [
            //         ListTile(
            //           title: Text('List View'),
            //           leading: Icon(Icons.list),
            //           onTap: () {},
            //         ),
            //         Divider(
            //           height: 1,
            //           thickness: 1,
            //         ),
            //         ListTile(
            //           title: Text('Add New'),
            //           leading: Icon(Icons.add),
            //           onTap: () {},
            //         ),
            //         Divider(
            //           height: 1,
            //           thickness: 1,
            //         ),
            //         ListTile(
            //           title: Text('Categories'),
            //           leading: Icon(Icons.account_tree),
            //           onTap: () {},
            //         ),
            //       ],
            //     ),
            //     isExpanded: _isOpen[1]),
            // ExpansionPanel(
            //     canTapOnHeader: true,
            //     backgroundColor: Color(0xFFfafafa),
            //     headerBuilder: (context, isExpanded) {
            //       return ListTile(
            //         title: Text('Activities'),
            //         leading: Icon(
            //           Icons.transform,
            //           color: Colors.black,
            //         ),
            //       );
            //     },
            //     body: Column(
            //       children: [
            //         ListTile(
            //           title: Text('List View'),
            //           leading: Icon(Icons.list),
            //           onTap: () {},
            //         ),
            //         Divider(
            //           height: 1,
            //           thickness: 1,
            //         ),
            //         ListTile(
            //           title: Text('Add New'),
            //           leading: Icon(Icons.add),
            //           onTap: () {},
            //         ),
            //         Divider(
            //           height: 1,
            //           thickness: 1,
            //         ),
            //         ListTile(
            //           title: Text('Categories'),
            //           leading: Icon(Icons.account_tree),
            //           onTap: () {},
            //         ),
            //       ],
            //     ),
            //     isExpanded: _isOpen[2]),
            // ExpansionPanel(
            //     canTapOnHeader: true,
            //     backgroundColor: Color(0xFFfafafa),
            //     headerBuilder: (context, isExpanded) {
            //       return ListTile(
            //         title: Text('Testimonials'),
            //         leading: Icon(
            //           Icons.forum_rounded,
            //           color: Colors.black,
            //         ),
            //       );
            //     },
            //     body: Column(
            //       children: [
            //         ListTile(
            //           title: Text('List View'),
            //           leading: Icon(Icons.list),
            //           onTap: () {},
            //         ),
            //         Divider(
            //           height: 1,
            //           thickness: 1,
            //         ),
            //         ListTile(
            //           title: Text('Add New'),
            //           leading: Icon(Icons.add),
            //           onTap: () {},
            //         ),
            //         Divider(
            //           height: 1,
            //           thickness: 1,
            //         ),
            //         ListTile(
            //           title: Text('Categories'),
            //           leading: Icon(Icons.account_tree),
            //           onTap: () {},
            //         ),
            //       ],
            //     ),
            //     isExpanded: _isOpen[3]),
            // ExpansionPanel(
            //     canTapOnHeader: true,
            //     backgroundColor: Color(0xFFfafafa),
            //     headerBuilder: (context, isExpanded) {
            //       return ListTile(
            //         title: Text('Blog'),
            //         leading: Icon(
            //           Icons.group_add_rounded,
            //           color: Colors.black,
            //         ),
            //       );
            //     },
            //     body: Column(
            //       children: [
            //         ListTile(
            //           title: Text('List View'),
            //           leading: Icon(Icons.list),
            //           onTap: () {},
            //         ),
            //         Divider(
            //           height: 1,
            //           thickness: 1,
            //         ),
            //         ListTile(
            //           title: Text('Add New'),
            //           leading: Icon(Icons.add),
            //           onTap: () {},
            //         ),
            //         Divider(
            //           height: 1,
            //           thickness: 1,
            //         ),
            //         ListTile(
            //           title: Text('Categories'),
            //           leading: Icon(Icons.account_tree),
            //           onTap: () {},
            //         ),
            //       ],
            //     ),
            //     isExpanded: _isOpen[4]),
            // ExpansionPanel(
            //     canTapOnHeader: true,
            //     backgroundColor: Color(0xFFfafafa),
            //     headerBuilder: (context, isExpanded) {
            //       return ListTile(
            //         title: Text('Stories'),
            //         leading: Icon(
            //           Icons.align_horizontal_left,
            //           color: Colors.black,
            //         ),
            //       );
            //     },
            //     body: Column(
            //       children: [
            //         ListTile(
            //           title: Text('List View'),
            //           leading: Icon(Icons.list),
            //           onTap: () {},
            //         ),
            //         Divider(
            //           height: 1,
            //           thickness: 1,
            //         ),
            //         ListTile(
            //           title: Text('Add New'),
            //           leading: Icon(Icons.add),
            //           onTap: () {},
            //         ),
            //         Divider(
            //           height: 1,
            //           thickness: 1,
            //         ),
            //         ListTile(
            //           title: Text('Categories'),
            //           leading: Icon(Icons.account_tree),
            //           onTap: () {},
            //         ),
            //       ],
            //     ),
            //     isExpanded: _isOpen[5]),
            // ExpansionPanel(
            //     canTapOnHeader: true,
            //     backgroundColor: Color(0xFFfafafa),
            //     headerBuilder: (context, isExpanded) {
            //       return ListTile(
            //         title: Text('CMS'),
            //         leading: Icon(
            //           Icons.apps_outlined,
            //           color: Colors.black,
            //         ),
            //       );
            //     },
            //     body: Column(
            //       children: [
            //         ListTile(
            //           title: Text('List View'),
            //           leading: Icon(Icons.list),
            //           onTap: () {},
            //         ),
            //         Divider(
            //           height: 1,
            //           thickness: 1,
            //         ),
            //         ListTile(
            //           title: Text('Add New'),
            //           leading: Icon(Icons.add),
            //           onTap: () {},
            //         ),
            //         Divider(
            //           height: 1,
            //           thickness: 1,
            //         ),
            //         ListTile(
            //           title: Text('Categories'),
            //           leading: Icon(Icons.account_tree),
            //           onTap: () {},
            //         ),
            //       ],
            //     ),
            //      isExpanded: _isOpen[6]),
          ],
        ),
        // ListTile(
        //   title: Text('Contact Forms'),
        //   leading: Icon(
        //     Icons.grading,
        //     color: Colors.black,
        //   ),
        //   onTap: () {},
        // ),
        // Divider(
        //   height: 1,
        //   thickness: 1,
        // ),
        // ListTile(
        //   title: Text('Settings'),
        //   leading: Icon(
        //     Icons.settings,
        //     color: Colors.black,
        //   ),
        //   onTap: () {},
        // ),
        // Divider(
        //   height: 1,
        //   thickness: 1,
        // ),
      ]),
    );
  }
}
