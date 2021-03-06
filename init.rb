require 'redmine'
require 'show_issue_hook'

Redmine::Plugin.register :redmine_backtrace do
  name 'Issue Backtrace'
  author 'Daniel Vandersluis'
  description 'Allows a backtrace to be given as part of an issue'
  version '0.2.0'

  project_module :backtrace do |map|
    map.permission :view_backtrace, { }
  end
end
