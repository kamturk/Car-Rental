CREATE SEQUENCE reservation_log_seq START WITH 1 INCREMENT BY 1;

CREATE TABLE reservation_log (
id NUMBER DEFAULT reservation_log_seq.NEXTVAL PRIMARY KEY,
event VARCHAR(200) NOT NULL,
event_date TIMESTAMP NOT NULL
);

CREATE OR REPLACE TRIGGER reservation_changes
AFTER INSERT OR UPDATE OR DELETE ON reservation
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO reservation_log(event, event_date) VALUES ('New reservation on id: '||:NEW.id, SYSDATE);
    END IF;
   
    IF UPDATING THEN
       INSERT INTO reservation_log(event, event_date) VALUES ('Change in reservation on id: '||:NEW.id, SYSDATE);
    END IF;
    
   IF DELETING THEN
        INSERT INTO reservation_log(event, event_date) VALUES ('Reservation on id: '||:OLD.id || ' has been deleted', SYSDATE);
   END IF;
END;
