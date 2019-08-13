Given(/^I land on help popup$/) do
  text("Помощь")
end

When(/^I click on Got it button$/) do
  find_element(id:"button1").click
  sleep(2)
end

Then(/^I land on Area screen$/) {
  text("Площадь")
}

When(/^I click on Swap button$/) do
  puts("User clicks on Swap button")

end

Then(/^I see "([^"]*)" in From header$/) do |value|
  puts("From header values is "+value)
end

And(/^I see "([^"]*)" in To header$/) do |value|
  puts("To header values is #{value}")
end

And(/^I click on clear it button$/) do
  puts("User cliks on Clear button")
end

When(/^I enter "([^"]*)" to From field$/) do |value|
 puts("User enterred value #{value}")
end

Then(/^I get "([^"]*)" in To field$/) do |value|
  puts("User sees #{value} in result field")
end