"""Import appropriate modules to select src filepath since it isnt in the test director"""
import unittest
import sys
import os


current_dir = os.path.dirname(os.path.abspath(__file__))
parent_dir = os.path.abspath(os.path.join(current_dir, ".."))
sys.path.insert(0, parent_dir)

from src import source_code


class TestSourceCode(unittest.TestCase):
    """unit test class which will test source code"""

    def test_add(self):
        """Test the add function"""
        result = source_code.add(1, 1)
        expected_result = 2
        self.assertEqual(result, expected_result)


if __name__ == "__main__":
    unittest.main()
