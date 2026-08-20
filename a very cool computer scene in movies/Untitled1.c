#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <windows.h>

void type(char str[], int t, int ms){
    for(int i=0;i<=strlen(str);i++){
        Sleep(t);
        printf("%c", str[i]);
    }
    Sleep(ms);
}

int main(){
    getch();

    type("Secure Chapter Communication System\n", 0, 1200);
    type("Access Classification: RESTRICTED\n", 20, 800);
    type("Session ID: AUTO-GENERATED\n\n", 20, 800);
    type("Boot sequence initiated.\n", 0, 1000);
    type("Performing preliminary diagnostics...\n\n", 15, 1500);
    type("Loading core system modules.............................. OK\n", 0, 100);
    type("Verifying cryptographic libraries........................ OK\n", 0, 100);
    type("Checking memory allocation............................... OK\n", 0, 100);
    type("Confirming hardware interface readiness.................. OK\n\n", 0, 750);
    type("Initializing secure environment...\n", 15, 1000);
    type("Establishing isolated runtime space...................... COMPLETE\n", 0, 100);
    type("Applying integrity locks................................. APPLIED\n", 0, 100);
    type("Validating checksum references........................... VERIFIED\n\n", 0, 750);
    type("Starting communication framework...\n", 15, 1000);
    type("Initializing signal processors........................... ACTIVE\n", 0, 100);
    type("Loading transmission handlers............................ LOADED\n", 0, 100);
    type("Calibrating synchronization parameters................... COMPLETE\n\n", 0, 750);
    type("Beginning Chapter connection procedure.\n", 0, 1000);
    type("Connection order locked.\n\n", 0, 1500);
    type("CONNECTED to Chapter I\n", 0, 333);
    type("CONNECTED to Chapter II\n", 0, 333);
    type("CONNECTED to Chapter III\n", 0, 333);
    type("CONNECTED to Chapter IV\n", 0, 333);
    type("CONNECTED to Chapter V\n", 0, 333);
    type("CONNECTED to Chapter VI\n", 0, 333);
    type("CONNECTED to Chapter VII\n\n", 0, 1500);
    type("Finalizing connection registry...\n", 15, 1000);
    type("Verifying active endpoints............................... VERIFIED\n", 0, 100);
    type("Resolving handshake confirmations........................ COMPLETE\n\n", 0, 750);
    type("Securing communication channels...\n", 15, 1000);
    type("Generating session encryption keys....................... DONE\n", 0, 100);
    type("Exchanging authentication tokens......................... COMPLETE\n", 0, 100);
    type("Locking transmission pathways............................ LOCKED\n\n", 0, 750);
    type("Running final system checks...\n", 15, 1000);
    type("Latency assessment....................................... NOMINAL\n", 0, 100);
    type("Signal integrity......................................... STABLE\n", 0, 100);
    type("Unauthorized access scan................................. CLEAR\n\n", 0, 750);
    type("All systems operational.\n", 0, 1000);
    type("All Chapters connected.\n\n", 0, 1000);
    type("System standing by.\n", 15, 1000);
    type("Awaiting authorized transmission.", 15, 0);

    getch();
    system("cls");
}
