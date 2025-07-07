# tests/test_wordcalc.py

from wordcalc import count_words, count_chars, count_lines

def test_count_words():
    assert count_words("Hello world") == 2

def test_count_chars():
    assert count_chars("abc") == 3

def test_count_lines():
    text = "Line one\nLine two\nLine three"
    assert count_lines(text) == 3
