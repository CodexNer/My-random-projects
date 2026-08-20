#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <conio.h>
#include <ctype.h>
#include <windows.h>


DWORD WINAPI beepThread(LPVOID lpParam) {
    Beep(666, 15000);
    return 0;
}

// Exit Function
void exid(){
    printf("\n\n\nPress any key to exit...");
    getch();
    system("cls");
    exit(0);
}

// binary encryption
void printBinary(unsigned char c) {
    for (int i = 7; i >= 0; i--) {
        printf("%d", (c >> i) & 1);
    }
}


int main(){
    char msg[] = "THE CLOSEST THING TO AN OPPOSITE TO Him. A HIVEMIND THAT USES DISGUISE TO ENSLAVE THE WEAK INJECTS ITSELF INTO YOUR SOUL GRACE LEFT ROTTEN A STAB WHOSE PAIN YOU DON'T FEEL BUT He DOES. ONLY CURE? RETALIATION";
    char Input[69];
    char nama[67];
    int count=0;
    printf("\n===Login===\n\n");
    awal:
    system("color 07");
    printf("> Input your name : ");
    fgets(Input, sizeof(Input), stdin);
    Input[strcspn(Input, "\n")] = '\0';
    strcpy(nama, Input);
    for (int i = 0; Input[i] != '\0'; i++) {
        Input[i] = tolower((unsigned char) Input[i]);
    }
    system("cls");
    if (strstr(Input, "codex") || strstr(Input, "codexner")){
        if(count == 2){
            system("color 0C");
            HANDLE hThread = CreateThread(NULL, 0, beepThread, NULL, 0, NULL);
            if (hThread == NULL) {
                printf("Failed to create thread.\n");
                return 1;
                }
            for(int x=0;x<=3;x++){
                int i = 0;
                while (msg[i] != '\0') {
                    printBinary(msg[i]);
                    fflush(stdout);
                    Sleep(1);
                    i++;
                }
            }
            Sleep(6666);
            system("cls");
            printf("CURIOSITY IS A SIN\n");
            CloseHandle(hThread);
            Sleep(10000);
            return 0;
        }
        else{
            count++;
            printf("User is unidentified. Try again.\n");
            printf("Press any key...");
            while (getchar() != '\n');
            system("cls");
            goto awal;
        }
    }
    else if (nama[0] == '\0'){
        printf("Please input your name correctly...");
        while (getchar() != '\n');
        system("cls");
        goto awal;
    }
    else{
        printf("Hello, %s\n",nama);
        exid();
    }
    return 0;
}
