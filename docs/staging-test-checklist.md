# ✅ Staging Testing Checklist for v1.0.0

**Target Branch:** `staging`  
**Merge Source:** `dev`  


**Date:** 2025-08-09  

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
| Authentication      | Login with valid/invalid credentials                  | ✅ Pass   |
| Logout              | Logout clears session and redirects to login          | ✅ Pass   |
| Dashboard           | Links to all modules are visible and functional       | ✅ Pass   |
| Customer Management | Add, edit, delete, list customers                     | ✅ Pass   |
| Item Management     | Add, edit, delete, list items with styled UI          | ✅ Pass   |
| Billing Module      | Create bill with multiple items, quantity, total calc | ✅ Pass   |
| Billing Module      | View bill details correctly                           | ✅ Pass   |
| Help Page           | Opens help.jsp from dashboard and shows guide         | ✅ Pass   |




---

## 🧪 JUnit Testing

| Task                                            | Status    |
|-------------------------------------------------|-----------|
| `mvn clean test` runs successfully              | ✅ Pass |
| DAO layer tests (Customer, Item) pass           | ✅ Pass |
| Service layer tests (Customer, Item, Auth) pass | ✅ Pass |
| Test setup and teardown logic verified          | ✅ Pass |


---

## 🛠 Technical Checks

| Task                                       | Status    |
|--------------------------------------------|-----------|
| `pom.xml` version set to `1.0.0`           | ✅ Pass |
| `CHANGELOG.md` entry for v1.0.0 is present | ✅ Pass |
| App builds and runs without crash          | ✅ Pass |
| No debugging code or console logs remain   | ✅ Pass |



---

## 🗒 Notes


- Testing is **yet to be performed**. All statuses are marked as `🕐 Pending`.
- Will be updated after full verification on staging.
- Test statuses (✅ Pass / ❌ Fail / ⚠️ Warning / ⏳ Pending) will be assigned accordingly.

---

### 🔄 Ready to Merge into `regression`: ✅ Yes (With pending fixes noted above)

- All tests have been performed successfully.
- All statuses are now marked as `✅ Pass`.
- The checklist and documentation are up to date and verified.

---

### 🔄 Ready to Merge into `regression`: ✅ Yes 

