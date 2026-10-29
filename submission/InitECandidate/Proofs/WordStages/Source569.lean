import InitECandidate.Proofs.WordStages.Source553
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody569_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody569_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody569_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 38, 8, 32]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody569_0, 569, 2)) (some 475) ([]) (some (20, sourceBody569_1, 569, 3))

def sourceBody569_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody569_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_2 sourceBody569_3

def sourceBody569_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_4 sourceBody569_0

def sourceBody569_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody569_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 44, 4, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody569_0, 569, 4)) (some 475) ([]) (some (18, sourceBody569_6, 569, 5))

def sourceBody569_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_7 sourceBody569_3

def sourceBody569_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_8 sourceBody569_0

def sourceBody569_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody569_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 42, 12, 36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody569_0, 569, 6)) (some 475) ([]) (some (24, sourceBody569_10, 569, 7))

def sourceBody569_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_11 sourceBody569_3

def sourceBody569_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_12 sourceBody569_0

def sourceBody569_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 18)

def sourceBody569_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 42)

def sourceBody569_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 12)

def sourceBody569_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 36)

def sourceBody569_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def sourceBody569_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody569_0, 569, 8)) (some 462) ([48, 2, 26, 16]) (some (48, sourceBody569_18, 569, 9))

def sourceBody569_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_19 sourceBody569_3

def sourceBody569_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_20 sourceBody569_0

def sourceBody569_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_17 sourceBody569_21

def sourceBody569_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_16 sourceBody569_22

def sourceBody569_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_15 sourceBody569_23

def sourceBody569_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_14 sourceBody569_24

def sourceBody569_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 24)

def sourceBody569_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody569_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody569_0, 569, 10)) (some 465) ([2]) (some (2, sourceBody569_27, 569, 11))

def sourceBody569_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_28 sourceBody569_3

def sourceBody569_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_29 sourceBody569_0

def sourceBody569_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_26 sourceBody569_30

def sourceBody569_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody569_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 38)

def sourceBody569_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody569_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 32)

def sourceBody569_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody569_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 42)

def sourceBody569_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody569_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 36)

def sourceBody569_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody569_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody569_0, 569, 12)) (some 480) ([16, 40, 10, 34, 22, 46, 6, 30]) (some (16, sourceBody569_40, 569, 13))

def sourceBody569_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_41 sourceBody569_3

def sourceBody569_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_42 sourceBody569_0

def sourceBody569_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_39 sourceBody569_43

def sourceBody569_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_38 sourceBody569_44

def sourceBody569_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_37 sourceBody569_45

def sourceBody569_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_36 sourceBody569_46

def sourceBody569_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_35 sourceBody569_47

def sourceBody569_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_34 sourceBody569_48

def sourceBody569_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_33 sourceBody569_49

def sourceBody569_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_32 sourceBody569_50

def sourceBody569_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 48)

def sourceBody569_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody569_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 34 34 40 10))

def sourceBody569_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 3#64, Flapjack.WordLangExpHOL.var 34])

def sourceBody569_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 2)

def sourceBody569_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody569_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody569_0, 569, 14)) (some 463) ([22, 46]) (some (40, sourceBody569_57, 569, 15))

def sourceBody569_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_58 sourceBody569_3

def sourceBody569_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_59 sourceBody569_0

def sourceBody569_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_56 sourceBody569_60

def sourceBody569_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_55 sourceBody569_61

def sourceBody569_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_54 sourceBody569_62

def sourceBody569_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_53 sourceBody569_63

def sourceBody569_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_52 sourceBody569_64

def sourceBody569_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody569_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody569_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody569_0, 569, 16)) (some 470) ([10]) (some (10, sourceBody569_67, 569, 17))

def sourceBody569_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_68 sourceBody569_3

def sourceBody569_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_69 sourceBody569_0

def sourceBody569_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_66 sourceBody569_70

def sourceBody569_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_71

def sourceBody569_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_72

def sourceBody569_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 20)

def sourceBody569_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 44)

def sourceBody569_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody569_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 28)

def sourceBody569_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody569_0, 569, 18)) (some 462) ([10, 34, 22, 46]) (some (10, sourceBody569_67, 569, 19))

def sourceBody569_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_78 sourceBody569_3

def sourceBody569_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_79 sourceBody569_0

def sourceBody569_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_77 sourceBody569_80

def sourceBody569_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_76 sourceBody569_81

def sourceBody569_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_75 sourceBody569_82

def sourceBody569_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_74 sourceBody569_83

def sourceBody569_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody569_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody569_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody569_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody569_0, 569, 20)) (some 463) ([34, 22]) (some (34, sourceBody569_87, 569, 21))

def sourceBody569_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_88 sourceBody569_3

def sourceBody569_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_89 sourceBody569_0

def sourceBody569_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_86 sourceBody569_90

def sourceBody569_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_85 sourceBody569_91

def sourceBody569_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
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
        Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody569_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 10)

def sourceBody569_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody569_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody569_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 22 (Flapjack.WordRegImm.reg 46) sourceBody569_95 sourceBody569_96

def sourceBody569_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_97 sourceBody569_3

def sourceBody569_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 22)

def sourceBody569_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 9#64)

def sourceBody569_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 34)

def sourceBody569_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_101 sourceBody569_0

def sourceBody569_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_102 sourceBody569_0

