import pandas as pd

def exchange_seats(seat: pd.DataFrame) -> pd.DataFrame:
    student_order = list(seat.student)
    left = 0
    right = 1

    while left < len(student_order) and right < len(student_order):
        temp = student_order[left]
        student_order[left] = student_order[right]
        student_order[right] = temp

        left += 2
        right += 2

    seat['student'] = student_order

    return seat




