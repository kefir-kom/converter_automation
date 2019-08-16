Given(/^I land on help popup$/) do
  text("help")
end

When(/^I click on Got it button$/) do
  find_element(id:"button1").click

  # find_element(id: "toolbar").find_element(xpath: "//android.widget.TextView[@text='Area']")
end

Then(/^I land on Area screen$/) {
  text("Area")
}

When(/^I click on Swap button$/) do
find_element(id: "fab").click
  puts("User clicks on Swap button")

end

Then(/^I see "([^"]*)" in From header$/) do |value|
  actualValue =   find_element(id: "header_text_unit_from").text
  checkValue(value,actualValue)
end

And(/^I see "([^"]*)" in To header$/) do |value|
  actualValue =   find_element(id: "header_text_unit_to").text
  checkValue(value,actualValue)
end

And(/^I click on clear it button$/) do
  find_element(id:"menu_clear").click
  puts("User cliks on Clear button")
end

When(/^I enter "([^"]*)" to From field$/) do |value|
  find_element(id:"header_value_from").send_keys(value)
  puts("User enterred value #{value}")
end

Then(/^I get "([^"]*)" in To field$/) do |value|
  actualValue =   find_element(id: "header_value_to").text
  checkValue(value,actualValue)
end

When(/^I click on From field$/) do
  find_element(id:"header_value_from").click
end

And(/^I press "([^"]*)" jy soft keyboard$/) do |value|
  dig = value.split("")
  dig.each do |key|
    digit = Integer(key)
    press_keycode 7+digit
  end

end

def checkValue(value,actualValue)
  if actualValue !=value
    fail("Ожидаемый результат = #{value} не равен фактическому = #{actualValue}")
    end
end

When(/^I click on "([^"]*)" in To field$/) do |value|
  find_element(id:"    ").find_element(xpath:"//android.widget.CheckedTextView[@text='#{value}']")
end

Then(/^I get "([^"]*)" area in To field$/) do |value|
  actualValue =   find_element(id: "   ").text
  checkValue(value,actualValue)
end