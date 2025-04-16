const { defineConfig } = require('@playwright/test')

module.exports = defineConfig({
  testDir: './tests',
  reporter: [['html', { outputFolder: 'playwright-report', open: 'never' }]],
  webServer: {
    command: 'npm run start:test:all',
    url: 'http://localhost:8080',
    timeout: 120 * 1000,
    reuseExistingServer: !process.env.CI,
  },
  use: {
    baseURL: 'http://localhost:8080/',
  },
})