# AV-App

# Introduction
A cross platform app for AV-APP using Flutter.

## Features
- Login page for staff
- Shuttle fleet management
- Track/send Shuttle
- Identify shuttle position using Geo fencing


## Additional Dependencies Required
- percent_indicator: ^3.4.0
- search_choices: ^2.0.16
- fl_chart: ^0.41.0
- im_stepper: ^0.1.3 
- google_maps_flutter: ^2.1.1
- location: ^4.3.0

Add the above lines in your pubspec.yaml file under dependencies section and run command :
- flutter pub get

## Deployment

```
To deploy this project

Clone this repo

Run this command

  flutter pub get

Create a AVD through Android Studio or use a physical mobile through usb debbuging

Run this command

- flutter run
```

# Issues
 - Map rendering not working properly

 - Map requires google play services for functioning.
  <img src="https://github.com/TechnocultureResearch/AV-App/blob/4836ef9be60a93e14d96469bf79fdb40f385dd32/assets/Screenshots/map_issue.png" width=200 />
  
#Flutter maps Permission details

 - Flutter map permissions - android > app > src>main > AndroidManifest.xml (Line no 4-6)
 - Flutter map API Key - android > app > src>main > AndroidManifest.xml (Line no 42)
 - Google service - android > build.gradle (Line 10)
 - In the AndroidManifest.xml (Line no 42)...add API key to get Flutter maps features.Presently the key removed is removed.


# Pages Images

Login page(Staff)

- Login Page  
  <img src="https://github.com/TechnocultureResearch/AV-App/blob/dd097f6f0f1e9a5cf302a572ae29e2ed9f06f72c/assets/Screenshots/Login_page.png" width=200 />



 - Dashboard Page
  <img src="https://github.com/TechnocultureResearch/AV-App/blob/5888feab174a4680c2103150dee01bc0dc2ae82d/assets/Screenshots/dashboard1.jpg" width=200 />
  <img src="https://github.com/TechnocultureResearch/AV-App/blob/5888feab174a4680c2103150dee01bc0dc2ae82d/assets/Screenshots/dashboard%202.jpg" width=200 />

 - Manage Fleet Page
  <img src="https://github.com/TechnocultureResearch/AV-App/blob/eb82f4f979bc31ec6341d04b0b89eb10dcf45e6b/assets/Screenshots/manage_fleet1.jpg" width=200 />
  <img src="https://github.com/TechnocultureResearch/AV-App/blob/eb82f4f979bc31ec6341d04b0b89eb10dcf45e6b/assets/Screenshots/manage_fleet2.jpg" width=200 />

 - Send shuttle Page
  <img src="https://github.com/TechnocultureResearch/AV-App/blob/933df9d9b139793dfbcd77a829dcc879a39e3fe7/assets/Screenshots/send_shuttle.png" width=200 />
 
 - Track shuttle page
  <img src="https://github.com/TechnocultureResearch/AV-App/blob/933df9d9b139793dfbcd77a829dcc879a39e3fe7/assets/Screenshots/track_shuttle1.jpg" width=200 />
  <img src="https://github.com/TechnocultureResearch/AV-App/blob/933df9d9b139793dfbcd77a829dcc879a39e3fe7/assets/Screenshots/track_shuttle2.jpg" width=200 />
  


## Documentation

- Flutter
- Google cloud services


# Prerequisites

|  | Name | Version |
| --- | --- | --- |
| 1 | Flutter sdk | 2.11.0  |
| 2 | dart | 2.5.2  |