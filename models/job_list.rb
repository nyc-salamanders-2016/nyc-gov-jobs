require_relative '../tools/nyc_gov_job_parser'
require_relative 'job'
require 'pry'

class JobList
  attr_reader :jobs

  def initialize
    @jobs = []
  end

  def load_jobs(agency, salary)
    eligible_jobs = NYCGovJobParser.preferences(agency, salary)
    eligible_jobs.each do |eligible_job|
      @jobs << Job.new(eligible_job)
    end
  end
end
