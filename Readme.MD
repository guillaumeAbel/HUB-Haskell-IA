# README: Two Distinct Software Development Projects

This README provides an overview of two exciting software development projects. The first project is a Haskell-based web scraping library, and the second is a machine learning model for MNIST digit recognition using Keras and TensorFlow.

## Table of Contents
1. [Haskell Web Scraping Library](#haskell-web-scraping-library)
2. [MNIST Digit Recognition with Keras](#mnist-digit-recognition-with-keras)

---

## Haskell Web Scraping Library
**Project Overview:** 
This project aims to develop a Haskell library for web scraping. The library facilitates making requests to URLs of the user's choice and parsing strings with utility parser functionalities.

**Key Features:**
- **URL Request Handling:** Allows users to send requests to specified URLs and retrieve the data.
- **String Parsing Utilities:** The library includes functions to parse strings, such as splitting a string from one character to another, or based on a specified substring.

**Use Cases:**
- Extracting data from web pages for data analysis.
- Automating the collection of information from various websites.

**Programming Language:** Haskell

---

## MNIST Digit Recognition with Keras
**Project Overview:**
This project involves creating a machine learning model to recognize handwritten digits from the MNIST dataset using TensorFlow and Keras.

**Project Lib Dependency:**
```python
python3 -m pip install tensorflow[and-cuda]
# Verify the installation:
python3 -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"
```

**Key Components:**
- **Data Preparation:** Loading and preprocessing the MNIST Digit dataset.
- **Model Architecture:** Building a Sequential model with convolutional and dense layers.
- **Training:** Compiling and fitting the model with training data.
- **Evaluation:** Assessing model performance with test data.

**Technologies Used:**
- TensorFlow
- Keras

**Use Cases:**
- Digit recognition in images for automated data entry.
- Foundations for more complex image recognition tasks.

---