def sourceBody569_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_100 sourceBody569_103

def sourceBody569_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_104

def sourceBody569_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody569_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_106 sourceBody569_87

def sourceBody569_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_105 sourceBody569_107

def sourceBody569_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody569_108 sourceBody569_0

def sourceBody569_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_109 sourceBody569_3

def sourceBody569_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_110 sourceBody569_0

def sourceBody569_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_99 sourceBody569_111

def sourceBody569_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_98 sourceBody569_112

def sourceBody569_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_94 sourceBody569_113

def sourceBody569_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_93 sourceBody569_114

def sourceBody569_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody569_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody569_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody569_0, 569, 22)) (some 482) ([22]) (some (22, sourceBody569_117, 569, 23))

def sourceBody569_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_118 sourceBody569_3

def sourceBody569_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_119 sourceBody569_0

def sourceBody569_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_116 sourceBody569_120

def sourceBody569_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_121

def sourceBody569_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_122

def sourceBody569_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_115 sourceBody569_123

def sourceBody569_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody569_126 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 46) sourceBody569_95 sourceBody569_96

def sourceBody569_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_126 sourceBody569_3

def sourceBody569_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody569_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 38)

def sourceBody569_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody569_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 32)

def sourceBody569_132 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody569_0, 569, 24)) (some 462) ([22, 46, 6, 30]) (some (22, sourceBody569_117, 569, 25))

def sourceBody569_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_132 sourceBody569_3

def sourceBody569_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_133 sourceBody569_0

def sourceBody569_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_131 sourceBody569_134

def sourceBody569_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_130 sourceBody569_135

def sourceBody569_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_129 sourceBody569_136

def sourceBody569_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_128 sourceBody569_137

def sourceBody569_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
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
      Flapjack.WordLangExpHOL.var 34])

def sourceBody569_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
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
            Flapjack.WordLangExpHOL.const 144#64]),
      Flapjack.WordLangExpHOL.var 40])

def sourceBody569_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 24)

def sourceBody569_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody569_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody569_0, 569, 26)) (some 77) ([46, 6, 30]) (some (46, sourceBody569_142, 569, 27))

def sourceBody569_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_143 sourceBody569_3

def sourceBody569_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_144 sourceBody569_0

def sourceBody569_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_141 sourceBody569_145

def sourceBody569_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_140 sourceBody569_146

def sourceBody569_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_139 sourceBody569_147

def sourceBody569_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_148

def sourceBody569_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_149

def sourceBody569_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_138 sourceBody569_150

def sourceBody569_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_151

def sourceBody569_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_152

def sourceBody569_154 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody569_153 sourceBody569_0

def sourceBody569_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_154 sourceBody569_3

def sourceBody569_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_155 sourceBody569_0

def sourceBody569_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_99 sourceBody569_156

def sourceBody569_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_127 sourceBody569_157

def sourceBody569_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_125 sourceBody569_158

def sourceBody569_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_86 sourceBody569_159

def sourceBody569_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_124 sourceBody569_160

def sourceBody569_162 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody569_0, 569, 28)) (some 490) ([22]) (some (22, sourceBody569_117, 569, 29))

def sourceBody569_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_162 sourceBody569_3

def sourceBody569_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_163 sourceBody569_0

def sourceBody569_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_95 sourceBody569_164

def sourceBody569_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_165

def sourceBody569_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_166

def sourceBody569_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_161 sourceBody569_167

def sourceBody569_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody569_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [34]

def sourceBody569_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_170 sourceBody569_0

def sourceBody569_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_169 sourceBody569_171

def sourceBody569_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_168 sourceBody569_172

def sourceBody569_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_92 sourceBody569_173

def sourceBody569_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_174

def sourceBody569_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_175

def sourceBody569_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_84 sourceBody569_176

def sourceBody569_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_177

def sourceBody569_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_178

def sourceBody569_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_73 sourceBody569_179

def sourceBody569_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_65 sourceBody569_180

def sourceBody569_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_181

def sourceBody569_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_182

def sourceBody569_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_51 sourceBody569_183

def sourceBody569_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_184

def sourceBody569_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_185

def sourceBody569_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_186

def sourceBody569_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_187

def sourceBody569_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_31 sourceBody569_188

def sourceBody569_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_189

def sourceBody569_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_190

def sourceBody569_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_25 sourceBody569_191

def sourceBody569_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_192

def sourceBody569_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_193

def sourceBody569_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_13 sourceBody569_194

def sourceBody569_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_195

def sourceBody569_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_196

def sourceBody569_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_197

def sourceBody569_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_198

def sourceBody569_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_199

def sourceBody569_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_200

def sourceBody569_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_201

def sourceBody569_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_202

def sourceBody569_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_9 sourceBody569_203

def sourceBody569_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_204

def sourceBody569_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_205

def sourceBody569_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_206

def sourceBody569_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_207

def sourceBody569_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_208

def sourceBody569_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_209

def sourceBody569_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_210

def sourceBody569_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_211

def sourceBody569_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_5 sourceBody569_212

def sourceBody569_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_213

def sourceBody569_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_214

def sourceBody569_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_215

def sourceBody569_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_216

def sourceBody569_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_217

def sourceBody569_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_218

def sourceBody569_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_219

def sourceBody569_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody569_0 sourceBody569_220

def source569 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (569, 1, sourceBody569_221)
end InitECandidate.Proofs.WordStages
