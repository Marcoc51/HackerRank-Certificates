def reverse_words_order_and_swap_cases(sentence):
    words = sentence.split()
    reverse_words = reversed(words)
    new_s = ' '.join(reverse_words)
    res = ''
    for i in new_s:
        if i.isupper():
            res += i.lower()
        else:
            res += i.upper()
    return res
