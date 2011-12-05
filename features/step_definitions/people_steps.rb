Given /^the following people:$/ do |people|
  people.hashes.each do |person|
    Person.create first_name: person['first name'],
      last_name: person['last name']
  end
end

When /^I go to the people listing$/ do
  visit "/people"
end

Then /^I should see in order:$/ do |list|
  match_string = list.raw.flatten.join('.*').gsub(/\s/, '.*')
  match = Regexp.new(match_string, Regexp::MULTILINE)
  page.text.should =~ match
end
