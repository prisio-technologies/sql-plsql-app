-- The NULLIF(V1, V2) function has two parameters. It is equivalent
-- to the following CASE expression:
NULLIF(V1, V2) := CASE
                        WHEN (V1 = V2)
                        THEN NULL
                        ELSE V1 END;

