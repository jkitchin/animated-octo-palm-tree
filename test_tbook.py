from testbook import testbook

@testbook('quiz.ipynb', execute=True)
def test_c(tb):
    assert tb.ref("answer_c") == 'apple'


@testbook('quiz.ipynb', execute=True)
def test_p1(tb):
    print(dir(tb))
    f = tb.ref("problem1")
    assert f() == 42
    
