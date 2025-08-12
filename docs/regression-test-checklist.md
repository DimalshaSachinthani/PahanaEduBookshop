# 🧪 Regression Testing Checklist for v1.0.0

**Target Branch:** `regression`  
**Merge Source:** `staging`  
**Date:** 2025-08-07  
**Tester:** *Pending*

---

## 🔍 General Goals

- Ensure all major functionalities are intact
- Identify regressions across modules
- Validate user interface consistency
- Confirm stable build before merging to `main`

---

## ✅ Full System Regression Test

| Module              | Test Case Description                   | Status     |
|---------------------|-----------------------------------------|------------|

| Login               | Valid & invalid login flow              | ✅ Pass |
| Logout              | Logout clears session properly          | ✅ Pass |
| User Management     | Create, edit, delete users              | ✅ Pass |
| Product Management  | CRUD operations and validations         | ✅ Pass |
| Billing Module      | Add items, calculate totals             | ✅ Pass |
| Dashboard UI        | Sidebar, navbar, routing checks         | ✅ Pass |
| Help Page           | Instructional content loaded properly   | ✅ Pass |

| Login               | Valid & invalid login flow              | 🕐 Pending |
| Logout              | Logout clears session properly          | 🕐 Pending |
| User Management     | Create, edit, delete users              | 🕐 Pending |
| Product Management  | CRUD operations and validations         | 🕐 Pending |
| Billing Module      | Add items, calculate totals             | 🕐 Pending |
| Dashboard UI        | Sidebar, navbar, routing checks         | 🕐 Pending |
| Help Page           | Instructional content loaded properly   | 🕐 Pending |



---

## 🧪 JUnit Testing

| Task                                          | Status     |
|-----------------------------------------------|------------|

| All unit tests pass (`mvn test`)              | ✅ Pass |
| No skipped or ignored test cases              | ✅ Pass |
| Test logs clean (no unexpected output/errors) | ✅ Pass |

| All unit tests pass (`mvn test`)              | 🕐 Pending |
| No skipped or ignored test cases              | 🕐 Pending |
| Test logs clean (no unexpected output/errors) | 🕐 Pending |


---

## 🛡 Security & Routing

| Test Case                                            | Status     |
|------------------------------------------------------|------------|

| Unauthorized access blocked without login            | ✅ Pass |
| Restricted paths (e.g., `WEB-INF/`) are secure       | ✅ Pass |
| Session timeout and expiration handled               | ✅ Pass |

| Unauthorized access blocked without login            | 🕐 Pending |
| Restricted paths (e.g., `WEB-INF/`) are secure       | 🕐 Pending |
| Session timeout and expiration handled               | 🕐 Pending |


---

## 🧼 Release Readiness

| Task                                         | Status      |
|----------------------------------------------|-------------|

| `pom.xml` version is `1.0.0`                 | ✅ Pass |
| `CHANGELOG.md` updated for this release      | ✅ Pass |
| All images and text reviewed for typos       | ✅ Pass   |
| Final UI reviewed for production standards   | ✅ Pass  |

| `pom.xml` version is `1.0.0`                 | 🕐 Pending |
| `CHANGELOG.md` updated for this release      | 🕐 Pending |
| All images and text reviewed for typos       | 🕐 Pending   |
| Final UI reviewed for production standards   | 🕐 Pending  |


---

## 🗒 Notes



- This checklist is pre-filled for v1.0.0 release and will be updated during/after regression testing.

- Test statuses (✅ Pass / ❌ Fail / ✅ Confirmed/ ⚠️ Warning / ⏳ Pending) will be assigned accordingly.

---


### 🚀 Ready to Merge into `main`: ✅ Yes 

### 🚀 Ready to Merge into `main`: ⏳ Pending

