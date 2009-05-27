atom_feed do |feed|
  feed.title("JD Computer Science")
  feed.updated(@projects.first.created_at)
  
  @projects.each do |project|
    feed.entry(project) do |entry|
      entry.title(project.name)
      entry.content(project.description, :type => 'html')
      entry.author("Me")
    end
  end
end