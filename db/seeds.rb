10.times do |index|
  Blog.create!(
      title: "My Blog Post #{index}",
      body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  )
end

puts '10 posts created'

5.times do |index|
  Skill.create!(
      title: "Rails #{index}",
      percent_utilized: 15
  )
end

puts '5 skills created'

9.times do |index|
  Portfolio.create!(
      title: "Porfolio item #{index}",
      subtitle: 'My great service',
      body: 'In hac habitasse platea dictumst. Quisque eleifend nulla est, sed lobortis augue pretium sit amet. Mauris imperdiet nulla et nibh tempus, et porta felis fermentum. Sed eu sollicitudin turpis. Duis ipsum libero, posuere et accumsan at, varius eu velit. Quisque varius lectus in erat fermentum, id vehicula velit vehicula. Donec eu venenatis dolor. Nulla nunc metus, faucibus quis porttitor eget, malesuada id erat. Praesent in dui a tortor gravida vulputate. Praesent rhoncus tempus tempor. Vestibulum at pulvinar leo.',
      main_image: 'http://placehold.it/600x400',
      thumb_image: 'http://placehold.it/350x200'
  )
end

puts '9 portfolio items created'