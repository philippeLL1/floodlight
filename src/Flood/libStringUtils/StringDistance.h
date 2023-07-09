#ifndef STRING_UTILS
#define STRING_UTILS 
#endif

#include <string>
#include <regex>


namespace StringUtils {
    int LevenshteinDistance(std::string first, std::string second);

    std::string TrimPath(std::string path);
}
