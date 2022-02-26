# This does not require you to convert the notebook to a py file but does require this odd import. see https://github.com/ipython/ipynb
import ipynb.fs.full.quiz as quiz


def test_c():
    assert quiz.answer_c == 'apple'

def test_p1():
    assert quiz.problem1() == 42
