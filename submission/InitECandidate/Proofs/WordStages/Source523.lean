import InitECandidate.Proofs.WordStages.Source507
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody523_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody523_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody523_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 40, 8, 34]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody523_0, 523, 2)) (some 475) ([]) (some (22, sourceBody523_1, 523, 3))

def sourceBody523_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody523_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_2 sourceBody523_3

def sourceBody523_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_4 sourceBody523_0

def sourceBody523_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody523_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([22, 46, 4, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody523_0, 523, 4)) (some 475) ([]) (some (18, sourceBody523_6, 523, 5))

def sourceBody523_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_7 sourceBody523_3

def sourceBody523_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_8 sourceBody523_0

def sourceBody523_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 22)

def sourceBody523_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 46)

def sourceBody523_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 4)

def sourceBody523_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody523_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody523_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody523_0, 523, 6)) (some 462) ([44, 12, 38, 26]) (some (44, sourceBody523_14, 523, 7))

def sourceBody523_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_15 sourceBody523_3

def sourceBody523_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_16 sourceBody523_0

def sourceBody523_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_13 sourceBody523_17

def sourceBody523_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_12 sourceBody523_18

def sourceBody523_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_11 sourceBody523_19

def sourceBody523_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_10 sourceBody523_20

def sourceBody523_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody523_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody523_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody523_0, 523, 8)) (some 465) ([12]) (some (12, sourceBody523_23, 523, 9))

def sourceBody523_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_24 sourceBody523_3

def sourceBody523_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_25 sourceBody523_0

def sourceBody523_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_22 sourceBody523_26

def sourceBody523_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody523_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 40)

def sourceBody523_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 8)

def sourceBody523_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 34)

def sourceBody523_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody523_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 46)

def sourceBody523_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody523_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 30)

def sourceBody523_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody523_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody523_0, 523, 10)) (some 480) ([26, 50, 2, 28, 16, 42, 10, 36]) (some (26, sourceBody523_36, 523, 11))

def sourceBody523_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_37 sourceBody523_3

def sourceBody523_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_38 sourceBody523_0

def sourceBody523_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_35 sourceBody523_39

def sourceBody523_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_34 sourceBody523_40

def sourceBody523_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_33 sourceBody523_41

def sourceBody523_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_32 sourceBody523_42

def sourceBody523_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_31 sourceBody523_43

def sourceBody523_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_30 sourceBody523_44

def sourceBody523_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_29 sourceBody523_45

def sourceBody523_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_28 sourceBody523_46

def sourceBody523_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 44)

def sourceBody523_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody523_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 28 28 50 2))

def sourceBody523_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 30#64, Flapjack.WordLangExpHOL.var 28])

def sourceBody523_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 12)

def sourceBody523_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody523_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody523_0, 523, 12)) (some 463) ([16, 42]) (some (50, sourceBody523_53, 523, 13))

def sourceBody523_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_54 sourceBody523_3

def sourceBody523_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_55 sourceBody523_0

def sourceBody523_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_52 sourceBody523_56

def sourceBody523_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_51 sourceBody523_57

def sourceBody523_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_50 sourceBody523_58

def sourceBody523_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_49 sourceBody523_59

def sourceBody523_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_48 sourceBody523_60

def sourceBody523_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 26)

def sourceBody523_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody523_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody523_0, 523, 14)) (some 470) ([2]) (some (2, sourceBody523_63, 523, 15))

def sourceBody523_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_64 sourceBody523_3

def sourceBody523_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_65 sourceBody523_0

def sourceBody523_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_62 sourceBody523_66

def sourceBody523_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_67

def sourceBody523_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_68

def sourceBody523_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 38)

def sourceBody523_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody523_0, 523, 16)) (some 482) ([2]) (some (2, sourceBody523_63, 523, 17))

def sourceBody523_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_71 sourceBody523_3

def sourceBody523_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_72 sourceBody523_0

def sourceBody523_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_70 sourceBody523_73

def sourceBody523_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_74

def sourceBody523_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_75

def sourceBody523_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_69 sourceBody523_76

def sourceBody523_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody523_0, 523, 18)) (some 69) ([]) (some (2, sourceBody523_63, 523, 19))

def sourceBody523_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_78 sourceBody523_3

def sourceBody523_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_79 sourceBody523_0

def sourceBody523_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody523_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody523_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody523_0, 523, 20)) (some 68) ([28]) (some (28, sourceBody523_82, 523, 21))

def sourceBody523_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_83 sourceBody523_3

def sourceBody523_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_84 sourceBody523_0

def sourceBody523_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_81 sourceBody523_85

def sourceBody523_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody523_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 40)

def sourceBody523_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody523_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 34)

def sourceBody523_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody523_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody523_0, 523, 22)) (some 462) ([16, 42, 10, 36]) (some (16, sourceBody523_91, 523, 23))

def sourceBody523_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_92 sourceBody523_3

