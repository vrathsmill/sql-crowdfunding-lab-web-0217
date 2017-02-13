def selects_the_titles_of_all_projects_and_their_pledge_amounts
  "SELECT title, SUM(pledges.amount) FROM projects INNER JOIN pledges ON projects.id = pledges.project_id GROUP BY title";
end



def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT title, (SUM(pledges.amount) - projects.funding_goal) FROM projects INNER JOIN pledges ON projects.id = pledges.project_id GROUP BY title HAVING SUM(pledges.amount) >= projects.funding_goal";
end


def selects_the_user_name_age_and_pledge_amount_for_all_pledges
  "SELECT name, age, SUM(pledges.amount) FROM users INNER JOIN pledges on users.id = pledges.user_id GROUP BY name"
end


def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount
  "SELECT name, SUM(pledges.amount) FROM users INNER JOIN
  pledges on users.id = pledges.user_id GROUP BY name
  ORDER BY SUM(pledges.amount)"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT category, pledges.amount FROM projects JOIN
  pledges on projects.id = pledges.project_id WHERE projects.category == 'music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_book_category
  "SELECT category, SUM(pledges.amount) FROM projects JOIN pledges on projects.id =
  pledges.project_id WHERE projects.category == 'books'"
end
