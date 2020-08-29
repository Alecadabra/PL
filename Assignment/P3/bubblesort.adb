-- Alec Maughan PL Workshop 3
-- Ada Bubble Sort

with Ada.Text_IO;
use Ada.Text_IO;

procedure BubbleSort is
    type Data_Array is array (0 .. 9) of Integer;

    DATA : Data_Array;
    SWAPPED : Boolean := False;

    procedure Swap (A : in out Integer; B : in out Integer) is
        TEMP : Integer;
    begin
        TEMP := A;
        A := B;
        B := TEMP;
    end Swap;

    procedure Print_Data_Array (DATA : in Data_Array) is
    begin
        Put ("[");
        Print_Data: for I in DATA'Range loop
            Put (Integer'Image(DATA (I)));
            if I /= DATA'Last then
                Put (",");
            end if;
        end loop Print_Data;
        Put_Line (" ]");
    end Print_Data_Array;

begin
    -- Fill array
    Fill_Data: for I in DATA'Range loop
        DATA (I) := 100 - I ** 2;
    end loop Fill_Data;

    -- Print
    Put ("Unsorted: ");
    Print_Data_Array (DATA);

    -- Sort
    Sort: for I in DATA'First .. DATA'Last - 1 loop
        SWAPPED := False;
        Inner_Sort: for J in DATA'First .. DATA'Last - 1 loop
            if DATA (J) > DATA (J + 1) then
                Swap (DATA (J), DATA (J + 1));
                SWAPPED := True; 
            end if;
        end loop Inner_Sort;

        -- If no element was swapped, the array is sorted
        exit Sort when not SWAPPED;
    end loop Sort;

    -- Print
    Put ("Sorted:   ");
    Print_Data_Array (DATA);

end BubbleSort;
