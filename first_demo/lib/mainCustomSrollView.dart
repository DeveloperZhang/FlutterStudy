import 'package:flutter/material.dart';

main()=>runApp(CustomScrollViewWidget());

class CustomScrollViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: '滚动组件',
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 180.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('CustomScrollView'),
                background: Image.asset('assets/banner/banner.jpeg'),
              ),
            ),
            SliverGrid( gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 3.0
            ),
              delegate:SliverChildBuilderDelegate((BuildContext context, int index){
                return Card(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text('grid $index'),
                  ),
                );
              },
              childCount: 11,
              ),
            ),
            SliverFixedExtentList(
                delegate: SliverChildListDelegate(
                  List.generate(20, (index){
                    return GestureDetector(
                      onTap: (){
                        print("单击$index");
                      },
                      child: Card(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(15),
                          child: Text('list$index'),
                        ),
                      ),
                    );
                  })
                ),
                itemExtent: 60.0
            ),
          ],
        ),
      ),
    );
  }
}