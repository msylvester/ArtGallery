class IMDB

  def self.all
    @data ||= [
      {
        id: '1',
        year: 1981,
        title: 'Raiders of the Lost Ark',
        image_url: 'raiders.jpg',
        plot: 'Archaeologist and adventurer Indiana Jones is hired by the US government to find the Ark of the Covenant before the Nazis.'
      },
      {
        id: '3',
        year: 1995,
        title: 'Apollo 13',
        image_url: 'apollo13.jpg',
        plot: 'NASA must devise a strategy to return Apollo 13 to Earth safely after the spacecraft undergoes massive internal damage putting the lives of the three astronauts on board in jeopardy.'
      },
      {
        id: '4',
        year: 2000,
        title: 'Cast Away',
        image_url: 'castaway.jpg',
        plot: 'A FedEx executive must transform himself physically and emotionally to survive a crash landing on a deserted island.'
      },
      {
        id: '5',
        title: "Jurassic Park",
        image_url: "jurassic.jpg",
        plot: "In Steven Spielberg's massive blockbuster, paleontologists Alan Grant (Sam Neill) and Ellie Sattler (Laura Dern) and mathematician Ian Malcolm (Jeff Goldblum) are among a select group chosen to tour an island theme park populated by dinosaurs created from prehistoric DNA. While the park's mastermind, billionaire John Hammond (Richard Attenborough), assures everyone that the facility is safe, they find out otherwise when various ferocious predators break free and go on the hunt.",
        year: 1993
      },
      {
        id: '8',
        title: "A Beautiful Mind",
        image_url: "mind.jpg",
        plot: "A human drama inspired by events in the life of John Forbes Nash Jr., and in part based on the biography \"A Beautiful Mind\" by Sylvia Nasar. From the heights of notoriety to the depths of depravity, John Forbes Nash Jr. experienced it all. A mathematical genius, he made an astonishing discovery early in his career and stood on the brink of international acclaim. But the handsome and arrogant Nash soon found himself on a painful and harrowing journey of self-discovery.",
        year: 2001
      },
      {
        id: '9',
        title: "Lincoln",
        image_url: "lincoln.jpg",
        plot: "With the nation embroiled in still another year with the high death count of Civil War, President Abraham Lincoln (Daniel Day-Lewis) brings the full measure of his passion, humanity and political skill to what would become his defining legacy: to end the war and permanently abolish slavery through the 13th Amendment. Having great courage, acumen and moral fortitude, Lincoln pushes forward to compel the nation, and those in government who oppose him, to aim toward a greater good for all mankind.",
        year: 2012
      }
    ]
  end

  def self.find_by(criteria)
    all.detect do |m|
      criteria.all? { |k,v| m[k.to_sym].to_s.downcase == v.to_s.downcase ||
                            m[k.to_sym].to_s.downcase =~ /#{v.to_s.downcase}/ }
    end
  end

end
