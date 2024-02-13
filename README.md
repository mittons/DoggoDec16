# DoggoDec16
## About Project:
Re-iteration of or [DoggoDisplay01](https://github.com/mittons/DoggoDisplay01). Written mostly to test my understanding and memory. Every line of code rewwritten with the intent to question if I have both understanding of individual lines of code and their functionality as well as testing the overall integration of different elements of the code (fine grained and coarse grained). No directory/file/class/function/variable written directly from the previous code without an attempt to produce it from my memory and with understanding of what it is and why.

Uses data from [TheDogApi.com](https://thedogapi.com/).

*Dec17 note: I was not able to finish some of the testing code before the day ended (December 16). On December 17 I decided to restart this project from scratch and finish it within the day. Then I copied the missing bits into this project and crossed my fingers for a successful build on first attempt.* :fingers_crossed:

**Dec 18.. 'Second commit' note: Turns out copy pasting the code didn't work. The unit/widget tests for this project (Dec16) failed. Because I was testing for a button with the same functionality but using the button text from the Dec17 project. The Dec17 passed all the unit tests on first try... but it failed integration testing. So. I guess. Yeah. In the Dec 17 project it was just the wrong port number (I tried to access the mock api using the internal docker container port 8017 instead of the port the docker service exposes 3017. So that project push failed the deadline I set (before midnight dec 17/18) on a single digit (3017 vs 8017). Bawwwwww (Next time, I guess?).)**

***Dec 18........ .. 'Third commit' note: Sooooo... it turns out when working with listbuilder.. it is important to be transparent about the length of your list. Otherwise it might expect a longer list and look for something out of your range. Well. Transparency here I come. In any case. The Dec 17 project worked on second try. 23 minutes past midnight December 28. Single digit. 8017 vs 3017. Simple mistakes are so pretty to be honest (although I try to avoid them, at least professionally).***

:fingers_crossed:

:fingers_crossed:

:fingers_crossed:

***Tertiary note dec18 third commit.. pushing two ghcr images and 4 projects within the span of 15 minutes.. then debugging the 2 projects that failed and successfully resolving them within 30~ish minutes is hecking fun. [3 Screen-screenshot](https://i.imgur.com/DZ26QZi.png) just after I created the 4 repositories at like.. 23:46+. Multitasking triggers all the chemicals. I love programming.***



~~***Dec 18. Fourth commit.***~~ I don't even. This project has no reference to [test_driver/main_test.dart](https://imgur.com/a/C8IeiuN).. as far as I know. Lets try again. [But the Dec17 project (Second commit) is up, running and going good. Hooray for that! \o/](https://github.com/mittons/doggoDec17).

~~***Dec 18;~~ Fifth ~~commit:~~** I have no idea. I tried changing the paths a bit again. And I have literally copy pasted the directory structure names directly into the GitHub Actions file from the actual directory system to ensure there are no typos. Yet. No awail. I added a slash after '--driver=' and '--target=' in the flutter integration test part of the gh actions script (switch from relative pathing to abs pathing.. I think?). If that doesn't work I will abandon this project now and seek solutions later, when I have time. The latest one works, so thankfully there is that: [Dec 17 project](https://github.com/mittons/doggoDec17)



*7th commit:* **OK** ***SO*** **I didn't write anything into this readme for the sixth commit** *because it was kind of sort of a hail mary* ~~***But***~~ *since* ~~**it**~~ ***WORKED*** I will add this seventh commit.

So the --driver=test_driver/integration_test.dart didnt work for some reason? It tried to reference test_driver/main_test.dart. I do not know why but I am determined to find out (at a later date).

In the fifth commit i tried to add a slash for absolute pathing. ~~driver=~~**/**~~test_driver/integration_test.dart~~.
This did not work.

In the sixth commit.. I added a dot; In front of the slash I added in the fifth commit. For relative pathing again.

**driver=**~~./~~***test_driver/integration_test.dart***.

That worked.

I bet just changing this readme file for a seventh commit is gonna break the build again.

But then again README.md files aren't meant for reflecting everything that comes to mind.

Thankfully I have the latest, more production~y version, the [Dec 17 project](https://github.com/mittons/doggoDec17) up with a relatively clean README. More user-facing, gracious.. and friendly =^.^=.

What the hell is this.

But at least I wrote this ***~~Sev~~e****n~~th~~** commit log for documentation, logging, paper-trailing and transparency.

Also. 7 ate~~(-th commit)~~ nine: Fixed links to Dec17 project in this file.

Uses [MockDogApiDec16](https://github.com/mittons/MockDogApi16) as a mock api image for testing.

## Started On:
:calendar: December 16, 2023 *(AUTO-GENERATED)* :calendar:

## Reflections:
Fun project. Lots of dopamine from from validating my recent learning experiences. I'm getting more flexible with my coding and what I am expressing with the code now. Less of a stick up my

## Notable (Milestone) Resources Created:
- ***Confidence***

## Acknowledgements
- **The Dog API:** This application uses data from [The Dog API](https://www.thedogapi.com). I route the traffic through my own private backend proxy in order to secure my user key for the API, in line with the [The Dog API TOS](https://thedogapi.com/terms).

- **ChatGPT:** Powered by OpenAI, specifically ChatGPT-4. Files in this project vary from between being Content that is completely AI generated to being completely human-generated. The term Content, and other relevant definitions, can be observed on [The OpenAI TOS page](https://openai.com/policies/terms-of-use#using-our-services).

## License
This project is licensed under the [MIT LICENSE](LICENSE) - see the file for details.

While my project incorporates the work of others through third-party dependencies, I have not included a detailed `THIRD_PARTY_LICENSES` file at this time. I am deeply committed to respecting intellectual property, honoring the licensing requirements of all dependencies, and declaring an express desire to acknowledge all contributions while repsecting, and not limiting, those who choose not to be acknowledged.

Should you have any inquiries or suggestions regarding third-party attributions, or if there's a specific attribution you believe requires immediate attention, please do not hesitate to contact me at axel@axelgauti.is. I promise to address all such communications promptly, providing either a resolution or a commitment to resolve the matter within a reasonable timeframe, subject to my availability and capacity to respond.

This commitment is part of my broader ethical stance on promoting attribution transparently and fairly, without prejudging the worth of contributions based on past or potential acknowledgments. I welcome your feedback and suggestions on how I can improve my practices in this area.