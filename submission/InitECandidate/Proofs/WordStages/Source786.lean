import InitECandidate.Proofs.WordStages.Source770
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody786_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody786_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody786_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody786_0, 786, 2)) (some 69) ([]) (some (8, sourceBody786_1, 786, 3))

def sourceBody786_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody786_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_2 sourceBody786_3

def sourceBody786_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_4 sourceBody786_0

def sourceBody786_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody786_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody786_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody786_0, 786, 4)) (some 68) ([14]) (some (14, sourceBody786_7, 786, 5))

def sourceBody786_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_8 sourceBody786_3

def sourceBody786_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_9 sourceBody786_0

def sourceBody786_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_6 sourceBody786_10

def sourceBody786_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody786_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody786_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody786_0, 786, 6)) (some 68) ([10]) (some (10, sourceBody786_13, 786, 7))

def sourceBody786_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_14 sourceBody786_3

def sourceBody786_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_15 sourceBody786_0

def sourceBody786_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_12 sourceBody786_16

def sourceBody786_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody786_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody786_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody786_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody786_0, 786, 8)) (some 740) ([18, 6]) (some (18, sourceBody786_20, 786, 9))

def sourceBody786_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_21 sourceBody786_3

def sourceBody786_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_22 sourceBody786_0

def sourceBody786_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_19 sourceBody786_23

def sourceBody786_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_18 sourceBody786_24

def sourceBody786_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_25

def sourceBody786_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_26

def sourceBody786_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody786_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody786_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody786_0, 786, 10)) (some 740) ([18, 6]) (some (18, sourceBody786_20, 786, 11))

def sourceBody786_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_30 sourceBody786_3

def sourceBody786_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_31 sourceBody786_0

def sourceBody786_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_29 sourceBody786_32

def sourceBody786_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_28 sourceBody786_33

def sourceBody786_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_34

def sourceBody786_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_35

def sourceBody786_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_27 sourceBody786_36

def sourceBody786_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 14)

def sourceBody786_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody786_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody786_0, 786, 12)) (some 739) ([18, 6, 12]) (some (18, sourceBody786_20, 786, 13))

def sourceBody786_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_40 sourceBody786_3

def sourceBody786_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_41 sourceBody786_0

def sourceBody786_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_39 sourceBody786_42

def sourceBody786_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_38 sourceBody786_43

def sourceBody786_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_28 sourceBody786_44

def sourceBody786_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_45

def sourceBody786_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_46

def sourceBody786_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_37 sourceBody786_47

def sourceBody786_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 288#64])

def sourceBody786_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody786_0, 786, 14)) (some 734) ([18, 6, 12]) (some (18, sourceBody786_20, 786, 15))

def sourceBody786_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_50 sourceBody786_3

def sourceBody786_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_51 sourceBody786_0

def sourceBody786_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_49 sourceBody786_52

def sourceBody786_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_38 sourceBody786_53

def sourceBody786_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_28 sourceBody786_54

def sourceBody786_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_55

def sourceBody786_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_56

def sourceBody786_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_48 sourceBody786_57

def sourceBody786_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody786_0, 786, 16)) (some 733) ([18, 6]) (some (18, sourceBody786_20, 786, 17))

def sourceBody786_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_59 sourceBody786_3

def sourceBody786_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_60 sourceBody786_0

def sourceBody786_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_38 sourceBody786_61

def sourceBody786_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_18 sourceBody786_62

def sourceBody786_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody786_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody786_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody786_0, 786, 18)) (some 70) ([6]) (some (6, sourceBody786_65, 786, 19))

def sourceBody786_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_66 sourceBody786_3

def sourceBody786_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_67 sourceBody786_0

def sourceBody786_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_64 sourceBody786_68

def sourceBody786_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_69

def sourceBody786_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_70

def sourceBody786_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody786_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody786_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_73 sourceBody786_0

def sourceBody786_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_72 sourceBody786_74

def sourceBody786_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_71 sourceBody786_75

def sourceBody786_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_63 sourceBody786_76

def sourceBody786_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_77

def sourceBody786_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_78

def sourceBody786_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_58 sourceBody786_79

def sourceBody786_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_17 sourceBody786_80

def sourceBody786_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_81

def sourceBody786_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_82

def sourceBody786_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_11 sourceBody786_83

def sourceBody786_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_84

def sourceBody786_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_85

def sourceBody786_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_5 sourceBody786_86

def sourceBody786_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_87

def sourceBody786_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody786_0 sourceBody786_88

def source786 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (786, 3, sourceBody786_89)
end InitECandidate.Proofs.WordStages
