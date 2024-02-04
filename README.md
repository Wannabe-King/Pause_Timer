# Pause Timer App

## Overview

This Flutter application implements a simple "Pause Timer" game where users need to stop a countdown timer when it matches a randomly generated number. The app uses clear state management and follows the repository pattern for storing and retrieving data.

## Developer Details

**Developer:** Priyanshu Sidar

**Email:** [sidarsunita2@gmail.com]

**LinkedIn:** [(https://www.linkedin.com/in/priyanshu-sidar-639914144/)]

## Features

- Countdown timer with a random number challenge.
- Tracking of successful attempts and total attempts.
- Clean code structure and state management.

## Requirements

- Dart: 3.2.6

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/Wannabe-King/Pause_Timer/

2. Navigate to the project folder:

   ```bash
   cd pause_timer_app

3. Install dependencies:

   ```bash
   flutter pub get

4. Run the app:

   ```bash
   flutter run


## Code Structure

The code is organized into different files for better modularity:

- **main.dart**: Entry point of the application.
- **home.dart**: UI components and structure for the main screen.
- **button_widget.dart** & **button_builder.dart**: Widget for the Start/Stop button.
- **current_seconds_widget.dart**: Widget for displaying the current seconds.
- **random_number_widget.dart**: Widget for displaying the random number.
- **result_widget.dart**: Widget for displaying the result message.
- **timer_widget.dart**: Widget for displaying the countdown timer.


## State Management
The state of the application is managed by the AppRepository class, which extends ChangeNotifier. It handles the countdown timer, random number generation, result message, and scorekeeping.

## Developer's Note
This app hasn't been tested on IOS(As I do not own an apple device) so an issue might occur while running.

## APK for Android:

https://drive.google.com/file/d/1_4JytrxzK2MTCac7qIO9hnMouMRZGEhD/view?usp=drive_link

## Demo



https://github.com/Wannabe-King/Pause_Timer/assets/97578019/5333a817-c861-43a5-9386-a47a1b793df5



https://github.com/Wannabe-King/Pause_Timer/assets/97578019/83861a14-eca8-4725-a7da-054747a8af08


