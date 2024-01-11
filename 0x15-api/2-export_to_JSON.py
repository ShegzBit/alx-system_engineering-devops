#!/usr/bin/python3
"""
Python script that, using this REST API, for a given employee
ID, returns information about his/her TODO list progress.
"""

import json
import requests
import sys


if __name__ == "__main__":
    user_id = sys.argv[1]
    data = {'userId': user_id}
    todos = requests.get('https://jsonplaceholder.typicode.com/todos',
                         params=data)
    todo_list = todos.json()
    completed = ([x.get('title') for x in todo_list])

    EMPLOYEE_NAME = (requests.get('https://jsonplaceholder.typicode.com/users',
                                  params={'id': user_id})
                     .json()[0].get('username'))

    with open(f'{user_id}.json', 'w') as f:
        formatted = []
        for user in todo_list:
            new_task = ({'task': user.get('title'),
                        'completed': user.get('completed'),
                         'userame': EMPLOYEE_NAME})
            formatted.append(new_task)
        user_json = {user_id: formatted}
        json.dump(user_json, f)
