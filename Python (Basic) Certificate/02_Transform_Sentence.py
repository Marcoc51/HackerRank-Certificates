def transformSentence(sentence):
    words = sentence.split()
    new_words = []
    for word in words:
        if len(word) >1:
            text = word[0]
            for i in range(1, len(word)):
                x = word[i]
                y = word[i - 1]
                if y.lower() < x.lower():
                    text += x.upper()
                elif x.lower() < y.lower():
                    text += x.lower()
                else:
                    text += x
            new_words.append(text)
        else:
            new_words.append(word)
    res = ' '.join(new_words)
    return(res)
