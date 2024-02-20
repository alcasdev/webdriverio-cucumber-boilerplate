# Automation Lab for Modern FEE, Day 2.
## _Custom Steps!, and a wide variety of webdriver actions._

_Readable on web at https://github.com/Chaparro/webdriverio-cucumber-boilerplate/blob/main/lab/features/2ndday/README.md_


### Reminder:

In order to run a specific test, run a command like this on the terminal:

```sh
$ npx wdio wdio.conf.ts --spec lab/features/2ndday/1-customLogin.feature
```


### Things to consider from the day 2 folder:

> "1-customLogin.feature" shows a different way to structure our login step, by creating a custom step with parameters and connecting the step definition with the actual code.

> "2-envLogin.feature" is another custom step, now invoking env variables to get our login credentials, both are useful depending on the situation.

> "3-inventory.feature" showcases different actions and selectors for us to consider.

> "4-E2E.feature" is meant as an exercise, we can use steps previously shown to complete the main flow of the demo app as defined in the Scenarios, without writing any new custom code, hopefully.
