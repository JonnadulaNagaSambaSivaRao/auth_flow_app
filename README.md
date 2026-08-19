# 🔐 Flutter User Registration & Login Flow

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white" />
  <img src="https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart&logoColor=white" />
  <img src="https://img.shields.io/badge/Material%203-UI-757575?style=for-the-badge&logo=materialdesign&logoColor=white" />
  <img src="https://img.shields.io/badge/go__router-Navigation-4285F4?style=for-the-badge" />
</p>

<p align="center">
  <b>🚀 A responsive Flutter authentication application with reusable UI components, validation, loading states, success/error handling, and clean navigation.</b>
</p>

---

## 🌟 Project Overview

This project demonstrates how to build a modern **User Registration and Login flow** using Flutter and reusable components.

The application provides a complete frontend authentication experience:

```text
┌──────────────────┐
│  📝 Registration │
└────────┬─────────┘
         │
         ▼
┌──────────────────┐
│   🔑 Login       │
└────────┬─────────┘
         │
         ▼
┌──────────────────┐
│  🏠 Dashboard    │
└──────────────────┘
```

The UI is designed to work across:

📱 Mobile
💻 Desktop
🖥️ Large screens

---

# ✨ Features

| Feature                     | Status |
| --------------------------- | ------ |
| 📝 User Registration        | ✅      |
| 🔐 User Login               | ✅      |
| 📧 Email Validation         | ✅      |
| 🔑 Password Validation      | ✅      |
| 🔄 Confirm Password         | ✅      |
| 👁️ Password Visibility     | ✅      |
| ⏳ Loading State             | ✅      |
| ✅ Success State             | ✅      |
| ❌ Error State               | ✅      |
| 🧭 Navigation               | ✅      |
| 📱 Responsive UI            | ✅      |
| 🧩 Reusable Components      | ✅      |
| 🎨 Material 3 UI            | ✅      |
| 🚪 Logout                   | ✅      |
| 🗄️ Database Authentication | 🔜     |
| 🔐 JWT Authentication       | 🔜     |
| 🌐 FastAPI Backend          | 🔜     |

---

# 🛠️ Technologies Used

### 🎨 Frontend

```text
Flutter
Dart
Material 3
```

### 🧭 Navigation

```text
go_router
```

### 🧱 Architecture

```text
Reusable Widgets
Screen-based Architecture
Service Layer
Model Layer
Validation Utilities
Theme Layer
```

---

# 📁 Project Structure

```text
auth_flow_app/
│
├── 📂 lib/
│   │
│   ├── 📄 main.dart
│   │
│   ├── 📂 screens/
│   │   ├── 📄 register_screen.dart
│   │   ├── 📄 login_screen.dart
│   │   └── 📄 home_screen.dart
│   │
│   ├── 📂 widgets/
│   │   ├── 📄 app_text_field.dart
│   │   ├── 📄 app_button.dart
│   │   ├── 📄 auth_card.dart
│   │   ├── 📄 auth_header.dart
│   │   └── 📄 responsive_layout.dart
│   │
│   ├── 📂 services/
│   │   └── 📄 auth_service.dart
│   │
│   ├── 📂 models/
│   │   └── 📄 user.dart
│   │
│   ├── 📂 theme/
│   │   └── 📄 app_theme.dart
│   │
│   └── 📂 utils/
│       └── 📄 validators.dart
│
├── 📄 pubspec.yaml
├── 📄 pubspec.lock
└── 📄 README.md
```

---

# 🧩 Component Architecture

The application follows a reusable component hierarchy:

```text
                        🚀 MyApp
                           │
             ┌─────────────┴─────────────┐
             │                           │
        🎨 AppTheme                  🧭 GoRouter
                                         │
                       ┌─────────────────┼─────────────────┐
                       │                 │                 │
                       ▼                 ▼                 ▼
                 📝 Register         🔐 Login         🏠 Home
                       │                 │                 │
                 Responsive         Responsive          AppBar
                       │                 │                 │
                   AuthCard          AuthCard          Dashboard
                       │                 │
                 AuthHeader         AuthHeader
                       │                 │
                AppTextField       AppTextField
                       │                 │
                AppTextField       AppTextField
                       │                 │
                AppTextField          AppButton
                       │
                AppTextField
                       │
                   AppButton
```

