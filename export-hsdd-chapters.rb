ActiveRecord::Base.logger = nil
Section.includes(:chapter).where(chapters: { catalog_id: 47 }).order('chapters.position, sections.position').each do |sec|
  puts "#{sec.chapter_id}\t#{sec.chapter.position}\t#{sec.chapter.name('de')}\t#{sec.id}\t#{sec.position}\t#{sec.name('de')}"
end.size
