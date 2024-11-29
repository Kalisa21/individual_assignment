Country Info App
Country Info App is a Flutter application that allows users to explore information about countries worldwide. Users can search for a country, view its flag, and see detailed insights like region, subregion, population, capital city, and spoken languages.

Features
🌍 Explore Countries: Search and select from a list of countries fetched dynamically from the REST Countries API.
🏴 View Country Details: Displays essential information, including:
Flag
Region and Subregion
Population
Capital
Languages
🔍 Search Functionality: Quickly find countries using a dynamic search bar.
📱 Responsive UI: Designed with a clean and modern interface for smooth navigation.
Screens
1. Welcome Screen
A welcoming interface featuring:
A banner with an image.
A brief description of the app's functionality.
A "Get Started" button that navigates to the Country Selection Screen.
2. Country Selection Screen
Fetches country data from the REST API and displays:
A searchable list of countries.
Each country's name and flag in a scrollable list.
Users can select a country to view its details.
3. Country Details Screen
Displays comprehensive information about the selected country:
Flag
Common Name
Region and Subregion
Population
Capital
Spoken Languages
Getting Started
Prerequisites
Flutter SDK
A code editor like VS Code or Android Studio.
Internet connection to fetch country data.
Installation
Clone this repository:
bash
Copy code
git clone https://github.com/Kalisa21/individual_assignment.git
cd individual assignment
Install dependencies:
bash
Copy code
flutter pub get
Run the app on a connected device or emulator:
bash
Copy code
flutter run
Code Overview
Main Files
main.dart:

Entry point of the app.
Configures navigation routes and themes.
welcome.dart:

Displays the welcome screen with a brief introduction and a "Get Started" button.
secondscreen.dart:

Fetches data from the REST API.
Displays a searchable list of countries.
Implements navigation to the details screen.
output.dart:

Displays detailed information about a selected country.
Reuses UI components for consistent styling.
API Integration
Data is fetched from REST Countries API using the http package.
JSON response is parsed to extract country details.
App Architecture
State Management: Built-in setState for managing UI updates.
Navigation: Uses Navigator.push for screen transitions.
API Handling: Implements asynchronous data fetching with error handling.
UI Components
Welcome Screen:

Uses Flex for responsive layout.
Includes a button styled with ElevatedButton.
Country Selection Screen:

TextField for search functionality.
ListView.builder for dynamic list rendering.
Country Details Screen:

Flag image loaded using Image.network.
Reusable buildDetailRow widget for consistent UI.
Challenges Faced
Dynamic JSON Parsing:
Handled missing or null fields using conditional checks.
Performance Optimization:
Used ListView.builder for efficient rendering of large data sets.
Error Handling:
Displayed meaningful errors for failed API requests.
Screenshots
(Add screenshots of your app here, showing the Welcome Screen, Country Selection Screen, and Details Screen.)

Future Enhancements
Add a favorites feature to bookmark countries.
Display additional details like area, currency, and time zones.
Implement offline caching for country data.

Contributor : willy kalisa
Contributions are welcome! Feel free to fork the repository and submit a pull request.


Acknowledgments
API: REST Countries API
Flutter: https://flutter.dev/
