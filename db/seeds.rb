# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
artist = [

[ "Queens of the Stone Age", "United States",
%{
  Queens of the Stone Age is an American rock band from Palm Desert, California, United States, formed in 1996. The band's line-up includes founder Josh Homme (lead vocals, guitar, piano), alongside longtime members Troy Van Leeuwen (guitar, lap steel, keyboard, percussion, backing vocals), Michael Shuman (bass guitar, keyboard, backing vocals), Dean Fertita (keyboards, guitar, percussion, backing vocals), and recent addition Jon Theodore (drums, percussion).

  Formed after the dissolution of Homme's previous band, Kyuss, Queens of the Stone Age developed a style of riff-oriented, heavy rock music. Their sound has since evolved to incorporate a variety of different styles and influences, including working with ZZ Top member Billy Gibbons and steady contributor Mark Lanegan.
}],

[ "Faith No More" , "United States",
%{
  Faith No More is an American rock band from San Francisco, California, formed in 1979.[1] Before settling on their current moniker in 1983, the band performed under the names Sharp Young Men[1] and later Faith No Man.[2] Bassist Billy Gould, keyboardist Roddy Bottum and drummer Mike Bordin are the longest remaining members of the band, having been involved with Faith No More since its inception. The band underwent several lineup changes early in their career, along with some major changes later on. The current lineup of Faith No More consists of Gould, Bottum, Bordin, guitarist Jon Hudson, and vocalist Mike Patton.

  After releasing six albums, Faith No More officially announced their breakup on April 20, 1998. They have since reunited, embarked on The Second Coming Tour from 2009–2012, and released their seventh studio album, Sol Invictus, in May 2015.[3]
}],

]

artist_songs = {}

artist_songs["Queens of the Stone Age"] = [
  ["Go with the Flow", 2003, "Go with the Flow is a song by Queens of the Stone Age from the album Songs for the Deaf, released as a single in 2003. At the 46th Grammy Awards, the song was nominated for Best Hard Rock Performance."
  ],
]

artist_songs["Fait No More"] = [
  ["Digging the Grave", 1995, "Digging the Grave is a song by Faith No More, released as the first single from their fifth studio album King for a Day... Fool for a Lifetime, in 1995. Like the rest of the singles released from the album, it failed to chart in the US. However, the song became the band's fourth-highest charting single in the United Kingdom."
  ],
]










artist.each do | name, country, bio |
   Artist.create( name: name, country: country, bio: bio )
end

author_songs.each do | artist_name, songs |
   author = Artist.find_by( name: artist_name )

   songs.each do | title, year, album, plot |
      Novel.create( title:title, artist_id: artist.id, year: year, album: album, bio: bio )
   end
end
