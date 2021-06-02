# glassmorphism_kit 

A Flutter package for creating Glassmorphic UI designs in an easy and simple manner! Supports iOS, Android and web.

GlassWidget             |  GlassCard Demo
:-------------------------:|:-------------------------:
<img src="https://user-images.githubusercontent.com/58139175/108697570-0a30a080-7529-11eb-9977-b5d7390e535b.jpg?raw=true" width="250">  |  <img src="https://user-images.githubusercontent.com/58139175/108697593-13217200-7529-11eb-8883-6ebcb690f2c2.jpg?raw=true)" width="250">

GlassBar             |  GlassDrawer
:-------------------------:|:-------------------------:
<img src="https://user-images.githubusercontent.com/58139175/108697583-0ef55480-7529-11eb-8606-2a52ceec36db.jpg?raw=true" width="250">  |  <img src="https://user-images.githubusercontent.com/58139175/108697586-1157ae80-7529-11eb-9f53-7ef44007e67f.jpg?raw=true)" width="250">

## GlassContainer

```dart

import 'package:glassmorphism_kit/glassmorphism_kit.dart';

...

GlassContainer(
        alignment: Alignment.center,
        child: Text(
        'Container',
        style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,),),
        color: Colors.white,
        colorOpacity: 0.1,
        blurStrengthX: 10,
        blurStrengthY: 10,
        borderRadius: BorderRadius.all(
                Radius.circular(15,),),
        width: 290,
        height: 180,
),

```

## GlassCircle

```dart

import 'package:glassmorphism_kit/glassmorphism_kit.dart';

...

GlassCircle(
        child: Center(
        child: Text(
        'Circle',
        style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,),),
    ),
),

```

## GlassCapsule

```dart

import 'package:glassmorphism_kit/glassmorphism_kit.dart';

...

GlassCapsule(
        width: 300,
        child: Center(
        child: Text(
        'Capsule',
        style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
            ),
        ),
    ),
)

```
## GlassDrawer

```dart

import 'package:glassmorphism_kit/glassmorphism_kit.dart';

...

GlassDrawer(
        color: Colors.white,
        colorOpacity: 0.1,
        child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text(
            'GlassDrawer',
            style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
                ),
            ),
        ],),),
    ),
),

```

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