---

# 🔄 Application Flow

## 📝 Registration Flow

```text
Start
  │
  ▼
Registration Screen
  │
  ├── Enter Name
  │
  ├── Enter Email
  │
  ├── Enter Password
  │
  └── Confirm Password
          │
          ▼
      Validation
          │
     ┌────┴────┐
     │         │
   ❌ Invalid  ✅ Valid
     │         │
     ▼         ▼
   Error     Loading
               │
               ▼
        Registration Success
               │
               ▼
             Login
```

---

# 🔐 Login Flow

```text
Login Screen
     │
     ├── Email
     │
     └── Password
           │
           ▼
       Validation
           │
      ┌────┴────┐
      │         │
    ❌ Error   ✅ Valid
      │         │
      ▼         ▼
   Show Error  Loading
                  │
                  ▼
             Authentication
                  │
             ┌────┴────┐
             │         │
          ❌ Failed   ✅ Success
             │         │
             ▼         ▼
          Error      Dashboard
```

---

# 🧱 Reusable Components

## 🔤 AppTextField

A reusable form field component used for:

```text
👤 Name
📧 Email
🔑 Password
🔐 Confirm Password
```

It supports:

* Labels
* Hints
* Icons
* Validation
* Password hiding
* Password visibility
* Keyboard types
* Suffix icons

---

## 🔘 AppButton

A reusable button component that supports:

```text
Normal State
     ↓
Loading State
     ↓
Disabled State
```

Example:

```text
┌──────────────────────────────┐
│       🔐 Create Account      │
└──────────────────────────────┘
```

During loading:

```text
┌──────────────────────────────┐
│            ⏳                │
└──────────────────────────────┘
```

---

## 🪪 AuthHeader

Reusable authentication header containing:

```text
       🔒
       │
   Page Title
       │
    Subtitle
```

Used by both:

```text
Register Screen
Login Screen
```

---

## 🃏 AuthCard

Provides a consistent authentication container with:

* Rounded/card layout
* Padding
* Elevation
* Responsive width

---

## 📱 ResponsiveLayout

The authentication content uses a maximum width so the UI remains comfortable on large screens.

```text
Mobile
┌───────────────┐
│               │
│   Auth Card   │
│               │
└───────────────┘


Desktop
┌─────────────────────────────────────┐
│                                     │
│            ┌───────────┐            │
│            │ Auth Card │            │
│            └───────────┘            │
│                                     │
└─────────────────────────────────────┘
```

---

# ✅ Form Validation

The application validates:

### 👤 Name

```text
Required
Minimum 2 characters
```

### 📧 Email

```text
Required
Valid email format
```

### 🔑 Password

```text
Required
Minimum 6 characters
```

### 🔐 Confirm Password

```text
Required
Must match password
```

---

# ⏳ Application States

The application demonstrates multiple UI states.

### 🟢 Idle

```text
Create Account
```

### 🟡 Loading

```text
       ⏳
```

### 🟢 Success

```text
✅ Registration successful!
```

### 🔴 Error

```text
❌ Invalid email or password
```

---

# 🧭 Navigation

The application uses `go_router`.

Routes:

```text
/register
/login
/home
```

Navigation flow:

```text
/register
     │
     │ Registration Success
     ▼
/login
     │
     │ Login Success
     ▼
/home
```

---

# 🚀 Installation

## 1️⃣ Verify Flutter

Open PowerShell:

```powershell
flutter --version
```

Check Dart:

```powershell
dart --version
```

Check Flutter environment:

```powershell
flutter doctor
```

---

# 📦 Create the Project

```powershell
cd C:
```

Create the application:

```powershell
flutter create auth_flow_app
```

Enter the project:

```powershell
cd auth_flow_app
```

---

# 📥 Install Dependencies

Install `go_router`:

```powershell
flutter pub add go_router
```

Get dependencies:

```powershell
flutter pub get
```

---

# ▶️ Run the Application

### 🌐 Chrome

```powershell
flutter run -d chrome
```

### 📱 Connected Android Device

First check devices:

```powershell
flutter devices
```

Then:

```powershell
flutter run
```

