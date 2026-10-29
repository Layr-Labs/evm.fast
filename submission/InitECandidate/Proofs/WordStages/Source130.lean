import InitECandidate.Proofs.WordStages.Source114
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody130_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody130_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody130_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody130_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 6)

def sourceBody130_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody130_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 10)

def sourceBody130_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 12)

def sourceBody130_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 14)

def sourceBody130_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody130_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody130_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 28, 44, 24, 40, 32, 48, 18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody130_0, 130, 2)) (some 129) ([34, 26, 42, 22, 38, 30, 46, 20]) (some (34, sourceBody130_9, 130, 3))

def sourceBody130_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody130_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_10 sourceBody130_11

def sourceBody130_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_12 sourceBody130_0

def sourceBody130_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_8 sourceBody130_13

def sourceBody130_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_7 sourceBody130_14

def sourceBody130_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_6 sourceBody130_15

def sourceBody130_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_5 sourceBody130_16

def sourceBody130_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_4 sourceBody130_17

def sourceBody130_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_3 sourceBody130_18

def sourceBody130_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_2 sourceBody130_19

def sourceBody130_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_1 sourceBody130_20

def sourceBody130_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody130_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody130_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 44)

def sourceBody130_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody130_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [34, 26, 42, 22]

def sourceBody130_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_26 sourceBody130_0

def sourceBody130_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_25 sourceBody130_27

def sourceBody130_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_24 sourceBody130_28

def sourceBody130_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_23 sourceBody130_29

def sourceBody130_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_22 sourceBody130_30

def sourceBody130_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_21 sourceBody130_31

def sourceBody130_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_32

def sourceBody130_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_33

def sourceBody130_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_34

def sourceBody130_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_35

def sourceBody130_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_36

def sourceBody130_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_37

def sourceBody130_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_38

def sourceBody130_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_39

def sourceBody130_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_40

def sourceBody130_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_41

def sourceBody130_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_42

def sourceBody130_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_43

def sourceBody130_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_44

def sourceBody130_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_45

def sourceBody130_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_46

def sourceBody130_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody130_0 sourceBody130_47

def source130 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (130, 9, sourceBody130_48)
end InitECandidate.Proofs.WordStages
