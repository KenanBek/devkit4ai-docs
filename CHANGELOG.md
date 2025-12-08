# Changelog

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
