#!/bin/bash

# Function to increment the build number
function updateBuildNumber {
    echo 'Reading build number...'
    input="$(pwd)/build.txt"
    while IFS= read -r line
    do
        BUILD_NUMBER="$line"
    done < "$input"
    BUILD_NUMBER=$((BUILD_NUMBER+1))
    echo "New build number: $BUILD_NUMBER"
    echo "$BUILD_NUMBER" > "build.txt"
}

# Function to prepare the environment variables
function prepareEnvironment {
    echo 'Preparing environment variables...'
    export VERSION_MAJOR=1
    export VERSION_MINOR=4
    export VERSION_PATCH=$BUILD_NUMBER
    export VERSION_CODE=$(( (((VERSION_MAJOR*1000000)+(VERSION_MINOR*10000)+VERSION_PATCH))*10))
    export VERSION_NAME="$VERSION_MAJOR.$VERSION_MINOR.$VERSION_PATCH"
    echo "VERSION_NAME: $VERSION_NAME"
    echo "VERSION_CODE: $VERSION_CODE"
}

# Function to prepare the project
function prepareProject {
    echo 'Preparing project...'
    flutter clean
    flutter pub get
    flutter pub run intl_utils:generate
    flutter pub run build_runner build --delete-conflicting-outputs
    flutter analyze
}

# Main script execution
echo 'Starting build process...'

if [ "$2" != "-skip" ]; then
    updateBuildNumber
    prepareEnvironment
fi

prepareProject

# Here should be build functions
# ...

echo 'Build process completed.'
