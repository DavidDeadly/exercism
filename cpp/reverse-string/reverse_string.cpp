#include "reverse_string.h"

namespace reverse_string {
    std::string reverse_string(std::string str) {
      std::string reversed_str = "";
      
      for (int i = 0; i < (int) str.length(); i++) {
        reversed_str = str.at(i) + reversed_str;
      }
      
      return reversed_str;
    }
}  // namespace reverse_string
