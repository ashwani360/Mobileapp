require 'calabash-android/management/adb'
require 'calabash-android/operations'
$name=0
Before do |scenario|
  start_test_server_in_background
  $filename="Logcat_#{$name}.txt"
  #puts $name
  File.open($filename, "w") {|file| file.truncate(0) }
  system("adb logcat -c")
  
end

After do |scenario|
  if scenario.failed?
   $filename="Logcat_#{$name}.txt"
    system("adb logcat -d > #{$filename}")
    screenshot_embed
	Log_embed $filename
	$name=$name+1
	 
  end
  shutdown_test_server
end
