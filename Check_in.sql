DECLARE
    input_string VARCHAR2(100);
    vowel_count NUMBER := 0;
    consonant_count NUMBER := 0;
BEGIN

    DBMS_OUTPUT.PUT('Enter a string: ');
    my_string:= Read_line;
    FOR i IN 1..LENGTH(input_string) LOOP


        IF input_string(i) IN ('A', 'E', 'I', 'O', 'U') THEN
            vowel_count := vowel_count + 1;
        ELSE
            consonant_count := consonant_count + 1;
        END IF;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Number of vowels: ' || vowel_count);
    DBMS_OUTPUT.PUT_LINE('Number of consonants: ' || consonant_count);
END;
