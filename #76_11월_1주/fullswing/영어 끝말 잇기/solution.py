def validate(last_word, cur_word, word_history):
    """
    1) 현재 단어는 이전 단어의 마지막 글자로 시작해야한다.
    2) 현재 단어는 그동안 말했던 단어들 목록에 있으면 안된다.
    """
    if last_word[-1] != cur_word[0]:
        return False

    if cur_word in word_history:
        return False

    return True


def solution(n, words):
    last_word = ""  # 마지막 단어
    word_history = []  # 끝말잇기 동안 말했던 모든 단어들

    for i, word in enumerate(words):
        # 끝말잇기 시작이라면 현재 단어를 저장 후 다음 단어로 이동
        if not word_history:
            last_word = word
            word_history.append(word)
            continue

        # 두번째 단어부터는 적절한 끝말잇기인지 validation을 한다.
        is_valid = validate(last_word, word, word_history)

        # 만약 적절한 끝말잇기라면 현재 단어를 저장하고 다음 단어로 이동
        if is_valid:
            last_word = word
            word_history.append(word)
            continue

        # 만약 적절하지 않는 끝말잇기라면, 현재 번호와 차례를 리턴
        return [(i % n) + 1, (i // n) + 1]

    # 모두 적절한 끝말잇기였다면 [0, 0]을 리턴
    return [0, 0]
