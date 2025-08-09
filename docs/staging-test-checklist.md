# ✅ Staging Testing Checklist for v1.0.0

**Target Branch:** `staging`  
**Merge Source:** `dev`  
**Date:** 2025-08-07  
**Tester:** Dimalsha Sachinthani

---

## 🔍 General Goals

- Verify new features from `dev` branch work as expected
- Validate UI flow and interaction
- Confirm JUnit test suite runs without errors
- Review CHANGELOG and versioning

---

## 📋 Feature Testing


| Module              | Test Case Description                                 | Status   |
|---------------------|-------------------------------------------------------|----------|
| Authentication      | Login with valid/invalid credentials                  | 🕐 Pending   |
| Logout              | Logout clears session and redirects to login          | 🕐 Pending   |
| Dashboard           | Links to all modules are visible and functional       | 🕐 Pending   |
| Customer Management | Add, edit, delete, list customers                     | 🕐 Pending   |
| Item Management     | Add, edit, delete, list items with styled UI          | 🕐 Pending   |
| Billing Module      | Create bill with multiple items, quantity, total calc | 🕐 Pending   |
| Billing Module      | View bill details correctly                           | 🕐 Pending   |
| Help Page           | Opens help.jsp from dashboard and shows guide         | 🕐 Pending   |



---

## 🧪 JUnit Testing

| Task                                            | Status    |
|-------------------------------------------------|-----------|
| `mvn clean test` runs successfully              | 🕐 Pending |
| DAO layer tests (Customer, Item) pass           | 🕐 Pending |
| Service layer tests (Customer, Item, Auth) pass | 🕐 Pending |
| Test setup and teardown logic verified          | 🕐 Pending |

---

## 🛠 Technical Checks

| Task                                       | Status    |
|--------------------------------------------|-----------|
| `pom.xml` version set to `1.0.0`           | 🕐 Pending |
| `CHANGELOG.md` entry for v1.0.0 is present | 🕐 Pending |
| App builds and runs without crash          | 🕐 Pending |
| No debugging code or console logs remain   | 🕐 Pending |


---

## 🗒 Notes

- Testing is **yet to be performed**. All statuses are marked as `🕐 Pending`.
- Will be updated after full verification on staging.
- Test statuses (✅ Pass / ❌ Fail / ⚠️ Warning / ⏳ Pending) will be assigned accordingly.

---

### 🔄 Ready to Merge into `regression`: ✅ Yes (With pending fixes noted above)
