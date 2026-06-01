const { test, expect } = require('@playwright/test');

test('Valet app responds', async ({ page }) => {
    await page.goto('/');
    await expect(page.locator('body')).toBeVisible();
});
