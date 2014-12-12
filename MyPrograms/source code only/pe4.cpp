
int main() {
    int i, j;
    int largest = -1;
    char s1[7];
    char s2[7];                           

    for (i = 100; i < 1000; ++i) {
        for (j = i; j < 1000; ++j) {
            int sum = i * j;
            sprintf(s1, "%d", sum);
            strcpy(s2, s1);
            strrev(s2);
            if (strcmp(s1, s2) == 0 && sum > largest) {
                largest = sum;
            }
        }
    }                           

    printf("%d\n", largest);                           

    return 0;
}

char* strrev(char* s) {
    char *s1, *s2;
    char c;                           

    s1 = s2 = s;
    while (*s2)
        s2++;                           

    while (s1 < s2) {
        c = *(--s2);
        *s2 = *s1;
        *s1++ = c;
    }
    return s;
}