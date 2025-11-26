# Changelog

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
