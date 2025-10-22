

tokens = {
    "keyword":r"(?:\'[^\']*\'|\"[^\"]*\")(*SKIP)(*F)|\b(class|constructor|function|method|field|static|var|int|char|boolean|void|true|false|null|this|let|do|if|else|while|return)\b",
    "symbol":r"(?:\'[^\']*\'|\"[^\"]*\")(*SKIP)(*F)|(\{|\}|\(|\)|\[|\]|\.|\,|\;|\+|\-|\*|\/|\&|\||\<|\>|\=|\˜)",
    "integerConstant":r"(?<![\'\"])\b[\d]+\b(?![\'\"])",
    "stringConstant":r"[\"\'].*?[\"\']",
    "identifier":r"(?:\'[^\']*\'|\"[^\"]*\"|\b(?:class|constructor|function|method|field|static|var|int|char|boolean|void|true|false|null|this|let|do|if|else|while|return)\b)(*SKIP)(*F)|\b[a-zA-Z_]+[a-zA-Z0-9_]*\b",
}
comments = r"\/\/.*\n|\/\\*[\s\S]*?\*\/|\/\*\*[\s\S]*?\*\/"

