# glassmorphism_kit

A Flutter package for creating Glassmorphic UI designs in an easy and simple manner! Supports iOS, Android and web.

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
