import InitECandidate.Proofs.WordStages.Source244
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody260_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody260_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody260_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody260_0, 260, 2)) (some 69) ([]) (some (8, sourceBody260_1, 260, 3))

def sourceBody260_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody260_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_2 sourceBody260_3

def sourceBody260_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_4 sourceBody260_0

def sourceBody260_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 160#64)

def sourceBody260_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody260_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody260_0, 260, 4)) (some 68) ([14]) (some (14, sourceBody260_7, 260, 5))

def sourceBody260_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_8 sourceBody260_3

def sourceBody260_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_9 sourceBody260_0

def sourceBody260_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_6 sourceBody260_10

def sourceBody260_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody260_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 48#64)

def sourceBody260_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody260_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody260_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody260_0, 260, 6)) (some 242) ([10, 18, 6]) (some (10, sourceBody260_15, 260, 7))

def sourceBody260_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_16 sourceBody260_3

def sourceBody260_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_17 sourceBody260_0

def sourceBody260_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_14 sourceBody260_18

def sourceBody260_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_13 sourceBody260_19

def sourceBody260_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_12 sourceBody260_20

def sourceBody260_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_21

def sourceBody260_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_22

def sourceBody260_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody260_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody260_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody260_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody260_0, 260, 8)) (some 77) ([10, 18, 6]) (some (10, sourceBody260_15, 260, 9))

def sourceBody260_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_27 sourceBody260_3

def sourceBody260_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_28 sourceBody260_0

def sourceBody260_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_26 sourceBody260_29

def sourceBody260_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_25 sourceBody260_30

def sourceBody260_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_24 sourceBody260_31

def sourceBody260_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_32

def sourceBody260_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_33

def sourceBody260_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_23 sourceBody260_34

def sourceBody260_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 80#64])

def sourceBody260_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody260_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody260_0, 260, 10)) (some 244) ([10, 18]) (some (10, sourceBody260_15, 260, 11))

def sourceBody260_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_38 sourceBody260_3

def sourceBody260_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_39 sourceBody260_0

def sourceBody260_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_37 sourceBody260_40

def sourceBody260_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_36 sourceBody260_41

def sourceBody260_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_42

def sourceBody260_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_43

def sourceBody260_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_35 sourceBody260_44

def sourceBody260_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 88#64])

def sourceBody260_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody260_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody260_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody260_0, 260, 12)) (some 242) ([10, 18, 6]) (some (10, sourceBody260_15, 260, 13))

def sourceBody260_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_49 sourceBody260_3

def sourceBody260_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_50 sourceBody260_0

def sourceBody260_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_48 sourceBody260_51

def sourceBody260_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_47 sourceBody260_52

def sourceBody260_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_46 sourceBody260_53

def sourceBody260_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_54

def sourceBody260_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_55

def sourceBody260_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_45 sourceBody260_56

def sourceBody260_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 184#64])

def sourceBody260_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 128#64])

def sourceBody260_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody260_0, 260, 14)) (some 244) ([10, 18]) (some (10, sourceBody260_15, 260, 15))

def sourceBody260_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_60 sourceBody260_3

def sourceBody260_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_61 sourceBody260_0

def sourceBody260_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_59 sourceBody260_62

def sourceBody260_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_58 sourceBody260_63

def sourceBody260_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_64

def sourceBody260_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_65

def sourceBody260_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_57 sourceBody260_66

def sourceBody260_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody260_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody260_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody260_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody260_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody260_0, 260, 16)) (some 235) ([10, 18, 6, 12]) (some (10, sourceBody260_15, 260, 17))

def sourceBody260_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_72 sourceBody260_3

def sourceBody260_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_73 sourceBody260_0

def sourceBody260_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_71 sourceBody260_74

def sourceBody260_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_70 sourceBody260_75

def sourceBody260_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_69 sourceBody260_76

def sourceBody260_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_68 sourceBody260_77

def sourceBody260_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_78

def sourceBody260_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_79

def sourceBody260_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_67 sourceBody260_80

def sourceBody260_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody260_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody260_0, 260, 18)) (some 70) ([10]) (some (10, sourceBody260_15, 260, 19))

def sourceBody260_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_83 sourceBody260_3

def sourceBody260_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_84 sourceBody260_0

def sourceBody260_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_82 sourceBody260_85

def sourceBody260_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_86

def sourceBody260_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_87

def sourceBody260_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_81 sourceBody260_88

def sourceBody260_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody260_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody260_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_91 sourceBody260_0

def sourceBody260_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_90 sourceBody260_92

def sourceBody260_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_89 sourceBody260_93

def sourceBody260_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_11 sourceBody260_94

def sourceBody260_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_95

def sourceBody260_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_96

def sourceBody260_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_5 sourceBody260_97

def sourceBody260_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_98

def sourceBody260_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody260_0 sourceBody260_99

def source260 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (260, 3, sourceBody260_100)
end InitECandidate.Proofs.WordStages
