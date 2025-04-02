

## [0.1.2] - 2025/03/14  
### Pre-Release  

### Added  
- **`dashboard_controller`**:  
  - Authenticates user and ensures approval before access.  
- **`home_controller`**:  
  - Serves as the public landing page.  

### Changed  
- **Routes**:  
  - Set root path to `home#index`.  

## [0.1.1] - 2025/03/14
### Pre-Release

### Added
- Generated scaffolds for:
  - **`landing_card`**: `title`, `description`, `image`
  - **`pricing_card`**: `title`, `description`, `image`
  - **`article`**: `title`, `description`, `body`, `image`
  - **`rental`**: `title`, `address`, `start_time`, `end_time`
  - **`video`**: `title`, `description`, `youtube_id`

## [0.1.0] - 2025/03/14
### Pre-Release

### Added
- Implemented `simple_calendar` and `devise` gems.
- Created `User` model with Devise integration.
  - User approval required for access.