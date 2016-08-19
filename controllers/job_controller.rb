require_relative '../views/job_view'
require_relative '../models/job_list'
require 'pry'

class JobController
  def initialize
    @view = JobView.new
    @list = JobList.new
    run
  end

  def run
    @view.greeting
    looking_for_job = @view.looking_for_job?
    if looking_for_job == "y"
      agencies = NYCGovJobParser.unique_agencies
      @view.here_are_the_agencies
      agencies.each do |agency|
        @view.list_agency(agency)
      end
      @view.ask_for_agency
      agency_of_interest = @view.agency_of_interest
      @view.ask_for_minimum_salary
      minimum_salary = @view.minimum_salary

      # bindinpryg.

      @list.load_jobs(agency_of_interest, minimum_salary)
      @list.jobs.each do |job|
        @view.list_option(job.location, job.position, job.credentials, job.description, job.minimum_salary)
      end
      @view.anything_of_interest?
      interested = @view.interested?
      if interested == 'y'
        puts "Here's the info to apply. Best of luck!"
      end
    end
  end
end

JobController.new
