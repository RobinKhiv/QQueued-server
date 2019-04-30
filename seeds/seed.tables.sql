BEGIN;
TRUNCATE
  "studentData",
  "pointers",
  "queue",
  "user";

INSERT INTO "user"("user_name", "title", "full_name", "password")
VALUES
  (
    'admin',
    'mentor',
    'Dunder Mifflin Admin',
    '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG'
  ),
  (
    'matth3wn',
    'student',
    'Matthew',
    '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG'
  ),
  (
    'student2',
    'student',
    'Hunter',
    '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG'
    
  ),
  (
    'student3',
    'student',
    'Jonathan',
    '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG'
    
  ),
  (
    'student4',
    'student',
    'Robin',
    '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG'
    
  ),
  (
    'professX',
    'mentor',
    'Xavier',
    '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG'
    
  ),
  (
    'Queen D',
    'mentor',
    'Daenerys Targaryen',
    '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG'
  );
  
  INSERT INTO "queue" ("description", "user_name", "mentor_user_name", "dequeue", "completed", "next", "slack_user_id")
  VALUES
    ('help me i dont know what im doing', 'student2', 'professX', TRUE, FALSE, null, 'UJ3CMD8UV'),
    ('help me i dont know what im doing', 'student3', 'Queen D', TRUE, FALSE, null, 'UJ3CMD8UV'),
    ('help me i dont know what im doing', 'student4', NULL, FALSE, FALSE, 4, 'UJ3CMD8UV'),
    ('help me i dont know what im doing', 'matth3wn', NULL, FALSE, FALSE, 5, 'UJ3CMD8UV'),
    ('help me i dont know what im doing', 'student4', NULL, FALSE, FALSE, null, 'UJ3CMD8UV');

  INSERT INTO "pointers"("id", "head", "tail")
  VALUES
    (1, 3, 5);

  INSERT INTO "studentData" ("user_name", "queue_id", "helped_by", "question")
  VALUES
    ('student2', 1, 'professX', 'help me i dont know what im doing'),
    ('student3', 2, 'Queen D', 'help me i dont know what im doing'),
    ('student4', 3, 'admin', 'help me i dont know what im doing'),
    ('matth3wn', 4, 'admin', 'help me i dont know what im doing'),
    ('student2', 5, 'professX', 'help me i dont know what im doing');
COMMIT;