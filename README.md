README
======

This is a CMS API backend built for an Ionic hybrid App. This build is simply for demo purposes
and does not represent the production build. This build represents about 50 hours of work spread over 3 weekends. Some incomplete features have been hidden while some things (e.g. the "JSON Output" view) were added for illustration purposes only. The CMS part of the project is estimated to be about 75% complete, while the frontend is a little further behind at about 60%.
 
I would like to draw attention to the following:

### App Selector
Select the app by clicking on the phone icon on the top navbar. An app belongs to a company and each company has their own colour scheme for the CMS backend. The idea is that users who manage content are restricted to certain 
apps (this is yet to be added) and will therefore see the CMS as personalized to their own company.

### User Access
As mentioned above the various authorization levels and the App HABTM Users relationship is yet to be added.

### Live View
The live view is an Iframe to an instance of the hybrid app running on Heroku. **The Heroku app is on a free dyno so it may take some time for the dyno to wake up. The API routes for the production app are in the process of being changed, so **it is likely that the Iframe view will show a phone app that is simply an empty shell**. For CMS users this is a very useful feature as they can immediately see the effects of the changes they've made. Without needing to test their content on a seperate device. 

### Metaprogramming
One of the goals of the project was to employ as much metaprogramming as possible. The controllers.rb file shows
how this is done, and most of the views in /views/admin are shared by different routes. The Admin model is used throughout for this purpose, and the dynamic_admin_router.rb is an example of this.

### JSON Output View
This view has simply been added to illustrate the structure of the JSON for some of the API endpoints.

### Image Uploader
During the course of the project it was decided to switch over to base64 encoded images so that these could be stored on the mobile devices themselves in a SQLite database. The uploading to and reading from an S3 bucket is still visible in places, but this will be removed completely, save for possible backup purposes.

### Ordered Fields 
While this is functioning as desired, the interface is still quite poor. Only a superadmin user will be able to access this. This was built so that the same views could be used accross different models and so that, eventually, changes could be made to the views without changing code. It was also an opportunity to try out PSQL's array datatype.