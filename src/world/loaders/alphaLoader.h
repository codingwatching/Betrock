#pragma once
#include "worldLoader.h"

class AlphaLoader : public WorldLoader {
    private:
        std::string encodeBase36(int num) {
            if (num == 0) return "0";
            const char* letters = "0123456789abcdefghijklmnopqrstuvwxyz";
            bool negative = (num < 0);
            std::string result = "";
            if (negative) {
                num = -num;
                result.append("-");
            }
            std::string res = "";
            while (num > 0) {
                result.insert((negative ? 1 : 0), &letters[num % 36]);
                num /= 36;
            }
            return result;
        }
        std::string decodeBase36(int num) {
            if (num == 0) return "0";
            std::string letters = "0123456789abcdefghijklmnopqrstuvwxyz";
            bool negative = (num < 0);
            std::string result = "";
            if (negative) {
                num = -num;

            }
            std::string res = "";
            while (num) {

            }
        }
};