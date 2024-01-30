def leap_year(year):
    isCent = year % 100 == 0

    if isCent:
        return year % 400 == 0

    return year % 4 == 0
