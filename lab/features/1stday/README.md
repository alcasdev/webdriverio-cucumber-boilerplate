# Automation Lab for Modern FEE, Day 1.
## _Webdriverio AND Cucumber?_

_Readable on web at https://github.com/Chaparro/webdriverio-cucumber-boilerplate/blob/main/lab/features/1stday/README.md_

WebdriverIO is a powerful E2E and Component Test Framework, and Cucumber is a tool that integrates BDD into code, in order to connect step definitions (behaviors) with features and scenarios (order of these behaviors written in Gherkin, the Cucumber Syntax).

In this lab we will explore the basic functionality of WebdriverIO through our modern, local browsers. There are many more capabilities to frameworks like these (Mobile, Cloud, Parallel, etc.) that can be explored depending on then nature of the work.

### First Steps:

- Complete the quick setup on the main project's README.
- Open project folder and a terminal targeting the base folder.
- Take a look at the feature files stored in 'lab/features/1stday'

In order to run a specific test, run a command like this on the terminal:

```sh
$ npx wdio wdio.conf.ts --spec lab/features/1stday/1-login.feature
```

Here we are telling webdriverio to use the wdio.conf.ts Configuration file, and pointing to the specific feature in the path.

### Things to consider from the feature files:

> The steps inside 1-login.feature are predefinedsteps by the framework, mapped in src/steps (given.ts, then.ts, when.ts).

> The steps don't have to match the Gherkin keyword with the file (given, then, when), they are all imported and ready to be used regardless of the keyword used to start the step (Given, And, When, Then), that is, unless strict Gherkin is invoked in the configuration.

> These keywords within the Gherkin Syntax are mostly used to make the feature file readable instead of a streamline of instructions.

### Additional information that might be helpful:

*List of predefined steps*

Check out all predefined snippets. You can see how they get used in [`sampleSnippets.feature`](https://github.com/webdriverio/cucumber-boilerplate/blob/main/src/features/sampleSnippets.feature).

*About selectors*
https://webdriver.io/docs/selectors/
https://devhints.io/xpath
