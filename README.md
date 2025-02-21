
- **Run the Application**  
  Run the following command:
  ```bash
  flutter run
  ```

  If there are issues with CocoaPods, navigate to the `ios` directory and run:
  ```bash
  pod install
  cd ..
  ```

---

## Common Commands

- **Check Flutter Environment**  
  Check if Flutter is set up correctly:
  ```bash
  flutter doctor
  ```

- **Clean Build Cache**  
  If you encounter build issues:
  ```bash
  flutter clean
  flutter pub get
  ```

- **Run in Debug Mode**  
  For live debugging:
  ```bash
  flutter run --debug
  ```

- **Run in Release Mode**  
  For optimized performance:
  ```bash
  flutter run --release
  ```

---

## Directory Structure
```plaintext
lib/
  ├── api/
  │   ├── api_client.dart          # Handles API client setup
  │   ├── services.dart            # Manages services
  │
  ├── formatter/
  │   ├── number_input_formatter.dart  # For formatting numeric inputs
  │
  ├── models/
  │   ├── product.dart             # Model product data
  │
  ├── screens/
  │   ├── cart_screen/
  │   │   ├── binding/             # Handles dependency injection
  │   │   ├── controllers/         # Contains business logic for cart
  │   │   ├── widgets/             # UI components for cart screen
  │   │   ├── cart_screen.dart     # Entry point for the cart screen
  │   │
  │   ├── home_screen/ 
  │   │   ├── binding/             # Handles dependency injection
  │   │   ├── controllers/         # Contains business logic for home
  │   │   ├── widgets/             # UI components for home screen
  │   │   ├── home_screen.dart     # Entry point for the home screen
  │   │
  │   ├── product_list_screen/
  │   │   ├── binding/                      # Handles dependency injection
  │   │   ├── controllers/                  # Contains business logic for product 
  │   │   ├── widgets/                      # UI components for product screen
  │   │   ├── product_list_screen.dart      # Entry point for the product screen
  │   │   |
  ├── main.dart                    # Main entry point of the app
```

---
