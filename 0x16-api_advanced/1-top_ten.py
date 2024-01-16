#!/usr/bin/python3
"""
A module that prints the title of the top ten most popular posts from
a subreddit
"""

import requests


def top_ten(subreddit):
    """
    Prints the top ten post of a subreddit

    subreddit: subreddit to scrape
    """
    url = f'https://www.reddit.com/r/{subreddit}/top/.json?limit=10'
    response = requests.get(url, headers={'User-Agent': 'My-Agent'},
                            allow_redirects=False)
    if response.status_code >= 300:
        print(None)
        return
    post_list = response.json().get('data').get('children')

    for post in post_list:
        print(post.get('data').get('title'))
