# Project Overview

This project serves as a test assignment for a flutter developer position at a company. The assignment details can be found here.

# Technical Stack
- bloc/cubit: Utilized for different features. 
- hive: Used for local data storage. 
- dartz: Employed for more convenient error handling. 
- dio: Used for networking purposes. 
- go_router: Although not necessary due to the application's lack of nesting, it's included for example purposes. 
- freezed: Used for code generation and to avoid boilerplate code. 
- get_it: Employed as a service locator. 
- clean architecture: Followed for project organization and structure. 

# Getting Started
`flutter pub run build_runner build --delete-conflicting-outputs` \
`flutter run --dart-define-from-file=.env/app_keys.json`
