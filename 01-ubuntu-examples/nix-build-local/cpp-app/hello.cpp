#include <iostream>
#include <cstdlib>
#include <array>
#include <string>

std::string getCowsay(const std::string& message) {
    std::string command = "cowsay \"" + message + "\"";
    std::array<char, 128> buffer;
    std::string result;
    
    FILE* pipe = popen(command.c_str(), "r");
    if (!pipe) {
        return "Error: Could not execute cowsay";
    }
    
    while (fgets(buffer.data(), buffer.size(), pipe) != nullptr) {
        result += buffer.data();
    }
    
    pclose(pipe);
    return result;
}

int main() {
    std::cout << "=== C++ + Nix + Cowsay Demo ===" << std::endl;
    std::cout << std::endl;
    
    std::string message = "Hello from C++ built with Nix!";
    std::cout << getCowsay(message) << std::endl;
    
    std::cout << "Nix makes C++ builds reproducible!" << std::endl;
    
    return 0;
}