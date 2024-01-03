#!/usr/bin/python3
"""
Python script that, using this REST API, for a given employee
ID, returns information about his/her TODO list progress.
"""

import csv
import requests
import sys


if __name__ == "__main__":
    user_id = sys.argv[1]
    data = {'userId': user_id}
    todos = requests.get('https://jsonplaceholder.typicode.com/todos',
                         params=data)
    todo_list = todos.json()
    completed = ([x.get('title') for x in todo_list
                 if x.get('completed') is True])

    EMPLOYEE_NAME = (requests.get('https://jsonplaceholder.typicode.com/users',
                                  params={'id': user_id})
                     .json()[0].get('username'))
    NUMBER_OF_DONE_TASKS = len(completed)
    TOTAL_NUMBER_OF_TASKS = len(todo_list)

    with open(f'{user_id}.csv', 'w') as f:
        writer = csv.writer(f, quoting=csv.QUOTE_ALL)
        for user in todo_list:
            new_task = ([str(user_id), EMPLOYEE_NAME,
                        user.get('completed'), user.get('title')])
            writer.writerow(new_task)
