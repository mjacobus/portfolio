1.upto(10) do |i|
  Job.create(
    title: "My job ##{i}",
    url: "http://www.job#{i}.com.br",
    company: "Company Job ##{i}",
    url: "http://www.company-job-#{i}.com",
    description: "I did a very nice job here. Look <a href='http://google.com'>Google</a>"
  )
end
