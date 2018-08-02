def get_name(person)
  return person[:name]
end

def get_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  return true if person[:favourites][:snacks] == food
  return false
end


def add_friend(person, friend_name)
  person[:friends] << friend_name
end


def remove_friend(person, friend_name)
  person[:friends].delete(friend_name)
end

def add_total_monies(people)
  total_monies = 0
  for person in people
    total_monies += person[:monies]
  end
  return total_monies
end

def lend_money(lender, lendee, loan)
  monies_in = lendee[:monies] + loan
  monies_out = lender[:monies] - loan
  return [monies_out, monies_in]
end
