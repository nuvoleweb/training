## Behat
Behat hands-on session branch. Practical assignments are organized in the following sub-branches:

1. Setup: `git checkout behat-1` or [view on GitHub](https://github.com/nuvoleweb/training/tree/behat-1)
2. Write a Behat scenario: `git checkout behat-2` or [view on GitHub](https://github.com/nuvoleweb/training/tree/behat-2)
3. Write a custom Behat step: `git checkout behat-3` or [view on GitHub](https://github.com/nuvoleweb/training/tree/behat-3)

### Exercise 1: Setup

Run: `composer install` and install Drupal by performing the following steps:

```bash
# Install dependencies
composer install
# Change to Drupal root
cd build
# Install site using SQLite
../vendor/bin/drush site-install -y --db-url=sqlite:.sqlite --account-name=admin --account-pass=admin  --site-name="Behat test site"
# Run Drush server (will make sure Behat works out of the box)
 ../vendor/bin/drush --debug runserver :8888
 ```

After that open a new terminal window and change to the repository root to run Behat:

```bash
cd /path/to/my/training/behat
./vendor/bin/behat
```

The following output should appear:

```
$ ./vendor/bin/behat
...............

2 scenarios (2 passed)
15 steps (15 passed)
0m2.54s (30.73Mb)
```

### Exercise 2: Write a Behat scenario

Given the following user story:

> As a site administrator, when I create an article, I would like it to be not published by default so that I can
refine its content before publishing it.

Write a Behat scenario that captures it and run it.
