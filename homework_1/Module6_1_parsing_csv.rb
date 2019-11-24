# Условие
# У тебя есть CSV файл клиентов с такими колонками:
# first_name
# last_name
# job_title
# bank_account_number
# active (true or false)

# 1. Считываем данные из csv файла

# 2. С помощью регулярного выражения тебе нужно достать по каждому юзеру инфу из документа и закинуть в обьект Client
# ("John", "Dow", "Manager", "9876976", True) - должно возвращаться регуляркой при совпадении. 
# Это один элемент совпадения поэтому нужно юзать групировку. тебе нужно эти данные записать в Хеш таблицу.

# 3. Хеш таблица будет содержать ключи которые будут равны имени колонки из CSV файла а значение то что вернула регулярка
# {
#     "first_name": "John",
#     "last_name": "Dow",
#     "job_title": "Manager"
#     "account_number": "9876976",
#     "active": True
# }

# 4. Далее нужно описать класс Client в котором конструктор принимает параметры с именами из имен колонок и записывает их в свои поля экземпляра. 
# Так же в классе нужно описать метод фабрику который умеет принимать на вход хеш таблицу и закидывает параметры в Client() класс

# Тоесть ты будешь создавать обьекты не через конструктор на прямую а через метод фабрику. 
# Скажем пусть он называется from_csv_row(row). А в реализации метода уже вызывается конструктор для инициализации всех полей

def true?(obj)
  obj.to_s.downcase == "true" ? true : false
end

clients_values = []
client_keys = []
persons = []

File.open("files/sample.csv", "r") do |file|
  file.each_with_index { |val, index| index == 0 ? client_keys.append(val) : clients_values.append(val) }
end

keys = client_keys[0].split(',')
keys = keys.map {|key| key.strip.to_sym}

# hash = Hash.new
# keys.each {|key| hash[key] = nil}

# clients_values.each do |line|
#   client = line.split(',')
#   person = client.each {|field| hash[key] = hash[field]}
#   puts person
# end

for client in clients_values
  values = client.split(',')
  key_index = 0
  value_index = 0
  length = values.length
  person = {}
  while value_index < length
    while key_index < length
      person[keys[key_index]] = values[value_index].strip
      key_index += 1
      value_index += 1
    end
  end
  persons.append(person)
end

puts persons

class Person
  attr_accessor :first_name, :last_name, :job_title, :bank_account_number, :isActive
 
  def initialize (hash)
    keys = hash.keys
    @first_name = hash[keys[0]]
    @last_name = hash[keys[1]]
    @job_title = hash[keys[2]]
    @bank_account_number = hash[keys[3]]
    @isActive = true?(hash[keys[4]])
  end
end

ivan = Person.new(persons[1])

p ivan.first_name
p ivan.last_name
p ivan.job_title
p ivan.bank_account_number
p ivan.isActive