import InitECandidate.Proofs.WordStages.Source544
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody560_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody560_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody560_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 40, 28, 52]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody560_0, 560, 2)) (some 475) ([]) (some (10, sourceBody560_1, 560, 3))

def sourceBody560_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody560_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_2 sourceBody560_3

def sourceBody560_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_4 sourceBody560_0

def sourceBody560_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody560_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 36, 24, 48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody560_0, 560, 4)) (some 475) ([]) (some (18, sourceBody560_6, 560, 5))

def sourceBody560_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_7 sourceBody560_3

def sourceBody560_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_8 sourceBody560_0

def sourceBody560_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody560_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 44, 32, 56]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody560_0, 560, 6)) (some 475) ([]) (some (8, sourceBody560_10, 560, 7))

def sourceBody560_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_11 sourceBody560_3

def sourceBody560_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_12 sourceBody560_0

def sourceBody560_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody560_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 44)

def sourceBody560_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 32)

def sourceBody560_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 56)

def sourceBody560_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody560_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody560_0, 560, 8)) (some 462) ([34, 22, 46, 16]) (some (34, sourceBody560_18, 560, 9))

def sourceBody560_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_19 sourceBody560_3

def sourceBody560_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_20 sourceBody560_0

def sourceBody560_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_17 sourceBody560_21

def sourceBody560_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_16 sourceBody560_22

def sourceBody560_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_15 sourceBody560_23

def sourceBody560_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_14 sourceBody560_24

def sourceBody560_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody560_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody560_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody560_0, 560, 10)) (some 465) ([22]) (some (22, sourceBody560_27, 560, 11))

def sourceBody560_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_28 sourceBody560_3

def sourceBody560_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_29 sourceBody560_0

def sourceBody560_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_26 sourceBody560_30

def sourceBody560_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody560_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 40)

def sourceBody560_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 28)

def sourceBody560_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 52)

def sourceBody560_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody560_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 44)

def sourceBody560_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 32)

def sourceBody560_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 56)

def sourceBody560_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody560_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([22, 46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody560_0, 560, 12)) (some 480) ([16, 42, 30, 54, 12, 38, 26, 50]) (some (16, sourceBody560_40, 560, 13))

def sourceBody560_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_41 sourceBody560_3

def sourceBody560_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_42 sourceBody560_0

def sourceBody560_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_39 sourceBody560_43

def sourceBody560_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_38 sourceBody560_44

def sourceBody560_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_37 sourceBody560_45

def sourceBody560_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_36 sourceBody560_46

def sourceBody560_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_35 sourceBody560_47

def sourceBody560_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_34 sourceBody560_48

def sourceBody560_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_33 sourceBody560_49

def sourceBody560_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_32 sourceBody560_50

def sourceBody560_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 34)

def sourceBody560_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody560_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 54 54 42 30))

def sourceBody560_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 54])

def sourceBody560_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 22)

def sourceBody560_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody560_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody560_0, 560, 14)) (some 463) ([12, 38]) (some (42, sourceBody560_57, 560, 15))

def sourceBody560_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_58 sourceBody560_3

def sourceBody560_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_59 sourceBody560_0

def sourceBody560_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_56 sourceBody560_60

def sourceBody560_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_55 sourceBody560_61

def sourceBody560_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_54 sourceBody560_62

def sourceBody560_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_53 sourceBody560_63

def sourceBody560_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_52 sourceBody560_64

def sourceBody560_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody560_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody560_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody560_0, 560, 16)) (some 470) ([30]) (some (30, sourceBody560_67, 560, 17))

def sourceBody560_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_68 sourceBody560_3

def sourceBody560_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_69 sourceBody560_0

def sourceBody560_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_66 sourceBody560_70

def sourceBody560_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_71

def sourceBody560_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_72

def sourceBody560_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 46)

def sourceBody560_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody560_0, 560, 18)) (some 482) ([30]) (some (30, sourceBody560_67, 560, 19))

def sourceBody560_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_75 sourceBody560_3

def sourceBody560_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_76 sourceBody560_0

def sourceBody560_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_74 sourceBody560_77

def sourceBody560_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_78

def sourceBody560_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_79

def sourceBody560_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_73 sourceBody560_80

def sourceBody560_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody560_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody560_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody560_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody560_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.reg 54) sourceBody560_84 sourceBody560_85

def sourceBody560_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_86 sourceBody560_3

def sourceBody560_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 30)

def sourceBody560_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def sourceBody560_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 40)

def sourceBody560_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 28)

def sourceBody560_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 52)

