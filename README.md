#### mcv

A LaTeX document class for a minimalist resume (one page CV and one page cover letter).

The CV has a two columns layout, a narrower one on the left of the page and a wider one on the right, separated by a dashed vertical line.

At the beginning of the .tex example, three colors are defined (e.g.: ```\definecolor{gun}{HTML}{3B3B3B}```): *peacock*, *gun*, and *mouse*. These are the colors used in the final composition with *gun* being the main color for the font of the file.  
Changing the names of the colors will cause some trouble, but a user can customize their effect by changing the [related HTML code](https://www.w3schools.com/colors/colors_picker.asp) (third bracket).

![mcv example](/images/mcv.jpg)

An example of how the CV will look like.

![candidate without skills](/images/NoQualities.jpg)

The candidate's picture without the three quick skills.

![mcv cover letter example](/images/mcv-coverletter.jpg)

An example of how the cover letter will look like.

##### Available commands for the left column

- ```\candidate{name}{last name}```
- ```\birthday{language}{year}{month}{day}```: depending on the language in which the CV will be written a user can select *en* for English (*Date of birth*), *it* for Italian (*Data di nascita*), or *fr* for French (*Date de naissance*).
- ```\splashinfo{first skill}{second skill}{third skill}{picture}```: the picture should be a 800x1200 pixels jpg file, but by tweaking the scale in the .cls file in the section Picture and quick skills a user can choose a different resolution.
- ```\splashinfolite{picture}```: the same as the previous command, but without quick skills.
- ```\wherewhen{place}```: *place* on the left and the current date (formatted according to the style of the CV) on the right.
- ```\lang{language}{percentage}```: it displays the *language* on the left and a bar that shows from 0 to 100 the expertise of the candidate in said language.
- ```\reachmetitle{title}```: a customizable title that displays the map with a pinpoint icon.
- ```\customfield{left text}{right text}```: *left text* shouldn't be too long, while *right text* can be (almost) anything.
- ```\usuallydo{title}```: a customizable title that displays the collar with a tie icon.
- ```\skillpie{percentage/first skill}{percentage/second skill}{percentage/third skill}{percentage/fourth skill}{percentage/fifth skill}```: it displays a donut chart showing the candidate's skills or common activities accordingly to the specified percentage. Skills/activities should be expressed as integers between 0 and 100 (summing up to 100 and preferably sorted) slash legend. A user should describe no more than 5 skills/activities, setting their percentage to 0 to ignore them.

##### Available commands for the right column

- ```\sectiontitle{title}```: pretty much it self explains.
- ```\sectionitem{dates}{job title}{company name}{place}{description}```: it shows *dates* (e.g.: 2016 -- 2018) on the left and everything else aligned on a right column. An italic decoration is used for *description*, in which a user can use ```//``` to add new lines.
- ```\sectionitemlight{dates}{first item}{second item}{third item}```: it is similar to the previous command, except it has no italic parts.
- ```\otherskill{skill or activity}```: a bullet (peacock colored hollow dot) item.
- ```\otherskillverbose{skill or activity}{additional info}```: a bullet (peacock colored hollow dot) item, with a subpart for additional italic info.
- ```\cletter{text}```: a text wrapper to be used in cover letters, in which a user can use ```//``` to add new lines.

##### Additional commands
- ```\gdpr{text}```: a field for those who consider privacy issues. It is shown at the center of the bottom of the page, with a smaller font size.
