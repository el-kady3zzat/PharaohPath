# Pharaoh's Path

Pharaoh's Path is a mobile application built using **Flutter** that serves as a travel and tourism guide. The app allows users to explore various places, save their favorite spots, and interact with a variety of travel-related features. It leverages **SharedPreferences** for local data storage, **GetX** for state management, and various UI components to enhance user experience.

---

## Features

- **User Authentication**: Sign up and login to save your preferences, such as favorite places and profile images.
- **Place Details**: Browse through a list of places, view details, and add them to favorites.
- **Localization**: Supports both English and Arabic languages for wider reach.
- **Custom Widgets**: Reusable and customizable widgets like `PharaohButton`, `PharaohDialog`, and `PharaohTextField` for a consistent and easy-to-use UI.
- **State Management**: Uses GetX for efficient state management and navigation.
- **Data Persistence**: SharedPreferences are used for storing user data and preferences locally.

---

## Tech Stack

- **Flutter**: For building a responsive UI.
- **Dart**: Programming language used for the app logic.
- **GetX**: State management and navigation.
- **SharedPreferences**: Local storage for saving user preferences.
- **Material Design**: UI components that follow Material Design guidelines for a consistent and modern design.

---

## Project Structure

### Core

- **Colors**: Contains color constants used throughout the app.
- **Strings**: Stores app-specific strings (like error messages, labels, etc.) for easier localization and customization.
- **Utils**: Contains utility functions, including the size configuration and any helper methods.
- **Translations**: Manages localization for the app, providing support for Arabic and English languages.

### Data

- **Models**: Defines data models such as `User`, `Place`, and others for easy data handling.
- **Places**: Stores the list of places and other related data.
- **Preferences**: Handles interactions with **SharedPreferences** for storing and retrieving user data.

### UI

- **Widgets**: Custom widgets like `PharaohButton`, `PharaohTextField`, and `PharaohDialog` are used throughout the app for consistency and reusability.
- **Screens**: Various screens in the app such as the login screen, place details screen, and home screen.

---

## Screenshots
<p align="center"><img src="https://github.com/user-attachments/assets/a8194bbc-d6d6-4511-b9bd-3cd52249defd"  alt="Splash" height="844" width="431.38"/></p>
<p align="center"><img src="https://github.com/user-attachments/assets/a6ae5165-d0d6-41d3-aebd-fa70c467e373"  alt="Login" height="844" width="431.38"/></p>
<p align="center"><img src="https://github.com/user-attachments/assets/f9a9288b-df98-4182-bf41-97063181cc48"  alt="Register" height="844" width="431.38"/></p>
<p align="center"><img src="https://github.com/user-attachments/assets/1afd8ee9-5095-4dee-8be9-12c4d8b0dccd"  alt="Places" height="844" width="431.38"/></p>
<p align="center"><img src="https://github.com/user-attachments/assets/868a1b52-b19a-4be1-ac03-b80c3b97081a"  alt="governorate" height="844" width="431.38"/></p>
<p align="center"><img src="https://github.com/user-attachments/assets/8288e98d-be03-4b91-ae83-e2ad40b8ec0f"  alt="Favorits" height="844" width="431.38"/></p>
<p align="center"><img src="https://github.com/user-attachments/assets/e0a83e18-d29b-476d-8cc9-0b8e4ef0efa5"  alt="Details" height="844" width="431.38"/></p>
<p align="center"><img src="https://github.com/user-attachments/assets/73f7e86e-5ad6-4720-a9b8-550c2a498928"  alt="Profile" height="844" width="431.38"/></p>

**Video**

https://github.com/el-kady3zzat/PharaohPath/blob/master/Video.mp4
