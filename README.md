# Action Repository

This repository is designed to simulate GitHub actions (Push, Pull Request, Merge) and trigger webhooks that send event data to the **`webhook-repo`** for further processing and display.

## Purpose

- The repository triggers GitHub events such as:
  - `Push`: When code is pushed to a branch.
  - `Pull Request`: When a pull request is created or updated.
  - `Merge`: When a pull request is merged.
  
- The events are sent to a **webhook** that processes the data and stores it in **MongoDB**.

- The data is then displayed on a **web interface** that fetches the data every 15 seconds from the database.

## Setup

### 1. Create a New GitHub Repository

1. Create a new repository on GitHub called **action-repo**.
2. Clone the repository locally:

   ```bash
   git clone https://github.com/sanketmudaraddi/action-repo.git
   cd action-repo
