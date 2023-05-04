DECLARE
  lower_limit NUMBER;
  upper_limit NUMBER;
  is_prime BOOLEAN;
BEGIN
  lower_limit := &lower_input;
  upper_limit := &upper_input;
  
  DBMS_OUTPUT.PUT_LINE('Prime numbers between ' || lower_limit || ' and ' || upper_limit || ':');
  
  FOR i IN lower_limit..upper_limit LOOP
    is_prime := TRUE;
    
    IF (i <= 1) THEN
      is_prime := FALSE;
    ELSE
      FOR j IN 2..TRUNC(SQRT(i)) LOOP
        IF (MOD(i, j) = 0) THEN
          is_prime := FALSE;
          EXIT;
        END IF;
      END LOOP;
    END IF;
    
    IF (is_prime) THEN
      DBMS_OUTPUT.PUT_LINE(i);
    END IF;
  END LOOP;
END;




