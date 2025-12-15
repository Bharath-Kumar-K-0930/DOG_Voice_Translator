# DOG Voice Translator 🐶🎤

An AI-powered web application that translates your dog's barks into human-readable emotions!

## 📋 Overview

This project uses deep learning (TensorFlow/Keras) to analyze audio recordings of dog barks and predict the underlying emotion. It provides a simple Flask API that processes audio files and returns the detected emotion along with a friendly interpretation.

## ✨ Features

- **Audio Analysis**: processing of audio files (WAV, WEBM) using `librosa`.
- **Emotion Detection**: Identifies 5 distinct dog emotions:
  - 😠 **Angry**
  - 🐶 **Attention Seeking**
  - ⚔️ **Fighting**
  - 😊 **Happy**
  - 😢 **Sad**
- **Smart Filtering**: Detects silence or low-energy audio to prevent false positives.
- **Confidence Scoring**: Returns a confidence percentage for each prediction.

## 🛠️ Tech Stack

- **Backend Framework**: Flask
- **Machine Learning**: TensorFlow, Keras
- **Audio Processing**: Librosa, Pydub, Numpy
- **Data Handling**: Pandas

## 🚀 Installation & Setup

### Prerequisites
1. **Python 3.8+**
2. **FFmpeg**: Required for audio file conversion.
   - *Windows*: Download and add to system PATH.
   - *Linux*: `sudo apt install ffmpeg`
   - *Mac*: `brew install ffmpeg`

### Steps
1. **Clone the repository**
   ```bash
   git clone https://github.com/Bharath-Kumar-K-0930/DOG_Voice_Translator.git
   cd DOG_Voice_Translator
   ```

2. **Install Dependencies**
   ```bash
   pip install -r requirements.txt
   ```

3. **Run the Application**
   ```bash
   python app.py
   ```
   The server will start at `http://localhost:5003`.

## 🔌 API Usage

### Endpoint: `/predict`
- **Method**: `POST`
- **Data**: Form-data with key `audio` (file).

#### Example Response
```json
{
  "emotion": "happy",
  "message": "Your dog sounds happy! 😊",
  "confidence": "98.50%"
}
```

## 📂 Project Structure

- `app.py`: Main Flask application.
- `model/`: Contains the pre-trained `.h5` model and label encoder.
- `templates/`: HTML templates for the frontend.
- `requirements.txt`: Python dependencies.

## 🤝 Contributing
Contributions are welcome! Please open an issue or submit a pull request.
