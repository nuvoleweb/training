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
