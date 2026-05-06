#pragma once
#include "worldLoader.h"

class AlphaLoader : public WorldLoader {
    public:
        AlphaLoader(std::string pPath) : WorldLoader(pPath) {}
        Chunk* loadChunk(int x, int z, bool nether = false) override;
    private:
        const char* letters = "0123456789abcdefghijklmnopqrstuvwxyz";
        std::string encodeBase36(int num) {
            if (num == 0) return "0";
            bool negative = (num < 0);
            std::string result = "";
            if (negative) {
                num = -num;
                result.append("-");
            }
            std::string res = "";
            while (num > 0) {
                result.insert((negative ? 1 : 0), 1, letters[num % 36]);
                num /= 36;
            }
            return result;
        }

        int decodeBase36(const std::string& str) {
            if (str.empty()) return 0;

            int result = 0;
            int start = 0;
            bool negative = false;

            if (str[0] == '-') {
                negative = true;
                start = 1;
            }

            for (int i = start; i < str.size(); ++i) {
                char c = str[i];
                int value;

                if (c >= '0' && c <= '9')
                    value = c - '0';
                else if (c >= 'A' && c <= 'Z')
                    value = c - 'A' + 10;
                else if (c >= 'a' && c <= 'z')
                    value = c - 'a' + 10;
                else
                    throw std::invalid_argument("Invalid base36 character");

                result = result * 36 + value;
            }

            return negative ? -result : result;
        }
};