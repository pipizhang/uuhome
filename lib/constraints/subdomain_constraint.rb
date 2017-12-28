class SubdomainConstraint
  def initialize(domain)
    @domains = [domain].flatten
  end

  def matches?(request)
    @domains.include? request.subdomain
  end
end
