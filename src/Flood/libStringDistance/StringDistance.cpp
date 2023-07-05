#include <string>
#include "include/distance.hpp"
#include <iostream>
#include <array>
using namespace std;

int Distance::Levenshtein(const string first, const string second) {

  // Create the matrix needed for the algorithm
  int distances[first.size() + 1][second.size() + 1];
  //
  // for (int i = 0; i <= first.size(); ++i) {
  //   for (int j = 0; j <= second.size(); ++j) {
  //     distances[i][j] = 0;
  //   }
  // }
  //
  for (int i = 0; i <= first.size(); ++i) {
    distances[i][0] = i;
  }

  for (int j = 0; j <= second.size(); ++j) {
    distances[0][j] = j;
  }

  // Compute the cost of each intersection in the matrix
  for (int j = 1; j <= second.size(); ++j) {
    for (int i = 1; i <= first.size(); ++i) {

      int substitution_cost = (first.at(i-1) == second.at(j-1)) ? 0 : 1;

      int deletion      = distances[i - 1][j] + 1;
      int insertion     = distances[i][j - 1] + 1;
      int substitution  = distances[i - 1][j - 1] + substitution_cost;

      distances[i][j] = min(insertion, min(deletion, substitution));
    }
  }

  return distances[first.size()][second.size()];
}
