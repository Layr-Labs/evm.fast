import InitECandidate.Proofs.WordStages.Source251
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody267_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody267_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody267_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody267_0, 267, 2)) (some 69) ([]) (some (8, sourceBody267_1, 267, 3))

def sourceBody267_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody267_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_2 sourceBody267_3

def sourceBody267_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_4 sourceBody267_0

def sourceBody267_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody267_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody267_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody267_0, 267, 4)) (some 68) ([14]) (some (14, sourceBody267_7, 267, 5))

def sourceBody267_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_8 sourceBody267_3

def sourceBody267_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_9 sourceBody267_0

def sourceBody267_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_6 sourceBody267_10

def sourceBody267_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody267_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody267_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody267_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody267_0, 267, 6)) (some 259) ([10, 18]) (some (10, sourceBody267_14, 267, 7))

def sourceBody267_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_15 sourceBody267_3

def sourceBody267_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_16 sourceBody267_0

def sourceBody267_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_13 sourceBody267_17

def sourceBody267_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_12 sourceBody267_18

def sourceBody267_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_19

def sourceBody267_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_20

def sourceBody267_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody267_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody267_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody267_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody267_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody267_0, 267, 8)) (some 238) ([10, 18, 6, 12]) (some (10, sourceBody267_14, 267, 9))

def sourceBody267_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_26 sourceBody267_3

def sourceBody267_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_27 sourceBody267_0

def sourceBody267_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_25 sourceBody267_28

def sourceBody267_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_24 sourceBody267_29

def sourceBody267_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_23 sourceBody267_30

def sourceBody267_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_22 sourceBody267_31

def sourceBody267_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_32

def sourceBody267_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_33

def sourceBody267_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_21 sourceBody267_34

def sourceBody267_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody267_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody267_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody267_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody267_0, 267, 10)) (some 77) ([10, 18, 6]) (some (10, sourceBody267_14, 267, 11))

def sourceBody267_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_39 sourceBody267_3

def sourceBody267_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_40 sourceBody267_0

def sourceBody267_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_38 sourceBody267_41

def sourceBody267_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_37 sourceBody267_42

def sourceBody267_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_36 sourceBody267_43

def sourceBody267_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_44

def sourceBody267_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_45

def sourceBody267_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_35 sourceBody267_46

def sourceBody267_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody267_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody267_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody267_0, 267, 12)) (some 266) ([10, 18]) (some (10, sourceBody267_14, 267, 13))

def sourceBody267_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_50 sourceBody267_3

def sourceBody267_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_51 sourceBody267_0

def sourceBody267_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_49 sourceBody267_52

def sourceBody267_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_48 sourceBody267_53

def sourceBody267_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_54

def sourceBody267_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_55

def sourceBody267_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_47 sourceBody267_56

def sourceBody267_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody267_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody267_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody267_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody267_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody267_0, 267, 14)) (some 235) ([10, 18, 6, 12]) (some (10, sourceBody267_14, 267, 15))

def sourceBody267_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_62 sourceBody267_3

def sourceBody267_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_63 sourceBody267_0

def sourceBody267_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_61 sourceBody267_64

def sourceBody267_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_60 sourceBody267_65

def sourceBody267_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_59 sourceBody267_66

def sourceBody267_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_58 sourceBody267_67

def sourceBody267_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_68

def sourceBody267_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_69

def sourceBody267_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_57 sourceBody267_70

def sourceBody267_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody267_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody267_0, 267, 16)) (some 70) ([10]) (some (10, sourceBody267_14, 267, 17))

def sourceBody267_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_73 sourceBody267_3

def sourceBody267_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_74 sourceBody267_0

def sourceBody267_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_72 sourceBody267_75

def sourceBody267_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_76

def sourceBody267_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_77

def sourceBody267_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_71 sourceBody267_78

def sourceBody267_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody267_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody267_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_81 sourceBody267_0

def sourceBody267_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_80 sourceBody267_82

def sourceBody267_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_79 sourceBody267_83

def sourceBody267_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_11 sourceBody267_84

def sourceBody267_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_85

def sourceBody267_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_86

def sourceBody267_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_5 sourceBody267_87

def sourceBody267_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_88

def sourceBody267_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody267_0 sourceBody267_89

def source267 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (267, 3, sourceBody267_90)
end InitECandidate.Proofs.WordStages