def sourceBody560_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody560_0, 560, 20)) (some 462) ([30, 54, 12, 38]) (some (30, sourceBody560_67, 560, 21))

def sourceBody560_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_93 sourceBody560_3

def sourceBody560_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_94 sourceBody560_0

def sourceBody560_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_92 sourceBody560_95

def sourceBody560_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_91 sourceBody560_96

def sourceBody560_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_90 sourceBody560_97

def sourceBody560_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_89 sourceBody560_98

def sourceBody560_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 10)

def sourceBody560_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 36)

def sourceBody560_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 24)

def sourceBody560_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 48)

def sourceBody560_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def sourceBody560_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody560_0, 560, 22)) (some 462) ([54, 12, 38, 26]) (some (54, sourceBody560_104, 560, 23))

def sourceBody560_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_105 sourceBody560_3

def sourceBody560_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_106 sourceBody560_0

def sourceBody560_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_103 sourceBody560_107

def sourceBody560_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_102 sourceBody560_108

def sourceBody560_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_101 sourceBody560_109

def sourceBody560_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_100 sourceBody560_110

def sourceBody560_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody560_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 6)

def sourceBody560_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody560_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 8)

def sourceBody560_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
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
      Flapjack.WordLangExpHOL.var 42])

def sourceBody560_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody560_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody560_0, 560, 24)) (some 484) ([12, 38, 26, 50, 20]) (some (12, sourceBody560_117, 560, 25))

def sourceBody560_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_118 sourceBody560_3

def sourceBody560_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_119 sourceBody560_0

def sourceBody560_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_116 sourceBody560_120

def sourceBody560_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_115 sourceBody560_121

def sourceBody560_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_114 sourceBody560_122

def sourceBody560_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_113 sourceBody560_123

def sourceBody560_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_112 sourceBody560_124

def sourceBody560_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_125

def sourceBody560_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_126

def sourceBody560_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_111 sourceBody560_127

def sourceBody560_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_128

def sourceBody560_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_129

def sourceBody560_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_99 sourceBody560_130

def sourceBody560_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_131

def sourceBody560_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_132

def sourceBody560_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody560_133 sourceBody560_0

def sourceBody560_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_134 sourceBody560_3

def sourceBody560_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_135 sourceBody560_0

def sourceBody560_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_88 sourceBody560_136

def sourceBody560_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_87 sourceBody560_137

def sourceBody560_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_83 sourceBody560_138

def sourceBody560_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_82 sourceBody560_139

def sourceBody560_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_81 sourceBody560_140

def sourceBody560_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody560_0, 560, 26)) (some 490) ([30]) (some (30, sourceBody560_67, 560, 27))

def sourceBody560_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_142 sourceBody560_3

def sourceBody560_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_143 sourceBody560_0

def sourceBody560_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_84 sourceBody560_144

def sourceBody560_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_145

def sourceBody560_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_146

def sourceBody560_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_141 sourceBody560_147

def sourceBody560_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody560_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [42]

def sourceBody560_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_150 sourceBody560_0

def sourceBody560_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_149 sourceBody560_151

def sourceBody560_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_148 sourceBody560_152

def sourceBody560_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_65 sourceBody560_153

def sourceBody560_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_154

def sourceBody560_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_155

def sourceBody560_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_51 sourceBody560_156

def sourceBody560_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_157

def sourceBody560_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_158

def sourceBody560_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_159

def sourceBody560_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_160

def sourceBody560_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_31 sourceBody560_161

def sourceBody560_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_162

def sourceBody560_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_163

def sourceBody560_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_25 sourceBody560_164

def sourceBody560_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_165

def sourceBody560_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_166

def sourceBody560_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_13 sourceBody560_167

def sourceBody560_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_168

def sourceBody560_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_169

def sourceBody560_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_170

def sourceBody560_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_171

def sourceBody560_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_172

def sourceBody560_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_173

def sourceBody560_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_174

def sourceBody560_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_175

def sourceBody560_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_9 sourceBody560_176

def sourceBody560_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_177

def sourceBody560_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_178

def sourceBody560_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_179

def sourceBody560_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_180

def sourceBody560_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_181

def sourceBody560_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_182

def sourceBody560_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_183

def sourceBody560_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_184

def sourceBody560_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_5 sourceBody560_185

def sourceBody560_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_186

def sourceBody560_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_187

def sourceBody560_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_188

def sourceBody560_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_189

def sourceBody560_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_190

def sourceBody560_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_191

def sourceBody560_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_192

def sourceBody560_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody560_0 sourceBody560_193

def source560 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (560, 4, sourceBody560_194)
end InitECandidate.Proofs.WordStages
