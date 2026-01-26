# Changelog

### v1.10.1 [2026-01-26]

#### Changed
- Updated `index.mdx` to replace "Built-in Components" card with "Payments via Stripe" feature highlight
- Updated `quickstart.mdx` to include payment readiness in goals and add "Add Subscription Billing" to next steps
- Updated `getting-started/platform-overview.mdx` to mention payments in Cloud Admin and Cloud API sections
- Updated `getting-started/cloud-admin-explained.mdx` to add Payment Management section and payments in console navigation
- Updated `getting-started/starter-kit-explained.mdx` to add Subscription Billing to pre-built features and Add Billing card
- Updated `cloud-admin/getting-started.mdx` to include Configure Payments in next steps
- Updated `cloud-admin/dashboard-overview.mdx` to add Subscriptions stat, Payments sidebar section, and Configure Payments quick action

#### Fixed
- Fixed `tutorials/integrations/stripe-payments.mdx` code examples to match actual backend-api and starter-kit implementations:
  - Added `test_mode` query parameter to all payment endpoint URLs (required by Cloud API)
  - Updated function signatures to include `testMode: boolean = true` parameter
  - Fixed async cookies() usage for Next.js 15 compatibility (`await cookies()` + `cookieStore.get()`)
  - Added missing `X-User-Role` and `X-Developer-Key` headers to all fetch calls
  - Updated Subscription interface to match actual API response fields (`subscription_id`, `cancel_at`, `cancelled_at`)
  - Fixed `getMySubscription` to return subscription directly (not wrapped in `data.subscription`)
  - Added required imports to `openCustomerPortal` function
  - Updated SubscribeButton component to pass testMode parameter
  - Added Info box listing required environment variables
  - Added Step 11 for updating testMode parameter when going live

#### SEO & Cross-References
- Added bidirectional cross-references between all payment documentation pages for improved discoverability
- Updated next steps cards across 9 payment pages with 4-card layouts linking feature docs, Cloud Admin, and API reference
- Improved internal linking for payment feature flow: setup → implementation → monitoring → API reference
- Enhanced user journey paths from Getting Started through Cloud Admin to Starter Kit implementation

### v1.10.0 [2026-01-25]

#### Added
- Added new "Features" section under Getting Started tab with comprehensive payment documentation
- Added `getting-started/features/payment-setup.mdx` covering Stripe configuration, test/live modes, webhook URLs, credential validation, and Stripe CLI testing
- Added `getting-started/features/subscription-billing.mdx` documenting 10 subscription use cases, lifecycle management, webhook events, and payment history
- Added `starter-kit/features/payments.mdx` with end-user billing integration guide and TypeScript code examples
- Added Payments Tab documentation section to `cloud-admin/projects/project-details.mdx` covering mode toggle, stats, and subscription management
- Added Subscriptions Count and Transactions Count statistics to `cloud-admin/console/statistics.mdx`
- Added extensive Mermaid diagrams for payment flows, subscription lifecycle, webhook processing, and credential storage
- Added new "Payment Management" group under Cloud Admin tab with 5 comprehensive pages:
  - `cloud-admin/payments/overview.mdx` - Payment management overview with feature explanation, enablement guide, and billing capabilities
  - `cloud-admin/payments/stripe-configuration.mdx` - Stripe settings page documentation with credential setup, validation, and security practices
  - `cloud-admin/payments/subscriptions.mdx` - Subscription monitoring guide with status definitions, filtering, and health metrics
  - `cloud-admin/payments/transactions.mdx` - Transaction history documentation with types, statuses, filtering, and reconciliation
  - `cloud-admin/payments/testing-payments.mdx` - Complete testing workflow with test cards, Stripe CLI setup, and go-live checklist

#### Changed
- Completely rewrote `tutorials/integrations/stripe-payments.mdx` from placeholder to comprehensive 10-step tutorial with TypeScript examples, test cards, and troubleshooting
- Updated `docs.json` navigation to include Features group under Getting Started, payments page under Starter Kit Features & Capabilities, and Payment Management group under Cloud Admin
- Enhanced `cloud-admin/console/quick-actions.mdx` with Configure Payments quick action and structured action cards

#### Documentation Coverage
- Documented backend-api v1.6.0-v1.6.1 payment features: Stripe integration, subscription management, webhooks, checkout sessions, customer portal
- Documented user-app v1.9.0 payment UI features: payment configuration, subscription management, billing components
- Cross-referenced with 19 Cloud API payment endpoint pages added in v1.9.0

### v1.9.0 [2026-01-24]

