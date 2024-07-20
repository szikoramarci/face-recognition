import unittest
from src.example import add

class TestExample(unittest.TestCase):
    def test_add(self):
        self.assertEqual(add(1, 2), 3)
        self.assertEqual(add(10, 10), 20)

if __name__ == "__main__":
    unittest.main()
