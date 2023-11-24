# SpringMVCFilmSite
### Overview
   
   This is a Web Application that accesses a database of films.  The user can look up films from their corresponding ID number or a Keyword search. The application is comprised of three JSP files and two HTML files.  The pages the user is given are either hyperlink pages or text input pages.  The user is guided through the various pages and whatever their desired query type the appropriate page is displayed.  If they choose to look at a single film by ID they will be given a page that displays everything about that film including the actors in it.  If they choose the Keyword path they will be displayed a list of every corresponding film containing their Keyword in either the title or description. 
  
   
### Technologies/Techniques Used

  - Java
  - HTML/XML/JSP
  - Structured Query Language - SQL
  - Data Access Objects - DAO
  - Spring MVC
  
  
### How To Run

   The user begins at the HomePage where they are given two hyperlinks, one to look up by ID the other Keyword.  If the user selects to lookup by ID they are moved to another page where they are given a text box to enter their desired ID number.  Upon submitting their query the user is taken to the results page where the film matching the entered ID is displayed along with all its info and the actors in the film.  The user has two hyperlinks at the top where they can either return to the HomePage or go back to the previous page and enter another ID.  If the user selects to look up by Keyword they are moved to a corresponding page where they can enter their desired keyword.  The Keyword entered is cross-referenced with all the film titles and descriptions and any time your Keyword is matched it will display the corresponding film title along with its description.  The film title is a hyperlink to the films details and actors.  The user can either return to the previous page or go back to the HomePage.
   
   
### Lessons Learned

   Pros -
   
   - Became more comfortable with JSP syntax.
  
   - Better grasp at using DAOs.
  
   Cons - Obstacles during coding -
   
   - When adding the film actors to the output I over thought it making a new JSP and RequestMapping to the Controller.  All I did was add a List of actors to the Film class and some getters and setters, and in the findById method in the FilmDaoJdbcImpl class I simply added that List of actors after the Film constructor so it would print out properly. 
    
   - Getting the corresponding films details to display from the Keyword search results was more simple than I attempted.  I researched tags in HTML and attempted several different methods to find out I only needed to substitute my variable using single quotes instead of putting it in a separate variable and passing that though my onClick function.