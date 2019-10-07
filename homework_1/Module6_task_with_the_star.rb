# `tasks with star`
# * Write regular expression to parse coma separated value (CSV).
text ="Lead,Title,Phone,Notes
	Jim Grayson,Senior Manager,(555)761-2385,\"Spoke Tuesday, he's interested\"
	Prescilla Winston,Development Director,(555)218-3981,\"said to call again next week\"
  Melissa Potter,Head of Accounts,(555)791-3471,\"Not interested, gave referral\""

# TODO: Try to not attach to content. For example I can change my csv to another and I need to write regex again after that. Use more abstract approaches with .?+*\d\w signs.
# matches = text.match(/(?<Lead>[\w\s]+),(?<Title>[\w\s]+),(?<Phone>\(...\)\d{3}-\d{4}),(?<Note>"\D+")(\s|$)/)
# * Write regular expression to retrieve domain name(s) from given string (urls with schema and www should be processed).

# * Write regular expression for parsing links and links titles from simple html.
#     <div class="links">
#       <div class="link">
#         <a class="first-link" href="google.com">
#           <span class="title">Google</span>
#           <span class="desc">Google Inc.</span>
#         </a>
#       </div>
#       <div class="link">
#         <a href="www.apple.com" class="second-link" >
#           <span class="title">Apple</span>
#           <span class="desc">Apple Inc.</span>
#         </a>
#       </div>
#       <div class="link">
#         <a href="https://www.w3schools.com/"  target="_blank"  >
#           <span class="title">W3Schools</span>
#           <span class="desc">W3Schools Org.</span>
#         </a>
#       </div>
#     </div>
#   Expected: [(google.com, Google, Google Inc.), (..., ..., ...), ...]