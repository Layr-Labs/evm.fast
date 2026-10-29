import InitECandidate.Proofs.WordStages.Source601
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody617_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody617_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody617_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody617_0, 617, 2)) (some 492) ([]) (some (46, sourceBody617_1, 617, 3))

def sourceBody617_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody617_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_2 sourceBody617_3

def sourceBody617_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_4 sourceBody617_0

def sourceBody617_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_5

def sourceBody617_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_6

def sourceBody617_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody617_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 46, 8, 38]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody617_0, 617, 4)) (some 475) ([]) (some (24, sourceBody617_8, 617, 5))

def sourceBody617_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_9 sourceBody617_3

def sourceBody617_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_10 sourceBody617_0

def sourceBody617_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody617_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([24, 54, 4, 34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody617_0, 617, 6)) (some 475) ([]) (some (20, sourceBody617_12, 617, 7))

def sourceBody617_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_13 sourceBody617_3

def sourceBody617_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_14 sourceBody617_0

def sourceBody617_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody617_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 50, 12, 42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody617_0, 617, 8)) (some 475) ([]) (some (28, sourceBody617_16, 617, 9))

def sourceBody617_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_17 sourceBody617_3

def sourceBody617_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_18 sourceBody617_0

def sourceBody617_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 20)

def sourceBody617_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 50)

def sourceBody617_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody617_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 42)

def sourceBody617_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody617_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody617_0, 617, 10)) (some 462) ([58, 2, 32, 18]) (some (58, sourceBody617_24, 617, 11))

def sourceBody617_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_25 sourceBody617_3

def sourceBody617_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_26 sourceBody617_0

def sourceBody617_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_23 sourceBody617_27

def sourceBody617_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_22 sourceBody617_28

def sourceBody617_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_21 sourceBody617_29

def sourceBody617_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_20 sourceBody617_30

def sourceBody617_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody617_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 54)

def sourceBody617_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 4)

def sourceBody617_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 34)

def sourceBody617_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 20)

def sourceBody617_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 50)

def sourceBody617_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 12)

def sourceBody617_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 42)

def sourceBody617_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody617_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([58, 2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody617_0, 617, 12)) (some 480) ([32, 18, 48, 10, 40, 26, 56, 6]) (some (32, sourceBody617_40, 617, 13))

def sourceBody617_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_41 sourceBody617_3

def sourceBody617_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_42 sourceBody617_0

def sourceBody617_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_39 sourceBody617_43

def sourceBody617_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_38 sourceBody617_44

def sourceBody617_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_37 sourceBody617_45

def sourceBody617_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_36 sourceBody617_46

def sourceBody617_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_35 sourceBody617_47

def sourceBody617_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_34 sourceBody617_48

def sourceBody617_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_33 sourceBody617_49

def sourceBody617_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_32 sourceBody617_50

def sourceBody617_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody617_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody617_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody617_0, 617, 14)) (some 465) ([18]) (some (18, sourceBody617_53, 617, 15))

def sourceBody617_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_54 sourceBody617_3

def sourceBody617_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_55 sourceBody617_0

def sourceBody617_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_52 sourceBody617_56

def sourceBody617_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 12000#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 32)
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody617_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 58)

def sourceBody617_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def sourceBody617_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody617_0, 617, 16)) (some 463) ([48, 10]) (some (48, sourceBody617_60, 617, 17))

def sourceBody617_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_61 sourceBody617_3

def sourceBody617_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_62 sourceBody617_0

def sourceBody617_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_59 sourceBody617_63

def sourceBody617_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_58 sourceBody617_64

def sourceBody617_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody617_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody617_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody617_0, 617, 18)) (some 470) ([10]) (some (10, sourceBody617_67, 617, 19))

def sourceBody617_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_68 sourceBody617_3

def sourceBody617_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_69 sourceBody617_0

def sourceBody617_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_66 sourceBody617_70

def sourceBody617_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_71

def sourceBody617_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_72

def sourceBody617_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody617_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody617_0, 617, 20)) (some 482) ([10]) (some (10, sourceBody617_67, 617, 21))

def sourceBody617_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_75 sourceBody617_3

def sourceBody617_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_76 sourceBody617_0

def sourceBody617_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_74 sourceBody617_77

def sourceBody617_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_78

def sourceBody617_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_79

def sourceBody617_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_73 sourceBody617_80

def sourceBody617_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody617_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody617_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody617_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody617_0, 617, 22)) (some 407) ([40]) (some (40, sourceBody617_84, 617, 23))

def sourceBody617_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_85 sourceBody617_3

def sourceBody617_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_86 sourceBody617_0

def sourceBody617_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_83 sourceBody617_87

def sourceBody617_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody617_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody617_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody617_0, 617, 24)) (some 68) ([26]) (some (26, sourceBody617_90, 617, 25))

def sourceBody617_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_91 sourceBody617_3

def sourceBody617_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_92 sourceBody617_0

def sourceBody617_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_89 sourceBody617_93

def sourceBody617_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody617_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody617_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 40)

def sourceBody617_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def sourceBody617_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody617_0, 617, 26)) (some 614) ([56, 6, 36]) (some (56, sourceBody617_98, 617, 27))

