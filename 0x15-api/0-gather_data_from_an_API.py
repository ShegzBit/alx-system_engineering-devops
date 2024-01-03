#!/usr/bin/python3
"""
Python script that, using this REST API, for a given employee
ID, returns information about his/her TODO list progress.
"""

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
    EMPLOYEE_NAME = requests.get('https://jsonplaceholder.typicode.com/users',
                                 params={'id': user_id}).json()[0].get('name')
    NUMBER_OF_DONE_TASKS = len(completed)
    TOTAL_NUMBER_OF_TASKS = len(todo_list)
    print(f'Employee {EMPLOYEE_NAME} is done with\
 tasks({NUMBER_OF_DONE_TASKS}/{TOTAL_NUMBER_OF_TASKS}):')
    for title in completed:
        print(f'\t {title}')
