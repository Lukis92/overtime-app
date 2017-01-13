# Overtime app

##Key requirement: company need documentation that salaried employees did or did not get overtime each week.

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- AuditLog

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- x Administrate admin dashboard
- x Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- x Bootstrap -> formatting
- x Icons from glyphicons
- x Update the styles for forms

## Refactor TODOS:
- Refactor user association integration test in post_spec
- x Refactor posts/form for admin user with status
- Fix post_spec.rb:82 to use factories
- Fix post_spec.rb:52 to gave correct user reference and not require update
- Refactor posts/form for admin user with status
