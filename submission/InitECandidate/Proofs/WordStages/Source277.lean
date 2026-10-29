import InitECandidate.Proofs.WordStages.Source261
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody277_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody277_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody277_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody277_0, 277, 2)) (some 69) ([]) (some (8, sourceBody277_1, 277, 3))

def sourceBody277_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody277_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_2 sourceBody277_3

def sourceBody277_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_4 sourceBody277_0

def sourceBody277_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody277_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody277_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody277_0, 277, 4)) (some 276) ([10]) (some (10, sourceBody277_7, 277, 5))

def sourceBody277_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_8 sourceBody277_3

def sourceBody277_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_9 sourceBody277_0

def sourceBody277_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_6 sourceBody277_10

def sourceBody277_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody277_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 14)

def sourceBody277_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody277_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody277_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody277_0, 277, 6)) (some 158) ([18, 6, 12]) (some (18, sourceBody277_15, 277, 7))

def sourceBody277_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_16 sourceBody277_3

def sourceBody277_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_17 sourceBody277_0

def sourceBody277_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_14 sourceBody277_18

def sourceBody277_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_13 sourceBody277_19

def sourceBody277_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_12 sourceBody277_20

def sourceBody277_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_0 sourceBody277_21

def sourceBody277_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_0 sourceBody277_22

def sourceBody277_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody277_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody277_0, 277, 8)) (some 70) ([18]) (some (18, sourceBody277_15, 277, 9))

def sourceBody277_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_25 sourceBody277_3

def sourceBody277_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_26 sourceBody277_0

def sourceBody277_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_24 sourceBody277_27

def sourceBody277_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_0 sourceBody277_28

def sourceBody277_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_0 sourceBody277_29

def sourceBody277_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_23 sourceBody277_30

def sourceBody277_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody277_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody277_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_33 sourceBody277_0

def sourceBody277_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_32 sourceBody277_34

def sourceBody277_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_31 sourceBody277_35

def sourceBody277_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_11 sourceBody277_36

def sourceBody277_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_0 sourceBody277_37

def sourceBody277_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_0 sourceBody277_38

def sourceBody277_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_0 sourceBody277_39

def sourceBody277_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_0 sourceBody277_40

def sourceBody277_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_5 sourceBody277_41

def sourceBody277_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_0 sourceBody277_42

def sourceBody277_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody277_0 sourceBody277_43

def source277 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (277, 3, sourceBody277_44)
end InitECandidate.Proofs.WordStages
