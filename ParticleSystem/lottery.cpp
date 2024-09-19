#include <iostream>
#include <random>
#include <unordered_set>
#include <algorithm>

int main()
{
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis_red(1, 33), dis_blue(1, 16);
    std::uniform_int_distribution<> dis_red_b(1, 35), dis_blue_b(1, 12);
    // std::uniform_int_distribution<> dis_blue(1, 16);

    std::unordered_set<int> generated_numbers;
    std::unordered_set<int> generated_numbers_b;
    std::unordered_set<int> generated_numbers_b2;
    int lottery[7];
    int lottery_b[7];
    for (int i = 0; i < 6; i++)
    {
        int number = dis_red(gen);
        while (generated_numbers.count(number) > 0)
        {
            number = dis_red(gen);
        }
        generated_numbers.insert(number);
        lottery[i] = number;
    }
    int blue_number = dis_blue(gen);
    lottery[6] = blue_number;

    for (int i = 0; i < 5; i++)
    {
        int number_b = dis_red_b(gen);
        while (generated_numbers_b.count(number_b) > 0)
        {
            number_b = dis_red_b(gen);
        }
        generated_numbers_b.insert(number_b);
        lottery_b[i] = number_b;
    }
    for (int i = 0; i < 2; i++)
    {
        int blue_number_b = dis_blue_b(gen);
        while (generated_numbers_b2.count(blue_number_b) > 0)
        {
            blue_number_b = dis_blue_b(gen);
        }
        generated_numbers_b2.insert(blue_number_b);
        lottery_b[i + 5] = blue_number_b;
    }

    // 排序
    std::sort(lottery, lottery + 6);
    std::sort(lottery_b, lottery_b + 5);
    std::sort(lottery_b + 5, lottery_b + 7);

    std::cout << "本期双色球彩票号码为：";
    for (int i = 0; i < 7; i++)
    {
        if (i < 6)
        {
            std::cout << "\033[1;31;47m" << lottery[i] << "  \033[0m";
        }
        else
        {
            std::cout << "\033[1;34;47m " << lottery[i] << "\033[0m";
        }
    }
    std::cout << std::endl;

    std::cout << "本期大乐透彩票号码为：";
    for (int i = 0; i < 7; i++)
    {
        if (i < 5)
        {
            std::cout << "\033[1;31;47m" << lottery_b[i] << "  \033[0m";
        }
        else
        {
            std::cout << "\033[1;34;47m " << lottery_b[i] << "\033[0m";
        }
    }
    std::cout << std::endl;

    return 0;
}
