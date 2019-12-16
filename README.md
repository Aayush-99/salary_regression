# Creating a Flask App and Deploying in Heroku
An application that deploys an ML model online.

## Table of Contents
* [General Info](#general_info)
* [Technology Used](#technology)
* [Creating the Model](#creation)
* [Flask App](#flask)
* [Deployment in Heroku](#heroku)

## General Info
Machine Learning models are powerful tools to make predictions based on the available data. To make these models useful, they need to be deployed to so that other's can easily access them through an API to make predictions.
For this project a basic classification model was made on the Titanic Dataset obtained from kaggle. A flask app was made for it and deployed in Heroku.

## Technology Used
* Python 3.7
* Flask 1.1.1
* Heroku

## Creating the Model
Libraries Used:
* numpy
* pandas
* scikit-learn
* pickle

A simple Logistic Regression model using the Titanic Dataset. This model will predict whether someone survived the Titanic given information about age,fare,sex,siblings,class and embarked. The model is then pickled.

## Flask App
Flask is a micro web framework that does not require particular tools or libraries to create web applications.
The flask app is created as:
* Load pickled model
* Name flask app
* Create a route that recieves JSON inputs, uses the trained model to make a prediction, and returns that prediction in a JSON format, which can be accessed through the API endpoint.

## Deployment in Heroku
Heroku is a cloud platform that can host web applications. Deploy the application by connecting with github.
The API endpoint can be accessed with the Heroku URL and model be used to make predictions in the real world.