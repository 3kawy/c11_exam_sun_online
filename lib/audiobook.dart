import 'package:flutter/material.dart';

import 'recolistview.dart';


class  AudiBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AudiBook',style: TextStyle(
        color: Color.fromARGB(255, 75, 60, 180)
        ),),

    titleSpacing: 0,
    leadingWidth: 50,
    leading: Container(child:
          Image.asset('assets/images/Logo Small.jpg'),
    ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings,color: Color.fromARGB(255, 218, 208, 253), ),
            onPressed: () {},
          ),
    ] ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              TextButton(
                onPressed: () {},
                child: Text('See more'),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ['Art', 'Business', 'Comedy', 'Drama']
                  .map((category) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Chip(label: Text(category)),
              ))
                  .toList(),
            ),
          ),
          SizedBox(height: 16.0),
          _buildSectionHeader('Recommended For You'),
          //_buildBookRecommendations(),
          RecoListView(),
          SizedBox(height: 16.0),
          _buildSectionHeader('Best Seller'),
          _buildBestSeller(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {},
          child: Text('See more'),
        ),
      ],
    );
  }


  Widget _buildBestSeller() {
    return Card(
      child: ListTile(
        leading: Image.asset('assets/images/light.jpg', fit: BoxFit.cover),
        title: Text('Light Mage'),
        subtitle: Text('Laurie Forest'),
      ),
    );
  }

  Widget _buildBookCard(String title, String author, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [

          Image.asset(imagePath, height: 150, width: 100, fit: BoxFit.cover),
          SizedBox(height: 8.0),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(author),
        ],
      ),
    );
  }
}