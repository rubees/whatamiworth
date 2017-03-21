# Todos

- Ask for name
- Make confirmation page pretty
- Fix bad data
- Refactor confirmation action
- Add tests
- See if we can get a "offer" webhook

## Bad data

These two seem to be 10x too high, need better data cleanup

=> #<ActiveRecord::Relation [#<Offer id: 795, salary_bottom: 350000, salary_top: 400000, old_salary_bottom: 50000, old_salary_top: 60000, location: "berlin", position: "iOS Game Engineer", work_languages: "{}", work_experience: 6, work_authorization: "yes", created_at: "2017-03-14 17:06:02", updated_at: "2017-03-14 17:06:02">, #<Offer id: 1231, salary_bottom: 550000, salary_top: 550000, old_salary_bottom: 50000, old_salary_top: 60000, location: "berlin", position: "Sr. Ruby on Rails.", work_languages: "{}", work_experience: 4, work_authorization: "yes", created_at: "2017-03-14 17:06:05", updated_at: "2017-03-14 17:06:05">]>
