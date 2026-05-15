# Weather App

A simple Flutter weather application that fetches and displays real-time weather information based on city search.

## Features

- Search for weather by city name
- Display current temperature, weather condition, and icons
- Show max and min temperatures
- Display city location and last update time
- Error handling with snackbar notifications
- Dynamic gradient backgrounds based on weather conditions

## Demo

https://github.com/user-attachments/assets/14801b4d-5483-4ca2-822e-7218f8a65072

## Technologies Used

- **Flutter** - Cross-platform mobile framework
- **flutter_bloc** (^9.1.1) - State management using Cubit pattern
- **dio** (^5.9.2) - HTTP client for API requests
- **Material Design** - UI components

## Project Structure

```
lib/
├── main.dart                    # App entry point
├── constants/colors.dart        # Color themes
├── cubits/get_weather_cubit/    # State management (Cubit)
├── models/                      # Data models
├── services/weather_service.dart # API service
├── utils/                       # Helper utilities
├── views/                       # Screens (HomeView, SearchView)
└── widgets/                     # Reusable widgets
```

## How It Works

### State Management

- Uses **Cubit** (part of flutter_bloc) to manage weather data
- Three states:
  - `WeatherInitialState`: Initial empty state
  - `WeatherLoadedState`: Weather data successfully loaded
  - `WeatherFailureState`: Error occurred during API call

### API Integration

- Fetches weather data from WeatherAPI.com
- Makes GET request to `/forecast.json` endpoint
- Converts JSON response into `WeatherModel`

### User Flow

1. User clicks search icon
2. Types city name and submits
3. App calls `getWeather()` cubit method
4. API request is made via `WeatherService`
5. **On Success**: Weather displays, search view closes automatically
6. **On Error**: Error snackbar shows, search view stays open for retry

## Key Implementation Details

### Error Handling with ErrorModel

- Used `ErrorModel` class to standardize error responses
- Contains error code and message
- Displays user-friendly error messages via snackbar
- Users can retry without navigating back to search

### BlocListener for Side Effects

- **city_search_text_field.dart**: Listens for `WeatherLoadedState` → closes search view
- **home_view.dart**: Listens for `WeatherFailureState` → shows error snackbar

### BlocBuilder for UI

- Rebuilds UI when state changes
- Renders different widgets for each state (Initial, Loaded, Failure)

### Theme Colors

- Dynamic gradient backgrounds based on weather condition
- Uses `getThemeColor()` utility to generate appropriate colors

## Installation

1. Clone the repository
2. Run `flutter pub get`
3. Add your WeatherAPI key in `lib/services/weather_service.dart`
4. Run `flutter run`

## API Used

- **Service**: WeatherAPI.com
- **Endpoint**: `https://api.weatherapi.com/v1/forecast.json`
- **Free Plan**: 1 million calls/month

## What Was Learned

✅ BLoC/Cubit pattern for state management  
✅ How to handle API calls with proper error handling  
✅ Using `BlocListener` for side effects (navigation, snackbars)  
✅ Using `BlocBuilder` for UI rendering  
✅ Creating reusable widgets and models  
✅ JSON serialization and deserialization  
✅ Proper error feedback to users
