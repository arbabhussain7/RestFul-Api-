![root-screen](https://github.com/user-attachments/assets/acd3d4aa-e920-4e22-930d-c97f4295a338)![example-4](https://github.com/user-attachments/assets/98724845-5d72-4c1e-b6fb-e05b85afead9)<p>
<img src="https://github.com/user-attachments/assets/2a93dc1d-e3bb-4f15-87a9-d46614210d2d" alt="Image 1" style="margin-right: 10px; margin-bottom: 10px;" width="30%">
<img src="https://github.com/user-attachments/assets/cd1aa323-43b9-4674-a734-9b54cc58aa47" alt="Image 2" style="margin-right: 10px; margin-bottom: 10px;" width="30%">
<img src="https://github.com/user-attachments/assets/abe96ea5-3c2f-4d42-81c1-278f82b3c6e6" alt="Image 3" style="margin-bottom: 10px;" width="30%">
<img src="https://github.com/user-attachments/assets/d361dd0c-9511-4bc2-b6a5-2783a4ec6f40" alt="Image 3" style="margin-bottom: 10px;" width="30%">
</p>



# RESTful API Integration in Flutter


This Flutter project showcases full Firebase authentication combined with RESTful API integration using the JSON Placeholder API. The project covers both GET and POST API requests, handling different JSON structures, dynamic data fetching, and image uploading. Postman has been used to test and validate API responses.

## Features

- **Email & Phone Authentication**: Firebase-based signup, login, and password reset functionality using email and phone number.
- **RESTful API Integration**: Covers the complete GET and POST API implementation using data from [JSON Placeholder](https://jsonplaceholder.typicode.com/).
- **API Testing**: All API requests tested and verified using Postman.
- **JSON Data Handling**:
  - Multiple examples with different JSON structures.
  - Integration with and without creating models.
  - Dynamic value fetching from APIs.
- **Image Upload**: Includes image upload functionality using the `image_picker` package.
  
## Technologies Used

- **Flutter**: Mobile app framework for cross-platform development.
- **Dart**: Programming language for building the app.
- **Firebase**: Backend services for authentication.
- **GetX**: State management, dependency injection, and routing.
- **image_picker**: Used for image selection and upload.
- **Postman**: For testing API endpoints and debugging.
  
## API Endpoints

All API examples are demonstrated using various files:
- **Example One, Two, Three, Four, Five**: Demonstrates GET API requests, covering different JSON structures.
- **Signup & Login**: POST API requests for authentication.
- **Image Upload**: POST API request for uploading images.

## Getting Started

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/rest-api-firebase-auth-flutter.git
   cd rest-api-firebase-auth-flutter
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Set up Firebase**:
   - Follow Firebase setup steps for iOS and Android.
   - Add your `google-services.json` and `GoogleService-Info.plist` files.

4. **Run the app**:
   ```bash
   flutter run
   ```

## Code Structure


- **lib/authentication/**: Contains UI for login, signup, image upload, and API examples.
- **lib/services/api_service.dart**: Handles all RESTful API interactions.
- **lib/models/**: Contains models used for structured data integration.
  
## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For questions or feedback, feel free to reach out at [arbabhussain414@gmail.com](arbabhussain414@gmail.com).
