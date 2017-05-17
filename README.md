BuskBeat
--------


 **A community for street musicians and fans of street music** with a responsive design suitable for mobile use. Features include busker artist profiles, audio & video performances, user roles for *Buskers* and *Fans*, and public & private discussions. More features are planned. I'll also be looking for feedback regarding what enhancements would be most valued by members once the site has been deployed.

 - Buskers: Post artist profiles, post embedded links to video (YouTube) and audio (Soundcloud) streams, request tip payments to associated online payment accounts (e.g. Venmo, Paypal)
 - Members: Comment on busker posts (including profiles, videos, and audio clips), and leave tips
 - Visitors: Browse busker profiles, read discussions, and play video & audio streams
 - Administrators: Can also create discussion topics and moderate any discussion or content

The data model relationships look like this:

 - Users have a role of either *Busker* or *Fan*
 - Users have many discussion Posts and Comments
 - Users with the *Busker* role have one Profile and many Posts, Videos, and Audio clips
 - Posts, Videos, and Audio clips have many Comments
 - Discussion Topics have many Posts
 - Posts belong to Users and Topics
 - Comments belong to Users and Posts, Videos, or Audio clips

Input data validation is performed by the ActiveRecord ORM for all user input fields.

----------


**Technology Used**

 - Ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin15]
 - Rails 5.0.2
 - Dev database: sqlite3 3.16.0
 - Production database: Postgres 9.5.4 (Heroku)
 - Rspec 3.5.4
 - Bootstrap (Bootstrap-SASS) 3.3.7
 - Bcrypt for password encryption
 - Gravatar for members' profile pictures (avatar)
 - SendGrid for email notification of comment post events
 - Figaro for secure management of SendGrid credentials
 - FactoryGirl to generate Users, Topics, and Posts for development testing


----------

**App Status**
This is a work in progress. The above-referenced features are those defined as necessary for the minimally viable product release. This README.md will be updated and will include a link to the site at herokuapps.com when MVP status has been achieved.


> Written with [StackEdit](https://stackedit.io/).
