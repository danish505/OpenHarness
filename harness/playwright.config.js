const { defineConfig } = require('@playwright/test');

module.exports = defineConfig({
    testDir: './tests/browser',
    use: {
        baseURL: process.env.VALET_URL || 'https://example-laravel-app.test',
        ignoreHTTPSErrors: true,
    },
});
