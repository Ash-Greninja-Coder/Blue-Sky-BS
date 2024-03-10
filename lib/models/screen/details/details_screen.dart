import 'package:flutter/material.dart';
import 'package:book/models/products.dart'; // Ensure this import is correct
import 'package:book/details/details_screen.dart'; // Ensure this import is correct

class Body extends StatefulWidget {
 const Body({super.key});

 @override
 BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
 final TextEditingController _searchController = TextEditingController();
 List<Book> filteredData = []; // Initialize filteredData as an empty list

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 11,
              color: const Color(0xff2874F0),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                 alignment: Alignment.center,
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                 ),
                 child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search for Products, Brands and More',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    onChanged: (value) {
                      setState(() {
                        if (value.isNotEmpty) {
                          // Filter books where the first letter of the title matches the first letter of the search query
                          filteredData = books
                              .where((element) => element.title.toLowerCase().startsWith(value.toLowerCase()))
                              .toList();
                        } else {
                          // If the search query is empty, reset filteredData to an empty list
                          filteredData = [];
                        }
                      });
                    },
                 ),
                ),
              ),
            ),
            Expanded(
              child: filteredData.isEmpty
                 ? const Center(child: Text('No results found'))
                 : ListView.builder(
                      itemCount: filteredData.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(product: filteredData[index]),
                              ),
                            );
                          },
                          child: ListTile(
                            leading: Image.asset(
                              filteredData[index].image, // Assuming 'image' is a property of Book that holds the asset path
                              width: 50, // Adjust the width as needed
                              height: 50, // Adjust the height as needed
                              fit: BoxFit.cover, // Use BoxFit.cover to maintain the aspect ratio of the image
                            ),
                            title: Text(filteredData[index].title),
                            subtitle: Text(filteredData[index].description),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
 }
}
