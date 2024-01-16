#!/usr/bin/python3
"""
A python program that scrapes reddit for the number of subscriber
of a subreddit
"""
import requests


def number_of_subscribers(subreddit):
    """
    Returns the number of subscriber a subreddit has

    subreddit: subreddit to scrape for
    """
    try:
        body = requests.get(f'https://www.reddit.com/r/{subreddit}/about.json')
        return body.json()['data']['subscribers']
    except KeyError:
        return 0
