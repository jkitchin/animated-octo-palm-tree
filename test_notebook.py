import quiz

import pytest

# This works because I convert the notebook to  a pyscript.
def test_c():
    assert quiz.answer_c == 'apple'
