from urllib import response
import csv
import requests
from selenium import webdriver
from bs4 import BeautifulSoup
from re import findall
from classes import *
from concurrent.futures import ThreadPoolExecutor
import os
from datetime import datetime
base_link = 'https://www.lyngsat.com'
paralellization = True


def get_html(link,dynamic=False):
    if dynamic:
        driver = webdriver.Edge()
        driver.get(link)
        driver.implicitly_wait(5)
        result = driver.page_source
        driver.quit()
    else:
        result = requests.get(link).content
    return BeautifulSoup(result, 'html.parser')


def get_satalite_links():
    satalites = dict()
    # link -> [regions]
    
    base_url = 'https://www.lyngsat.com/tracker/'
    all_regions = ['asia', 'europe', 'atlantic', 'america']
    for region in all_regions:
        url = f'{base_url}{region}.html' 
        soup = get_html(url)
        satalite_links = soup.select("a[href*='tracker']")[2:]
        if satalite_links:
            for satalite_link in satalite_links:
                satalite_link = satalite_link['href'] 
                if satalite_link in satalites:
                    satalites[satalite_link].add(region)
                else:
                    satalites[satalite_link] = set()
                    satalites[satalite_link].add(region)

    return satalites

def save_satalites_to_csv(satalites, filename):
    with open(filename, 'w', encoding='utf-8') as f:
        for k,v in satalites.items():
            f.write(f'{k},{";".join(list(v))}\n')


def read_csv(file_name, lines=0):
    data = []
    with open(file_name, 'r', newline='') as csvfile:
        csv_reader = csv.reader(csvfile)
        if lines == 0:
            data = list(csv_reader)
        else:
            for _ in range(lines):
                try:
                    data.append(next(csv_reader))
                except StopIteration:
                    break
    return data