---

# 🧪 Analyze the Project

Format the Dart code:

```powershell
dart format lib
```

Analyze:

```powershell
flutter analyze
```

Run tests:

```powershell
flutter test
```

---

# 🧪 Testing Checklist

```text
☐ Registration screen opens
☐ Empty name validation works
☐ Empty email validation works
☐ Invalid email validation works
☐ Password validation works
☐ Confirm password validation works
☐ Password visibility works
☐ Registration loading state works
☐ Registration success message works
☐ Navigation to Login works
☐ Login validation works
☐ Login loading state works
☐ Login success works
☐ Dashboard opens
☐ Logout works
☐ Mobile layout works
☐ Desktop layout works
```

---

# 🎨 UI Design

The application uses **Material 3** components.

Main UI elements include:

```text
🎨 Material Theme
🃏 Cards
🔘 Elevated Buttons
📝 Text Fields
🔒 Password Fields
👤 Profile Avatar
📊 Dashboard Card
📱 Responsive Layout
```

---

# 🔐 Authentication Architecture

Current version:

```text
Flutter UI
    │
    ▼
AuthService
    │
    ▼
In-Memory Authentication
```

The project can later be upgraded to:

```text
Flutter
   │
   │ HTTP / REST API
   ▼
FastAPI Backend
   │
   ├── Registration
   │
   ├── Login
   │
   ├── Password Hashing
   │
   └── JWT Token
   │
   ▼
SQLAlchemy
   │
   ▼
Database
```

---


```

---

# 🛡️ Security

For production authentication, the frontend should **not** store plain-text passwords.

A production architecture should use:

```text
Password
   │
   ▼
HTTPS
   │
   ▼
FastAPI
   │
   ▼
Password Hashing
   │
   ▼
Database
```

Authentication tokens should also be stored securely using an appropriate secure-storage mechanism.

---

# 📊 Project Architecture

```text
                  ┌───────────────────┐
                  │    Flutter UI     │
                  └─────────┬─────────┘
                            │
             ┌──────────────┼──────────────┐
             │              │              │
             ▼              ▼              ▼
          Screens        Widgets        Theme
             │              │
             └───────┬──────┘
                     │
                     ▼
                AuthService
                     │
                     ▼
                   Model
```

---

# 💡 Why Reusable Components?

Instead of creating separate buttons everywhere:

```dart
ElevatedButton(...)
```

the application uses:

```dart
AppButton(...)
```

Instead of creating individual text fields repeatedly:

```dart
TextFormField(...)
```

the application uses:

```dart
AppTextField(...)
```

This makes the project:

```text
✅ Cleaner
✅ Easier to maintain
✅ Easier to test
✅ Easier to scale
✅ Consistent
✅ Reusable
```

---

# 🏆 Learning Outcomes

After completing this project, you will understand:

```text
✔ Flutter project structure
✔ Stateful widgets
✔ Forms
✔ Form validation
✔ TextEditingController
✔ Reusable widgets
✔ Navigation
✔ go_router
✔ Loading states
✔ Error handling
✔ Success states
✔ Responsive UI
✔ Material 3
✔ Service-layer architecture
✔ Basic authentication architecture
```

---

# 📸 Application Flow Preview

```text
       🔐 AUTHENTICATION APP
              │
              ▼
     ┌──────────────────┐
     │  📝 REGISTER     │
     │                  │
     │  👤 Full Name    │
     │  📧 Email        │
     │  🔑 Password     │
     │  🔐 Confirm      │
     │                  │
     │ [Create Account] │
     └────────┬─────────┘
              │
              ▼
     ┌──────────────────┐
     │   🔑 LOGIN       │
     │                  │
     │  📧 Email        │
     │  🔑 Password     │
     │                  │
     │     [Login]      │
     └────────┬─────────┘
              │
              ▼
     ┌──────────────────┐
     │  🏠 DASHBOARD    │
     │                  │
     │   👤 Welcome!    │
     │                  │
     │   📊 Dashboard   │
     │                  │
     │     🚪 Logout    │
     └──────────────────┘
```

---


---



---

<p align="center">

### 🚀 Built with Flutter & Dart

**Register → Login → Dashboard**

</p>
