import InitECandidate.Proofs.WordStages.Source365
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody381_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody381_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody381_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody381_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody381_0, 381, 2)) (some 377) ([16]) (some (16, sourceBody381_2, 381, 3))

def sourceBody381_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody381_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_3 sourceBody381_4

def sourceBody381_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_5 sourceBody381_0

def sourceBody381_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_1 sourceBody381_6

def sourceBody381_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody381_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody381_0, 381, 4)) (some 69) ([]) (some (12, sourceBody381_8, 381, 5))

def sourceBody381_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_9 sourceBody381_4

def sourceBody381_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_10 sourceBody381_0

def sourceBody381_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 72#64)

def sourceBody381_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody381_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody381_0, 381, 6)) (some 68) ([20]) (some (20, sourceBody381_13, 381, 7))

def sourceBody381_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_14 sourceBody381_4

def sourceBody381_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_15 sourceBody381_0

def sourceBody381_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_12 sourceBody381_16

def sourceBody381_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody381_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody381_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody381_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_20 sourceBody381_0

def sourceBody381_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_19 sourceBody381_21

def sourceBody381_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_18 sourceBody381_22

def sourceBody381_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody381_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody381_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody381_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody381_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody381_0, 381, 8)) (some 379) ([6, 14, 10]) (some (6, sourceBody381_27, 381, 9))

def sourceBody381_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_28 sourceBody381_4

def sourceBody381_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_29 sourceBody381_0

def sourceBody381_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_26 sourceBody381_30

def sourceBody381_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_25 sourceBody381_31

def sourceBody381_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_24 sourceBody381_32

def sourceBody381_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_0 sourceBody381_33

def sourceBody381_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_0 sourceBody381_34

def sourceBody381_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_23 sourceBody381_35

def sourceBody381_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody381_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody381_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody381_0, 381, 10)) (some 380) ([6, 14]) (some (6, sourceBody381_27, 381, 11))

def sourceBody381_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_39 sourceBody381_4

def sourceBody381_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_40 sourceBody381_0

def sourceBody381_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_38 sourceBody381_41

def sourceBody381_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_37 sourceBody381_42

def sourceBody381_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_0 sourceBody381_43

def sourceBody381_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_0 sourceBody381_44

def sourceBody381_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_36 sourceBody381_45

def sourceBody381_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody381_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody381_0, 381, 12)) (some 70) ([6]) (some (6, sourceBody381_27, 381, 13))

def sourceBody381_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_48 sourceBody381_4

def sourceBody381_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_49 sourceBody381_0

def sourceBody381_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_47 sourceBody381_50

def sourceBody381_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_0 sourceBody381_51

def sourceBody381_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_0 sourceBody381_52

def sourceBody381_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_46 sourceBody381_53

def sourceBody381_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody381_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody381_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_56 sourceBody381_0

def sourceBody381_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_55 sourceBody381_57

def sourceBody381_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_54 sourceBody381_58

def sourceBody381_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_17 sourceBody381_59

def sourceBody381_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_0 sourceBody381_60

def sourceBody381_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_0 sourceBody381_61

def sourceBody381_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_11 sourceBody381_62

def sourceBody381_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_0 sourceBody381_63

def sourceBody381_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_0 sourceBody381_64

def sourceBody381_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_7 sourceBody381_65

def sourceBody381_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_0 sourceBody381_66

def sourceBody381_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_0 sourceBody381_67

def sourceBody381_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_0 sourceBody381_68

def sourceBody381_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody381_0 sourceBody381_69

def source381 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (381, 3, sourceBody381_70)
end InitECandidate.Proofs.WordStages
