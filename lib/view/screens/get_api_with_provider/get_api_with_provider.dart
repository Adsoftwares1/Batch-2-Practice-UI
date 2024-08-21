


import 'package:flutter/material.dart';
import 'package:myclassprojectpractice/controllers/get_api_with_provider/get_api_with_provider.dart';
import 'package:provider/provider.dart';

class GetApiWithProviderScreen extends StatefulWidget {
  const GetApiWithProviderScreen({super.key});

  @override
  State<GetApiWithProviderScreen> createState() => _GetApiWithProviderScreenState();
}

class _GetApiWithProviderScreenState extends State<GetApiWithProviderScreen> {

  late GetApiWithProviderController provider;

  @override
  void initState() {
    provider = Provider.of<GetApiWithProviderController>(context, listen: false);

    provider.getAllUsersData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<GetApiWithProviderController>(builder: (contex, watcher, child){
        return ListView.builder(
        itemCount: provider.allusersData.length,
        itemBuilder: (context, index){
        return Container(
          child: Row(
            
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(watcher.allusersData[index].image_url),
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Text("${watcher.allusersData[index].first_name}"),
                  Text("${watcher.allusersData[index].last_name}"),
                ],
              ),
              SizedBox(width: 950,),
              Text("${watcher.allusersData[index].email}"),
            ],
          ),
        );
      });
      })
    );
  }
}