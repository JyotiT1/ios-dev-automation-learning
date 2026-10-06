import type { Options } from '@wdio/types'

export const config: Options.Testrunner = {
    runner: 'local',

    specs: [
        './test/specs/**/*.ts'
    ],

    maxInstances: 1,

    hostname: '127.0.0.1',
    port: 4723,
    path: '/',

    framework: 'mocha',

    reporters: [
        'spec'
    ],

    mochaOpts: {
        timeout: 120000
    },

    capabilities: [
        {
            platformName: 'iOS',

            'appium:automationName': 'XCUITest',

            'appium:deviceName': 'iPhone 17',

            'appium:platformVersion': '27.0',

            'appium:bundleId': 'com.ios.dev.automation',

            'appium:noReset': false,

            'appium:newCommandTimeout': 120
        }
    ]
}