# Karate API Project

This is a minimal Java + Karate API test project.

## What it tests
- Public GET API: `https://jsonplaceholder.typicode.com/posts/1`
- Validates:
  - HTTP status is `200`
  - `response.id == 1`
  - `response.userId` is numeric
  - `response.title` is a string

## Run
1. Install Maven 3.9+ and ensure `mvn` is on PATH.
2. From this folder, run:

```powershell
mvn test
```

