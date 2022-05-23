# Open NotePad
* Search For Note Pad on pc
Press Windows Key and type notepad. Press enter to open notepad if you see it

# Save File as name_of_file.html 
* Inside Noteoad click on `File`, 
* A file explorer window would open up
* At the bottom of the window type the name of your file and choose `All Files` (Note: Your file name has to end in `.html`)
* On the right handside of the window click Desktop to save the file on you desktop
* Click on `Save`

# Opening It in the browser
* Go Desktop
* Look for the name of the file you just saved
* Double click on it to open in in a browser, ( Chose a browser in asked)

# Writing code in your html file
* Go to desktop
* Look for the name of the file you just saved
* Right click on it, 
* Select `open with`, (If you see note pad click on it and it will open)
* If you don't see notepad click on `another app` 
* If you still don't see note pad click on `more apps`
* click on notepad

# Basics
## HTML Documents

```
<!DOCTYPE html>
<html>

<head>
  <title> This Is a Title</title>
</head>
<body>

<h1>My First Heading</h1>
<p>My first paragraph.</p>

</body>
</html>
```

# Elements
Examples of some HTML elements:

```
<tagname>Content goes here...</tagname>

<h1>My First Heading</h1>
<p>My first paragraph.</p>
```
# HTML Attributes
* All HTML elements can have attributes
* Attributes provide additional information about elements
* Attributes are always specified in the start tag
* Attributes usually come in name/value pairs like: name="value"  

```
<a href="https://www.w3schools.com">Visit W3Schools</a>

<img src="img_girl.jpg">

<img src="img_girl.jpg" width="500" height="600">
```

<h1>Other Notes</h1>
```
<html>

<head>
   <title> Hello World </title>		
</head>


<body>

<!-- Headers  -->
<h1> Lovia 1 </h1>
<h2> Lovia 2 </h2>
<h3> Lovia 3 </h3>
<h4> Lovia 4 </h4>
<h5> Lovia 5 </h5>
<h6> Lovia 6 </h6>

<!-- Division  -->
<div>D1</div>

<!-- Paragraph  -->
<p> hcyjy ti7f8v  7696tg </p>

<!-- Lists  -->
<li> list item name goes here</li>
<hr>

<li> list item name goes here</li>
<hr>

<li> list item name goes here</li>

<!-- BR breakes to a new line  -->
<br>

   <!-- Links  -->
<a href="https://www.netflix.com/" > NETFLIX 
 </a>

    <!-- How to use images  -->
 <img src="1643019309631.jpg" alt="This is a photo"/>

   <!-- Ordered List types = (1,i,I,a,A) -->
      <ol type="i">
         <li> Tomatoes</li>
         <li> Apple</li>
         <li> Guava</li>
         <li> Mango</li>
         <li> Orange</li>
      </ol>


   <!-- Unordered List, list-style-type = (none,disc,circle,square) -->
      <ul style="list-style-type:square">
         <li> Guava</li>
         <li> Mango</li>
         <li> Orange</li>
      </ul>

    <!-- Selecting options   -->
   <!-- Label -->
    <label> People's Names: </label>

    <!-- Dropdown -->
    <select>
      <option> Lovia</option>
      <option> Norbert</option>
      <option> China</option>
      <option> Pious</option>
    </select>
    <br>
    <br>

                  <!-- where to -->     <!-- how to send it -->    <!-- There is is a file in form -->
      <form action="loviatutorial.html" method="post" enctype="multipart/form-data" >

         <input type="text" placeholder="your name" value="Lovia" name="personname" required>
         <br>
         <br>
         <input type="email" placeholder="your email" name="my-mail" value="rew" >
         <input type="email" placeholder="your secondary email" name="my-mail" value="fwe" required>
         <br>
         <br>
         <input type="password" placeholder="type password" name="the_password" >
         <br>
         <br>
         <input type="number" placeholder="age" min="1" max="200" name="phone">
         <br>
         <br>
         <input type="tel" placeholder="input your phone number" name="fax number" >
         <br>
         <br>
         <input type="color">
         <br>
         <br>
         <input type="file" accept=".exe"> 
         <br>
         <br> 
         <!-- CheckBox -->
         <label> Your favorite food:</label> 
         <label> Rice</label> 
         <input type="checkbox" name="rice" value="rice">

         <label> Banku</label> 
         <input type="checkbox" name="banku" value="banku">

         <label> Nothing</label> 
         <input type="checkbox" name="nothing" value="nothing">

         <label> yam</label> 
         <input type="checkbox" name="yam" value="yam">

         <input type="checkbox">
         <br>
         <br>  
          <!-- Radio Buttons -->
         <label> Your Gender:</label> 
         <label> Female</label>            
         <input type="radio" name="gender" value="boy"> 
         <label> Male</label>             
         <input type="radio" name="gender" value="girl">  
         <label> Transgender</label>             
         <input type="radio" name="gender" value="Transgender">  
         <label> Non-binary</label>             
         <input type="radio" name="gender" value="Non-binary">  
         <br>
         <br>    
         <input type="date" max="2010-08-09" min="2003-02-25">  
         <br>
         <br>      
         <input type="submit">

      </form>

    <!-- <input type="number" placeholder="add paaswor dhere" value="Godbless" min="1" max="18"> -->
    
</body>


</html>
```



# qodehub-challenge
Sample News App For qodehub

![News Details](https://github.com/norbertkross/qodehub-challenge/blob/master/Screenshot_1591179974.png?raw=true)

![News List](https://github.com/norbertkross/qodehub-challenge/blob/master/Screenshot_1591179957.png?raw=true)
