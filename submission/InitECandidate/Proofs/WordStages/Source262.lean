import InitECandidate.Proofs.WordStages.Source246
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody262_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody262_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody262_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody262_0, 262, 2)) (some 69) ([]) (some (8, sourceBody262_1, 262, 3))

def sourceBody262_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody262_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_2 sourceBody262_3

def sourceBody262_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_4 sourceBody262_0

def sourceBody262_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody262_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody262_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody262_0, 262, 4)) (some 68) ([14]) (some (14, sourceBody262_7, 262, 5))

def sourceBody262_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_8 sourceBody262_3

def sourceBody262_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_9 sourceBody262_0

def sourceBody262_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_6 sourceBody262_10

def sourceBody262_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody262_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody262_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody262_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody262_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody262_0, 262, 6)) (some 242) ([10, 18, 6]) (some (10, sourceBody262_15, 262, 7))

def sourceBody262_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_16 sourceBody262_3

def sourceBody262_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_17 sourceBody262_0

def sourceBody262_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_14 sourceBody262_18

def sourceBody262_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_13 sourceBody262_19

def sourceBody262_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_12 sourceBody262_20

def sourceBody262_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_0 sourceBody262_21

def sourceBody262_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_0 sourceBody262_22

def sourceBody262_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 20#64])

def sourceBody262_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 48#64)

def sourceBody262_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody262_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody262_0, 262, 8)) (some 242) ([10, 18, 6]) (some (10, sourceBody262_15, 262, 9))

def sourceBody262_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_27 sourceBody262_3

def sourceBody262_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_28 sourceBody262_0

def sourceBody262_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_26 sourceBody262_29

def sourceBody262_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_25 sourceBody262_30

def sourceBody262_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_24 sourceBody262_31

def sourceBody262_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_0 sourceBody262_32

def sourceBody262_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_0 sourceBody262_33

def sourceBody262_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_23 sourceBody262_34

def sourceBody262_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 68#64])

def sourceBody262_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody262_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody262_0, 262, 10)) (some 242) ([10, 18, 6]) (some (10, sourceBody262_15, 262, 11))

def sourceBody262_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_38 sourceBody262_3

def sourceBody262_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_39 sourceBody262_0

def sourceBody262_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_37 sourceBody262_40

def sourceBody262_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_25 sourceBody262_41

def sourceBody262_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_36 sourceBody262_42

def sourceBody262_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_0 sourceBody262_43

def sourceBody262_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_0 sourceBody262_44

def sourceBody262_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_35 sourceBody262_45

def sourceBody262_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody262_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody262_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody262_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody262_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody262_0, 262, 12)) (some 235) ([10, 18, 6, 12]) (some (10, sourceBody262_15, 262, 13))

def sourceBody262_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_51 sourceBody262_3

def sourceBody262_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_52 sourceBody262_0

def sourceBody262_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_50 sourceBody262_53

def sourceBody262_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_49 sourceBody262_54

def sourceBody262_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_48 sourceBody262_55

def sourceBody262_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_47 sourceBody262_56

def sourceBody262_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_0 sourceBody262_57

def sourceBody262_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_0 sourceBody262_58

def sourceBody262_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_46 sourceBody262_59

def sourceBody262_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody262_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody262_0, 262, 14)) (some 70) ([10]) (some (10, sourceBody262_15, 262, 15))

def sourceBody262_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_62 sourceBody262_3

def sourceBody262_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_63 sourceBody262_0

def sourceBody262_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_61 sourceBody262_64

def sourceBody262_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_0 sourceBody262_65

def sourceBody262_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_0 sourceBody262_66

def sourceBody262_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_60 sourceBody262_67

def sourceBody262_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody262_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody262_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_70 sourceBody262_0

def sourceBody262_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_69 sourceBody262_71

def sourceBody262_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_68 sourceBody262_72

def sourceBody262_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_11 sourceBody262_73

def sourceBody262_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_0 sourceBody262_74

def sourceBody262_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_0 sourceBody262_75

def sourceBody262_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_5 sourceBody262_76

def sourceBody262_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_0 sourceBody262_77

def sourceBody262_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody262_0 sourceBody262_78

def source262 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (262, 3, sourceBody262_79)
end InitECandidate.Proofs.WordStages
