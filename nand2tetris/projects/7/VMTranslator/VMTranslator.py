import sys

from Parser import Parser
from CodeWriter import CodeWriter


def main():
    parser = Parser(sys.argv)
    while parser.hasMoreLines():
        parser.advance()
        print(parser.current_command)

if __name__ == "__main__":
    main()