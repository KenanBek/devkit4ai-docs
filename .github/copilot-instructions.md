# Project Overview

This repository contains the documentation for Dev Kit for AI, built using Mintlify. The documentation provides guides, API references, and AI tool integration instructions for users of the Dev Kit platform.

## Technology Stack

- **Framework**: Mintlify documentation platform
- **Markup Language**: MDX (Markdown with JSX components)
- **CLI Tool**: `mint` (for local development and deployment)
- **Node.js**: Version 19 or higher required

## Folder Structure

- `/` - Root contains main documentation pages (index.mdx, quickstart.mdx, development.mdx)
- `/essentials` - Core documentation guides (settings, navigation, markdown, code, images, reusable-snippets)
- `/ai-tools` - AI tool integration guides (cursor, claude-code, windsurf)
- `/api-reference` - API documentation organized by feature (health, auth, projects, generation)
- `/snippets` - Reusable MDX snippets
- `/images` - Image assets
- `/logo` - Logo assets
- `docs.json` - Mintlify configuration file

## File Naming Conventions

- Use lowercase with hyphens for file names (e.g., `my-page.mdx`, `api-endpoint.mdx`)
- MDX files use `.mdx` extension
- Follow existing naming patterns in each directory

## Documentation Standards

### Frontmatter

Every MDX page must begin with YAML frontmatter:

```yaml
---
title: "Clear, specific, keyword-rich title"
description: "Concise description explaining page purpose and value"
icon: "icon-name" # Optional, for navigation
---
```

### Writing Style

- Use clear, direct language appropriate for technical audiences
- Write in second person ("you") for instructions and procedures
- Use active voice over passive voice
- Employ present tense for current states
- Keep sentences concise while providing necessary context
- Use descriptive, keyword-rich headings for navigation

### Content Organization

- Lead with the most important information
- Break complex procedures into numbered steps using `<Steps>` component
- Include prerequisites and context before instructions
- Use progressive disclosure: basic concepts before advanced ones
- Group related information logically with clear section breaks

## Mintlify Components

### Callout Components

Use these components to highlight different types of information:

- `<Note>` - Additional helpful information
- `<Tip>` - Best practices and pro tips
- `<Warning>` - Important cautions or breaking changes
- `<Info>` - Neutral contextual information
- `<Check>` - Success confirmations

### Code Components

- Single code blocks: Use triple backticks with language and optional filename
- `<CodeGroup>` - Show the same concept in multiple programming languages
- `<RequestExample>` and `<ResponseExample>` - For API endpoint documentation

### Structural Components

- `<Steps>` and `<Step>` - For step-by-step procedures
- `<Tabs>` and `<Tab>` - For platform-specific content or alternatives
- `<AccordionGroup>` and `<Accordion>` - For collapsible content
- `<Card>` and `<CardGroup>` - For emphasizing important links or concepts
- `<Columns>` - For multi-column layouts

### API Documentation Components

- `<ParamField>` - Document API parameters (path, body, query, header)
- `<ResponseField>` - Document response fields
- `<Expandable>` - For nested object properties

### Media Components

- `<Frame>` - Wrap all images in frames for consistent styling
- Add descriptive `alt` text to all images
- Use `caption` attribute for image captions

## Code Quality Standards

### MDX Code Examples

- Include complete, runnable examples
- Use realistic data instead of placeholder values
- Test all code examples before publishing
- Specify language for syntax highlighting
- Never include real API keys or secrets

### Accessibility

- Include descriptive alt text for all images
- Use specific, actionable link text
- Ensure proper heading hierarchy (start with H2, frontmatter title is H1)
- Structure content for easy scanning with headers and lists

## Configuration Files

### docs.json

This is the main Mintlify configuration file. When editing:

- Maintain proper JSON structure
- Update navigation structure when adding/removing pages
- Follow existing patterns for navigation tabs and groups
- Test changes locally with `mint dev` before committing

## Development Workflow

1. Install Mintlify CLI: `npm i -g mint`
2. Run local preview: `mint dev` (uses port 3000 by default)
3. Use custom port if needed: `mint dev --port 3333`
4. Validate links: `mint broken-links`
5. Update CLI when needed: `mint update`

## Best Practices

- Preview changes locally before committing
- Maintain consistency with existing documentation style
- Keep navigation structure logical and user-friendly
- Use appropriate Mintlify components for each content type
- Follow the existing patterns in similar pages
- Test all code examples and links
- Ensure all images have descriptive alt text
- Keep documentation up-to-date with product changes

## Common Tasks

### Adding a new documentation page

1. Create new `.mdx` file in appropriate directory
2. Add frontmatter with title and description
3. Write content using Mintlify components
4. Add page to navigation in `docs.json`
5. Test locally with `mint dev`
6. Verify links work correctly

### Updating API documentation

1. Update OpenAPI specification if needed (`api-reference/openapi.json`)
2. Update or create MDX files in `/api-reference`
3. Use `<ParamField>` and `<ResponseField>` components
4. Include `<RequestExample>` and `<ResponseExample>`
5. Update navigation in `docs.json` if adding new endpoints

### Adding images

1. Place images in `/images` directory
2. Use descriptive filenames
3. Wrap in `<Frame>` component
4. Include descriptive alt text
5. Optimize images for web (reasonable file size)

## Ignore Patterns

The following should generally not be modified by automated tools:

- `/logo` - Brand assets
- `favicon.ico` - Site icon
- `LICENSE` - License file
- `.git/` - Git directory
- `node_modules/` - Dependencies (if present locally)
