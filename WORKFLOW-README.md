## Configuration Management Workflow
Behat hands-on session branch. Practical assignments are organized in the following sub-branches:

1. Development configuration: `git checkout workflow-1` or [view on GitHub](https://github.com/nuvoleweb/training/tree/workflow-1)
2. Multiple developers: `git checkout workflow-2` or [view on GitHub](https://github.com/nuvoleweb/training/tree/workflow-2)
3. Configuration edits on live site: `git checkout workflow-3` or [view on GitHub](https://github.com/nuvoleweb/training/tree/workflow-3)

### Exercise 1: Development configuration

**Option**: `drush cex --skip-modules=drush`

Problem: devels configuration is exported and thus whole export can not be imported again.

**Option**: Configuration split.

- Create new Configuration split.
- Split off devel and kint modules and devel menu.
- Export configuration with `drush config-split-export`
- Import on production with standard `drush config-import`
- Import on development with `drush config-split-import`


### Exercise 2: Multiple developers

Remember the workflow:
- export
- commit
- merge
- import

See what can go wrong:

- On dev: delete image from Article content type.
- On dev2: add image to Post content type.

Recover from:
- merge before export: Export deletes previous work, solved by git
- merge before commit: Manual labour on conflicts
- import before export: Deletes your work, no backup
- no import: Next export will not contain merged config, more difficult to solve in git.



### Exercise 3: Configuration edits on live site

Try out `config_readonly`

```
# Activate lock
echo "\$settings['config_readonly'] = TRUE;" >> sites/default/settings.php
```

Alternative: Specify all allowed configuration in a Configuration Split.