def sourceBody617_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_99 sourceBody617_3

def sourceBody617_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_100 sourceBody617_0

def sourceBody617_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_97 sourceBody617_101

def sourceBody617_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_96 sourceBody617_102

def sourceBody617_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_95 sourceBody617_103

def sourceBody617_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_104

def sourceBody617_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_105

def sourceBody617_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 24)

def sourceBody617_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 54)

def sourceBody617_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 4)

def sourceBody617_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 34)

def sourceBody617_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody617_0, 617, 28)) (some 462) ([56, 6, 36, 22]) (some (56, sourceBody617_98, 617, 29))

def sourceBody617_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_111 sourceBody617_3

def sourceBody617_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_112 sourceBody617_0

def sourceBody617_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_110 sourceBody617_113

def sourceBody617_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_109 sourceBody617_114

def sourceBody617_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_108 sourceBody617_115

def sourceBody617_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_107 sourceBody617_116

def sourceBody617_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody617_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 46)

def sourceBody617_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody617_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 38)

def sourceBody617_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 40)

def sourceBody617_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 26)

def sourceBody617_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 28)

def sourceBody617_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody617_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([56]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody617_0, 617, 30)) (some 616) ([6, 36, 22, 52, 14, 44, 30]) (some (6, sourceBody617_125, 617, 31))

def sourceBody617_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_126 sourceBody617_3

def sourceBody617_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_127 sourceBody617_0

def sourceBody617_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_124 sourceBody617_128

def sourceBody617_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_123 sourceBody617_129

def sourceBody617_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_122 sourceBody617_130

def sourceBody617_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_121 sourceBody617_131

def sourceBody617_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_120 sourceBody617_132

def sourceBody617_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_119 sourceBody617_133

def sourceBody617_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_118 sourceBody617_134

def sourceBody617_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 56)

def sourceBody617_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody617_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody617_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody617_140 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 36 (Flapjack.WordRegImm.reg 22) sourceBody617_138 sourceBody617_139

def sourceBody617_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_140 sourceBody617_3

def sourceBody617_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 36)

def sourceBody617_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody617_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody617_0, 617, 32)) (some 490) ([36]) (some (36, sourceBody617_143, 617, 33))

def sourceBody617_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_144 sourceBody617_3

def sourceBody617_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_145 sourceBody617_0

def sourceBody617_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_138 sourceBody617_146

def sourceBody617_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_147

def sourceBody617_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_148

def sourceBody617_150 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 52 (Flapjack.WordRegImm.imm 0#64) sourceBody617_149 sourceBody617_0

def sourceBody617_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_150 sourceBody617_3

def sourceBody617_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_151 sourceBody617_0

def sourceBody617_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_142 sourceBody617_152

def sourceBody617_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_141 sourceBody617_153

def sourceBody617_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_137 sourceBody617_154

def sourceBody617_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_136 sourceBody617_155

def sourceBody617_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody617_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody617_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_158 sourceBody617_0

def sourceBody617_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_157 sourceBody617_159

def sourceBody617_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_156 sourceBody617_160

def sourceBody617_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_135 sourceBody617_161

def sourceBody617_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_162

def sourceBody617_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_163

def sourceBody617_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_117 sourceBody617_164

def sourceBody617_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_165

def sourceBody617_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_166

def sourceBody617_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_106 sourceBody617_167

def sourceBody617_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_94 sourceBody617_168

def sourceBody617_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_169

def sourceBody617_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_170

def sourceBody617_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_88 sourceBody617_171

def sourceBody617_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_172

def sourceBody617_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_173

def sourceBody617_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_82 sourceBody617_174

def sourceBody617_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_175

def sourceBody617_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_81 sourceBody617_176

def sourceBody617_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_65 sourceBody617_177

def sourceBody617_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_178

def sourceBody617_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_179

def sourceBody617_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_57 sourceBody617_180

def sourceBody617_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_181

def sourceBody617_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_182

def sourceBody617_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_51 sourceBody617_183

def sourceBody617_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_184

def sourceBody617_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_185

def sourceBody617_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_186

def sourceBody617_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_187

def sourceBody617_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_31 sourceBody617_188

def sourceBody617_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_189

def sourceBody617_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_190

def sourceBody617_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_19 sourceBody617_191

def sourceBody617_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_192

def sourceBody617_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_193

def sourceBody617_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_194

def sourceBody617_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_195

def sourceBody617_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_196

def sourceBody617_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_197

def sourceBody617_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_198

def sourceBody617_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_199

def sourceBody617_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_15 sourceBody617_200

def sourceBody617_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_201

def sourceBody617_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_202

def sourceBody617_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_203

def sourceBody617_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_204

def sourceBody617_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_205

def sourceBody617_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_206

def sourceBody617_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_207

def sourceBody617_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_208

def sourceBody617_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_11 sourceBody617_209

def sourceBody617_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_210

def sourceBody617_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_211

def sourceBody617_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_212

def sourceBody617_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_213

def sourceBody617_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_214

def sourceBody617_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_215

def sourceBody617_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_216

def sourceBody617_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_0 sourceBody617_217

def sourceBody617_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody617_7 sourceBody617_218

def source617 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (617, 1, sourceBody617_219)
end InitECandidate.Proofs.WordStages
