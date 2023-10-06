/*You can make an app asking 20 or 30 random questions and giving the final score as the final result.
Final result consist of Total number of correct answers, Percentage of correct answers and Congratulation message if percentage is greater then 50.

Application should use classes & function(named and positional arguments) concept.
Application should ask user to quit or restart Quiz at the end.
Application should be submitted through Github Repo link only

Hint:
You can have 40 - 50 question hardcoded and keep them in Map by using key value pairs.
Show random question by using below code for each question.
You can create a list of 20 random numbers named as randList,
By using that randList get random questions from above map.
import 'dart:math';
//To generate random number between 1 to 50
int max = 50;
int randomNumber = Random().nextInt(max) + 1;
*/
import 'dart:io';
import 'dart:math';

class QuestionType {
  String question;
  String answer;

  QuestionType(this.question, this.answer);
}

class Quiz {
//
  //
  Map<int, QuestionType> quizQuestions = {
    1: QuestionType(
        'what country has the highest life expectancy? "Hongkong or Karachi"',
        'HongKong'),
    2: QuestionType(
        'Where would you be if you were standing on the Spanish Steps? "London or Rome"',
        'Rome'),
    3: QuestionType(
        "Which language has the more native speakers: English or Spanish?",
        "Spanish"),
    4: QuestionType(
        "What is the most common surname in the United States? micheal or smith",
        "Smith"),
    5: QuestionType(
        "What disease commonly spread on pirate ships? Titanic or scurvy",
        " Scurvy"),
    6: QuestionType(
        "Who was the Ancient Greek God of the Sun? Apollo or Jupiter",
        "Apollo"),
    7: QuestionType(
        "What was the name of the crime boss who was head of the feared Chicago Outfit? El chi or Al Capone",
        "Al Capone"),
    8: QuestionType(
        "The Parthenon Marbles are controversially located in what museum? The American museum or The British Museum",
        "The British Museum"),
    9: QuestionType(
        "What year was the United Nations established? 1945 or 1955", "1945"),
    10: QuestionType(
        "Who has won the most total Academy Awards? Walt Disney or Disney",
        "Walt Disney"),
    11: QuestionType(
        "What artist has the most streams on Spotify? Drake or dreka", "Drake"),
    12: QuestionType("How many minutes are in a full week?", "10,080"),
    13: QuestionType(
        "What car manufacturer had the highest revenue in 2020?", "Volkswagen"),
    14: QuestionType("How many elements are in the periodic table?", "118"),
    15: QuestionType("What company was originally called Cadabra?", "Amazon"),
    16: QuestionType("How many faces does a Dodecahedron have?", "12"),
    17: QuestionType(
        "Queen guitarist Brian May is also an expert in what scientific field?",
        "Astrophysics"),
    18: QuestionType("Aureolin is a shade of what color?", "Yellow"),
    19: QuestionType(
        "How many ghosts chase Pac-Man at the start of each game?", "4"),
    20: QuestionType(
        "What Renaissance artist is buried in Rome's Pantheon? ", "Raphael"),
    21: QuestionType("What shoe brand makes the Mexico 66?", "Onitsuka Tiger"),
    22: QuestionType("What game studio makes the Red Dead Redemption series?",
        "Rockstar Games"),
    23: QuestionType("Who was the last Tsar of Russia?", "Nicholas II"),
    24: QuestionType(
        "What character have both Robert Downey Jr. and Benedict Cumberbatch played?",
        "Sherlock Holmes"),
    25: QuestionType(
        "What country drinks the most coffee per capita?", "Finland"),
    26: QuestionType("Which planet in the Milky Way is the hottest?", "Venus"),
    27: QuestionType("What is the 4th letter of the Greek alphabet?", "Delta"),
    28: QuestionType(
        "What sports car company manufactures the 911?", "Porsche"),
    29: QuestionType("What city is known as The Eternal City?", "Rome"),
    30: QuestionType(
        "Roald Amundsen was the first man to reach the South Pole, but where was he from?",
        "Norway"),
    31: QuestionType(
        "What is the highest-rated film on IMDb as of January 1st, 2022?",
        "The Shawshank Redemption"),
    32: QuestionType("Who discovered that the earth revolves around the sun?",
        "Nicolaus Copernicus"),
    33: QuestionType(
        "What company was initially known as Blue Ribbon Sports?", "Nike"),
    34: QuestionType(
        "What art form is described as decorative handwriting or handwritten lettering?",
        "Calligraphy"),
    35: QuestionType("Which planet has the most moons?", "Saturn"),
    36: QuestionType(
        "What country has won the most Soccer World Cups?", "Brazil"),
    37: QuestionType(
        "Complete the following lyrics - I should have changed that stupid lock.....?",
        "I should have made you leave your key"),
    38: QuestionType("Kratos is the main character of what video game series?",
        "God of War"),
    39: QuestionType(
        "In what country would you find Mount Kilimanjaro?", "Tanzania"),
    40: QuestionType("What is a group of pandas known as?", "An embarrassment"),
    41: QuestionType(
        "What European country experienced the highest rate of population decline from 2015 - 2020?",
        "Lithuania"),
    42: QuestionType("How many bones do we have in an ear?", "3"),
    43: QuestionType(
        "Who famously crossed the Alps with elephants on the way to war with the Romans?",
        "Hannibal"),
    44: QuestionType(
        "True or False: Halloween originated as an ancient Irish festival?",
        "True"),
    45: QuestionType("What Netflix show had the most streaming views in 2021?",
        "Squid Game"),
    46: QuestionType(
        "Which grammy-nominated New York rapper died in April of 2021?", "DMX"),
    47: QuestionType(
        "What software company is headquartered in Redmond, Washington?",
        "Microsoft"),
    48: QuestionType("What is the largest Spanish-speaking city in the world?",
        "Mexico City"),
    49: QuestionType(
        "What is the world's fastest bird?", "The Peregrine Falcon"),
    50: QuestionType(
        "In what country is the Chernobyl nuclear plant located?", "Ukraine"),
  };

  //
  //

  void runQuiz() {
    var randList = getRandomListOfNumbers();
    var restart;
    var question;
    int correctAnswers = 0;
    var userAnswer;
    //
    for (var i in randList) {
      question = quizQuestions[i];
      print(question.question);

      userAnswer = stdin.readLineSync();

      if (userAnswer == question.answer.toString().toLowerCase()) {
        print("Correct answer \n");
        correctAnswers++;
      } else {
        print("wrong answer \n");
      }
    }

    var percentage = (correctAnswers / randList.length) * 100;
    print('Total correct answers: $correctAnswers');
    print('Percentage of correct answers: $percentage%');

    print('Do you want to restart the quiz? (yes/no)');
    restart = stdin.readLineSync();

    if (restart.toLowerCase() == 'yes') {
      runQuiz();
    }
  }

  //
  //

  List<int> getRandomListOfNumbers() {
    var randList = <int>[];
    int number;
    while (randList.length <= quizQuestions.length) {
      number = Random().nextInt(quizQuestions.length) + 1;

      randList.add(number);
    }
    return randList;
  }
//
  //
}

//
//
//
void main() {
  var quiz = new Quiz();

  print("QUIZ");

  quiz.runQuiz();
}
