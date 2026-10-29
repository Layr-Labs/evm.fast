import InitECandidate.Proofs.WordStages.Source364
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody380_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody380_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody380_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody380_0, 380, 2)) (some 69) ([]) (some (8, sourceBody380_1, 380, 3))

def sourceBody380_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody380_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_2 sourceBody380_3

def sourceBody380_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_4 sourceBody380_0

def sourceBody380_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody380_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody380_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody380_0, 380, 4)) (some 68) ([12]) (some (12, sourceBody380_7, 380, 5))

def sourceBody380_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_8 sourceBody380_3

def sourceBody380_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_9 sourceBody380_0

def sourceBody380_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_6 sourceBody380_10

def sourceBody380_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody380_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody380_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody380_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody380_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody380_0, 380, 6)) (some 158) ([10, 16, 6]) (some (10, sourceBody380_15, 380, 7))

def sourceBody380_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_16 sourceBody380_3

def sourceBody380_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_17 sourceBody380_0

def sourceBody380_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_14 sourceBody380_18

def sourceBody380_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_13 sourceBody380_19

def sourceBody380_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_12 sourceBody380_20

def sourceBody380_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_0 sourceBody380_21

def sourceBody380_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_0 sourceBody380_22

def sourceBody380_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody380_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 12#64])

def sourceBody380_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody380_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody380_0, 380, 8)) (some 77) ([10, 16, 6]) (some (10, sourceBody380_15, 380, 9))

def sourceBody380_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_27 sourceBody380_3

def sourceBody380_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_28 sourceBody380_0

def sourceBody380_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_26 sourceBody380_29

def sourceBody380_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_25 sourceBody380_30

def sourceBody380_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_24 sourceBody380_31

def sourceBody380_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_0 sourceBody380_32

def sourceBody380_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_0 sourceBody380_33

def sourceBody380_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_23 sourceBody380_34

def sourceBody380_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody380_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody380_0, 380, 10)) (some 70) ([10]) (some (10, sourceBody380_15, 380, 11))

def sourceBody380_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_37 sourceBody380_3

def sourceBody380_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_38 sourceBody380_0

def sourceBody380_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_36 sourceBody380_39

def sourceBody380_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_0 sourceBody380_40

def sourceBody380_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_0 sourceBody380_41

def sourceBody380_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_35 sourceBody380_42

def sourceBody380_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody380_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody380_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_45 sourceBody380_0

def sourceBody380_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_44 sourceBody380_46

def sourceBody380_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_43 sourceBody380_47

def sourceBody380_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_11 sourceBody380_48

def sourceBody380_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_0 sourceBody380_49

def sourceBody380_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_0 sourceBody380_50

def sourceBody380_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_5 sourceBody380_51

def sourceBody380_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_0 sourceBody380_52

def sourceBody380_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody380_0 sourceBody380_53

def source380 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (380, 3, sourceBody380_54)
end InitECandidate.Proofs.WordStages
