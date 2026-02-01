# Documentation for Dev Kit for AI: Developer Toolkit for AI-Powered Web Applications

The goal of this documentation is to onboard developers to the Dev Kit for AI platform.

The official documentation is available at https://devkit4ai.com/docs

The usual user journey looks like this:

- Developers visit one of the public resources related to Dev Kit for AI
    - Official Website: https://devkit4ai.com
    - Vibe Coding Platform: https://vibecoding.ad
    - GitHub Repository for Starter Kit: https://github.com/VibeCodingStarter/starter-kit

- They learn more about the platform and its capabilities, and decide to to one or more of the following actions:
    - Sign up for an account via Console (available at vibecoding.ad/console and devkit4ai.com/console)
    - Clone the Starter Kit repository from GitHub
    - Visit the official documentation to learn more about the platform

- After signing up, they get access to Cloud Admin (available at vibecoding.ad/console and devkit4ai.com/console) where they can manage their projects and API keys

- They clone the Starter Kit repository from GitHub, set up the project locally, and connect it to their Cloud Admin account using their API key

- After setting up the project, they start building their AI-powered SaaS application using the Starter Kit as a base and the Cloud API for backend services

- The documentation must help developers at each step of this journey, providing clear guidance and examples to facilitate their development process

## Structure

The official documentation must be organized as follows:

- Introduction
    - Overview of Dev Kit for AI and its key components (the list is ordered by importance from the user's perspective):
        - Starter Kit
        - Cloud Admin
        - Cloud API
    - Quick start guide to get developers up and running with the platform (must be concise and easy to follow)
- Detailed guides about setting up and using the Starter Kit, Cloud Admin, and Cloud API
- Detailed guides about features and capabilities of the Starter Kit
- Tutorials on building AI-powered SaaS applications using the Starter Kit and Cloud API
- API reference documentation for the Cloud API
- FAQ section to address common questions and issues

## Project Organization

The `starter-kit` is always exported from the `user-app` in the private main project `devkit4ai`.

Developers clone the `starter-kit` repository from GitHub to create their own projects.

As project owners, we do not make direct changes to the `starter-kit` repository. Instead, we make changes to the `user-app` in the private main project `devkit4ai` and then export those changes to the `starter-kit` repository filtering only the relevant features for `end users`.

Developers can get more advanced features (e.g. on-demand console and portal features) by subscribing to our paid plans.

## Key Metrics

- As easy as possible onboarding experience for new developers
- Clear and concise documentation that is easy to follow
- Comprehensive coverage of all key components and features of the platform
- Practical examples and tutorials to help developers build AI-powered SaaS applications
