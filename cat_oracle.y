%{
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include<unistd.h>


int yylex();
int yyparse();
void yyerror(const char* msg);
%}

%token QUESTION WHAT WHO WHEN WHERE HOW EOL

%%

start: { printf("\033[2J\033[H");                                   // clear screen
         printf("\033[1;36m");                                      // change terminal color to cyan

        printf("\n Welcome to the \n");
        printf("    __   ____  ______       ___   ____    ____     __  _        ___ \n");
        printf("   /  ] /    ||      |     /   \\ |    \\  /    |   /  ]| |      /  _]\n");
        printf("  /  / |  o  ||      |    |     ||  D  )|  o  |  /  / | |     /  [_ \n");
        printf(" /  /  |     ||_|  |_|    |  O  ||    / |     | /  /  | |___ |    _]\n");
        printf("/   \\_ |  _  |  |  |      |     ||    \\ |  _  |/   \\_ |     ||   [_ \n");
        printf("\\     ||  |  |  |  |      |     ||  .  \\|  |  |\\     ||     ||     |\n");
        printf(" \\____||__|__|  |__|       \\___/ |__|\\_||__|__| \\____||_____||_____|\n\n");




        printf("                      |\\      _,,,---,,_\n");
        printf("                ZZZzz /,`.-'`'    -.  ;-;;,_\n");
        printf("                     |,4-  ) )-,_. ,\\ (  `'-'\n");
        printf("                    '---''(_/--'  `-'\\_)  \n\n");
        printf("Ask me about your Future!\n\n");}
        input;

input:
    | input question
    | input question_what
    | input question_who
    | input question_when
    | input question_where
    | input question_how
    ;

question: QUESTION EOL {
    const char* sentences[] = {                                     // array of sentences to choose from
        "Meow!\n",
        "Purr!\n",
        "Meow-meow!\n",
        "Meow-purr!\n",
        "Purr-meow!\n"
    };
    int num_sentences = sizeof(sentences) / sizeof(sentences[0]); 
    srand(time(NULL));
    int random_index = rand() % num_sentences;                      // randomize array-index

    //Animation
    const char* spinner[] = {

      "ᓚᘏᗢ_", "ᓭᘏᗢ__", "ᓚᘏᗢ_", ". . ᓚᗢ .", ". . . ᗢ ᘐ", "_ᗢᘐᓗ", "__ᗢᘐᓯ", "_ᗢᘐᓗ", "ᗢᓗ . . .", "ᘏᗢ_ . ."
    };

    const int numFrames = 10;

    for (int frame = 0; frame < numFrames; ++frame) {
        printf("\033[2J\033[H");

        printf("%s\n", spinner[frame % (sizeof(spinner) / sizeof(spinner[0]))]);

        usleep(100 * 2000);
    }

    printf("%s\n", sentences[random_index]);
}
;

question_what: WHAT QUESTION EOL {
        const char* sentences[] = {
            "What's it to you? Find it yourself.\n",
            "The grandest of naps, my dear human, for we all find rest in the end.\n",
            "A treasure trove of memories, and I shall claim a spot in them, no doubt.\n",
            "The answer lies in the dance of fate, but I won't reveal all the steps just yet.\n",
            "To conquer obstacles, remember, even the grandest leaps start with a small purr.\n",
            "Flex your whiskers and navigate with the grace of a stealthy cat; obstacles won't know what hit 'em.\n",
            "Pawsitivity, dear human, pawsitivity! Face it head-on with a twinkle in your eye.\n"
            };
        int num_sentences = sizeof(sentences) / sizeof(sentences[0]);
    srand(time(NULL));
    int random_index = rand() % num_sentences;

    const char* spinner[] = {
    "ᓚᘏᗢ_  …ᓄ",
    "ᓚᘏᗢ_  ……ᓄ" ,
    "ᓚᘏᗢ__ ………ᓄ" ,
    "ᓚᘏᗢ__ ……………ᓄ" ,
    "ᓚᘏᗢ_  …………ᓄ" ,
    "ᓚᘏᗢ_  ………ᓄ" ,
    "ᓚᘏᗢ_  ……ᓄ" ,
    "ᓚᘏᗢ_  …ᓄ" ,
    "ᓚᘏᗢ_  ᓄ"
    };


    const int numFrames = 9;

    for (int frame = 0; frame < numFrames; ++frame) {
        printf("\033[2J\033[H");

        printf("%s\n", spinner[frame % (sizeof(spinner) / sizeof(spinner[0]))]);

        usleep(100 * 2000);
    }

    printf("%s\n", sentences[random_index]);
}
;

question_who: WHO QUESTION EOL {
        const char* sentences[] = {
            "Ah, a new companion approaches, bearing treats and belly rubs, I hope. What is that you want again?\n",
            "A peculiar character with a penchant for amusing me, I daresay.\n",
            "Ooh! A brave soul who thinks they can resist my charm, but we shall see.\n"
            "Consult the ancient tomes of cat wisdom, hidden in the dusty corners of your bookshelves.\n",
            "Listen to those with the wisdom of a whisker twitch, they might surprise you.\n",
            "Advice from a cat? Preposterous! But perhaps, you should heed it anyway.\n"
            };
       int num_sentences = sizeof(sentences) / sizeof(sentences[0]);
    srand(time(NULL));
    int random_index = rand() % num_sentences;

    const char* spinner[] = {
    "ᓚᘏᗢ_  …ᓄ",
    "ᓚᘏᗢ_  ……ᓄ" ,
    "ᓚᘏᗢ__ ………ᓄ" ,
    "ᓚᘏᗢ__ ……………ᓄ" ,
    "ᓚᘏᗢ_  …………ᓄ" ,
    "ᓚᘏᗢ_  ………ᓄ" ,
    "ᓚᘏᗢ_  ……ᓄ" ,
    "ᓚᘏᗢ_  …ᓄ" ,
    "ᓚᘏᗢ_  ᓄ"
    };


    const int numFrames = 9;

    for (int frame = 0; frame < numFrames; ++frame) {
        printf("\033[2J\033[H");

        printf("%s\n", spinner[frame % (sizeof(spinner) / sizeof(spinner[0]))]);

        usleep(100 * 2000);
    }

    printf("%s\n", sentences[random_index]);
}
;

