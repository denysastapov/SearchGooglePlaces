# SearchGooglePlaces

![Simulator Screen Recording - iPhone 15 Pro Max - 2023-12-04 at 11 52 06](https://github.com/denysastapov/SearchGooglePlaces/assets/38051100/d75ab501-92ee-4ee1-bc60-38d42b7ebec0)

## Description
The Search Google Places app is a location-based application that allows users to search and discover places based on their input. Leveraging the power of the Google Maps SDK for iOS and Google Places SDK for iOS (version 8.2.0.0), this app provides a seamless and intuitive experience for users to find relevant information about various locations.

## Features
- **Search Places:** Users can enter keywords, names, or categories to search for places of interest.
- **Map Integration:** Visualize search results on an interactive map, enhancing the user's spatial understanding of nearby places.
- **Google Places SDK:** Utilizes the Google Places SDK for iOS to access comprehensive place data and enhance the search experience.

## Usage
1. Launch the application.
2. Enter a search query in the designated input field.
3. View the list of places matching the search criteria.
4. Explore the interactive map to see the location of the selected place.

## Installation
To run the application locally, follow these steps:

- Clone the repository
- Open the project in Xcode or your preferred iOS development environment.

## Important Note:

The 'Pods' folder is not included in the shared repository due to its size (exceeds 100MB). After cloning, run pod install in the project directory to install the required dependencies.
In the SceneDelegate.swift file, replace YOUR_API_KEY with your actual Google Places API key for the app to function properly.

Build and run the application on a simulator or physical iOS device.

## Dependencies
[Google Maps SDK for iOS](https://developers.google.com/maps/documentation/ios-sdk/config?hl=en)

[Google Places SDK for iOS](https://developers.google.com/maps/documentation/places/ios-sdk/config?hl=en)

## License
This project is licensed under the MIT License: Copyright <2023>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
