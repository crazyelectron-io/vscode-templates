# VS Code Project Templates

The VS Code extension 'Project Templates (cantonios)' allows you to create new projects based on template files and folders.
The extension must be configured to find the template files:

```json
 {
    // Project template settings
    "projectTemplates.templatesDirectory": "~/vscode-templates",    // default directory containing project templates
    "projectTemplates.usePlaceholders": true,                       // activate placeholder substitution
    "projectTemplates.placeholderRegExp": "#{(\\w+?)}",             // regular expression to use for detecting placeholders
    "projectTemplates.placeholders": {                              // dictionary of default placeholder key-value pairs
        "author" : "Ron Moerman",
        "company": "CrazyElectron"
   }
}
```

## Templates

The following templates are included:

1. KiCAD_Template
2. MC6800_Template