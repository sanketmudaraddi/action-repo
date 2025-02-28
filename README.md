# Action Repository

This repository is designed to simulate GitHub actions (Push, Pull Request, Merge) and trigger webhooks that send event data to the **`webhook-repo`** for further processing and display.

## Clone and Setup

To get started with this repository and the webhook service- follow these steps:

1. **Clone the Action Repository**

   Clone the `action-repo` to your local machine:

   ```bash
   git clone https://github.com/sanketmudaraddi/action-repo.git
   cd action-repo
   ```

2. **Clone the Webhook Repository**

   In order to set up the webhook integration, you also need to clone the `webhook-repo`:

   ```bash
   git clone https://github.com/sanketmudaraddi/webhook-repo.git
   cd webhook-repo
   ```

3. **Set up the Webhook Integration**

   Follow the instructions in the `webhook-repo`'s `README.md` to configure the webhook and set up any necessary tools or environments. Ensure that the webhook server is running and can receive requests.

4. **Update Secrets and Configuration (if required)**

   If necessary, update any secrets or API keys in the repository settings, particularly for triggering webhooks to external services.

## How it Works

- **Push Event:** When you push changes to the `main` branch or any other branch in `action-repo`, it will trigger the webhook defined in the repository. This action is handled by the webhook functionality set up in the `webhook-repo`.
  
- **Pull Request Event:** When a pull request is opened or updated (e.g., changes pushed to a branch linked to an open PR), it will also trigger the webhook in the `webhook-repo`.

- **Merge Event:** When a merge occurs (either manually or automatically), a webhook is triggered, notifying the `webhook-repo`.

All of these events will automatically initiate the workflow defined in the `action-repo` and result in corresponding actions in the `webhook-repo`.

## Files in This Repo

- `main.yml`: This file contains the CI configuration, triggering workflows for the GitHub actions when an event (push, pull request, merge) occurs.
  
- `push.trigger.sh`: The script that handles push event actions, ensuring that the proper webhook trigger is executed when a push happens.

- `README.md`: The documentation for setting up and understanding the functionality of the `action-repo`.

## Triggering the Webhook

Whenever you perform one of the following actions in the `action-repo` repository, the webhook in `webhook-repo` is triggered:

1. **Push to the Repository**  
   When you push changes to the `main` branch or any other branches, the webhook will be triggered.

2. **Open or Update a Pull Request**  
   If you open or update a pull request, it will trigger the webhook.

3. **Merge a Pull Request**  
   After merging a pull request, the webhook will automatically be triggered.

**Note:** Make sure you have configured the webhook correctly in the `webhook-repo` to handle these events.

## Testing

To test the functionality of this setup:

1. **Push to `action-repo`:**
   Push any changes to the `main` branch or any feature branch in the `action-repo` repository.

   ```bash
   git commit -m "Test push event"
   git push origin main
   ```

2. **Open a Pull Request:**
   Create a new pull request to merge a feature branch into the `main` branch. This should trigger the webhook in the `webhook-repo`.

3. **Merge the Pull Request:**
   Merge the pull request, which will also trigger the webhook.

4. **Check Webhook Logs:**
   Verify that the webhook was triggered by reviewing the logs in `webhook-repo` and confirming that the appropriate actions were executed.

## Additional Notes

- If you encounter any issues with the webhook not firing correctly, ensure that the webhook server in the `webhook-repo` is running and accessible.
  
- The workflow in this repository is designed to trigger the webhook on multiple types of GitHub events, including push, pull request, and merge events.

- The webhook is an important integration that automates actions based on repository changes. It is essential to ensure that both the `action-repo` and `webhook-repo` are correctly set up for optimal functionality.

---
