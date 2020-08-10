# IMAGE: myimages/001.jpg
+ [Start Game] -> Storybegin  
+ [How to Play]-> howtoplay
+ [Credit] ->Aboutgame  

===howtoplay===
You need to make choices and interact with the NPCs. Once you make any choice, there is NO WAY TO GO BACKWARD.

Enjoy the game!

+ Back
     # RESTART
    ->END 

===Aboutgame===

Educate My Kid is an interactive fiction game designed by Wing Lam Tse.
+ Back
     # RESTART
    ->END 
/*----------Part 1------------*/
===Storybegin===
//storybegin
<b>[June 24, Wednesday]</b> # CLASS: day
<b>1:00 PM, Office</b> # CLASS: location
You just returned to the office from lunch to prepare for work. # IMAGE: myimages/002.jpg
Abruptly, your telephone rings. At this point, you decide to…

+[Look at the phone] //choice1
->pick_up_phone

+[Focus on your work] //choice2
->hang_up_phone

== pick_up_phone==
You pick up the phone and take a look. The call display indicates that it is Dan’s teacher.
+[Answer the phone]
->parent_teacher_meeting
+[Hang up the phone]
->hang_up_phone

== hang_up_phone ==
"Let's finish the work at hand first." You press the button to hang up the call.

<b>3:00 PM, Office </b> # CLASS: location
After you finish your work, you check your phone and notice that there is an unread voice message.

+[Listen to the voice message]
->parent_teacher_meeting

=== parent_teacher_meeting ===
"Hello, Mr. Jonathan! This is Dan’s teacher, Mary. The reason I am calling you is to schedule a meeting with you to discuss Dan's learning performance. Would you mind coming to school this Saturday at 2pm?" Mary asks.

