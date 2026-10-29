import InitECandidate.Proofs.WordStages.Source115
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody131_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody131_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody131_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody131_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 6)

def sourceBody131_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody131_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 10)

def sourceBody131_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 12)

def sourceBody131_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 14)

def sourceBody131_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody131_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody131_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 28, 44, 24, 40, 32, 48, 18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody131_0, 131, 2)) (some 129) ([34, 26, 42, 22, 38, 30, 46, 20]) (some (34, sourceBody131_9, 131, 3))

def sourceBody131_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody131_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_10 sourceBody131_11

def sourceBody131_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_12 sourceBody131_0

def sourceBody131_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_8 sourceBody131_13

def sourceBody131_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_7 sourceBody131_14

def sourceBody131_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_6 sourceBody131_15

def sourceBody131_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_5 sourceBody131_16

def sourceBody131_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_4 sourceBody131_17

def sourceBody131_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_3 sourceBody131_18

def sourceBody131_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_2 sourceBody131_19

def sourceBody131_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_1 sourceBody131_20

def sourceBody131_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody131_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 32)

def sourceBody131_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 48)

def sourceBody131_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody131_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [34, 26, 42, 22]

def sourceBody131_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_26 sourceBody131_0

def sourceBody131_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_25 sourceBody131_27

def sourceBody131_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_24 sourceBody131_28

def sourceBody131_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_23 sourceBody131_29

def sourceBody131_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_22 sourceBody131_30

def sourceBody131_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_21 sourceBody131_31

def sourceBody131_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_32

def sourceBody131_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_33

def sourceBody131_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_34

def sourceBody131_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_35

def sourceBody131_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_36

def sourceBody131_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_37

def sourceBody131_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_38

def sourceBody131_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_39

def sourceBody131_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_40

def sourceBody131_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_41

def sourceBody131_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_42

def sourceBody131_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_43

def sourceBody131_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_44

def sourceBody131_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_45

def sourceBody131_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_46

def sourceBody131_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody131_0 sourceBody131_47

def source131 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (131, 9, sourceBody131_48)
end InitECandidate.Proofs.WordStages
