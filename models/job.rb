class Job

  attr_reader :title, :job_description, :minimum_qual_requirements, :salary_min, :salary_max

  def initalize(args={})
    @title = args.fetch(:business_title, "")
    @job_description = (:job_description, "")
    @job_location = (:location, "")
    @qualifications = args.fetch(:minimum_qual_requirements, "")
    @salary_min = args.fetch(:salary_min, 0)
    @salary_max = args.fetch(:salary_max, 0)
  end
end
