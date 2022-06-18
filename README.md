# Marsrovertechchallenge

## Installation

In order to get the application running you need to do as follows:

Make sure that you are using a ruby version which is definied in .ruby-version

execute: `bundle install`

## Usage

 To experiment with that code, run `bin/console` for an interactive prompt.

 To run the application with an input file you define, run `INPUT=path_to_your_file bin/app`.

 To run the application with an example file, run `EXAMPLE=true bin/app`.

## TEST

You can run tests by: `rspec`.

You can generate test coverage by setting the SIMPLECOV environment variable to true: `SIMPLECOV=true rspec` which should be generate an overview of 100% coverage to the 'coverage' folder.

## About the project

I structure the project to these main objects:

### Orientation
Indicates the direction we are facing, can also turn

### Plateau
Indicates the "playground"

### Position
Indicates the positions where we are at. Can be changed by a step to a specific direction, while making sure that it stays on the plateau

### Printer
Responsible for giving on screen feedback

### Reader
Responsible for importing the data

### Rover
Holding together both position and orientation. Can also perform instructions

### Simulator
Processing the input from the reader by creating the necessary objects for the simulation and making the rovers executes its instructions

## Challenge description

[Google Code Archive: Mars Rover Tech Challenge](https://code.google.com/archive/p/marsrovertechchallenge/)