+{pick_up_phone}[Oh! Let's take a look on the timetable first.] //接了电话
->parent_teacher_meeting.see_timetable

+{hang_up_phone}[Oh! It's Mary. Let me check on my schedule first.] //没接电话
->parent_teacher_meeting.vmessage

=see_timetable
# IMAGE: myimages/003.jpg
You quickly look at the timetable; you don't have any plans that day.
* "No problem! I am free on Saturday."
->parent_teacher_meeting.sayyes

=sayyes
"Ok, thank you, Mr. Jonathan! See you then," Mary says, and hangs up the phone. 
+[Hang up the phone]->parent_teacher_meeting.endphonecall

=endphonecall
After hanging up the phone, you start worrying: did something bad happen to Dan at school?
->Saturday


= vmessage 
# IMAGE: myimages/003.jpg
You check the timetable on Saturday, you are free that day. How will you reply?
+[Call back]->parent_teacher_meeting.callback
+[Send a message]->parent_teacher_meeting.message_back

/*----------Part 2------------*/
=callback
"du du du du..."
"Hello!" Mary answers. 
"Hi, Mary. It's me, Dan's father, Mr. Jonathan. I had quick look at my timetable, and I am available on that day" you say. 
"Ok, it sounds great. See you on Saturday!" Mary says.
"See you later!" While hanging up, a thought pops up in your mind: "Why did Mary suddenly ask me to meet — is it because Dan did not perform well at school?"
->Saturday

=message_back
You send a message to Mary and inform her that you are free on Saturday. 
After you send the message, a thought comes up in your mind: "Did something bad happen to Dan at school?"
->Saturday

//周六中午
===Saturday===
<b>[June 27, Saturday]</b> # CLASS: day
<b>12:00 PM, Home</b> # CLASS: location
# IMAGE: myimages/004.jpg
"Jonathan, are you going to Dan’s school to meet Mary today? Is there anything she wants to discuss with you?" Your wife Summer asks me.
"Good question…but I am not sure. She just told me that the purpose is to talk about Dan’s learning performance" you reply. 
"Did something bad happen to Dan at school?" Summer asks tensely. 
How do you plan to comfort Summer?

+ [Tell her not to worry]
->Saturday.worry

+ [Invite her to go together]
->Saturday.no

+ [Tell her you don't know]
->Saturday.laterconfirm

//choices
=worry
"Don't worry," you say, comforting Summer, "I don't think it will be a big deal. She probably wants to discuss Dan's learning issues. But that's not a problem — we'll just buy more exercise books for him."
"I hope everything goes well for Dan," Summer replies. "I just hope he is not performing poorly at school." Summer cannot hide her worry. 
"Dan is just a grade 10 student. If he is not performing well in school, it's understandable, right? Trust me, we can find out a way to resolve it" you say with confidence. "What are you planning to do with Dan today?"
"Today is Dan’s friend Tony’s birthday. We have told Tony’s mom we would attend, so we must go. We just need to pick up a present" Summer says.
# IMAGE: myimages/005.jpg
"Oh! That's fine. Have a good time and enjoy the party!" You look at your watch: the time is almost 1:30 pm. "I am running out of time. I must go now. See you tonight."
"Ok! Don’t be late and see you tonight. Please give my regards to Dan’s teacher." Summer says. 
+ [Go out] ->School_arrived

=laterconfirm
"I am not quite sure. But after I ask Mary, I will let you know" you tell Summer.
"I hope everything goes well for Dan, and hope that his academics are ok." Summer cannot hide her worry. 
"Dan is just a grade 10 student. If he is not performing well in school, it's understandable, right? Trust me, we can find out a way to resolve it" you say confidently. "What are you planning to do with Dan today?"
"Today is Dan’s friend Tony's birthday. We have told Tony's mom we would attend, so we must go. We just need to pick up a present" Summer says.
# IMAGE: myimages/005.jpg
"Oh! That's fine. Have a good time and enjoy the party!" You look at your watch and see that the time is almost 1:30 pm. "I am running out of time. I must go now. See you tonight."
"Ok! Don't be late and see you tonight. Please give my regards to Dan’s teacher." Summer says.
+ [Go out]

->School_arrived

/*----------Part 3------------*/
=no
"Do you want to go together?" you ask. 
"Umm...Probably not this time," Summer says. "Today is Dan's friend Tony's birthday. We have already promised Tony's mom we would attend his birthday party."
"Oh! That’s okay. Enjoy the party and I will tell you what Mary said later tonight. No worry! Have fun!"
# IMAGE: myimages/005.jpg
You look at your watch: the time is almost 1:30 PM. "I am running out of time. I must go now. See you tonight."
You put on your jacket and shoes and say goodbye to Summer and Dan.
"Ok! Don’t be late and see you tonight. Please give my regards to Dan’s teacher." Summer says.
"See you then!" Then you leave home and start driving to school.

+ [Go out]

->School_arrived


//学校-新的场景
===School_arrived===
# IMAGE: myimages/006.jpg
<b>1:50 PM, The Main Entrance of The School</b> # CLASS: location
You come to school 10 minutes earlier than expected. 
You decide to…?

+[Hover at the door]->School_arrived.frontdoor
+[Tell Mary you have arrived]->School_arrived.arrive_call
+[Look at the instruction board and find Mary’s office]->School_arrived.frontdoor

//第一个和第三个choice-在门口徘徊
=frontdoor
You think it over, deciding to go in after five minutes. At this moment, you see Mary coming from a distance. What do you plan to do?
+[Waving to Mary]->School_arrived.frontdoor_wavehand
+[Walk to Mary]->School_arrived.frontdoor_walkto
+[Waiting for Mary]->School_arrived.frontdoor_standthere


=frontdoor_wavehand
# IMAGE: myimages/007.jpg
You wave to Mary with a smiling face.
Mary approaches, saying "Hi, Mr. Jonathan. Long time no see. How are you doing today?"
"I am good, how about you?" you reply. 
"Same as you. Let's head off to the office and talk!" Mary points the way to the office.

+[Let's follow to Mary]->School_arrived.frontdoor_to_office

=frontdoor_walkto
# IMAGE: myimages/007.jpg
"Hello, Mary! How are you today?" You walk towards Mary to greet her.
"Not bad! How about you?" Mary asks back.
"Same as you," you reply. 
"It's nice to see you today! Let's head off to my office and talk!" Mary says, pointing the way to the office.
+[Let’s follow to Mary]->School_arrived.frontdoor_to_office

=frontdoor_standthere
# IMAGE: myimages/007.jpg
You stand  and wait for Mary to come to you. 
After Mary walks up to you, she says, "Mr. Jonathan, long time no see. How are you doing today?"
"Not bad, how about you?" you reply.
"Same as you. By the way! Let's follow me to my office and talk!" Mary says. 
+[Follow Mary]->School_arrived.frontdoor_to_office

//第二个choice-告诉沙里老师你到了
=arrive_call
Just when you are preparing to call Mary and tell her that you have arrived, you see Mary coming from a distance. You decide to:
+[Waving to Mary]->School_arrived.frontdoor_wavehand
+[Walk to Mary]->School_arrived.frontdoor_walkto
+[Waiting for Mary]->School_arrived.frontdoor_standthere

=frontdoor_to_office
<b>2:00 PM, Teachers' office</b> # CLASS: location
You follow Mary to the teachers' office. Today is Saturday, and there are still many teachers in the office. You follow Mary to her work area.
# IMAGE: myimages/008.jpg
"Mr. Jonathan, please have a sit." Mary points to the chair in front of me.
+[Sit down]->office //这里换到下一个场景


/*----------Part 4------------*/
/*场景换到【老师办公室】*/
===office===
"Mr. Jonathan, the reason I invited you here is to have a discussion about Dan's learning performance at school. From a school perspective, want to talk about what parents can do to help educate their kids at home." Mary says, looking at you seriously.
"It is because... Dan getting in trouble in class? How is he doing at school?" you ask nervously.
"Dan is a smart kid" Mary says concernedly, "but his current learning performance is not ideal when compared to his classmates. He is currently ranked 50th in the class—the last place. And there are many teachers who report to me that he is easily distracted in class. It seems to me...that he may have learning difficulties. It is challenging for him to concentrate for any great length of time, making learning effectively quite difficult."
At this moment, you decide to ...

+[Remain silent]->office.listen1
+[Cannot believe what Mary said]->office.cantbelieve
+[Express worry]->office.tell

//Remain silent
=listen1
# IMAGE: myimages/009.jpg
"Generally speaking, due to the large number of students in the classroom, teachers do not have much time to help take care of the specific learning difficulties for each student—so, the  role of parents at home is particularly important" Mary says.
+[Tell Mary about Dan’s performance at home]->office.tell //跳到说出自己的担忧

//Cannot believe what Mary said
=cantbelieve
# IMAGE: myimages/009.jpg
"How can this be possible!” You can't believe what Mary said. You are angry now. “His previous teacher never said there was such a problem....it doesn’t sound like him at all."
You pause for a second; then, voice rising in frustration, say "I really can't understand why you said he would do such a thing...this is really weird."
You start thinking that this is not, in fact, Dan's problem. "This must be a school problem!" you yell.
"Mr. Jonathan, please calm down first." Mary interrupts. 

+[Calm down first, then listen to Mary talk]
->office.listen2

=listen2
"Actually, learning difficulties are really normal in high school" Mary says. She pushes up her glasses a little, then resumes. "High school is different than middle school—It is a critical period that all adolescents must pass through. During this period, they must learn many skills, such as critical thinking, communication, and problem-solving—all skills beneficial to their transition to adulthood. Therefore, it is common that most grade 10 students face learning difficulties." Mary says.
->office.tell

//Express worry
=tell
You reflect on what Dan performance at home, then say "when Summer and I are at home, Dan is always distracted and can’t study." You say.
Mary says, comforting you "don't worry too much. Although it's almost the end of the semester, fortunately, there is still a long time to go yet before entering university. There must be a way to resolve Dan's problems."
->teacher_respect

/*----------Part 5------------*/
//老师的回应
=teacher_respect
"In fact, parental involvement in their children's high-school education is critical. The benefits include allowing for flexibility and cooperation between parents and children. Also, it can help your child to be more responsible, as you provide ongoing support" Mary says. 
"Sounds reasonable. But what can we work with to enhance his learning performance?" you ask Mary.
"Actually, there are many ways to improve children's learning abilities. Apart from school materials, you can consider using external resources such as books, movies, tutors, and educational games." Mary says.
"Educational games? Can playing games really help children learn?" You are surprised at this. 
"For students, the core of improving learning is to find the right method. If the children feel joyful during the learning process, it can encourage and motivate them to learn more effectively" Mary replies.

+[Sounds interesting!]->TeacherResult.soundgood
+[How is this possible! Studying requires serious work!]->TeacherResult.disagree

===TeacherResult===
//有点意思噢
=soundgood
# IMAGE: myimages/021.jpg
"Oh really! It sounds like there are a lot of methods. Would you mind giving me some suggestions?" you ask Mary.
"I remember that you and Summer have found some tutors to help Dan. Would you also consider using educational games to help him enjoy learning?" Mary says.
"It sounds like a good idea! I'll go back and discuss it with Summer later! Thank you, Mary!" After you listen to Mary's suggestions, you feel relief, since you see the possibility of enhancing Dan's performance.
"It's a piece of cake! It is our duty to tell parents about their children's problems! Don't worry, if you and Summer have any questions, feel free to reach me. The school is happy to help you!" Mary says.
"Okay! Thank you for today! See you next time!" You stand up and offer your hand.
"No worry! See you next time!" Mary smiles and shakes your hand.

+ [Leave school]->FrontdoorSchool

//反对老师的观点
=disagree
# IMAGE: myimages/021.jpg
"Learning through playing educational games? I don't think playing games will enhance our child's performance! If we give him the opportunity to play games, the consequences would be too terrible, I can't imagine..." You reject this suggestion almost immediately.
"Mr. Jonathan don’t worry that much. Nowadays, many studies have proved that educational games can enhance students' performance and encourage them to learn autonomously. Due to the emergence of the digital age, scholars have found that almost 90 percent of children play video and mobile games. Hence, we use what children like, that is, educational video games, to assist them in better understanding the content of various subjects." Mary said. 
"It seems to make sense to me after hearing your explanation" you say to Mary. "Okay, I'll think about it and let me go home and discuss it with Summer tonight."
"Thank you, Mary!" you add.
"No worry! Helping parents to solve their children's problems is our responsibility! If you and Summer have any questions, please feel free to let me know. The school will be happy to help you!" Mary said.
"Okay! Thank you for today! See you next time!" You stand up and offer your hand.
"You're welcome! See you next time!" Mary smiles and shakes your hand.

+ [Leave school]->FrontdoorSchool


//离开学校
===FrontdoorSchool===
<b>2:30 PM, The Main Entrance of The School</b> # CLASS: location
# IMAGE: myimages/010.jpg
When you come to the school gate, you wonder, "Maybe I should buy something to help Dan improve his learning before I head off to home?"
What method are you planning to use?

+[Books and exercises]->LeaveSchool.Bookstore
+[Movies]->LeaveSchool.Movies
+[Educational games]->LeaveSchool.Gamestore
+[Go home first]->decidetoBackhome


/*----------Part 6------------*/
===LeaveSchool====
//书店走一圈
=Bookstore
<b>3:00 PM, Bookstore</b> # CLASS: location
# IMAGE: myimages/011.jpg
You think about it for a moment and decide not to risk a novel approach. Having arrived at the bookstore, you prepare to pick out several textbooks and exercises.
You walk to a shelf. What kind of subjects are you going to buy for Dan to read?
+[Language]->Books.language
+[Economics]->Books.economic
+[Mathematics]->Books.math
+[Purchase  all]->Books.all

//电影院走走看
=Movies
<b>3:00 PM, Cineplex</b> # CLASS: location
# IMAGE: myimages/013.jpg
You think about a moment, and you walk to the front door of Cineplex and discover several movies playing that can help educate children about a specific subject's knowledge. 
Which one do you plan to watch?

+ [Star Wars]->Moviespicked.StarWars// learn scarcity and exchange
+ [WALL-E]->Moviespicked.WellE
/*WALL-E is a fun movie with very little dialogue that touches on ideas including robotics, AI, environmental protection, and space travel. With a little creativity, you can connect a variety of math topics and ideas to the events of the film.*/
+ [Moneyball]->Moviespicked.Moneyball
/*For management students, this film demonstrates the value of innovative thinking and the importance of implementing new processes to drive change and create solutions. It’s also a great example of having the courage to take calculated risks.*/
+ [Maybe…go home first]->decidetoBackhome


=Gamestore
<b>3:00 PM, EB Games</b> # CLASS: location
# IMAGE: myimages/012.jpg
You keep thinking about what Mary said to you. Unconsciously, you've came to the front door of EB Games.
When you walk into the store, you ask the clerk where to find educational video games, and the clerk takes you to a shelf.
"You can find all the educational games here. If you need my help, please call me." The clerk goes back to his work.  
Standing in front of the shelf, you discover that there are many different types of games. But on the shelf, there are only a few games that look interesting to play. 
You decide to buy...

+ [Minecraft]->BuyaGame.Minecraft
+ [SimCity]->BuyaGame.SimCity
+ [Civilization III]->BuyaGame.CivilizationIII
+ [Maybe…go home first]->decidetoBackhome

//玩家回家再决定
===decidetoBackhome===
You decide to go home first and discuss with Summer before making any decisions.
->backhome

//玩家挑书
===Books===
=language
# IMAGE: myimages/020.jpg
You pick up 3 language books and go to the checkout counter to check out.
->backhome

=economic
# IMAGE: myimages/020.jpg
You pick up 3 economics books and go to the checkout counter to check out.
->backhome

=math
# IMAGE: myimages/020.jpg
You pick up 3 mathematics books and go to the checkout counter to check out.
->backhome

=all
# IMAGE: myimages/020.jpg
You decide to pick up three books: language, mathematics, and economics. Without any hesitation, you immediately head to the checkout counter to pay for the items.
->backhome

/*----------Part 7------------*/
=purchaseBooks
“Yes! I have brought 
{Books.all== true:<> books on three different subjects}
{Books.language == true:<> three language books}
{Books.economic == true:<> three economics books}
{Books.math== true:<> three mathematics books}
<> for Dan. Although Mary suggested we purchase educational games, I think the traditional learning method is more reliable” you explain to Summer.
“Exactly, I feel the same. When we studied in high school, there was no technology for learning. And we still managed to do very well, didn’t we?” Summer says with confidence.
“Dan, come here! Have a look at the gifts daddy purchased for you” Summer calls. Dan comes over.
Dan happily runs to you, then stops short. "Oh no! Are these all for me? I already have so much to do, how can I be expected to read and do all these exercises?" Dan looks at you and Summer miserably.

+[Explain the reason]->Afterbuybooks.explainreason //带去看书的结局


//玩家决定看电影
===Moviespicked===
=StarWars
# IMAGE: myimages/014.jpg
"I think Star Wars would be interesting to watch" you say.
->Moviespicked.pickmovie

=WellE
# IMAGE: myimages/015.jpg
"WALL-E might help interest Dan in science,” you say. 
->Moviespicked.pickmovie

=Moneyball
# IMAGE: myimages/016.jpg
"Moneyball may improve Dan's academic performance in business management and economics" you say.
->Moviespicked.pickmovie

=pickmovie
You go to the ticket office and buy 3 tickets for <>
{Moviespicked.StarWars== true:Star Wars}
{Moviespicked.WellE == true:Well-E}
{Moviespicked.Moneyball == true:Moneyball}
<> , and plan to bring Summer and Dan to watch the movie next Saturday. After buying the tickets, you look at your watch and notice that it’s getting late—time to go back home!
->backhome


===BuyaGame===

=Minecraft
You pick up Minecraft, turn it over and look at the game introduction. "Oh! This is an educational game that helps students learn multiple subjects. It seems interesting!" You take Minecraft and go to the front desk to check out.
# IMAGE: myimages/019.jpg
"Sir, are you planning to buy this for your child?" the clerk asks you.
"Correct!" you say, nodding your head.
"Then you will probably be interested in this booklet—it's free. This booklet introduces the benefits of educational games. Many parents are buying educational games for their children! This booklet is designed to help educate parents.” The clerk shows the booklet to you and then puts it in the shopping bag, handing the bag to you. 
"Oh Really! Thank you! I'll take a look! Goodbye!" You take the shopping bag from his hand and then turn around.
"Goodbye! Have a nice day!" the clerk says.
Walking out of the store, you now look forward to seeing Dan’s joyful face at receiving the game and the happiness you will feel knowing you’re helping his academic performance at the same time. 

->backhome

=SimCity
You pick up the game SimCity, turn it over and look at the game introduction behind the box."Oh! This is a game that helps kids to learn Strategy." It seems interesting!" You take SimCity and go to the front desk to check out.
# IMAGE: myimages/017.jpg
"Sir, are you planning to buy this for your child?" the clerk asks you.
"Correct!" you say, nodding your head.
"Then you will probably be interested in this booklet—it's free. This booklet introduces the benefits of educational games. Many parents are buying educational games for their children! This booklet is designed to help educate parents.” The clerk shows the booklet to you and then puts it in the shopping bag, handing the bag to you. 
"Oh Really! Thank you! I'll take a look! Goodbye!" You take the shopping bag from his hand and then turn around.
"Goodbye! Have a nice day!" the clerk says.
Walking out of the store, you now look forward to seeing Dan’s joyful face at receiving the game and the happiness you will feel knowing you’re helping his academic performance at the same time. 

->backhome

=CivilizationIII
You pick up the game Civilization III, turn it over and look at the introduction behind the box. "Oh! This is a game that helps kids to learn culture and history." It seems interesting!" You take Civilization III and go to the front desk to check out.
# IMAGE: myimages/018.jpg
"Sir, are you planning to buy this for your child?" the clerk asks you.
"Correct!" you say, nodding your head.
"Then you will probably be interested in this booklet—it's free. This booklet introduces the benefits of educational games. Many parents are buying educational games for their children! This booklet is designed to help educate parents.” The clerk shows the booklet to you and then puts it in the shopping bag, handing the bag to you. 
"Oh Really! Thank you! I'll take a look! Goodbye!" You take the shopping bag from his hand and then turn around.
"Goodbye! Have a nice day!" the clerk says.
Walking out of the store, you now look forward to seeing Dan’s joyful face at receiving the game and the happiness you will feel knowing you’re helping his academic performance at the same time. 

->backhome

/*----------Part 8------------*/
//回家
===backhome===
<b>4:30 PM, Home</b> # CLASS: location
{ decidetoBackhome == false:
You return home, but Summer and Dan are not home yet. You then put the <>
{
- (LeaveSchool.Bookstore == true):
<>books
-(LeaveSchool.Movies==true):
<>movie tickets
- else:
games
}
<>you just purchased on the table.
-else:
You return home, but Summer and Dan are not back yet.  
“Oh, it seems that they are not finished the party” you say to yourself. Continuing to ruminate over what Mary said to you today, the question remains: How to improve Dan’s grades?

}
You look at the clock and realize that there is still some time before dinner. What do you plan to do?
+[Take a rest]->wsBackhome1

===Booklet===
You walk to the table and find the booklet in the shopping bag. The title of the booklet is Learning via Playing Games.
+[Turn over the booklet]->Booklet.cover1

=cover1
# IMAGE: myimages/022.jpg
You turn over the booklet. The first page is the title page.
What section do you want to read first?
->Booklet.Readinside

=Readinside
* The differences compared to traditional education  ->Booklet.TradDifference
* The violence problem->Booklet.violenceIssue
* The advantages  ->Booklet.Advantages
* ->
"OH, educational games seem to be interesting and useful for kids to play! If this game will help Dan’s academic abilities, I will consider buying more educational games for him during this summer."
->wsBackhome1.backhome2 

=violenceIssue
: "Let's see if games really do make children violent!" you decide.
Professor Andrew Przybylski,has stated that there are many debates around the discussion of whether or not violent video games drive real-world aggression. But his study has suggested that there is no link between violent video games and aggression in teenagers.
"Oh! It turns out that games may not make children violent!"
/*
https://www.forbes.com/sites/olliebarder/2019/02/15/new-study-shows-that-there-is-no-link-between-violent-video-games-and-aggression-in-teenagers/#a0e4c6c328e0
*/
->Booklet.Readinside

=Advantages
: "Let's look at the benefits of playing educational video games!"
Playing educational games can help to improve students' social and communication skills. In addition, studies suggests that students' average grades increased. Moreover, most studies conclude that educational games can enhance students' motivation and joy in learning.
"It seems that there are many benefits to educational games!" 

->Booklet.Readinside

=TradDifference
: Daubenfeld and Zenker's study found that when compared to traditional lecture format, educational gaming students are more willing to increase their self-study time, which increases more than 3-fold to 4.6 hr per week on average.
"It seems that playing educational games is useful for increasing children’s autonomy. We wouldn’t have to spend so much time worrying about Dan’s time spent studying."

->Booklet.Readinside

/*----------Part 9------------*/
===wsBackhome1===
{BuyaGame==true:
You look at the shopping bag on the table and recall that there is a booklet given by the game store’s clerk. 
“Oh! The booklet!”

->Booklet
-else:
->backhome2

}
=backhome2
<b>5:00 PM, Home</b> # CLASS: location
You hear the key opening the door. You know that is Summer and Dan. 
"You are back! How was the party?" 
"I am very happy today! I ate a lot of cake" Dan answers with a smiling face.
{decidetoBackhome == false:
"Eh! What is this?" Summer walks to the table and picks up the <>
{
- (LeaveSchool.Bookstore == true):
books and exercises 
-(LeaveSchool.Movies==true):
movie tickets

- else:
games

}<>I placed there. 

{
- (LeaveSchool.Bookstore == true):
# IMAGE: myimages/023.jpg

-(LeaveSchool.Movies==true):
# IMAGE: myimages/024.jpg

- else://买游戏
# IMAGE: myimages/025.jpg
}

"I bought it just after the parent-teacher meeting. Mary said that we should encourage and supervise Dan's study. She said that he is not performing well at school, so she suggests we pay more attention to his studying at home” you reply. 

"So, you buy <>{
- (LeaveSchool.Bookstore == true):
books and exercises <>
-(LeaveSchool.Movies==true):
movie tickets<>
- else:
games<>
}?" Summer questions.


{
- (LeaveSchool.Bookstore == true):
->Books.purchaseBooks   //读书

-(LeaveSchool.Movies==true):
->watchmovie //看电影

- else://买游戏
"Why should you buy him a game?" asks Summer, holding one up. She pauses, then says “maybe...you should tell me what Mary said today first!"
"So, what did Mary say?" Summer asks.
->whatTeachersay
}

-else:
"So, what did Mary say?" Summer asks.
->nothing
}

===watchmovie===
"Why did you buy movie tickets?" Summer asks.
"You'd better tell me what Mary said first!" Summer looks at you with a warning in her eyes. 
->whatTeachersay

/*----------Part 10------------*/
===movieday===
<b>[July 4, Saturday] </b> # CLASS: day
<b>6:00 PM Cineplex </b> # CLASS: location
# IMAGE: myimages/031.jpg
You and your family just arrive at Cineplex.
It seems that there is an event with EB Games in the theatre today. An EB Games employee appears in front of you as you enter the movie theatre.

"Hello, sir and madam! My name is Mai. We are now doing a promotion. Buy one get one free today. It's a 50% off!" Mai says, passionately. 

"Buy one get one free! Sounds good! I just want to buy the game of Call of Duty—do you have it?" You feel excited.

"Yes, sir! We definitely do have that one. Do you want other games?" Mai brings Call of Duty to you.

"Ehh... I have no other games in mind to buy" I say and then I look at Dan and Summer.

At this moment, you recall Mary's suggestion. Although Summer hasn’t yet agreed to let Dan play educational video games, at this moment, you think that you should ask one more time.

"Summer, shall we buy an educational game for Dan?" you ask.

"No, I don't agree," Summer shakes her head.  

Mai tries to persuade you and Summer. "Sir and Madam, maybe you should look at this booklet, which introduces the benefits of educational games. Many parents disagree with children playing games in the beginning, but in fact, many studies have shown that educational games can help to enhance children's learning performance." 

+[Read the booklet]->movieday.readthebooklet

=readthebooklet
# IMAGE: myimages/022.jpg
The title of the booklet is Learning via Playing Games.
You turn over the booklet. The first page is the title page.
What section do you want to read first?

->movieday.Readinside_movie

=Readinside_movie
* The differences compared to traditional education ->movieday.TradDifference
* The violence problem->movieday.violenceIssue
* The advantages ->movieday.Advantages
* ->
“It seems that playing educational video games is interesting and useful. How about buying one for Dan?” you ask Summer carefully.

“Ok! Playing educational games does not sound bad, right. Maybe I should agree with you on this. But what game are you planning to buy?” Summer asks. 

->buygameinmovie //在电影院买游戏

=violenceIssue
: 
"Let's see if games will make children become more violent or not!" Summer points to the section concerning the violence issues.

<i>Professor Andrew Przybylski has stated that there are many debates around the discussion of whether violent video games drive real-world aggression. His study suggests that there is no link between violent video games and aggression in teenagers.</i>

"Look, Summer! Games won't make children violent!" I say.
/*
https://www.forbes.com/sites/olliebarder/2019/02/15/new-study-shows-that-there-is-no-link-between-violent-video-games-and-aggression-in-teenagers/#a0e4c6c328e0
*/
->movieday.Readinside_movie

=Advantages
: 

"Let's read the part about the benefits of playing educational games!" you say.

<i>Playing educational games can help to improve students' social and communication skills. In addition, studies suggests that students' average grades increased. Moreover, most studies conclude that educational games can enhance students' motivation and joy in learning.</i>

"It seems that there are many benefits to playing educational games." Summer smiles and says.

->movieday.Readinside_movie

=TradDifference
:

<i>Daubenfeld and Zenker's study found that when compared to traditional lecture format, educational gaming students are more willing to increase their self-study time, which increases more than 3-fold to 4.6 hr per week on average.</i>
"I can’t believe playing educational games can increase children's autonomy. It sounds unbelievable, but there is so much supporting data! Now, we won’t have to worry about Dan not studying well!" I say.

"It's cool to learn that playing educational games can increase students' study time! I didn't think about it before" Summer says.

->movieday.Readinside_movie

===buygameinmovie===
"We have 3 educational games today in stock: Minecraft, SimCity and Civilization III," Mai says.
Which game do you decide to purchase?
+ [Minecraft]->buygameinmovie.minecraft
+ [SimCity]->buygameinmovie.simcity
+ [Civilization III]->buygameinmovie.CivilizationIII

=minecraft
You point to Minecraft. "Minecraft please!"
"Sure, sir! This is a multi-disciplinary game for children. Please follow me to pay over here." Then Mai brings you to the cashier’s desk to pay the bill.
# IMAGE: myimages/019.jpg
->buygameinmovie.timeout

=simcity
You point to SimCity. “SimCity please!”
"Sure, sir! This is a game for children to learn strategy.Please follow me to pay over here." Then Mai brings you to the cashier’s desk to pay the bill.
# IMAGE: myimages/017.jpg
->buygameinmovie.timeout

=CivilizationIII
You point to Civilization III. “Civilization III please!”
"Sure, sir! This is a game for children to learn culture and history.Please follow me to pay over here." Then Mai brings you to the cashier’s desk to pay the bill.
# IMAGE: myimages/018.jpg
->buygameinmovie.timeout

=timeout
"Mom! Dad! The movie is about to begin!" Dan nervously shouts.
"Let's go in and find some seats," Summer says.
"Okay!" Then you take Summer and Dan into the 4th theatre.
->finishMovie

/*----------Part 11------------*/
===finishMovie===
Dan seems very interested in the movie he just watched.
"Mom! Dad! The movie was so amazing!" Dan shouts, jumping in front.
"Dan,” Summer asks, “did you like today's movie? What did this film teach you? What did you learn?" Summer asks.

{Moviespicked.StarWars==true:"I liked this movie so much! I never thought about how the study of economics could be applied to a movie. It is really interesting and helps me understand economic theories better," Dan replies.}
{Moviespicked.WellE==true:"I liked this movie so much! I never thought that science could be interesting! I learned a lot about science today. Also, it helped me understand that mathematics can be useful and fun to learn!" Dan replies.}
{Moviespicked.Moneyball==true:"I liked this movie so much! I never thought that business and management theories and concepts could be learned from a science fiction movie—it really impressed me” Dan replies.}
"It's good to hear that you liked it. As long as your academic performance improves, your mom and I will bring you to watch more interesting movies" you say, stroking Dan’s head. 
+[Go home]

<b>10:00 PM, Home</b> # CLASS: location
"Dad, tomorrow is Sunday, can I play the game you bought me today?" Dan asks, looking at the shopping bag on your hand. You can see the shining eagerness in his eyes. 
# IMAGE: myimages/032.jpg
"Okay! But you have to promise me not to go to bed later than 12 o'clock. If you play until midnight, your mum and I will get angry—you know the consequences, right?" You give Dan the game.

"Ok, Dad! I promise you." Dan happily takes the game from your hand and walks back to his room.
->Ending3         

===whatTeachersay===
+[Tell Summer what Mary said today]->whatTeachersay.tell2

=tell2
"Mary told me that Dan's learning performance is poor; he gets distracted easily. Mary asked us to try to use external materials to increase his interest in studying" you reply.
"She recommended that we buy a game for our kid? Are you serious?" Summer goggles at me.
"Actually, she gave me many suggestions, such as books, movies, and of course, tutors. But her highest recommendation was for educational video games" you reply. 
"What? Let the kids play games? NO! How can games help kids study?” Summer asks in exasperation. 
+[Ask Summer to calm down]->whatTeachersay.askcalmdown

=askcalmdown
# IMAGE: myimages/026.jpg
"Calm down and listen to me first! Mary said that games help students become more engaged and interested in their studies. Playing games can turn a subject they hate into one they enjoy. Additionally, she pointed out to me that learning by playing games can enhance students' motivation and willingness to learn" you explain to Summer.
"But you know Dan always looses track of time when he is playing games. He will definitely become addicted if we let him play even more games! And there are many other disadvantages that could affect our son. I disagree with playing games!" Summer says anxiously.

# IMAGE: myimages/028.jpg
"Mary told me that approximately 90% of children play mobile and video games nowadays. I have watched some educational programs recently—it seems that there are many studies that demonstrate how games can improve student learning performance,” you say. 

“No, I still don't agree,” Summer says. “That's the most stupid thing I ever heard! There are many people who believe that playing video games will lead to a series of issues, including distraction, potential for violence, and the loss of more traditional studying approaches” she counters. 

{watchmovie== true:
"I also share the same concerns and worries, so I bought us movie tickets today,” you say.  I think taking Dan to watch a movie will help him to increase his interest in learning" you say, pointing to the movie tickets on the table.

"Ok, then I feel reassured that at least, you didn't buy a game for Dan. Let’s wait for next Saturday, and take him to Star Wars," Summer says, calming down. 

->movieday

-else:
At this point, you remember the booklet you read.
+[Show her the booklet]->afterWifereead
}


/*----------Part 12------------*/
=afterWifereead

"Summer, how about reading this booklet first?" You hand the booklet to Summer. 
# IMAGE: myimages/027.jpg
After  finishing the booklet, she says, "So...these really are the benefits of playing educational games?” Summer asks, looking at you incredulously. 
“Yes!” you reply. “These are all the benefits of educational games. That's why I think we should try it out!" 
"Okay! If you are so confident, let's try it!" This time Summer agrees with you.
"Then let's give it to him tomorrow, it's too late now!" Summer adds.
"Okay! Good night," you say.
->agreetoPlaygame.giveyourson 


===nothing=== 
+[Tell Summer what Mary said today]->nothing.tell

=tell
"Mary told me that Dan's learning performance is poor; he gets distracted easily. Mary asked us to try to use external materials to increase his interest in studying. Actually, she gave me many suggestions, such as books, movies, and of course, tutors. But her highest recommendation was for educational video games" you reply. 
"What? Let the kids play games? NO! How can games help kids study?” Summer asks in exasperation. 
"Calm down and listen to me first! Mary said that games help students become more engaged and interested in their studies. Playing games can turn a subject they hate into one they enjoy. Additionally, she pointed out to me that learning by playing games can enhance students' motivation and willingness to learn" you explain to Summer.
"But you know Dan always looses track of time when he is playing games. He will definitely become addicted if we let him play even more games! And there are many other disadvantages that could affect our son. I disagree with playing games!" Summer says anxiously.

At this point, you decide to…
+[Persuade Summer]->nothing.persuade
+[Listen to Summer]->nothing.agreewith 
+[Remain Silent]->nothing.listento 

=persuade //说服沙里
# IMAGE: myimages/028.jpg
"Mary told me that approximately 90% of children play mobile and video games nowadays. I have watched some educational programs recently—it seems that there are many studies that demonstrate how games can improve student learning performance,” you say. 
“No, I still don't agree,” Summer says. “That's the most stupid thing I ever heard! There are many people who believe that playing video games will lead to a series of issues, including distraction, potential for violence, and the loss of more traditional studying approaches” she counters. 

"How can we ensure that Dan will not be negatively affected by playing games?” Summer asks. 
At this point, you ...
+[Persist in persuading that games are good, and persuading Summer]->contin_persuade 
+[Give up trying to persuade Summer]->nothing.listento 


/*----------Part 13------------*/
=agreewith
"Maybe you are right — we should find more conservative ways to enhance Dan's learning performance." You agree with Summer, and ask "then what do you think we should do?" 
"Why don't we buy more books for Dan to read! If necessary, we can find good tutors to give him some lessons as well," Summer replies.
"Okay! That's good idea!" you say, agreeing with Summer. 
"Our child is weak in mathematics. Let's buy him some mathematics books and exercises!" Summer says.
"Okay! I'll go to the bookstore tomorrow and pick out some books for him," you reply. 
->Afterbuybooks 

=listento
"I think we should buy some books for Dan! I think it is safer to use traditional educational methods to help our child" Summer says. Then she asks, "What do you think about it?"
You think for a second and say, "I think what you said makes sense. Ok! I will listen to you. Let's buy some books for Dan."
->Afterbuybooks 

===Afterbuybooks===
<b>[June 27, Saturday]</b> # CLASS: day
<b>6:00 PM, Home</b> # CLASS: location
"Summer, Look! I purchased three mathematics books today" you say, showing the books to Summer.
"Looks great! We have not bought these before." Summer looks at the books and says, "let's show this big gift to Dan!"
“Dan, come here!” Summer calls. “Have a look at the gifts daddy purchased for you.” 
# IMAGE: myimages/029.jpg
Dan happily runs to you, then stops short. "Oh no! Are these all for me? I already have so much to do, how can I be expected to read and do all these exercises?" Dan looks at you and Summer miserably. 

+[Explain the reasons]->Afterbuybooks.explainreason

=explainreason
"Your teacher told me yesterday that your academic performance has not been ideal this year; therefore, we must supervise your studies from now on." You look at Dan seriously.
"Oh…but…Tony’s parents let him play educational games — why do I have to read and do exercises?" Dan asks sadly. 
"You played video games for at least 30 hours last week. Isn't it enough for you to play games for that long? My final decision is to reduce your current gaming time. Furthermore, you can only play games when your grades improve" Summer says, holding the book and giving it to Dan.
"Oh no, that is not fair! I really don't want to read it! These are too boring!" Dan shakes his head, rejecting the book.
"If you want to play games, as long as your grades improve, then you can do whatever you want. The next thing for you to do now is to take these books and get back to your room. And then you better start learning today!" Summer hands the books to Dan, then points towards Dan’s room.
# IMAGE: myimages/029.jpg
Okay! Bad Mum and Dad!" Dan takes the books begrudgingly and heads to his room to study—disappointed, but obedient. 
->Ending1 

===contin_persuade=== //在persuade里面，坚持游戏，努力说服沙里
In order to persuade Summer more effectively, you decide that you want to make a plan before discussing it with her.
"Let's discuss this issue later! I need some time to think about it!" You say.
Next, what are you going to do?
+[Find Mary and ask her to convince Summer]->ConsultWithTeacher
+[Ask for your friend's opinion]->askFriends
+[Do by yourself! Go and research some information]->ResearchByMyself


===ConsultWithTeacher===
You turn on your phone and send a message to Mary:
<i>"Mary, this is Mr. Jonathan. After meeting with you today, I want to let Dan try to play an educational video game, but Summer doesn't agree with my standpoint. Can you help me persuade her?" </i>
Within a minute, you hear back from Mary: 
<i>"Okay! No problem. I'll call Summer later.”</i>
You text a <i>"thank you"</i> to Mary and put your phone aside. 
Maybe its it's best to first do more research to help convince Summer of the benefit of educational games. You sit at your computer. 
What are you going to search first?
->ResearchByMyself.doResearch

/*----------Part 14------------*/
=nextdaytalkTo //做完research之后，你去和沙里说。
<b>9:00 PM, Bedroom</b> # CLASS: location
"Mary called me just now. She talked to me and explained the benefits of educational games. Did you ask her to call me?" Summer asks you.
"Em, yes. I think Mary knows better than me about educational games. So, I just let her reach out to you," you say, avoiding eye contact with Summer.
"Do you think it is really necessary to buy educational games for Dan? I'm afraid he will be addicted to games and study poorly!" Summer says.
"Summer, I just did some research and discovered that educational games really are helpful for improving children's learning!" you say excitedly, pointing your finger to the computer monitor and looking at Summer.
+[Tell Summer what you found]->tellwifeResult.changemind


===askFriends=== //Done
You open WhatsApp and look at your contact list, and suddenly remember that your friend, Mike, told you before that his children have been playing educational video games in class. You immediately call him.

"du du du du..."
# IMAGE: myimages/030.jpg
"Hello! Mr. Jonathan, what's up! " Mike answers the phone.
"Mike, Summer and I have been discussing the use of educational games with Dan. We are currently in disagreement over it. So, I want to ask about your experience with them," I say. 
"I remembered you told me before that your child's school did a study on educational gaming. How did it go?”
"Of course! My child's school made a mobile game called The VocabTrainerA1. The study recruited 104 students who were in the German language class. The students played a vocabulary game for a set period of time. The researchers found that many students increase  their final grades," Mike says. "Personally, I think the idea of using educational games is great. And yes, my child’s grades improved after using the game,” Mike adds.
"Oh! That's cool! Would you mind if I ask more questions?" you ask.
"Sure!" Mike says.
->askFriends.continask

=continask
* Will games make children more violent? [?]->askFriends.violence
* Are there any other benefits?[?] ->askFriends.otherAdvantages
* What are the differences between playing educational games and traditional education?[?] ->askFriends.traditionalEducation
* ->
I feel like I can convince Summer now!
    ->goodToGo

=violence
"Of course not! Playing educational video games will not make children more violent. Think about the target users of this type of game." Mike says.
"So, playing educational games will not make children violent?" you ask again, carefully. 
"Why do you think that educational games will lead students to violence? In fact, recent research suggests there is no link between violent video games and aggression in teenagers" Mike laughs and says.

->askFriends.continask

=otherAdvantages
"In fact, there are many advantages to playing educational games. To begin with, many studies have found that students learn to study more autonomously with educational games. This means that we, as parents, don't have to supervise our child's learning as much anymore. Learning by playing games can motivate children and increase their interest in the subject" Mike explains.
"Oh really?" You are surprised to hear what Mike just said.
Mike continues: "Yes! Current studies show that educational games can even improve children's social and communication skills. Researchers found that children became actively engaged to the point where they were discussing game content with their friends!"

->askFriends.continask

=traditionalEducation
"One important difference between traditional learning and playing educational games is that with the latter, students will actually spend more time studying. For example, one study found that self-study time was estimated to increase more than threefold to 4.6 hr per week on average by the student!" Mike answers.
->askFriends.continask

=goodToGo
"Mike, I really appreciate your help! I think I can possibly convince Summer now! Thank you, and I'll owe you a meal," you say with a smiling face and hang up the call. 
->tellwifeResult 

/*----------Part 15------------*/
===ResearchByMyself===
"I’ll do it by myself! It will be better if I do more research to see relevant information about playing educational video games." You sit in front of the computer and start searching for the information.
# IMAGE: myimages/034.jpg
What are you going to search for first?

->ResearchByMyself.doResearch

=doResearch
* The violence issues->ResearchByMyself.violenceIssue
* The advantages ->ResearchByMyself.Advantages
* The disadvantages->ResearchByMyself.Disadvantages
* The differences compared to traditional education  ->ResearchByMyself.TradDifference
* ->
It seems that you have a lot of useful information in your hands now. It's time to convince Summer.
{ConsultWithTeacher==true:
->ConsultWithTeacher.nextdaytalkTo
-else:
->tellwifeResult 
}

=violenceIssue
: While researching, you find an article by Andrew Przybylski, whose research suggests that despite the endless debates, his study found that there is no link between violent video games and aggression in teenagers.
/*
https://www.forbes.com/sites/olliebarder/2019/02/15/new-study-shows-that-there-is-no-link-between-violent-video-games-and-aggression-in-teenagers/#a0e4c6c328e0
*/
->ResearchByMyself.doResearch

=Advantages
: You found several articles, all agreeing that playing educational games can help students improve their social and communication skills. You also found many studies that demonstrated an increase in students' average grades. Most studies have proved educational games can enhance students' motivation and increase their enjoyment of learning. 
->ResearchByMyself.doResearch

=Disadvantages
: You found that students of different genders have differing performances when playing educational games. According to some research, female students seem to perform better in games that contain social aspects, whereas male students prefer to play a more competitive game. Therefore, a potential issue arises: if performing poorly on the game, the student is unlikely to enjoy it, further decreasing their confidence in the subject matter. 
->ResearchByMyself.doResearch

=TradDifference
: You also read an article by Daubenfeld and Zenker, who found that in comparison to  traditional lecture format, students using educational games are more willing to increase their self-study time more than threefold, to 4.6 hr per week on average. 
->ResearchByMyself.doResearch

===tellwifeResult===
<b>9:00 PM, Bedroom</b> # CLASS: location
"Summer, I think we have to continue talking about letting Dan play educational games. I have  thought about it, and what Mary said, makes sense. Maybe we should try a new method." You look at Summer and continue: "Think about it...nowadays, children cannot survive in our world without mobile phones and technology." 
"I still insist on my standpoint. I don't agree." Summer immediately refuses.

"Don't reject the idea too quickly. <>
{ askFriends== true:
Listen, I spoke with Mike. Do you remember him? His child is in the top 5 students in their grade. He told me that a major factor in his child’s success is that they let their child play educational games.”
  - else: 
Listen, I have done research on educational games and found some really interesting information. It turns out, that in fact, the advantages of playing educational video games are greater than the disadvantages" you say.
}
+[Tell Summer what you know]->tellwifeResult.changemind

=changemind
You take Summer's hand and ask her to sit down. Then, you introduce her to the pros and cons of playing educational games and tell her that there are many people who have misunderstandings related to educational games nowadays.
"It sounds like the benefits are much greater than I ever would have thought," Summer muses. 
"Absolutely! So, can we try this method?"
"Sure. Do you have any games in mind that you want to buy?" Summer says, now agreeing with you. 
"I don't have any ideas yet. I'll go to the game store to have a look tomorrow!" you reply.
"Okay! Let's sleep early tonight! Good night!" Summer said.
"Good night!" You say and then turn off the bedroom light.
->agreetoPlaygame

/*----------Part 16------------*/
===agreetoPlaygame=== 
<b>[June 28, Sunday]</b> # CLASS: day
<b>12:00 PM, EB Games</b> # CLASS: location
You quickly walk into the store and find the shelf that includes all the educational video games.
You stand in front of the shelf, looking. There are many different types of games, and a few games look good. 
You decide to buy...
+ [Minecraft]->agreetoPlaygame.Minecraft2
+ [SimCity]->agreetoPlaygame.SimCity2
+ [Civilization III]->agreetoPlaygame.CivilizationIII2

=Minecraft2
You pick up Minecraft, turn it over and look at the game introduction. "Oh! This is an educational game that helps students learn multiple subjects. It seems interesting!" You take Minecraft and go to the front desk to check out.
# IMAGE: myimages/019.jpg
"Sir, are you planning to buy this for your child?" the clerk asks you.
"Correct!" you say, nodding your head.
"You're a good father!" The clerk handling the shopping bag to you. 
"Oh! Thank you! Goodbye!" You take the shopping bag from his hand and then turn around.
"Goodbye! Have a nice day!" the clerk says.
Walking out of the store, you now look forward to seeing Dan’s joyful face at receiving the game and the happiness you will feel knowing you’re helping his academic performance at the same time. 
->agreetoPlaygame.giveyourson

=SimCity2
You pick up the game SimCity, turn it over and look at the game introduction behind the box."Oh! This is a game that helps kids to learn Strategy." It seems interesting!" You take SimCity and go to the front desk to check out.
# IMAGE: myimages/017.jpg
"Sir, are you planning to buy this for your child?" the clerk asks you.
"Correct!" you say, nodding your head.
"You're a good father!" The clerk handling the shopping bag to you. 
"Oh! Thank you! Goodbye!" You take the shopping bag from his hand and then turn around.
"Goodbye! Have a nice day!" the clerk says.
Walking out of the store, you now look forward to seeing Dan’s joyful face at receiving the game and the happiness you will feel knowing you’re helping his academic performance at the same time. 
->agreetoPlaygame.giveyourson

=CivilizationIII2
You pick up the game Civilization III, turn it over and look at the introduction behind the box. "Oh! This is a game that helps kids to learn culture and history." It seems interesting!" You take Civilization III and go to the front desk to check out.
# IMAGE: myimages/018.jpg
"Sir, are you planning to buy this for your child?" the clerk asks you.
"Correct!" you say, nodding your head.
"You're a good father!" The clerk handling the shopping bag to you. 
"Oh! Thank you! Goodbye!" You take the shopping bag from his hand and then turn around.
"Goodbye! Have a nice day!" the clerk says.
Walking out of the store, you now look forward to seeing Dan’s joyful face at receiving the game and the happiness you will feel knowing you’re helping his academic performance at the same time. 
->agreetoPlaygame.giveyourson

=giveyourson
<b>6:00 PM, Home</b> # CLASS: location

"Look, Summer, I bought <>
{agreetoPlaygame.Minecraft2 == true:Minecraft }
{agreetoPlaygame.SimCity2 == true:SimCity }
{agreetoPlaygame.CivilizationIII2== true:CivilizationIII }<> for Dan!" You hold the game box on your hand and show it to Summer.

"It looks pretty good!" Summer says.

"Let's give this to Dan now!" You tell Summer.

"Ok!" Summer says.

“Dan, come here! Have a look at the gifts Daddy purchased for you” Summer calls. Dan comes over.

Dan happily runs to you and, seeing what is in your hand, cries, "Wow! Dad, you bought me a game. Many of my classmates have this at home! Thank you, Dad!”
# IMAGE: myimages/032.jpg
+[Explain the reasons]->agreetoPlaygame.explainreason2

=explainreason2
"Your teacher told me today that your academic performance is not ideal this year; therefore, we must supervise your studies from now on" you say, looking at Dan seriously. "But you have to play this game seriously, and always reflect on what you learn from this game. Can you promise me?" you add.
"Thank you, Dad. I promise you. Can I play now?" Dan looks at you and the game longingly. 
"Dan, look how well Daddy treats you. Can you also promise me that you will control your time playing games?" Summer asks Dan.
"Sure! Don't worry! I can promise both of you!" Dan says.
"Okay! Go to your room and start playing it" you say, stroking his head. 
"Thank you! I am going to study right now!" Smiling, Dan runs to his bedroom.
->Ending2 

/*----------Part 17------------*/
//读课外书的结局 start
===Ending1=== 
<b>[July 27, Monday]</b>
<b>9:00 AM, Home</b>
A month have been passed; it is the week of the Final Exam.
"Jonathan, do you think Dan’s overall academic performance will have improved after all the reading and exercises we gave him this month?” Summer asks you.
"I am not sure. I hope so. However, since we gave him the books and removed his video games, it’s obvious that his behaviour has changed. He looks upset and stays silent every day." You are worried about Dan.
"Maybe we should wait for the parent-teacher day after the exam and see what Mary says this time,” you add. 
"Ok! I hope Dan does well in the exam," Summer says hopefully.
+[Wait for the parent-teacher day]
->Ending1.parentday1

=parentday1
<b>[August 1, Saturday]</b> # CLASS: day
<b>1:00 PM, Teachers’ Office</b> # CLASS: location
"Hello! Mr. Jonathan, it is nice to see you again." Mary smiles at you and says, "This is Dan's report card for this year."
# IMAGE: myimages/033.jpg
She passes the report card to you and continues: "Dan is ranked <>
{Books.all== true:<b>47th</b> in the class. His overall grades have improved. But I find that when he is answering the questions, it seems that he doesn’t fully understand the concepts. Additionally, many answers are incomplete."} 
{Books.language == true:<b>45th</b> in the class. His grade for language has improved. But I find that when he is answering the questions, it seems that he doesn’t fully understand the concepts. Additionally, many answers are incomplete."} 
{Books.economic == true:<b>45th</b> in the class. His grade for economic has improved.But I find that when he is answering the questions, he doesn’t understand how to calculate the answer. It also appears that rather than improving his understanding of the concepts, he is instead simply memorizing the answers from the textbook."}
{Books.math== true:<b>45th</b> in the class. His grade for economic has improved.But I find that when he is answering the questions, he doesn’t understand how to calculate the answer. It also appears that rather than improving his understanding of the concepts, he is instead simply memorizing the answers from the textbook."}
{nothing.listento||nothing.agreewith== true: <b>45th</b> in the class. His grade for economic has improved.But I find that when he is answering the questions, he doesn’t understand how to calculate the answer. It also appears that rather than improving his understanding of the concepts, he is instead simply memorizing the answers from the textbook."}
She looks at her notes. “Additionally, Dan has become silent and inactive over the past month. He seems to be exhausted every day and lacks the  willingness to communicate with his classmates. Many teachers reporting to me said Dan still has distraction issues. When teachers ask him to answer questions, he is really passive and most of the time, he didn't know the correct answer," Mary adds.
+[Look at Mary ]->Ending1.parentday1_b

=parentday1_b
"Your description is the same as what he acts at home. After we purchased the books and exercises for him, Summer also took away his gaming privileges…maybe that’s that the reason he's become more passive. We’re confused. Reading textbooks is how we were taught as children — how come this method does not work for Dan?" You feel worried and upset about Dan's performance.
Mary tries to comfort you, "I can see your point, Mr. Jonathan. But in this technological age, knowledge and lifestyles change so fast, sometimes what works for one student doesn’t work for another. Do you know what I mean? For Dan, I know that the main reason he is stressed is due to his poor academic performance. But perhaps we still have not found the best way for him to learn yet, Mary says.  
"Additionally,” she continues, “many studies show that it is critical for schools and parents to understand how to enhance students' motivation for learning. Usually, if students are learning passively, they can only retain a maximum of 30% of knowledge from a book. Therefore, we should encourage children to learn actively, such as playing educational games. The reason we suggest parents consider educational games is that not only do they work academically, they are tremendously enjoyable for the children. So, they can immersivity play games and learn while doing it. In addition to helping your child learn actively, parents should pay more attention to their child's physical and mental development and pay more attention to their emotions. It all helps to enhance their learning," Mary says.
"I see. Thank you, Mary. It seems that Dan's grades and social skills still need to be improved upon this summer." After speaking, you stand up and leave the teachers' office.

+ Restart 
     # RESTART
    ->END 
//结局一：让孩子读课外书 Ending


===Ending2=== //玩游戏的结局
<b>[July 27, Monday]</b>
<b>9:00 AM, Home</b>
A month have been passed; it is the week of the Final Exam.
"Jonathan, do you think our son's overall academic performance has improved after studying with the extra materials we bought him last month?" Summer asks you.
"I am not sure. I hope so. But I think everything will be good. I have observed Dan for the past month, and he seems to be spending more time playing the educational game we purchased for him. Additionally, he is actively discussing what he learns from the game with us, and what  game content still leaves him confused." You look at Summer and say with confidence “Actually, I think he really enjoys learning by playing. Maybe we should wait for the parent-teacher day after the exam and see what Mary says time," you add.
"Ok! Hope Dan does well in the exam," Summer says.

+[Wait for the parent-teacher day]->Ending2.parentday2

=parentday2
<b>[August 1, Saturday]</b> # CLASS: day
<b>1:00 PM, Teachers’ Office</b> # CLASS: location

"Hello! Mr. Jonathan, it is nice to see you again." Mary smiles at you and says, "this is Dan's report card for this year."
# IMAGE: myimages/033.jpg
She passes the report card to you and continues, "Dan is ranked <b>30th</b> in the class. This is a large improvement from over the past month. I can see that you and Summer must have altered Dan’s educational plan!” Mary adds.
+[Look at Mary]->Ending2.parentday2_b

=parentday2_b
"Oh great! I just want to say thank you for your suggestions about the educational video games for Dan. I bought <>
{agreetoPlaygame.Minecraft2 || BuyaGame.Minecraft == true:Minecraft}
{agreetoPlaygame.SimCity2 || BuyaGame.SimCity == true:SimCity}
{agreetoPlaygame.CivilizationIII2 || BuyaGame.CivilizationIII== true:CivilizationIII}
<> for him, and he is really enjoying playing it!” you smile and say.
Mary looks at you and says, "Interesting! Actually, Dan has also become more active in class. He often raises his hands to answer questions. I remember a month ago, he didn’t like to answer questions or chat with classmates very much at all; but recently, he has become more cheerful, and he discusses the study topics with his friends every day after class." 

"That's a good change! Maybe I should buy more games for him over this summer," you say.

"You're correct! As long as you keep it balanced and find the right way to let Dan enjoy his learning experience. It is the most effective way to improve his learning performance." Mary says.

"Okay! Thank you, Mary, see you next time!" After speaking, you stand up and leave the teachers' office.

+ Restart 
     # RESTART
    ->END 
->END

/*----------Part 18------------*/
===Ending3===
<b>[July 27, Monday]</b>
<b>9:00 AM, Home</b>

A month has been passed; it is the week of the final exam.
"Jonathan, do you think our son's overall academic performance will have improved after giving him all those resources last month?” Summer asks you.
"I am not sure. I hope so. But I think everything will be good. I have been observing Dan for the past month. After we took him to <>
{Moviespicked.StarWars== true:<>Star Wars}
{Moviespicked.WellE == true:<>Well-E}
{Moviespicked.Moneyball == true:<>Moneyball}
<> , his interest in studying increased tremendously. He is more passionate and is excited to  share with us what he learns in school every day!" you answer.
"Besides, we let Dan play the educational game—he is really enjoying it!" you add.
"That’s true. I can see that our son is now more motivated and passionate about learning! “Summer smiles.
"We will wait for the parent-teacher day after the exam and see what Mary has to say this time” you say.
+[Wait for the parent-teacher day]->Ending3.parentday3

=parentday3
<b>[August 1, Saturday]</b> # CLASS: day
<b>1:00 PM, Teachers’ Office</b> # CLASS: location
"Hello! Mr. Jonathan, it is nice to see you again." Mary smiles at you and says, "This is Dan's report card for this year."
# IMAGE: myimages/033.jpg
She passes the report card to you and continues: "Dan is ranked <b>20th</b> in the class. He has shown  great improvement over the past month. Even better, he has also become a more active learner in class. He often raises his hands to answer questions. I remember how a month ago, he wouldn’t raise his hands to answer questions or chat with his classmates much. But recently, he has become more cheerful, and he discusses the study topics with his friends every day after class."
"I can see that your and Summer's educational methods for  Dan have changed," Mary adds.
"That's right!” you say. “First, we took him to see <>
{Moviespicked.StarWars== true:<>Star Wars}
{Moviespicked.WellE == true:<>Well-E}
{Moviespicked.Moneyball == true:<>Moneyball}
<> , discussing how it relates to many academic subjects from mathematics to business theory.  I hope it has demonstrated to him the link between things that interest him in his own life and their academic counterparts, encouraging and interesting him more in his future academic work.” You feel proud of Dan's performance.
You remember something important. "Oh! Back to that day I took him to see a movie — we were lucky to come across an EB Games event. The clerk offered us a ‘buy one get one free’ offer. I listened to your advice and bought Dan an educational game." 

"It seems that you have learned the benefits of these games," Mary says.

"Yes! And my next plan is to purchase more educational games for Dan to play during this summer. I hope we can continue to increase his interest in learning!" you say.

"You're correct! As long as you keep it balanced and find the right way to let Dan enjoy his learning experience. It is the most effective way to improve his learning performance." Mary says.

"Okay! Thank you, Mary, see you next time!" After speaking, you stand up and leave the teachers' office.

+ Restart 
     # RESTART
    ->END 
->END