#### Added
- Added comprehensive Payments API documentation with 19 new pages covering all payment endpoints from OpenAPI v1.6.1
- Added Payments overview page (`cloud-api/payments/introduction.mdx`) with architecture diagrams, API groups reference, and quick start guide
- Added 4 aggregated payments endpoint pages:
  - `cloud-api/payments/list-subscriptions.mdx` - List all subscriptions across projects
  - `cloud-api/payments/list-transactions.mdx` - List all payment transactions across projects  
  - `cloud-api/payments/list-projects-config.mdx` - List projects with payment configuration status
  - `cloud-api/payments/get-stats.mdx` - Get aggregated payment statistics
- Added 7 Stripe Configuration endpoint pages:
  - `cloud-api/payments/stripe/get-config.mdx` - Get Stripe configuration for a project
  - `cloud-api/payments/stripe/update-config.mdx` - Create or update Stripe configuration
  - `cloud-api/payments/stripe/delete-config.mdx` - Deactivate Stripe configuration
  - `cloud-api/payments/stripe/get-webhook-urls.mdx` - Get webhook URLs for Stripe dashboard
  - `cloud-api/payments/stripe/validate-credentials.mdx` - Validate Stripe API credentials
  - `cloud-api/payments/stripe/list-project-subscriptions.mdx` - List project subscriptions
  - `cloud-api/payments/stripe/list-project-payments.mdx` - List project payment transactions
- Added Stripe Checkout endpoint page (`cloud-api/payments/stripe/create-checkout-session.mdx`)
- Added Stripe Webhooks endpoint page (`cloud-api/payments/stripe/stripe-webhook.mdx`)
- Added 5 Stripe Subscriptions (end-user) endpoint pages:
  - `cloud-api/payments/stripe/get-my-subscription.mdx` - Get current user's subscription
  - `cloud-api/payments/stripe/get-my-payments.mdx` - Get user's payment history
  - `cloud-api/payments/stripe/create-customer-portal.mdx` - Create Stripe customer portal session
  - `cloud-api/payments/stripe/cancel-subscription.mdx` - Cancel subscription
  - `cloud-api/payments/stripe/update-subscription.mdx` - Change subscription plan
- Added mermaid diagrams for payment architecture, test/live mode flows, and webhook event handling

#### Changed
- Updated `docs.json` navigation to include 5 new payment groups under Cloud API tab: Payments, Stripe Configuration, Stripe Checkout, Stripe Webhooks, Stripe Subscriptions

#### Documentation Coverage
- Documented all 18 payment endpoints from OpenAPI specification v1.6.1
- Organized endpoints by access pattern: developer-facing (aggregated, configuration) vs end-user-facing (subscriptions)
- Added cross-references to Stripe integration tutorial, Cloud Admin payments, security best practices, and environment configuration

### v1.8.0 [2025-12-08]

#### Added
- Added comprehensive Cloud API quickstart guide (`cloud-api/quickstart.mdx`) with developer-first approach covering registration through AI generation
- Added three developer key management endpoint pages:
  - `cloud-api/auth/list-developer-keys.mdx` - List all developer keys with filtering and usage tracking
  - `cloud-api/auth/create-developer-key.mdx` - Create new developer keys with security best practices
  - `cloud-api/auth/revoke-developer-key.mdx` - Revoke developer keys with proper cleanup workflows
- Added complete error patterns section covering authentication, validation, rate limiting, and resource errors
- Added troubleshooting guide with common issues and solutions for JWT tokens, headers, generation status, and API keys
- Added best practices section for secure credential storage, error handling, token refresh, and polling strategies
- Added full Node.js example application demonstrating complete API integration workflow
- Added 3 SEO-optimized image placeholders for authentication flow, generation status polling, and registration form

#### Changed
- Completely rewrote Cloud API quickstart from operator-dependent flow to developer-first approach using Cloud Admin web registration
- Expanded `cloud-api/introduction.mdx` from ~50 to ~300+ lines with authentication concepts, rate limits, quotas, and getting started guide
- Enhanced `cloud-api/auth/register.mdx` with comprehensive cross-references (6 cards) and registration flow image placeholder
- Enhanced `cloud-api/auth/login.mdx` with JWT flow diagram and 6 cross-reference cards to related documentation
- Completely rewrote `cloud-api/generation/create.mdx` from ~20 to ~400+ lines with detailed examples, use cases, and error handling
- Completely rewrote `cloud-api/projects/create.mdx` from ~20 to ~350+ lines with workflows and best practices
- Updated `docs.json` navigation to include developer keys section and quickstart page under Cloud API
- Fixed `cloud-api/generation/status.mdx` OpenAPI reference to use correct v2 endpoint URL
- Updated developer key prefix from `dk_` to `ak_` across all documentation to match backend-api v1.5.0 changes
- Enhanced quickstart with 7-step tutorial covering complete onboarding from Cloud Admin registration to AI generation

