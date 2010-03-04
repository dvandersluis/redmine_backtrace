class ShowIssueHook < Redmine::Hook::ViewListener
  def view_issues_show_description_bottom(context = {})
    project = context[:project]
    current_user = User.current

    if project.module_enabled?('backtrace')
      if current_user.allowed_to?(:view_backtrace, project)
        issue = context[:issue]

        return if issue.backtrace.blank?

        out = "<hr />"
        out << "<p><strong>" << l(:field_backtrace) << "</strong></p>"
        out << "<pre>" << h(issue.backtrace) << "</pre>"
        out
      end
    end
  end
end
