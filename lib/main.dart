import 'package:App_Test/widgets/empty_space_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinema Ticket Booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CinemaTicketBookingPage(),
    );
  }
}

class CinemaTicketBookingPage extends StatefulWidget {
  const CinemaTicketBookingPage({super.key});

  @override
  _CinemaTicketBookingPageState createState() =>
      _CinemaTicketBookingPageState();
}

class _CinemaTicketBookingPageState extends State<CinemaTicketBookingPage> {
  double _zoomLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cinema Ticket Booking')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: GestureDetector(
                onScaleUpdate: (details) {
                  // setState(() {
                  //   _zoomLevel = details.scale;
                  // });
                },
                child: Transform.scale(
                  scale: _zoomLevel,
                  child: const SeatMap(),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Zoom in/out to view selected and unselected seats'),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {
                _zoomLevel++;
                setState(() {});
              },
              child: const Icon(Icons.add)),
          const DynamicHorizontalSpace(10),
          ElevatedButton(
              onPressed: () {
                _zoomLevel--;
                setState(() {});
              },
              child: const Icon(Icons.remove))
        ],
      ),
    );
  }
}

class SeatMap extends StatelessWidget {
  const SeatMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10),
        itemCount: 100, // Number of seats
        itemBuilder: (context, index) {
          bool isSelected = index % 2 == 0; // Example: Even seats are selected
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: isSelected ? Colors.green : Colors.grey,
            ),
          );
        },
      ),
    );
  }
}
