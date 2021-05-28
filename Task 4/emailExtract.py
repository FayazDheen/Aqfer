import re
inputfile = open("input.txt","r")
allText = inputfile.readlines()
def listToString(a):
    allWords = ""
    for text in a:
        allWords += text
    return allWords
wholeText = listToString(allText)
emailsList = re.findall(r"[a-z0-9\.\-+_]+@[a-z0-9\.\-+_]+\.[a-z]+", wholeText)
def mailsToString(a):
    allMails = ""
    for mails in a:
        allMails += mails+"\n"
    return allMails
print(mailsToString(emailsList))