import InitECandidate.Proofs.WordStages.Source216
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody232_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody232_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody232_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody232_0, 232, 2)) (some 69) ([]) (some (8, sourceBody232_1, 232, 3))

def sourceBody232_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody232_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_2 sourceBody232_3

def sourceBody232_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_4 sourceBody232_0

def sourceBody232_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody232_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody232_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody232_0, 232, 4)) (some 68) ([12]) (some (12, sourceBody232_7, 232, 5))

def sourceBody232_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_8 sourceBody232_3

def sourceBody232_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_9 sourceBody232_0

def sourceBody232_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_6 sourceBody232_10

def sourceBody232_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody232_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody232_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody232_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody232_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody232_0, 232, 6)) (some 158) ([10, 16, 6]) (some (10, sourceBody232_15, 232, 7))

def sourceBody232_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_16 sourceBody232_3

def sourceBody232_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_17 sourceBody232_0

def sourceBody232_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_14 sourceBody232_18

def sourceBody232_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_13 sourceBody232_19

def sourceBody232_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_12 sourceBody232_20

def sourceBody232_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_0 sourceBody232_21

def sourceBody232_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_0 sourceBody232_22

def sourceBody232_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody232_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 12#64])

def sourceBody232_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody232_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody232_0, 232, 8)) (some 77) ([10, 16, 6]) (some (10, sourceBody232_15, 232, 9))

def sourceBody232_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_27 sourceBody232_3

def sourceBody232_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_28 sourceBody232_0

def sourceBody232_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_26 sourceBody232_29

def sourceBody232_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_25 sourceBody232_30

def sourceBody232_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_24 sourceBody232_31

def sourceBody232_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_0 sourceBody232_32

def sourceBody232_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_0 sourceBody232_33

def sourceBody232_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_23 sourceBody232_34

def sourceBody232_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody232_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody232_0, 232, 10)) (some 70) ([10]) (some (10, sourceBody232_15, 232, 11))

def sourceBody232_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_37 sourceBody232_3

def sourceBody232_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_38 sourceBody232_0

def sourceBody232_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_36 sourceBody232_39

def sourceBody232_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_0 sourceBody232_40

def sourceBody232_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_0 sourceBody232_41

def sourceBody232_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_35 sourceBody232_42

def sourceBody232_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody232_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody232_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_45 sourceBody232_0

def sourceBody232_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_44 sourceBody232_46

def sourceBody232_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_43 sourceBody232_47

def sourceBody232_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_11 sourceBody232_48

def sourceBody232_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_0 sourceBody232_49

def sourceBody232_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_0 sourceBody232_50

def sourceBody232_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_5 sourceBody232_51

def sourceBody232_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_0 sourceBody232_52

def sourceBody232_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody232_0 sourceBody232_53

def source232 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (232, 3, sourceBody232_54)
end InitECandidate.Proofs.WordStages
