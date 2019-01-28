from bs4 import BeautifulSoup


with open('movie-dump.xml','rb') as tv_file:
    soup = BeautifulSoup(tv_file, "xml")

for tag in soup.tv:
    if tag.name == "channel":