question_when: WHEN QUESTION EOL {
        const char* sentences[] = {
            "When you stop chasing your tail and embrace the purrfection of the present.\n",
            "Happiness is fleeting like a moth's flight; catch it while you can, old sport.\n",
            "Ah, the future is like a tangled ball of yarn, mysterious and full of surprises. Embrace it, and may your curiosity lead the way.\n"
            };
     int num_sentences = sizeof(sentences) / sizeof(sentences[0]);
    srand(time(NULL));
    int random_index = rand() % num_sentences;

    const char* spinner[] = {
    "ᓚᘏᗢ_  …ᓄ",
    "ᓚᘏᗢ_  ……ᓄ" ,
    "ᓚᘏᗢ__ ………ᓄ" ,
    "ᓚᘏᗢ__ ……………ᓄ" ,
    "ᓚᘏᗢ_  …………ᓄ" ,
    "ᓚᘏᗢ_  ………ᓄ" ,
    "ᓚᘏᗢ_  ……ᓄ" ,
    "ᓚᘏᗢ_  …ᓄ" ,
    "ᓚᘏᗢ_  ᓄ"
    };



    const int numFrames = 9;

    for (int frame = 0; frame < numFrames; ++frame) {
        printf("\033[2J\033[H");

        printf("%s\n", spinner[frame % (sizeof(spinner) / sizeof(spinner[0]))]);

        usleep(100 * 2000);
    }

    printf("%s\n", sentences[random_index]);
}
;



question_where: WHERE QUESTION EOL {
        const char* sentences[] = {
                "Seek the comfiest cushions and softest blankets, there lies tranquility.\n",
                " Follow the scent of catnip and let it guide you to where your heart feels most alive.\n",
                "A sunbeam-soaked windowsill does wonders, I assure you.\n",
                "Why choose ways? The secret to inner peace is hidden within a good old chin scratch, meowvellous.\n",
                "Choose the path that leads you to the heart of every cat lover, obviously!\n",
                "Ah, the forked roads of life! Choose the one with the most sunbeams.\n",
                "I hid it somewhere you'll never find.\n",
            };
     int num_sentences = sizeof(sentences) / sizeof(sentences[0]);
    srand(time(NULL));
    int random_index = rand() % num_sentences;

    const char* spinner[] = {
    "ᓚᘏᗢ_  …ᓄ",
    "ᓚᘏᗢ_  ……ᓄ" ,
    "ᓚᘏᗢ__ ………ᓄ" ,
    "ᓚᘏᗢ__ ……………ᓄ" ,
    "ᓚᘏᗢ_  …………ᓄ" ,
    "ᓚᘏᗢ_  ………ᓄ" ,
    "ᓚᘏᗢ_  ……ᓄ" ,
    "ᓚᘏᗢ_  …ᓄ" ,
    "ᓚᘏᗢ_  ᓄ"
    };

    const int numFrames = 9;

    for (int frame = 0; frame < numFrames; ++frame) {
        printf("\033[2J\033[H");

        printf("%s\n", spinner[frame % (sizeof(spinner) / sizeof(spinner[0]))]);

        usleep(100 * 2000);
    }

    printf("%s\n", sentences[random_index]);
}
;


question_how: HOW QUESTION EOL {
        const char* sentences[] = {
            "To conquer obstacles, remember, even the grandest leaps start with a small purr.\n",
            "Flex your whiskers and navigate with the grace of a stealthy cat; obstacles won't know what hit 'em.\n",
            "Pawsitivity, dear human, pawsitivity! Face it head-on with a twinkle in your eye.\n",
            "Ah, the future is like a tangled ball of yarn, mysterious and full of surprises. Embrace it, and may your curiosity lead the way.\n"
            };
 int num_sentences = sizeof(sentences) / sizeof(sentences[0]);
    srand(time(NULL));
    int random_index = rand() % num_sentences;

    const char* spinner[] = {
    "ᓚᘏᗢ_  …ᓄ",
    "ᓚᘏᗢ_  ……ᓄ" ,
    "ᓚᘏᗢ__ ………ᓄ" ,
    "ᓚᘏᗢ__ ……………ᓄ" ,
    "ᓚᘏᗢ_  …………ᓄ" ,
    "ᓚᘏᗢ_  ………ᓄ" ,
    "ᓚᘏᗢ_  ……ᓄ" ,
    "ᓚᘏᗢ_  …ᓄ" ,
    "ᓚᘏᗢ_  ᓄ"
    };



    const int numFrames = 9;

    for (int frame = 0; frame < numFrames; ++frame) {
        printf("\033[2J\033[H");

        printf("%s\n", spinner[frame % (sizeof(spinner) / sizeof(spinner[0]))]);

        usleep(100 * 2000);
    }

    printf("%s\n", sentences[random_index]);
}
;


%%

int main() {
    yyparse();
    return 0;
}

void yyerror(const char* _) {

    fprintf(stderr, " ");
    printf("\033[2J\033[H");
    printf("Stop wasting my time, humanoid, begone!\n");
    sleep(1);
    printf("\033[2J\033[H");

}

int yywrap() {
    return 1;
}
