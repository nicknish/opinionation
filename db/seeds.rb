# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Answer.destroy_all
Vote.destroy_all
Favorite.destroy_all
UserTagScore.destroy_all
UserTagScoreVote.destroy_all


twerds = [
  {
    question: "In 664 Eorcenberht's son Egbert succeeded to the Kentish throne."
  },
  {
    question: "Strata of rock cracked as the earthquake ruptured the faults, sending out powerful shockwaves."
  },
  {
    question: "Hunting with lead shot, along with the use of lead sinkers in angling, has been identified as a major cause of lead poisoning in waterfowl, which often feed off the bottom of lakes and wetlands where the shot collects."
  },
  {
    question: "During World War II, Scoutmasters and adult members performed civic duties in the Special Constabulary, Police and Volunteer Defence Corps."
  },
  {
    question: "The Pendle witches were tried in a group that also included the Samlesbury witches, Jane Southworth, Jennet Brierley, and Ellen Brierley, the charges against whom included child murder and cannibalism; Margaret Pearson, the so-called Padiham witch, who was facing her third trial for witchcraft, this time for killing a horse; and Isobel Robey from Windle, accused of using witchcraft to cause sickness."
  },
  {
    question: "His findings were published in 1893 and 1894 as Ostrov Sakhalin (The Island of Sakhalin), a work of social science – not literature – worthy and informative rather than brilliant."
  },
  {
    question: "Just as at Crécy, the defending archers and crossbowmen, along with the ditches and pits, did most of the work."
  },
  {
    question: "Her express instructions were that assistance was to be rendered to friend and foe indiscriminately."
  },
  {
    question: "Groups are basic units where member Scouts are educated."
  },
  {
    question: "1, is a Pintupi-speaking Indigenous artist from Australia's Western Desert region."
  },
  {
    question: "The importance of bread as a daily staple meant that bakers played a crucial role in any medieval community."
  },
  {
    question: "Girl members were accepted starting July 1978, making the Hong Kong branch a co-educational organisation, much earlier than the Scout Association of the United Kingdom."
  },
  {
    question: "Plaza directed rescue efforts for two days as airlifts from Quito dropped supplies."
  },
  {
    question: "Bartlemas is a conservation area that incorporates the remaining buildings of a leper hospital founded by Henry I; it includes the sports grounds for Oriel, Jesus and Lincoln Colleges, along with landscaping for wildlife and small scale urban development."
  },
  {
    question: "1; there is another artist from the same region, Wintjiya Morgan Napaljarri (also called Wintjiya Reid Napaltjarri), who is known as Wintjiya No."
  },
  {
    question: "James worked harder as king than his brother had, but was less willing to compromise when his advisers disagreed."
  },
  {
    question: "\"That's not bad."
  },
  {
    question: "Finding him unconscious, Whittle brought the boy to the bank and applied artificial respiration for approximately half an hour; the child later came around and was taken to hospital."
  },
  {
    question: "After winning championships in high school and college, Johnson was selected first overall in the 1979 NBA Draft by the Lakers."
  },
  {
    question: "Scat collected and analyzed from both Andohahela and Andringitra contained lemur matter and rodents."
  },
  {
    question: "She seems to have genuinely believed in her own guilt; when Law was brought into court Alizon fell to her knees in tears and confessed."
  },
  {
    question: "Mating typically occurs during September and October, although there are reports of its occurring as late as December, and can be highly conspicuous."
  },
  {
    question: "Initial reports (around August 7) estimated the death toll at 2,700 people."
  },
  {
    question: "After his father's death in 1898, Chekhov bought a plot of land on the outskirts of Yalta and built a villa there, into which he moved with his mother and sister the following year."
  },
  {
    question: "The game-winning shot, which Johnson dubbed his \"junior, junior, junior sky-hook\", helped Los Angeles defeat Boston in six games."
  },
  {
    question: "Rallying his men, Whittle rushed the post and started bombing the occupants with grenades."
  },
  {
    question: "M."
  },
  {
    question: "He aimed to make Darwin the \"main Australian base for war\" and a launching point for deployments to Southeast Asia, rather than simply a transit station."
  },
  {
    question: "The unmistakable breeding plumaged male has a chocolate-brown head and white breast with a white stripe extending up the side of the neck."
  },
  {
    question: "He was the first Christian king of all of Mercia, though it is not known when or how he converted from Anglo-Saxon paganism."
  },
  {
    question: "Some rhododendrons have grown to immense sizes,[citation needed] as have other species imported from harsher climates in Eastern Canada or Europe."
  },
  {
    question: "The Exclusion Crisis contributed to the development of the English two-party system: the Whigs were those who supported the Bill, while the Tories were those who opposed it."
  },
  {
    question: "In Yalta, Chekhov wrote one of his most famous stories, \"The Lady with the Dog\" (also called \"Lady with Lapdog\"), which depicts what at first seems a casual liaison between a married man and a married woman in Yalta."
  },
  {
    question: "The only limit is the minimum age of five years."
  },
  {
    question: "Butter tended to be heavily salted (5–10%) in order not to spoil."
  },
  {
    question: "Henrique, or Henry the Navigator, sponsored expeditions to Africa."
  },
  {
    question: "In 1863, Edward, the Prince of Wales, married Princess Alexandra of Denmark."
  },
  {
    question: "There are several modern buildings in the downtown area, including the Harbour Centre, the Vancouver Law Courts and surrounding plaza known as Robson Square (designed by Arthur Erickson) and the Vancouver Library Square (designed by Moshe Safdie), reminiscent of the Colosseum in Rome, and the recently completed Woodward's building Redevelopment (designed by Gregory Henriquez)."
  },
  {
    question: "Completing his term as DCAS, McCauley was posted to the European theatre in November 1944, serving for the remainder of the war as Air Commodore (Operations), 2nd Tactical Air Force RAF (2nd TAF)."
  },
  {
    question: "Louise denied the rumour, claiming that it was started by Beatrice and Helena to undermine her position at court."
  },
  {
    question: "The abuses charged to James included the suspension of the Test Acts, the prosecution of the Seven Bishops for merely petitioning the crown, the establishment of a standing army, and the imposition of cruel punishments."
  },
  {
    question: "\"Chekhov renounced the theatre after the disastrous reception of The Seagull in 1896, but the play was revived to acclaim in 1898 by Constantin Stanislavski's Moscow Art Theatre, which subsequently also produced Chekhov's Uncle Vanya and premiered his last two plays, Three Sisters and The Cherry Orchard."
  },
  {
    question: "Wintjiya's painting Rock holes west of Kintore was a finalist in the 2007 National Aboriginal & Torres Strait Islander Art Award."
  },
  {
    question: "Salting and drying was the most common form of food preservation and meant that fish and meat in particular were often heavily salted."
  },
  {
    question: "Hops may have been widely used in England in the tenth century; they were grown in Austria by 1208 and in Finland by 1249 (and possibly much earlier)."
  },
  {
    question: "Six of the Pendle witches came from one of two families, each at the time headed by a female in her eighties: Elizabeth Southerns (aka Demdike [a]), her daughter Elizabeth Device, and her grandchildren James and Alizon Device; Anne Whittle (aka Chattox), and her daughter Anne Redferne."
  },
  {
    question: "Five different scribes can be identified for the entries up to 1054, after which it appears to have been worked on at intervals."
  },
  {
    question: "The scribe wrote the year number, DCCCXCII, in the margin of the next line; subsequent material was written by other scribes."
  },
  {
    question: "There were also whey cheeses, like ricotta, made from by-products of the production of harder cheeses."
  },
  {
    question: "Despite the Protestant marriage, fears of a potential Catholic monarch persisted, intensified by the failure of Charles II and his wife, Catherine of Braganza, to produce any children."
  },
  {
    question: "\" The Vancouver Art Gallery is housed downtown in the neoclassical former courthouse built in 1906."
  },
  {
    question: "On 6 April 1385, (the anniversary of the \"miraculous\" battle of Atoleiros, a fortuitous date), the council of the kingdom (cortes in Portuguese) assembled in Coimbra and declared him King John I of Portugal."
  },
  {
    question: "The new Air Scout Group officially registered with the Scout Association of Hong Kong as the 1661 Kowloon Group."
  },
  {
    question: "In this post he was preceded and succeeded by two other Duntroon graduates, Air Vice Marshals Frank Bladin and Alan Charlesworth respectively."
  },
  {
    question: "Superficially frail by 2008, she nevertheless had the stamina and agility to teach her granddaughter the skills of chasing and capturing goannas."
  },
  {
    question: "This species' preferred habitat of shallow water is naturally susceptible to problems such as drought or the encroachment of vegetation, but this duck's habitat might be increasingly threatened by climate change."
  },
  {
    question: "3–11."
  },
  {
    question: "Tension arose in College since Provost Edward Hawkins was a determined opponent of the Movement."
  },
  {
    question: "As it is about ten minutes walk from College and more peaceful than the middle of the city, it has become the principal choice of accommodation for Oriel's graduates and finalists."
  },
  {
    question: "The tie is difficult to break if the mating session is interrupted."
  },
  {
    question: "Also in 2010, a print by Wintjiya was selected for inclusion in the annual Fremantle Arts Centre's Print Award."
  },
  {
    question: "The chicks fledge in 46 to 47 days after hatching, but stay with the female until she has completed moulting."
  },
  {
    question: "2 x 1."
  },
  {
    question: "The group were disgusted by the prevailing Church, and they sought to revive the spirit of early Christianity."
  },
  {
    question: "By the time of Edward VII's accession, there were four servants and two dogs."
  },
  {
    question: "To prevent his HIV infection from progressing to AIDS, Johnson takes a daily combination of drugs."
  },
  {
    question: "He also warned Air Chief Marshal Sir Robert Brooke-Popham, the FEAF's Commander-in-Chief, of the weaknesses of the Allied air defences."
  },
  {
    question: "He married Eormenhild of Kent; no date is recorded for the marriage and there is no record of any children in the earliest sources, though Coenred, who was king of Mercia from 704 to 709, is recorded in John of Worcester's 12th century chronicle as Wulfhere's son."
  },
  {
    question: "Johnson did not initially aspire to play professionally, focusing instead on his communication studies major and on his desire to become a television commentator."
  },
  {
    question: "The earthquake considerably impacted a number of cities: it destroyed Guano, Patate, Pelileo, Pillaro, and one-third of Ambato."
  },
  {
    question: "The south and west ranges and the gate tower were built around 1620 to 1622; the north and east ranges and the chapel buildings date from 1637 to 1642."
  },
  {
    question: "For example:Chekhov later concluded that charity and subscription were not the answer, but that the government had a duty to finance humane treatment of the convicts."
  },
  {
    question: "After the war, Hong Kong was repossessed by British forces."
  },
  {
    question: "7%), Filipino (5."
  },
  {
    question: "McCauley's seniority and instructional experience kept him in Australia on training assignments for the first eighteen months of World War II."
  },
  {
    question: "On the news of the invasion by the Castilians, John I of Portugal's army met with Nuno Álvares Pereira, the Constable of Portugal, in the town of Tomar."
  },
  {
    question: "Wulfhere was the son of Penda of Mercia."
  },
  {
    question: "Cheese was used in cooking for pies and soups, the latter being common fare in German-speaking areas."
  },
  {
    question: "2 rebounds, and 11."
  },
  {
    question: "Sexual maturity occurs around three to four years of age, and life expectancy in captivity is 20 years."
  },
  {
    question: "The next target of membership growth was 100,000 members in 2004."
  },
  {
    question: "After the Restoration, James was confirmed as Lord High Admiral, an office that carried with it the subsidiary appointments of Governor of Portsmouth and Lord Warden of the Cinque Ports."
  },
  {
    question: "Public alarm increased when Queen Mary gave birth to a Roman Catholic son and heir, James Francis Edward on 10 June of that year."
  },
  {
    question: "8 ft) square, as well as two that were 3 by 1."
  },
  {
    question: "5 million water birds, the majority being Northern Pintails, died from avian botulism during two outbreaks in Canada and Utah."
  },
  {
    question: "Taylor (Cambridge, 1983)."
  },
  {
    question: "The hypocenter of the earthquake occurred 40 km (25 mi) beneath the surface, under a mountain 72 km (45 mi) from Ambato."
  },
  {
    question: "After the Lakers defeated the Celtics in six games, Abdul-Jabbar and Johnson, who averaged 18."
  },
  {
    question: "Earthquakes in Ecuador stem from two major interrelated tectonic areas: the subduction of the Nazca Plate under the South American Plate, and the Andean Volcanic Belt."
  },
  {
    question: "During the Malayan Emergency, he formed RAAF aircraft assigned for deployment into No."
  },
  {
    question: "Newland arrived soon after, and the two men worked together until the position was re-established."
  },
  {
    question: "It is highly gregarious when not breeding, forming large mixed flocks with other species of duck."
  },
  {
    question: "Enraged by this \"rebellion\", Juan I ordered a host of 31,000 men to engage in a two-pronged invasion in May."
  },
  {
    question: "Similarly, Bird admitted that Johnson's daily box score was the first thing he checked in the morning."
  },
  {
    question: "0 rebounds, and 2."
  },
  {
    question: "Marzipan in many forms was well known in Italy and southern France by the 1340s and is assumed to be of Arab origin."
  },
  {
    question: "9 ft); Tjunkiya and Wintjiya performed a ceremonial dance as part of the preparations."
  },
  {
    question: "This would in turn imply Wulfhere's domination of that province by that time."
  },
  {
    question: "In 1908, Olga wrote this account of her husband's last moments:Chekhov's body was transported to Moscow in a refrigerated railway car for fresh oysters, a detail which offended Gorky."
  },
  {
    question: "The Pintail feeds by dabbling and upending in shallow water for plant food mainly in the evening or at night, and therefore spends much of the day resting."
  },
  {
    question: "In 1687, James issued the Declaration of Indulgence, also known as the Declaration for Liberty of Conscience, in which he used his dispensing power to negate the effect of laws punishing Catholics and Protestant Dissenters."
  },
  {
    question: "The Irish Parliament did not follow the example of the English Parliament; it declared that James remained King and passed a massive bill of attainder against those who had rebelled against him."
  },
  {
    question: "Prince Albert was also reluctant to settle in England as required."
  },
  {
    question: "The smaller Northern force sacked and burnt populations along the border, including the open city of Viseu, before being defeated by local Portuguese nobles in the battle of Trancoso, on the first week of June."
  },
  {
    question: "Johnson returned before the start of the 1981 playoffs, but the Lakers' then-assistant and future head coach Pat Riley later said Johnson's much-anticipated return made the Lakers a \"divided team\"."
  },
  {
    question: "This good relationship continues even after the sovereignty transfer, albeit that political symbols such as the anthems and the flag of the People's Republic of China become sensitive in exchange activities."
  },
  {
    question: "In addition to the attack on Ashdown, Wulfhere raided the Isle of Wight in 661."
  },
  {
    question: "Vegetables, eggs or fish were also often pickled in tightly packed jars, containing brine and acidic liquids (lemon juice, verjuice or vinegar)."
  },
  {
    question: "With his available aircraft augmented by Hawker Hurricanes and Bristol Blenheims, he conducted attacks on enemy convoys before evacuating the area on 15 February 1942, the day that Singapore surrendered."
  },
  {
    question: "Circular markings, used by Wintjiya in both these batiks and her subsequent paintings, represent the eggs of the flying ant (waturnuma), one of the main subjects of her art."
  },
  {
    question: "He also owns a home in the exclusive Beverly Park community in the hills above Los Angeles."
  },
  {
    question: "All but two were tried at Lancaster Assizes on 18–19 August 1612, along with the Samlesbury witches and others, in a series of trials that have become known as the Lancashire witch trials."
  },
  {
    question: "However, upon realising in October that William of Orange was going to land in England, James withdrew the writs and wrote to the lords-lieutenant to inquire over allegations of abuses committed during the regulations and election preparations as part of the concessions James made to win support."
  },
  {
    question: "Shaking up to intensity IV extended as far away as Quito and Guayaquil."
  },
  {
    question: "Alan Stephens later described McCauley and Scherger as \"among the RAAF's better chiefs\"."
  },
  {
    question: "In 1980, the Administration Conference for Commissioners was held."
  },
  {
    question: "According to official RAAF historian Alan Stephens, McCauley was \"just as ready to become CAS in 1952 as he was in 1954\", while a contemporary observer declared that \"seldom has a better-equipped officer led a branch of the Australian services\"."
  },
  {
    question: "Similarly, evidence has been reported of the fossa at the elevational extremes of 440 m (1,440 ft) and 1,875 m (6,152 ft) in the Andohahela National Park."
  },
  {
    question: "Records survive of the baptism of other kings at this time—Cynegils of Wessex was baptized in about 640, for example, and Edwin of Northumbria was converted in the mid 620s."
  },
  {
    question: "Wulfhere (died 675) was King of Mercia from 658 until 675 AD."
  },
  {
    question: "Between 2001-2010, Oriel College students chose not to be affiliated to the University-wide Students' union, OUSU, although this did not stop some students from getting involved with OUSU and running for elected office."
  },
  {
    question: "Around six o'clock in the afternoon the Castilian army was ready for battle."
  },
  {
    question: "Penda took Oswiu's son, Ecgfrith, as hostage, and Oswiu paid tribute, in the form of treasure, to secure Penda's departure."
  },
  {
    question: "Although heavily resisted, the whole territory of Hong Kong came in Japanese hands on 25 December 1941."
  },
  {
    question: "A recent translation of the Chronicle is Michael Swanton's The Anglo-Saxon Chronicle, which presents translations of [A] and [E] on opposite pages, with interspersed material from the other manuscripts where they differ."
  },
  {
    question: "During particularly severe fast days, the number of daily meals was also reduced to one."
  },
  {
    question: "Similarly, Bird admitted that Johnson's daily box score was the first thing he checked in the morning."
  },
  {
    question: "Early in 1886 he was invited to write for one of the most popular papers in St."
  },
  {
    question: "Exceptions from fasting were frequently made for very broadly defined groups."
  },
  {
    question: "4 assists, and 8."
  },
  {
    question: "He also made a point of supporting the Australian aircraft industry wherever feasible."
  },
  {
    question: "Louise, like her eldest sister Victoria, was more liberally minded, and supported the suffragist movement, completely contrary to the Queen's views."
  },
  {
    question: "The French allied heavy cavalry charged, as they were accustomed to do, in full strength, in order to disrupt order in the enemy lines."
  },
  {
    question: "The manuscript was acquired by Matthew Parker, Archbishop of Canterbury (1559–1575) and master of Corpus Christi College, Cambridge, following the dissolution of the monasteries, and bequeathed to the college on his death."
  },
  {
    question: "Sea Scout training had been started in May 1921 with the assistance of the staff of HMS Tamar."
  },
  {
    question: "Even there it was not until the 14th century that the fork became common among Italians of all social classes."
  },
  {
    question: "1 points, 7."
  },
  {
    question: "When her father, the Prince Consort, died on 14 December 1861, the court went into a period of intense mourning, to which Louise was unsympathetic."
  },
  {
    question: "In the north-west window of the gallery there is a small piece of late medieval glass, a figure of St Margaret of Antioch."
  },
  {
    question: "[notes 1] After the original Chronicle was compiled, copies were made and distributed to various monasteries."
  },
  {
    question: "One of Louise's ladies-in-waiting reported that some of them had an \"'I'm as good as you' sort of manner when one begins a conversation."
  },
  {
    question: "Because the church preached against gluttony and other weaknesses of the flesh, men tended to be ashamed of the weak practicality of breakfast."
  },
  {
    question: "Oriel possesses an engrossment of the Magna Carta."
  },
  {
    question: "83806°W﻿ / 39."
  },
  {
    question: "A finalist in the 2007 and 2008 National Aboriginal & Torres Strait Islander Art Awards, Wintjiya's work is held in several of Australia's public collections including the Art Gallery of New South Wales, the Museum and Art Gallery of the Northern Territory, the National Gallery of Australia and the National Gallery of Victoria."
  },
  {
    question: "At this time, the Portuguese reorganized."
  },
  {
    question: "To fulfill her wishes, the Chief of Medical Staff for the government forces, Dr."
  },
  {
    question: "Charles II opposed the conversion, ordering that James's daughters, Mary and Anne, be raised as Protestants."
  }
]
postcount = Post.count
usercount = User.count


newarray = Array.new
twerds.each do |t|
  if t[:question].length <= 139
    newarray.push(t[:question])
  end
end

Post.all.each do |x|

  bb = rand(3..10)
  for i in 0..bb
    aa = rand(0..(postcount-1))
    cc = rand(0..(usercount-1))
    dd = rand(0..(newarray.length-1))
    createdanswer = Answer.create(post:Post.all[aa],user:User.all[cc],body:newarray[dd])
    ee = rand(1..20)
      for f in 0..ee
        ff = rand(0..(usercount-1))
        uu = Vote.create(user:User.all[ff], answer:createdanswer)
        uu.score_maker
      end
  end
end

  User.all.each do |f|
    oo = Random.rand(0..8)
    for i in 0..oo
      gg = Random.rand(0..postcount-1)
      Favorite.create(post:Post.all[gg], user:f)
    end
  end






