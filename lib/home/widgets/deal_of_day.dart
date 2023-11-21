import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({Key? key}) : super(key: key);

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  // Product? product;
  // final HomeServices homeServices = HomeServices();

  @override
  void initState() {
    super.initState();
    fetchDealOfDay();
  }

  void fetchDealOfDay() async {
    // product = await homeServices.fetchDealOfDay(context: context);
    setState(() {});
  }

  void navigateToDetailScreen() {
    // Navigator.pushNamed(
    // context,
    // ProductDetailScreen.routeName,
    // arguments: product,
    // );
  }

  @override
  Widget build(BuildContext context) {
    return
        // product == null
        //     ? const Loader()
        //     : product!.name.isEmpty
        //         ? const SizedBox()
        //         :
        GestureDetector(
      onTap: navigateToDetailScreen,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: const Text(
              'Ofertas do dia',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Image.network(
            'https://images.unsplash.com/photo-1699470397842-4f33e2e0da32?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8fA%3D%3D',

            // product!.images[0],

            height: 235,
            fit: BoxFit.fitHeight,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            alignment: Alignment.topLeft,
            child: const Text(
              'R\$100',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
            child: const Text(
              'Thallis',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1699470397842-4f33e2e0da32?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8fA%3D%3D',
                  fit: BoxFit.fitWidth, height: 100,width: 100,),
                  Image.network(
                    'https://images.unsplash.com/photo-1699470397842-4f33e2e0da32?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8fA%3D%3D',
                  fit: BoxFit.fitWidth, height: 100,width: 100,),
                  Image.network(
                    'https://images.unsplash.com/photo-1699470397842-4f33e2e0da32?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8fA%3D%3D',
                  fit: BoxFit.fitWidth, height: 100,width: 100,),
                  Image.network(
                    'https://images.unsplash.com/photo-1699470397842-4f33e2e0da32?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8fA%3D%3D',
                  fit: BoxFit.fitWidth, height: 100,width: 100,),
                ]
                // product!.images
                //     .map(
                //       (e) => Image.network(
                //         e,
                //         fit: BoxFit.fitWidth,
                //         width: 100,
                //         height: 100,
                //       ),
                //     )
                //     .toList(),
                ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ).copyWith(left: 15),
            alignment: Alignment.topLeft,
            child: Text(
              'Ver todas as ofertas',
              style: TextStyle(
                color: Colors.cyan[800],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
