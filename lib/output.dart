import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final dynamic country;

  const OutputScreen({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          country['name']['common'],
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Flag section
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6.0,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: country['flags'] != null
                      ? Image.network(
                          country['flags']['png'],
                          width: 200,
                          fit: BoxFit.cover,
                        )
                      : const Icon(Icons.flag, size: 100),
                ),
              ),
              const SizedBox(height: 20),

              // Name section
              Text(
                country['name']['common'],
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              const Divider(
                thickness: 1.5,
                height: 30,
              ),

              // Details section
              buildDetailRow('Region', country['region']),
              buildDetailRow('Subregion', country['subregion']),
              buildDetailRow('Population', country['population'].toString()),
              buildDetailRow(
                  'Capital',
                  country['capital'] != null && country['capital'].isNotEmpty
                      ? country['capital'][0]
                      : 'N/A'),

              const SizedBox(height: 20),

              // Languages section
              const Text(
                'Languages:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              country['languages'] != null
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: (country['languages'] as Map)
                          .values
                          .map((language) => Text(
                                '- $language',
                                style: const TextStyle(fontSize: 16),
                              ))
                          .toList(),
                    )
                  : const Text(
                      'N/A',
                      style: TextStyle(fontSize: 16),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget to display a row of detail information
  Widget buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title:',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
