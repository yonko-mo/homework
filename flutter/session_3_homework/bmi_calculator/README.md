# BMI Calculator

A simple Flutter app for calculating Body Mass Index (BMI) based on height and weight. The app uses a dark UI, reusable widgets, and a clean project structure.

## Overview

The user selects a gender, adjusts height in centimeters, changes weight and age, then taps the calculate button to view the BMI result.

The BMI formula used in the app is:

```text
BMI = weight / (heightInMeters * heightInMeters)
```

## Features

- Select gender between `Male` and `Female`.
- Adjust height with a `Slider` from 100 to 220 cm.
- Increase or decrease weight and age using circular buttons.
- Display the BMI result with one decimal place.
- Dark theme with clear colors and simple spacing.
- Organized code using `screens`, `widgets`, and `models`.

## Tech Stack

- Flutter
- Dart
- Material Design

## Project Structure

```text
lib/
  main.dart
  models/
    bmi_model.dart
  screens/
    bmi_calculator_screen.dart
    bmi_result_screen.dart
  widgets/
    age_item.dart
    calculate_button.dart
    custom_background_container.dart
    custom_circle_icon_button.dart
    gender_item.dart
    gender_selection_section.dart
    height_selection_section.dart
    value_changed_item.dart
    weight_age_selection_section.dart
    weight_item.dart
```

## Getting Started

Make sure Flutter is installed and configured:

```bash
flutter doctor
```

Install dependencies:

```bash
flutter pub get
```

Run the app:

```bash
flutter run
```

## Running Tests

```bash
flutter test
```

## Key Files

- `lib/main.dart`: App entry point and theme setup.
- `lib/models/bmi_model.dart`: Stores user data and calculates BMI.
- `lib/screens/bmi_calculator_screen.dart`: Main screen for entering BMI data.
- `lib/screens/bmi_result_screen.dart`: Result screen that displays the calculated BMI.
- `lib/widgets/`: Reusable UI components used across the app.

## Notes

- Default values are height `174 cm`, weight `60 kg`, and age `29`.
- The result screen currently displays only the numeric BMI value.
- A future improvement could add BMI categories such as `Underweight`, `Normal`, `Overweight`, and `Obese`.