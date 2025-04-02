## [0.1.7] - 2025/04/02
### Pre-Release

### Changed
- Imported `simple-calendar` into **`application.scss`**.
- Added emoji support between **`models/rental.rb`** and **`rentals/index.html.erb`**.

## [0.1.6] - 2025/04/01
### Pre-Release

### Added
- **`console.rb`** added to `.gitignore`.
- **`article.scss`** stylesheet added.

### Changed
- Updated **`article`**:
  - Display images on the article show page.
  - Featured articles section added.
  - Articles cannot be edited without authentication.
- Updated **`nav`**:
  - Changed `logout` to a button to prevent errors.

## [0.1.5] - 2025/04/01
### Pre-Release

### Changed
- Uncommented `user_signed_in?` from navigation.
- Added calendar to **`rentals/index.html.erb`**.
- Applied stylization throughout using `sassc` gem.
  - Split styles into individual sections (e.g., nav, landing, etc.).
- Added logo and landing images (1-3).
- Updated homepage to display landing information.

## [0.1.4] - 2025/04/01
### Pre-Release

### Added
- Home page content added.
- Dashboard updated.
- dashboard_controller referencing current_user for the page as @user

### Removed
- confirmable from user model

## [0.1.3] - 2025/04/01
### Pre-Release

### Added
- Basic layout established with navigation and footer.

### Changed
- Commented out `sign_in` related sections for now in the navigation.

## [0.1.2] - 2025/04/01
### Pre-Release  

### Added  
- **`dashboard_controller`**:  
  - Authenticates user and ensures approval before access.  
- **`home_controller`**:  
  - Serves as the public landing page.  

### Changed  
- **Routes**:  
  - Set root path to `home#index`.  

## [0.1.1] - 2025/04/01
### Pre-Release

### Added
- Generated scaffolds for:
  - **`landing_card`**: `title`, `description`, `image`
  - **`pricing_card`**: `title`, `description`, `image`
  - **`article`**: `title`, `description`, `body`, `image`
  - **`rental`**: `title`, `address`, `start_time`, `end_time`
  - **`video`**: `title`, `description`, `youtube_id`

## [0.1.0] - 2025/04/01
### Pre-Release

### Added
- Implemented `simple_calendar` and `devise` gems.
- Created `User` model with Devise integration.
  - User approval required for access.