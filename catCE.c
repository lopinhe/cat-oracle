#include <stdlib.h>
#include <stdio.h>

int main(void) {
    int result;

    // Execute "flex cat_oracle.l" command
    result = system("flex cat_oracle.l");
    if (result != 0) {
        printf("Failed to execute 'flex cat_oracle.l'\n");
        return 1;
    }

    // Execute "bison -d cat_oracle.y" command
    result = system("bison -d cat_oracle.y");
    if (result != 0) {
        printf("Failed to execute 'bison -d cat_oracle.y'\n");
        return 1;
    }

    // Execute "gcc -o cat_oracle cat_oracle.tab.c lex.yy.c" command
    result = system("gcc -o cat_oracle cat_oracle.tab.c lex.yy.c");
    if (result != 0) {
        printf("Failed to execute 'gcc -o cat_oracle cat_oracle.tab.c lex.yy.c -lfl'\n");
        return 1;
    }

    // Execute "./cat_oracle" command
    result = system("./cat_oracle");
    if (result != 0) {
        printf("Failed to execute './cat_oracle'\n");
        return 1;
    }

    return 0;
}
