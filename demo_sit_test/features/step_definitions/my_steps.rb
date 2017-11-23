#encoding: UTF-8

When(/^Sikuli with "([^"]*)" test running$/) do |project_name|
  command = 'D:\Uygulamalar\SikuliX\runsikulix.cmd'
  sikuli_project_path = File.expand_path(File.join(File.dirname(__FILE__), "../windows_automation/")) + '/'
  sikuli_project_name = project_name

  results = `#{command} -r #{sikuli_project_path + sikuli_project_name}`
  p results
  if results.include? "[error]"
    fail "Sikuli Tests Failed"
  end
end