import 'package:flutter_application_13/colors.dart';
import 'package:flutter_application_13/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_13/user.dart';

class Home extends StatelessWidget {
  Home({super.key});
  List<userz> users = [
    userz(
        image: 'assets/abuab.jpg',
        name: 'ابو عبيدة',
        time: '6:00',
        lastmessage: 'حي الله المقاومة'),
    userz(
        image: 'assets/wa.jpg',
        name: 'فلسطين دوله بناها ',
        time: '5:00',
        lastmessage: 'ولعتتتتتتتتت'),
    userz(
        image: 'assets/abogz.jpg',
        name: 'ابو تريكة',
        time: '85:45',
        lastmessage: 'الماجيكوووووو'),
    userz(
        image: 'assets/abbb.jpg',
        name: 'افشه',
        time: '85:45',
        lastmessage: 'ابو جبلللللللللل'),
    userz(
        image: 'assets/as.jpg',
        name: 'افشه ',
        time: '85:45',
        lastmessage: 'القاضيه ممكن '),
    userz(
        image: 'assets/mon.jpg',
        name: 'ابو تريكة',
        time: '85:45',
        lastmessage: 'الماجيكوووووو'),
    userz(
        image: 'assets/end.jpg',
        name: 'ابو تريكة',
        time: '85:45',
        lastmessage: 'وداعاااااااااا'),
    userz(
        image: 'assets/saf.jpg',
        name: 'ابو تريكة',
        time: '20:23',
        lastmessage: 'ساحر'),
    userz(
        image: 'assets/zam.jpg',
        name: 'يا يا يا يا  تريكة',
        time: '85:45',
        lastmessage: 'ابو فانله حرير حمرا')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Appcolors.app,
        title: Text('Chats', style: getTitleStyle()),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_rounded,
                color: Colors.black,
                size: 25,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  'Your favorite chat',
                  style: getTitleStyle(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 90,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(users[index].image),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(users[index].name)
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        width: 4,
                      ),
                  itemCount: users.length),
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(users[index].image)),
                    title: Text(
                      users[index].name,
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text(users[index].lastmessage,
                        style: TextStyle(fontSize: 25)),
                    trailing: (Text(users[index].time,
                        style: TextStyle(fontSize: 20))),
                  );
                },
                separatorBuilder: (context, index) => Divider(),
                itemCount: users.length),
          )),
        ],
      ),
    );
  }
}