#### Removed
- Removed `cloud-api/auth/check-email.mdx` as the endpoint is no longer in OpenAPI specification

#### Documentation Coverage
- Documented backend-api v1.5.0 features: multiple developer keys, project-scoped end users, full_name field, email availability validation
- Documented user-app v1.8.0 features: developer keys management UI, full_name display, enhanced clipboard functionality, project-scoped registration
- Addressed all 32 Cloud API endpoints from OpenAPI spec v1.5.0 with comprehensive documentation
- Added 30+ cross-reference CardGroup sections across key endpoint pages
- Standardized documentation format with examples, security notes, use cases, and error handling across all pages

### Skipping versions v1.4.0-v1.7.0 to match the devkit4ai versions

### v1.3.0 [2025-11-27]

#### Added
- Added comprehensive Cloud Admin user management documentation (`cloud-admin/users/viewing-end-users.mdx`) covering `/console/users` page with search, filtering, pagination, and user management features
- Added detailed console statistics documentation (`cloud-admin/console/statistics.mdx`) explaining dashboard metrics, stats cards, data sources, and real-time updates
- Added extensive registration and login documentation (`starter-kit/auth/registration-login.mdx`) covering unified registration flow, role-based authentication, JWT token management, and security patterns
- Added project details page documentation (`cloud-admin/projects/project-details.mdx`) covering tabbed interface with Overview, API Keys, Members, and Settings tabs
- Added comprehensive component library reference (`starter-kit/customization/component-library.mdx`) documenting all Radix UI components including new AlertDialog, Select, Textarea, and Tooltip components with usage examples
- Added legal pages documentation (`starter-kit/features/legal-pages.mdx`) covering Terms of Service and Privacy Policy templates with customization guidance and compliance checklists
- Added SEO-friendly image placeholders across all documentation pages with descriptive filenames

#### Changed
- Updated `docs.json` navigation to include new project details page under Cloud Admin > Project Management
- Updated `docs.json` navigation to include legal pages documentation under Starter Kit > Features & Capabilities
- Enhanced all documentation pages with image placeholders using format: `(((REPLACE_THIS_WITH_IMAGE: filename.png: description)))`
- Improved documentation structure with comprehensive cross-references and related pages sections

#### Documentation Coverage
- Documented user-app v1.7.0 features: project detail pages, end-user management, AlertDialog/Select/Textarea components
- Documented user-app v1.6.0 features: role-based registration flows, legal pages (/terms, /privacy), JWT token handling
- Documented starter-kit v1.6.0-v1.7.0 features: unified registration flow, new UI components, role-specific provisioning
- Addressed documentation gaps from backend-api v1.3.0-v1.4.0 releases

### v1.2.0 [2025-11-26]

#### Added
- Added Cloud API documentation for new Project Management endpoints:
  - `global-stats.mdx` - Get Global Stats across all developer projects
  - `project-stats.mdx` - Get Project Stats for a specific project
  - `list-all-users.mdx` - List All Users across all projects
  - `list-project-users.mdx` - List Project Users for a specific project

#### Changed
- Updated `docs.json` navigation to include new Project Management API endpoints
- Updated `cloud-api/generation/list.mdx` with pagination validation (min: 1, max: 100)
- Updated `cloud-api/generation/public-list.mdx` with pagination validation (min: 1, max: 100)
- Updated `cloud-api/auth/register.mdx` with `full_name` parameter and token response fields

### v1.1.0 [2025-11-17]

#### Added
- Added comprehensive "App Configuration" documentation page (`starter-kit/customization/app-config.mdx`) with detailed configuration references and examples
- Added extensive branding and styling guidance to `branding-styling.mdx` with step-by-step branding checklist, color customization, logo implementation, and typography configuration
- Added detailed theme configuration documentation with dark mode setup, CSS variables, design tokens, and component styling examples
- Added environment configuration documentation for setup and deployment environment variables

#### Changed
- Expanded `branding-styling.mdx` from minimal stub to comprehensive 500+ line guide covering colors, logos, typography, and brand consistency
- Enhanced `theme-config.mdx` with complete dark mode implementation, CSS variable patterns, and design token systems
- Updated `custom-pages.mdx` with additional customization patterns
- Restructured environment configuration documentation for clarity and user guidance
- Updated `docs.json` navigation to include new App Configuration page in Customization section

#### Documentation Structure
- Created organized Customization section with app configuration as primary entry point
- Added cross-linking between related customization pages
- Implemented step-by-step checklist components for branding workflow
- Organized color customization with Tailwind configuration examples

### v1.0.0 [2025-11-7]

#### Added
Documentation website for Dev Kit for AI.
