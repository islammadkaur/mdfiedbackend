require 'date'
require 'time'

datetime = DateTime.new(2021, 3, 11, 12)

# print("#{datetime}      ")
# print("#{DateTime.now.hour}      ")

# neextweekdate = datetime + 7
# print("#{neextweekdate}       hello      ")

# if neextweekdate.thursday?
#     print(true)
# else
#     print(false)
# end



def monday
    currentDate = DateTime.now
    if currentDate.monday? 
        print("Monday")
    elsif currentDate.tuesday? 
        changeDate = currentDate + 6
        print(changeDate.monday?)
    elsif currentDate.wednesday? 
        changeDate = currentDate + 5
        print(changeDate.monday?)
    elsif currentDate.thursday? 
        changeDate = currentDate + 4
        print(changeDate.monday?)
    elsif currentDate.friday? 
        changeDate = currentDate + 3
        print(changeDate.monday?)
    elsif currentDate.saturday? 
        changeDate = currentDate + 2
        print(changeDate.monday?)
    else currentDate.sunday? 
        changeDate = currentDate + 1
        print(changeDate.monday?)
    end
end

def tuesday
    currentDate = DateTime.now
    if currentDate.monday?
        changeDate = currentDate + 1 
        print(changeDate.tuesday?)

    elsif currentDate.tuesday? 
        print(currentDate)
    elsif currentDate.wednesday? 
        changeDate = currentDate + 6
        print(changeDate.tuesday?)

    elsif currentDate.thursday? 
        changeDate = currentDate + 5
        print(changeDate.tuesday?)

    elsif currentDate.friday? 
        changeDate = currentDate + 4
        print(changeDate.tuesday?)

    elsif currentDate.saturday? 
        changeDate = currentDate + 3
        print(changeDate.tuesday?)

    else currentDate.sunday? 
        changeDate = currentDate + 2
        print(changeDate.tuesday?)

    end
end

def wednesday
    currentDate = DateTime.now
    if currentDate.monday?
        changeDate = currentDate + 2 
        print(changeDate.wednesday?)

    elsif currentDate.tuesday? 
        changeDate = currentDate + 1 
        print(changeDate.wednesday?)

    elsif currentDate.wednesday? 
        print("Wednesday")

    elsif currentDate.thursday? 
        changeDate = currentDate + 6
        print(changeDate.wednesday?)

    elsif currentDate.friday? 
        changeDate = currentDate + 5
        print(changeDate.wednesday?)

    elsif currentDate.saturday? 
        changeDate = currentDate + 4
        print(changeDate.wednesday?)

    else currentDate.sunday? 
        changeDate = currentDate + 3
        print(changeDate.wednesday?)
        
    end
end

def thursday
    currentDate = DateTime.now
    if currentDate.monday?
        changeDate = currentDate + 3 
        print(changeDate.thursday?)

    elsif currentDate.tuesday? 
        changeDate = currentDate + 2 
        print(changeDate.thursday?)

    elsif currentDate.wednesday? 
        changeDate = currentDate + 1 
        print(changeDate.thursday?)

    elsif currentDate.thursday? 
        print("Thursday")

    elsif currentDate.friday? 
        changeDate = currentDate + 6
        print(changeDate.thursday?)

    elsif currentDate.saturday? 
        changeDate = currentDate + 5
        print(changeDate.thursday?)

    else currentDate.sunday? 
        changeDate = currentDate + 4
        print(changeDate.thursday?)
        
    end
end

def friday
    currentDate = DateTime.now
    if currentDate.monday?
        changeDate = currentDate + 4 
        print(changeDate.friday?)

    elsif currentDate.tuesday? 
        changeDate = currentDate + 3
        print(changeDate.friday?)

    elsif currentDate.wednesday? 
        changeDate = currentDate + 2
        print(changeDate.friday?)

    elsif currentDate.thursday? 
        changeDate = currentDate + 1 
        print(changeDate.friday?)

    elsif currentDate.friday? 
        changeDate = currentDate + 0
        print(changeDate.friday?)

    elsif currentDate.saturday? 
        changeDate = currentDate + 6
        print(changeDate.friday?)

    else currentDate.sunday? 
        changeDate = currentDate + 5
        print(changeDate.friday?)     
    end
end

def saturday
    currentDate = DateTime.now
    if currentDate.monday?
        changeDate = currentDate + 5
        print(changeDate.saturday?)

    elsif currentDate.tuesday? 
        changeDate = currentDate + 4
        print(changeDate.saturday?)

    elsif currentDate.wednesday? 
        changeDate = currentDate + 3
        print(changeDate.saturday?)

    elsif currentDate.thursday? 
        changeDate = currentDate + 2 
        print(changeDate.saturday?)

    elsif currentDate.friday? 
        changeDate = currentDate + 1
        print(changeDate.saturday?)

    elsif currentDate.saturday? 
        changeDate = currentDate + 0
        print(changeDate.saturday?)

    else currentDate.sunday? 
        changeDate = currentDate + 6
        print(changeDate.saturday?)
        
    end
end

def sunday
    currentDate = DateTime.now
    if currentDate.monday?
        changeDate = currentDate + 6
        print(changeDate.sunday?)

    elsif currentDate.tuesday? 
        changeDate = currentDate + 5
        print(changeDate.sunday?)

    elsif currentDate.wednesday? 
        changeDate = currentDate + 4
        print(changeDate.sunday?)

    elsif currentDate.thursday? 
        changeDate = currentDate + 3 
        print(changeDate.sunday?)

    elsif currentDate.friday? 
        changeDate = currentDate + 2
        print(changeDate.sunday?)

    elsif currentDate.saturday? 
        changeDate = currentDate + 1
        print(changeDate.sunday?)

    else currentDate.sunday? 
        changeDate = currentDate + 0
        print(changeDate.sunday?)
       
    end
end

def appointment 
    if Appointment.date.hour >= Monday.start && Appointment.date.hour <= Monday.end - 1
        Appointmet.save
    else
        print('error')
    end
end

# appointment

# datedate = DateTime.new(12, 12, 12, 12)
print(Date.today)
print(Time.new(2021, 03, 17, 10, 30))
print(if Date.today === Time.new(2021, 03, 17, 10, 30)
        "hello"
else "bye"
end)
# print(datedate.hour)

