require 'calabash-android/calabash_steps'
$global_memory=""
Given /^I am on welcome screen$/ do
  ops = eval(File.open('Data.txt') {|f| f.read })
  #puts ops[:welcome]
   wait_for_text(ops[:welcome], timeout: 10)
end

And (/^I touch the menu icon$/) do
touch("* id:'drawer_toggle'")
end
And (/^I swiped the navigation$/) do
#perform_action('drag', 0, 280, 1000, 280,5)
touch("TextView text:'TOP STORIES' index:0")
perform_action('drag', 0, -1000, 20, 20, 100)
#perform_action('drag', 0, 90, 0, 0, 50)
#puts "first completed"
perform_action('drag', 5, 1000, 20, 20, 100)
#pan("* id:'menuCoversHListView'", :left,from: {x:0, y:280}, to: {x:8000, y:280})
end

And (/^I swiped the navigation2$/) do
#perform_action('drag', 0, 280, 1000, 280,5)
#first_article = query("TextView text:'TOP STORIES' index:0")
#puts first_article
x = query("TextView text:'TOP STORIES' index:0", :x)
#puts x[0]
y = query("TextView text:'TOP STORIES' index:0", :y)
#puts y[0]
#first_article = query("TextView text:'TOP STORIES' index:1", :x)
#puts first_article
#first_article = query("TextView text:'TOP STORIES' index:1", :y)
#puts first_article
#first_article = query("ImageView index:0", :x)[0]
#puts first_article

touch("TextView text:'TOP STORIES' index:0")
#touch("* x:#{x[0].to_i}")
#sleep 10
#touch("* x:#{y[0].to_i}")
#sleep 10
perform_action('drag', 0, -1000, 20, 20, 100)
#perform_action('drag', 0, 90, 0, 0, 50)
#puts "first completed"
perform_action('drag', 5, 1000, 20, 20, 100)
#perform_action('drag', 90, 0, 0, 0, 50)
#pan("* id:'menuCoversHListView'", :left,from: {x:0, y:280}, to: {x:8000, y:280})
end
And (/^I should see the Title header as "([^\"]*)"$/) do |text|
wait_for_elements_exist( ["TextView text:'#{text}'", "TextView id:'menu_article_separator_text'"], :timeout => 2)
end
And (/^I touch the first article$/) do
first_article = query("TextView id:'menu_article_headline' index:0", :text)[0]
first_article=first_article.to_s
$global_memory.replace(first_article)
touch("TextView text:'#{first_article}'")
#puts($global_memory)
#puts first_article
end

And (/^I touch the second article$/) do
first_article = query("TextView id:'menu_article_headline'", :text)[1]
first_article=first_article.to_s
#$global_memory.replace(first_article)
touch("TextView text:'#{first_article}'")
#puts($global_memory)
#puts first_article
end

And (/^I see the tittle of the selected article$/) do
#wait_for_text($global_memory, timeout: 10)
wait_for_elements_exist( ["* id:'pager'"], :timeout => 2)
perform_action('drag', 0, 0, 10, -1000, 100)
perform_action('drag', 0, 0, 10, 1000, 100)
perform_action('drag', 80, 80, 10, -1000, 100)
perform_action('drag', 80, 80, 10, 1000, 100)
perform_action('drag', 50, -100, 50, 50, 100)
perform_action('drag', 50, 100, 50, 50, 100)
end
And (/^Tap on the Share button$/) do
touch("* id:'share_button'")
end
And (/^Tap on the Font Size icon$/) do
touch("* id:'font_size'")

end

And(/^The action buttons should be displayed$/) do
wait_for_elements_exist( ["* id:'font_size'"], :timeout => 2)
wait_for_elements_exist( ["* id:'share_button'"], :timeout => 2)
wait_for_elements_exist( ["* id:'fav_button'"], :timeout => 2)
end

And (/^Double Tap on the screen$/) do
#wait_for_text($global_memory, timeout: 10)
#wait_for_elements_exist( ["ViewPager id:'pager' child FrameLayout index:0"], :timeout => 2)
pinch("*", :out)
#pinch("* x:500 y:700", :in)
#pinch("* x:500 y:700", :in)
#double_tap("*")
#touch("* id:'relative_fragment_layout'")
end
And (/^The share popup should get displayed$/) do
element_does_not_exist("*")
system("adb shell input tap 50 50")
end
And (/^Close the rate-popup$/) do
sleep 20
#system("adb shell input tap 50 50")
end
And (/^Select the "([^\"]*)" option$/) do |text|
touch("* text:'#{text}'")


end

And (/^The Font Size should be changed$/) do
#hight = query("View index:3", :text)[0]
element_exists("all View index:3")
end
And (/^I touch the save icon$/) do
puts element_exists("* id:'fav_button' checked:true")
#puts query("* id:'fav_button'")
if(element_exists("* id:'fav_button' checked:true"))
puts("In if condition")
touch("* id:'fav_button'")
 sleep 1
touch("* id:'fav_button'")
else
touch("* id:'fav_button'")
puts("In else condition")
end
 sleep 1
end
And (/^The save icon should get highlighted$/) do
#wait_for_text($global_memory, timeout: 10)
wait_for_elements_exist( ["* id:'fav_button' checked:true"], :timeout => 4)
end


Then (/^I scroll until I see the saved article$/) do
perform_action('drag', 30, 30, 50, -1200, 100)
$i=0
$count=50
while $i<$count do
#puts($i)
 #scroll_down
$i=$i+1

  end
  #first_article = $global_memory.at(0)
  #puts "TextView text:'#{$global_memory[0]}'"
 wait_for_elements_exist( ["TextView text:'#{$global_memory}'"], :timeout => 2) 
 
end

And (/^I touch the settings icon$/) do
touch("* id:'settings'")
end

And (/^I touch the Text_to_speech_toggle$/) do
touch("* id:'text_to_speech_switch'")
end

And (/^I touch the settings_to_home button$/) do
touch("* id:'home_up'")
end

And (/^I touch the Text_to_speech_button$/) do
touch("* id:'tts_play_pause'")
sleep 5
touch("* id:'tts_play_pause'")
end


And (/^I touch the Delete button$/) do
touch("* id:'delete_icon'")
end

##################################

Given (/^I tap "([^\"]*)" tab$/) do |text|
touch("* text:'#{text}'")
end

Then (/^I should see the current date with edition on the first article$/) do
#StringtoVerify=Datebut system.'First'
first_article = query("TextView id:'section_hat' index:0", :text)[0]
first_article=first_article.to_s
$global_memory.replace(first_article)
wait_for_text($global_memory)
puts($global_memory)
puts first_article
end

Then (/^I should see the second Title1 hat as "([^\"]*)"$/) do |text|
wait_for_elements_exist( ["TextView text:'#{text}'", "TextView id:'section_hat'"], :timeout => 2)
end


Given(/^I touch "([^\"]*)" tab$/) do |arg1|
 touch("* text:'#{arg1}'")
end

And (/^I should see the Title hat text on both first and second articles as "([^\"]*)"$/) do |text|
wait_for_elements_exist( ["TextView text:'#{text}'", "* id:'section_hat'"], :timeout => 2)
end