def sourceBody523_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_93 sourceBody523_0

def sourceBody523_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_90 sourceBody523_94

def sourceBody523_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_89 sourceBody523_95

def sourceBody523_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_88 sourceBody523_96

def sourceBody523_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_87 sourceBody523_97

def sourceBody523_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 24#64]),
      Flapjack.WordLangExpHOL.var 28])

def sourceBody523_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody523_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 2)

def sourceBody523_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody523_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody523_0, 523, 24)) (some 158) ([42, 10, 36]) (some (42, sourceBody523_102, 523, 25))

def sourceBody523_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_103 sourceBody523_3

def sourceBody523_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_104 sourceBody523_0

def sourceBody523_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_101 sourceBody523_105

def sourceBody523_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_100 sourceBody523_106

def sourceBody523_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_99 sourceBody523_107

def sourceBody523_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_108

def sourceBody523_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_109

def sourceBody523_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody523_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody523_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody523_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 42, 10, 36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody523_0, 523, 26)) (some 146) ([24, 48]) (some (24, sourceBody523_113, 523, 27))

def sourceBody523_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_114 sourceBody523_3

def sourceBody523_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_115 sourceBody523_0

def sourceBody523_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_112 sourceBody523_116

def sourceBody523_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_111 sourceBody523_117

def sourceBody523_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 50)

def sourceBody523_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def sourceBody523_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody523_0, 523, 28)) (some 70) ([48]) (some (48, sourceBody523_120, 523, 29))

def sourceBody523_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_121 sourceBody523_3

def sourceBody523_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_122 sourceBody523_0

def sourceBody523_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_119 sourceBody523_123

def sourceBody523_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_124

def sourceBody523_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_125

def sourceBody523_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 16)

def sourceBody523_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 42)

def sourceBody523_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody523_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 36)

def sourceBody523_131 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody523_0, 523, 30)) (some 476) ([48, 6, 32, 20]) (some (48, sourceBody523_120, 523, 31))

def sourceBody523_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_131 sourceBody523_3

def sourceBody523_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_132 sourceBody523_0

def sourceBody523_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_130 sourceBody523_133

def sourceBody523_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_129 sourceBody523_134

def sourceBody523_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_128 sourceBody523_135

def sourceBody523_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_127 sourceBody523_136

def sourceBody523_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_137

def sourceBody523_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_138

def sourceBody523_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_126 sourceBody523_139

def sourceBody523_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody523_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody523_0, 523, 32)) (some 490) ([48]) (some (48, sourceBody523_120, 523, 33))

def sourceBody523_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_142 sourceBody523_3

def sourceBody523_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_143 sourceBody523_0

def sourceBody523_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_141 sourceBody523_144

def sourceBody523_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_145

def sourceBody523_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_146

def sourceBody523_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_140 sourceBody523_147

def sourceBody523_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody523_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody523_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_150 sourceBody523_0

def sourceBody523_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_149 sourceBody523_151

def sourceBody523_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_148 sourceBody523_152

def sourceBody523_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_118 sourceBody523_153

def sourceBody523_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_154

def sourceBody523_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_155

def sourceBody523_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_156

def sourceBody523_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_157

def sourceBody523_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_158

def sourceBody523_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_159

def sourceBody523_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_160

def sourceBody523_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_161

def sourceBody523_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_110 sourceBody523_162

def sourceBody523_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_98 sourceBody523_163

def sourceBody523_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_164

def sourceBody523_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_165

def sourceBody523_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_86 sourceBody523_166

def sourceBody523_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_167

def sourceBody523_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_168

def sourceBody523_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_80 sourceBody523_169

def sourceBody523_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_170

def sourceBody523_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_171

def sourceBody523_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_77 sourceBody523_172

def sourceBody523_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_61 sourceBody523_173

def sourceBody523_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_174

def sourceBody523_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_175

def sourceBody523_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_47 sourceBody523_176

def sourceBody523_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_177

def sourceBody523_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_178

def sourceBody523_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_179

def sourceBody523_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_180

def sourceBody523_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_27 sourceBody523_181

def sourceBody523_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_182

def sourceBody523_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_183

def sourceBody523_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_21 sourceBody523_184

def sourceBody523_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_185

def sourceBody523_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_186

def sourceBody523_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_9 sourceBody523_187

def sourceBody523_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_188

def sourceBody523_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_189

def sourceBody523_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_190

def sourceBody523_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_191

def sourceBody523_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_192

def sourceBody523_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_193

def sourceBody523_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_194

def sourceBody523_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_195

def sourceBody523_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_5 sourceBody523_196

def sourceBody523_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_197

def sourceBody523_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_198

def sourceBody523_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_199

def sourceBody523_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_200

def sourceBody523_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_201

def sourceBody523_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_202

def sourceBody523_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_203

def sourceBody523_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody523_0 sourceBody523_204

def source523 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (523, 1, sourceBody523_205)
end InitECandidate.Proofs.WordStages
