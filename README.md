# MIA_STEP_-_STYLE
The bug preventing new users from registering is caused by the use of $stmt->get_result() to check for existing usernames or emails. This method requires the PHP mysqlnd driver. On servers without mysqlnd, get_result() fails, preventing the registration check and blocking new registrations. The correct approach is to use $stmt->store_result() and $stmt->num_rows to safely check for duplicates. Additionally, database column names and auto-increment settings must match the prepared statement insert query.

We fixed the registration bug as a group by replacing get_result() with store_result() to properly check for duplicate usernames/emails, ensured the database columns and auto-increment were correct, and verified that new users could register and log in successfully.

