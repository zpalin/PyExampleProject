# pylint: disable=C0111

import unittest
import helloworld
from helloworld.unnecessary_math import multiply


class UMTest(unittest.TestCase):

    def setUp(self):
        pass

    def test_numbers_3_4(self):
        self.assertEqual(multiply(3, 4), 12)

    def test_strings_a_3(self):
        self.assertEqual(multiply('a', 3), 'aaa')

    def test_init(self):
        self.assertEqual(helloworld.main(), "hello world")

    def test_not_swag(self):
        self.assertNotEqual(helloworld.main(), "swag")
