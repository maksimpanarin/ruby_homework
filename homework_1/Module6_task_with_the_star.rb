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

p matches = string.scan(/(?<Lead>[^\s].+),(?<Title>.+),(?<Phone>.+),(?<Notes>(\w+|'.+'))/)

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
#I decide that it would be more effective to create separate regexps for diffirent data

p links = html.scan(/href='(.+)' \w/)

p titles = html.scan(/title\W+(?<Title>.+)\</)

p desc = html.scan(/desc\W+(?<Description>.+)\</)

p single_pattern = html.scan(/href='(.+)' \w.+\n\s+.+title'>(.+)<.+\n\s+.+desc'>(.+)</)
# navigation on first group will be `href='` - left from group
#                                   `' \w` - right from group
# after first group we should pass all symbold to the end of string by means of `.+`
# Then we should pass break line and all space before next tag by means of `\n\s+`
# Then I know that I need to pass all not needed characrest by means of `.+`
#
# navigation of second group will be by means of `title'>` - left from the group
#                                                `<.` - right from the group
# Then I need to pass all not needed chars to the end of string by means of `.+`
# Then we should pass break line and all space before next tag by means of `\n\s+`
# Then I know that I need to pass all not needed characrest by means of `.+`
#
# navigation of third group will be by means of `desc'>` - left from the group
#                                               `<` - right from the group
# In each group I am trying to find any character `.+` at least 1 between symbols > and <
#
# 3 regular expression it is good by if you have text with 300 billion symbols you will have to parse it 3 times instead of one ==)
# Here is my previous asumption
#
# 1. If you don't know end length of result try to use + or * symbols instead of fixed length
# 2. One regular expression is better then many if you can select single pattern for search
#
# (?:href=\'(?<Links>[^\']{1,1000}?)\')