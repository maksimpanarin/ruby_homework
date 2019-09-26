#### Data types, variables, literals and constants, basic work with strings
`data types`
1. Create string literal
2. Create integer literal
3. Create boolean literal
4. Create float literal
5. Create string global variable
6. Create integer global variable
7. Create float global variable
8. Create boolean global variable
9. Create big integer variable
10. Create integer variable in binary system
11. Creat integer in hexadecimal system
12. Create integer in octal system
13. Convert string into hex
14. Convert float into integer
15. Convert int to float
16. Convert integer to boolean
17. Convert boolean to integer

`strings`
18. Create some long string and find index of substring in this string
19. Create string and convvert to uppercase
20. Create string and convert to lowercase
21. Create string with upper and lower case letters and convert lowercase to upper case letter and vice versa

`tasks with star`
* Write regular expression to parse coma separated value (CSV).
	`Lead,Title,Phone,Notes
	Jim Grayson,Senior Manager,(555)761-2385,"Spoke Tuesday, he's interested"
	Prescilla Winston,Development Director,(555)218-3981,said to call again next week
	Melissa Potter,Head of Accounts,(555)791-3471,"Not interested, gave referral"`
* Write regular expression to retrieve domain name(s) from given string (urls with schema and www should be processed).
* Write regular expression for parsing links and links titles from simple html.
    <div class="links">
      <div class="link">
        <a class="first-link" href="google.com">
          <span class="title">Google</span>
          <span class="desc">Google Inc.</span>
        </a>      
      </div>
      <div class="link">
        <a href="www.apple.com" class="second-link" >
          <span class="title">Apple</span>
          <span class="desc">Apple Inc.</span>
        </a>              
      </div>
      <div class="link">
        <a href="https://www.w3schools.com/"  target="_blank"  >
          <span class="title">W3Schools</span>
          <span class="desc">W3Schools Org.</span>
        </a>        
      </div>
    </div>
  Expected: [(google.com, Google, Google Inc.), (..., ..., ...), ...]
  
  Enjoy codding Ruby ==))