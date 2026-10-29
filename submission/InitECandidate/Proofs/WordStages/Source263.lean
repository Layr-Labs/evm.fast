import InitECandidate.Proofs.WordStages.Source247
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody263_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody263_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody263_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody263_0, 263, 2)) (some 69) ([]) (some (8, sourceBody263_1, 263, 3))

def sourceBody263_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody263_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_2 sourceBody263_3

def sourceBody263_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_4 sourceBody263_0

def sourceBody263_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody263_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody263_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody263_0, 263, 4)) (some 68) ([14]) (some (14, sourceBody263_7, 263, 5))

def sourceBody263_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_8 sourceBody263_3

def sourceBody263_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_9 sourceBody263_0

def sourceBody263_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_6 sourceBody263_10

def sourceBody263_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody263_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 48#64)

def sourceBody263_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody263_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody263_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody263_0, 263, 6)) (some 242) ([10, 18, 6]) (some (10, sourceBody263_15, 263, 7))

def sourceBody263_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_16 sourceBody263_3

def sourceBody263_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_17 sourceBody263_0

def sourceBody263_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_14 sourceBody263_18

def sourceBody263_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_13 sourceBody263_19

def sourceBody263_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_12 sourceBody263_20

def sourceBody263_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_21

def sourceBody263_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_22

def sourceBody263_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody263_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody263_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody263_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody263_0, 263, 8)) (some 77) ([10, 18, 6]) (some (10, sourceBody263_15, 263, 9))

def sourceBody263_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_27 sourceBody263_3

def sourceBody263_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_28 sourceBody263_0

def sourceBody263_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_26 sourceBody263_29

def sourceBody263_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_25 sourceBody263_30

def sourceBody263_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_24 sourceBody263_31

def sourceBody263_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_32

def sourceBody263_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_33

def sourceBody263_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_23 sourceBody263_34

def sourceBody263_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 80#64])

def sourceBody263_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody263_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody263_0, 263, 10)) (some 244) ([10, 18]) (some (10, sourceBody263_15, 263, 11))

def sourceBody263_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_38 sourceBody263_3

def sourceBody263_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_39 sourceBody263_0

def sourceBody263_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_37 sourceBody263_40

def sourceBody263_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_36 sourceBody263_41

def sourceBody263_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_42

def sourceBody263_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_43

def sourceBody263_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_35 sourceBody263_44

def sourceBody263_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 88#64])

def sourceBody263_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody263_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody263_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody263_0, 263, 12)) (some 242) ([10, 18, 6]) (some (10, sourceBody263_15, 263, 13))

def sourceBody263_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_49 sourceBody263_3

def sourceBody263_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_50 sourceBody263_0

def sourceBody263_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_48 sourceBody263_51

def sourceBody263_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_47 sourceBody263_52

def sourceBody263_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_46 sourceBody263_53

def sourceBody263_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_54

def sourceBody263_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_55

def sourceBody263_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_45 sourceBody263_56

def sourceBody263_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody263_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody263_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody263_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody263_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody263_0, 263, 14)) (some 235) ([10, 18, 6, 12]) (some (10, sourceBody263_15, 263, 15))

def sourceBody263_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_62 sourceBody263_3

def sourceBody263_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_63 sourceBody263_0

def sourceBody263_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_61 sourceBody263_64

def sourceBody263_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_60 sourceBody263_65

def sourceBody263_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_59 sourceBody263_66

def sourceBody263_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_58 sourceBody263_67

def sourceBody263_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_68

def sourceBody263_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_69

def sourceBody263_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_57 sourceBody263_70

def sourceBody263_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody263_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody263_0, 263, 16)) (some 70) ([10]) (some (10, sourceBody263_15, 263, 17))

def sourceBody263_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_73 sourceBody263_3

def sourceBody263_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_74 sourceBody263_0

def sourceBody263_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_72 sourceBody263_75

def sourceBody263_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_76

def sourceBody263_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_77

def sourceBody263_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_71 sourceBody263_78

def sourceBody263_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody263_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody263_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_81 sourceBody263_0

def sourceBody263_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_80 sourceBody263_82

def sourceBody263_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_79 sourceBody263_83

def sourceBody263_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_11 sourceBody263_84

def sourceBody263_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_85

def sourceBody263_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_86

def sourceBody263_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_5 sourceBody263_87

def sourceBody263_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_88

def sourceBody263_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody263_0 sourceBody263_89

def source263 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (263, 3, sourceBody263_90)
end InitECandidate.Proofs.WordStages
