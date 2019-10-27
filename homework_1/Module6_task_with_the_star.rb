string = "Lead,Title,Phone,Notes
          Jim Grayson,Senior Manager,(555)761-2385,'Spoke Tuesday, he's interested'
          Prescilla Winston,Development Director,(555)218-3981,'said to call again next week'
          Melissa Potter,Head of Accounts,(555)791-3471,'Not interested, gave referral'"

# TODO: Good job. But take a look on first element of each list. first item contain spaces symbols. 
# TODO: Please do not contain them in regular expression. Also please make this regular expression not unique.
# TODO: It should work with another CSV data.
# TODO: For examples you need to parse rows and convert them in dictionary structures such as:
# TODO: {
# TODO:     "lead": "Jim Grayson",
# TODO:     "title": "Senior Manager",
# TODO:     "phone": "(555)761-2385",
# TODO:     "notes": "Spoke Tuesday, he's interested"
# TODO: }
# TODO: It will be next task with start if you want)). For now make your regular expression not unique
# p matches = string.scan(/(^Lead,Title,Phone,Notes\n{1})?(?<Lead>^[\w\s]+),(?<Title>[\w\s]+)\,(?<Phone>\(...\)\d{3}\-\d{4})\,(?<Note>'\D+')$/mi)







# link_example = "https://github.com/maksimpanarin/ruby_homework/blob/HW-1/homework_1/Module6_task_with_the_star.rb"
#
# TODO: Yea good job. So for now you are ready to start parse html
# p urls = link_example.scan(/[http:\/\/|https:\/\/|www\.](?<Domain>\w+(\W|)\w+\.\w*)/xo).first

# * Write regular expression for parsing links and links titles from simple html.
#the thid one isn't ready yet
# scan(/((?<Links>(?:href=\"(?:https\:\/\/www\.|https\:\/\/|www\.|)
# [\w\d]+(\W|)[\w\d]+))
# |
# (?<Titles>(?:"title\"|"desc\")\>[\w\d\s]+))/)

# TODO: html was updated since most pattern should be same.
html = "<div class='links'>
          <div class='link'>
              <a href='google.com' class='first-link'>
                  <span class='title'>Google</span>
                    <span class='desc'>Google Inc.</span>
                </a>
            </div>
            <div class='link'>
                <a href='www.apple.com' class='second-link'>
                  <span class='title'>Apple</span>
                    <span class='desc'>Apple Inc.</span>
                </a>
            </div>
            <div class='link'>
                <a href='https://www.w3schools.com/' target='_blank'>
                  <span class='title'>W3Schools</span>
                    <span class='desc'>W3Schools Org.</span>
              </a>
          </div>
      </div>"

# example for help=)
p elements = html.scan(/href='(.+)' \w/)