# iOS Mobile Automation

iOS Mobile Automation Framework using **Appium, WebdriverIO, TypeScript, Mocha & XCUITest**.

## Tech Stack

- Appium
- Appium Inspector
- WebdriverIO
- TypeScript
- Mocha
- XCUITest
- iOS Simulator
- Page Object Model

##  Features

- iOS UI Automation
- Locator discovery with Appium Inspector
- Accessibility ID based automation
- Page Object Model
- Test execution with WebdriverIO
- Automation framework setup
- Troubleshooting & debugging

## ▶️ Run Tests

Start Appium:

```bash
appium
```

Run tests:

```bash
npx wdio run wdio.conf.ts
```

Run a specific test:

```bash
npx wdio run wdio.conf.ts --spec ./test/specs/login.e2e.ts
```

## Flow

```text
WebdriverIO
    ↓
Appium
    ↓
XCUITest
    ↓
iOS Simulator
    ↓
iOS Application
```

## Learn More

Created as part of **Automation Learning - SDET** to demonstrate practical iOS automation from setup to framework development.

**Appium | iOS Automation | WebdriverIO | TypeScript | SDET | Test Automation**
