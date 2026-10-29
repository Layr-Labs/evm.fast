import InitECandidate.Proofs.WordStages.Source760
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody776_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody776_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody776_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody776_0, 776, 2)) (some 69) ([]) (some (6, sourceBody776_1, 776, 3))

def sourceBody776_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody776_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_2 sourceBody776_3

def sourceBody776_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_4 sourceBody776_0

def sourceBody776_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody776_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody776_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody776_0, 776, 4)) (some 68) ([10]) (some (10, sourceBody776_7, 776, 5))

def sourceBody776_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_8 sourceBody776_3

def sourceBody776_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_9 sourceBody776_0

def sourceBody776_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_6 sourceBody776_10

def sourceBody776_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody776_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody776_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody776_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody776_0, 776, 6)) (some 773) ([8, 14]) (some (8, sourceBody776_14, 776, 7))

def sourceBody776_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_15 sourceBody776_3

def sourceBody776_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_16 sourceBody776_0

def sourceBody776_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_13 sourceBody776_17

def sourceBody776_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_12 sourceBody776_18

def sourceBody776_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_0 sourceBody776_19

def sourceBody776_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_0 sourceBody776_20

def sourceBody776_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody776_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody776_0, 776, 8)) (some 728) ([8, 14]) (some (8, sourceBody776_14, 776, 9))

def sourceBody776_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_23 sourceBody776_3

def sourceBody776_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_24 sourceBody776_0

def sourceBody776_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_22 sourceBody776_25

def sourceBody776_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_12 sourceBody776_26

def sourceBody776_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_0 sourceBody776_27

def sourceBody776_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_0 sourceBody776_28

def sourceBody776_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_21 sourceBody776_29

def sourceBody776_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody776_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody776_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody776_0, 776, 10)) (some 728) ([8, 14]) (some (8, sourceBody776_14, 776, 11))

def sourceBody776_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_33 sourceBody776_3

def sourceBody776_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_34 sourceBody776_0

def sourceBody776_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_32 sourceBody776_35

def sourceBody776_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_31 sourceBody776_36

def sourceBody776_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_0 sourceBody776_37

def sourceBody776_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_0 sourceBody776_38

def sourceBody776_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_30 sourceBody776_39

def sourceBody776_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody776_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody776_0, 776, 12)) (some 70) ([8]) (some (8, sourceBody776_14, 776, 13))

def sourceBody776_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_42 sourceBody776_3

def sourceBody776_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_43 sourceBody776_0

def sourceBody776_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_41 sourceBody776_44

def sourceBody776_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_0 sourceBody776_45

def sourceBody776_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_0 sourceBody776_46

def sourceBody776_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_40 sourceBody776_47

def sourceBody776_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody776_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody776_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_50 sourceBody776_0

def sourceBody776_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_49 sourceBody776_51

def sourceBody776_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_48 sourceBody776_52

def sourceBody776_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_11 sourceBody776_53

def sourceBody776_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_0 sourceBody776_54

def sourceBody776_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_0 sourceBody776_55

def sourceBody776_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_5 sourceBody776_56

def sourceBody776_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_0 sourceBody776_57

def sourceBody776_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody776_0 sourceBody776_58

def source776 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (776, 3, sourceBody776_59)
end InitECandidate.Proofs.WordStages
