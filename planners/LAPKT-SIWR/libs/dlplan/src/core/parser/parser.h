#ifndef DLPLAN_SRC_CORE_PARSER_PARSER_H_
#define DLPLAN_SRC_CORE_PARSER_PARSER_H_

#include "types.h"

#include "../../utils/tokenizer.h"

#include <string>


namespace dlplan::core {
class VocabularyInfo;
namespace parser {

enum class TokenType {
    COMMA,
    OPENING_PARENTHESIS,
    CLOSING_PARENTHESIS,
    NAME
};

using Token = dlplan::utils::Tokenizer<TokenType>::Token;
using Tokens = dlplan::utils::Tokenizer<TokenType>::Tokens;
using Tokenizer = dlplan::utils::Tokenizer<TokenType>;
using TokenRegexes = dlplan::utils::Tokenizer<TokenType>::TokenRegexes;

class Parser {
private:
    /**
     * Parses tokens into an abstract syntax tree.
     */
    Expression_Ptr parse_expressions_tree(Tokens &tokens) const;

public:
    Parser();

    /**
     * Parses a textual description into an abstract syntax tree.
     */
    Expression_Ptr parse(const std::string &description) const;
};

}
}

#endif
