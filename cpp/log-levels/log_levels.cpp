#include <string>

namespace log_line {
    std::string message(std::string log_str) {
      int colon_index = log_str.find(":");

      return log_str.substr(colon_index + 2);
    }

    std::string log_level(std::string log_str) {
      int open_bracket = log_str.find("[");
      int close_bracket = log_str.find("]");

      int num_of_letter_log_level = (close_bracket - 1) - open_bracket;
      return log_str.substr(open_bracket + 1, num_of_letter_log_level);
    }

    std::string reformat(std::string log_str) {
      std::string message = log_line::message(log_str);
      std::string level = log_line::log_level(log_str);

      return message + " " + "(" + level + ")";
    }
} // namespace log_line
