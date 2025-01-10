## Project Overview

**Melon Read** 🍉 is an application designed to provide a premium reading experience, integrating reading, interaction, and recommendations. By leveraging personalized recommendations and interactive design, it offers users a comfortable reading interface and a variety of features, enabling efficient knowledge acquisition and idea exchange with other readers.

"Melon Read" includes modules for user information, search, comments, article details, home page, and reading.

**Frontend Tech Stack**

- **Framework**: Developed using Vue 2 (vue-cli + vue-router + cookie) with a component-based development approach to enhance code reusability and maintainability.
- **UI Component Library**: Utilizes the Vant library, focusing on mobile adaptation to improve user experience.
- **Style Library**: Integrates **Animate.css** for dynamic effects, adding vibrancy to page interactions.
- **Request Handling**: Implements **Axios** for encapsulating frontend request logic, supporting request interception, error handling, and uniform data responses.

**Backend Tech Stack**

- **Framework**: Employs the SSM framework (Spring + Spring MVC + MyBatis Plus) for business logic and data interaction.
- **Database**: Utilizes MySQL 8 to manage core data such as users, articles, and comments.
- **Service Deployment**: Backend services are deployed via Tomcat, ensuring stable API services.

**Deployment and Running**

- **Frontend**: Supports local development and production environments through Node.js. Production deployments can be hosted on static resource servers like Nginx.
- **Backend**: Deployed on Tomcat, ensuring stable operation in local or server environments.
- **API Communication**: Implements a unified response structure design to ensure efficient and reliable communication between frontend and backend.

## Features Overview

1. **User Information Module**:
   - User registration, login, viewing and editing personal information.
   - Users can like their favorite articles.
2. **Home Page Module**:
   - Recommends articles based on users’ reading history and preferences.
   - Articles can be filtered by publication date or view count.
3. **Comments Module**:
   - View comments; article publishers can delete comments on their articles.
4. **Article Details Module**:
   - Provides a comfortable reading interface.
   - Users can view and post comments, like articles, and access article information and author details.
   - Authors can edit or delete their own articles.
5. **Search Module**:
   - Users can search for articles by title, author, or keywords.
   - Articles can also be filtered by view count and other conditions.

## How to Run

1. You will use three main files:
   - `dist` frontend build files.
   - `initDataBase` containing the SQL scripts for database initialization.
   - `MelonRead` backend project files based on IntelliJ IDEA.
2. Create the database:
   - Use `createMelonReadDB.sql` from `initDataBase` to create the database.
3. Insert initial data:
   - Use `initMelonReadDb.sql` from `initDataBase` to populate the database.
4. Run the backend:
   - Open the `MelonRead` project in IntelliJ IDEA and click **Run**.
   - You can modify the database and port configurations in `application.yml`.
5. Run the frontend:
   - Run it using your preferred method; there are many tutorials available online.
6. Preview the application in a browser:
   - Note that image resources are requested via proxy configuration in Vue CLI.