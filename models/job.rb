class Job

attr_reader :position, :description, :location, :credentials, :minimum_salary

  def initialize(args={})
    @position = args["civil_service_title"]
    @description = args["job_description"]
    @location = args["work_location"]
    @credentials = args["minimum_qual_requirements"]
    @minimum_salary = args["salary_range_from"]
    # @position = args.fetch(:civil_service_title, "")
    # @description = args.fetch(:job_description, "")
    # @location = args.fetch(:work_location, "")
    # @credentials = args.fetch(:minimum_qual_requirements, "")
    # @minimum_salary = args.fetch(:salary_range_from)
  end
end

