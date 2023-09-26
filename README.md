
# **Lofai**

Lofai is a platform that simplifies the process of finding the best local tailors and fashion designers known for quality work at affordable prices. For customers, it offers the convenience of discovering skilled tailors, while tailors can showcase their work, engage with customers, and grow their businesses. Join us today to experience a new level of fashion and tailoring excellence.

---

## Project Overview

This project is divided into three main components:

- **Frontend**: The frontend code is written in Next.js.
- **Backend**: The backend code is written in Node.js using Express.
- **Data**: The data folder is intended to hold a MongoDB database, which will be created by Docker.

## Getting Started

To contribute to this project, follow these steps:

### Quickstart

To streamline the setup process of this project, we provide an automation script that simplifies the initialization of the development environment. This script is designed to work seamlessly on Windows, macOS, and Linux.

### Prerequisites

Before running the script, please ensure that you have the following prerequisites installed on your system:

- Git: [Download Git](https://git-scm.com/downloads)
- Node.js and npm: [Download Node.js](https://nodejs.org/)
- Docker Desktop (for Windows and macOS): [Download Docker Desktop](https://www.docker.com/products/docker-desktop)
- SSH Key Pair (if using SSH for repository access): Follow the instructions below to set up SSH keys if not already configured.

### Setting Up SSH Keys

If you haven't set up SSH keys on your computer, follow these steps:

1. **Generate SSH Key Pair**:
   - Open your terminal or command prompt.
   - Run the following command, replacing `<your_email@example.com>` with your email address:

     ```bash
     ssh-keygen -t ed25519 -C "your_email@example.com"
     ```

   - Follow the prompts to generate your SSH key pair. The default location for the SSH key files is usually `~/.ssh/id_ed25519` on Unix-based systems.

2. **Add SSH Key to SSH Agent**:
   - Run the following command to add your SSH key to the SSH agent:

     ```bash
     eval "$(ssh-agent -s)"
     ssh-add ~/.ssh/id_ed25519
     ```

   - Replace `~/.ssh/id_ed25519` with the path to your SSH private key if it's located elsewhere.

3. **Copy and Add SSH Public Key**:
   - Run the following command to copy your SSH public key to your clipboard:

     ```bash
     cat ~/.ssh/id_ed25519.pub | pbcopy
     ```

   - Now, add the copied SSH public key to your GitHub account or any other version control service you use.

### Using the Automation Script

Follow these steps to set up the project with the automation script:

1. **Clone the Project**:
   - Open your terminal or command prompt.
   - Navigate to the directory where you want to clone the project.
   - Run the following command to clone the project repository:

     ```bash
     git clone git@github.com:Lofai-Inc/chrome_hart.git
     ```

2. **Run the Setup Script**:
   - Navigate to the project's root directory:

     ```bash
     cd chrome_hart
     ```

   - Execute the appropriate setup script based on your operating system:
     - On Windows, run `setup.bat`.
     - On macOS or Linux, run:
        ```bash
        chmod +x setup.sh
        ```
  
         - run the script by executing it in the terminal
        ```bash
        ./setup.sh
        ```
   - The script will guide you through the setup process, cloning the frontend and backend repositories, installing dependencies, and starting Docker Compose.

3. **Start Docker Desktop** (Windows, macOS, and Linux):
   - Ensure that Docker Desktop is installed and running on your system before starting the script.
   - The script will prompt you to start Docker Desktop after the initial setup.

4. **Enjoy Developing!**:
   - Once the script completes, you're all set to start developing. You can begin working on the project's frontend and backend components.

Please note that you may need to grant administrative privileges (on Windows) or make the script executable (on macOS and Linux) before running it. If you encounter any issues during the setup process, feel free to reach out for assistance.

Happy coding!

---
**Manual Setup**

If you experience issues using the automation scripts above, you can manually setup the project with the instructions given below

1. **Clone the Project**:
   - Clone the project repository from GitHub:
     ```
     git clone https://github.com/foreign1/lofai-safe-river
     cd lofai-safe-river
     ```

2. **Clone Frontend and Backend Repositories**:
   - Clone the frontend and backend repositories:
     ```
     git clone https://github.com/foreign1/lofai-FE frontend
     git clone https://github.com/foreign1/lofai-BE backend
     ```

3. **Create the Data Folder**:
   - Create an empty folder called "data" in the project root.

4. **Install Dependencies**:
   - Navigate to the "frontend" directory and install frontend dependencies:
     ```
     cd frontend
     npm install
     cd ..
     ```
   - Navigate to the "backend" directory and install backend dependencies:
     ```
     cd backend
     npm install
     cd ..
     ```

5. **Docker Setup**:
   - Ensure Docker Desktop is installed on your computer. Docker Desktop is available for Windows, macOS, and Linux.
   - Start up Docker Desktop

6. **Docker Compose**:
   - The `docker-compose.yml` file is located in the project root directory, and you should not modify its contents.
   - Frontend contributors should work from the "frontend" directory, and backend contributors should work from the "backend" directory.
     
8. **Environment Variables**:
   - There may be environment variables to set in the future, but for now, no additional configuration is required before running the containers.

9. **System Requirements**:
   - This project is compatible with all major operating systems.
   - Recommended hardware specifications: 
     - At least 8GB of RAM
     - 80GB of free disk space
     - A 7th generation Core i5 or similar-rated AMD processor.

## Running the Project

Once you have completed the setup steps, navigate to the root directory `safe-river` then:
- start the project by running the following command from the project root:

  ```bash
  docker-compose up
  ```

  This command will start the containers for the frontend, backend, and MongoDB database.

- stop the project by running:
  ```bash
  docker compose down
  ```
  This command will gracefully stop the containers

- restart the project:
  ```bash
  docker compose restart
  ```

## Conventions

Please follow the stipulated workflow when contributing to this project:

### Ticket Types and Naming Conventions

1. **Epic Tickets**: Epic tickets represent major features or project milestones. They can have many sub-tasks. Naming convention for epic tickets should be in the form of: `[Epic] <Short Description of Epic>`. For example, `[Epic] User Authentication`.

2. **Sub-Task Tickets**: Sub-task tickets are specific tasks that fall under epic tickets. Naming convention for sub-task tickets should be: `[Sub-Task] <Short Description of Sub-Task>`. For example, `[Sub-Task] Implement Login API`.

3. **Chore Tickets**: Chore tickets represent non-feature-related tasks such as code cleanup, documentation, or general maintenance. Naming convention for chore tickets should be: `[Chore] <Short Description of Chore>`. For example, `[Chore] Update README`.

4. **Bug Tickets**: Bug tickets are used for tracking and fixing software defects. Naming convention for bug tickets should be: `[Bug] <Short Description of Bug>`. For example, `[Bug] Fix 404 Error on Homepage`.

5. **Feature Tickets**: Feature tickets are for adding new features to the project. Naming convention for feature tickets should be: `[Feature] <Short Description of Feature>`. For example, `[Feature] Add User Profile Page`.

### Branch Naming Conventions

1. **Epic Branches**: Developers working on epic tickets should create a branch off `develop` named after the epic ticket. For example, if the epic ticket is `[Epic] User Authentication`, the branch should follow the format given below:
   - Format: `[FE/BE]-[Issue Number]-[Work Type]-[Short Description]`
   - Example: `FE-123-feature-user-authentication`

2. **Sub-Task Branches**: Sub-task branches should be created off the corresponding epic branch. Name them using the sub-task ticket name. For example, if the sub-task is `[Sub-Task] Implement Login API`, the branch should follow the format given below:
   - Format: `[FE/BE]-[Issue Number]-[Work Type]-[Short Description]`
   - Example: `BE-456-chore-update-database-scripts`
If an issue number isn't assigned, it should use the epic issue number.

3. **Chore, Bug, and Feature Branches**: Developers working on chore, bug, or simple feature tickets should create a branch off `develop` named after the ticket type and a brief description. For example:
   - Format: `[FE/BE]-[Issue Number]-[Work Type]-[Short Description]`
   - Examples:
     - `FE-789-chore-update-readme`
     - `BE-101-bug-fix-404-error`
     - `FE-234-feature-user-profile-page`

### Pull Request (PR) Process

1. **Epic Tickets**:
   - When working on an Epic ticket, you are required to create and merge your sub-task branches. When all sub-tasks under an epic ticket are completed and merged into the epic branch, create a pull request from the epic branch to the `develop` branch.
   - The PR should have a meaningful title and a description summarizing the changes.
   - Request a review from engineering lead.
   - The engineering lead should review the code, and once approved, merge the PR into `develop`.

2. **Chore, Bug, and Feature Tickets**:
   - Developers working on these tickets should create a PR directly from their feature branch to the `develop` branch.
   - The PR should have a meaningful title and a description summarizing the changes.
   - Request a review from both the engineering lead and the product manager.
   - After receiving approval, the PR can be merged into `develop`.

### Ticket Colors

To enhance visual organization, the following color scheme will be followed:
- Epic: Blue
- Sub-Task: Green
- Chore: Yellow
- Bug: Red
- Feature: Purple

## License

Copyright 2023 Lofai LTD

All rights reserved. This software may not be reproduced, modified,
or distributed without the express permission of the copyright owner.

---
