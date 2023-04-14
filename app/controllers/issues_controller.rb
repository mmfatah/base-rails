class IssuesController < ApplicationController
  def index
    matching_issues = Issue.all

    @list_of_issues = matching_issues.order({ :created_at => :desc })

    render({ :template => "issues/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_issues = Issue.where({ :id => the_id })

    @the_issue = matching_issues.at(0)

    render({ :template => "issues/show.html.erb" })
  end

  def create
    the_issue = Issue.new
    the_issue.status = params.fetch("query_status")
    the_issue.description = params.fetch("query_description")
    the_issue.user_id = params.fetch("query_user_id")
    the_issue.comments_count = params.fetch("query_comments_count")
    the_issue.users_count = params.fetch("query_users_count")

    if the_issue.valid?
      the_issue.save
      redirect_to("/issues", { :notice => "Issue created successfully." })
    else
      redirect_to("/issues", { :alert => the_issue.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_issue = Issue.where({ :id => the_id }).at(0)

    the_issue.status = params.fetch("query_status")
    the_issue.description = params.fetch("query_description")
    the_issue.user_id = params.fetch("query_user_id")
    the_issue.comments_count = params.fetch("query_comments_count")
    the_issue.users_count = params.fetch("query_users_count")

    if the_issue.valid?
      the_issue.save
      redirect_to("/issues/#{the_issue.id}", { :notice => "Issue updated successfully."} )
    else
      redirect_to("/issues/#{the_issue.id}", { :alert => the_issue.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_issue = Issue.where({ :id => the_id }).at(0)

    the_issue.destroy

    redirect_to("/issues", { :notice => "Issue deleted successfully."} )
  end
end
