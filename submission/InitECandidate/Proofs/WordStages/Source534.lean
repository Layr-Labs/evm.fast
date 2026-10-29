import InitECandidate.Proofs.WordStages.Source518
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody534_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody534_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody534_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 50, 10, 42]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody534_0, 534, 2)) (some 475) ([]) (some (26, sourceBody534_1, 534, 3))

def sourceBody534_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody534_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_2 sourceBody534_3

def sourceBody534_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_4 sourceBody534_0

def sourceBody534_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody534_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 58, 6, 38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody534_0, 534, 4)) (some 475) ([]) (some (22, sourceBody534_6, 534, 5))

def sourceBody534_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_7 sourceBody534_3

def sourceBody534_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_8 sourceBody534_0

def sourceBody534_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody534_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([22, 54, 14, 46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody534_0, 534, 6)) (some 475) ([]) (some (30, sourceBody534_10, 534, 7))

def sourceBody534_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_11 sourceBody534_3

def sourceBody534_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_12 sourceBody534_0

def sourceBody534_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 22)

def sourceBody534_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 54)

def sourceBody534_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 14)

def sourceBody534_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 46)

def sourceBody534_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def sourceBody534_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody534_0, 534, 8)) (some 462) ([62, 4, 36, 20]) (some (62, sourceBody534_18, 534, 9))

def sourceBody534_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_19 sourceBody534_3

def sourceBody534_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_20 sourceBody534_0

def sourceBody534_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_17 sourceBody534_21

def sourceBody534_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_16 sourceBody534_22

def sourceBody534_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_15 sourceBody534_23

def sourceBody534_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_14 sourceBody534_24

def sourceBody534_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 30)

def sourceBody534_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody534_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody534_0, 534, 10)) (some 465) ([4]) (some (4, sourceBody534_27, 534, 11))

def sourceBody534_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_28 sourceBody534_3

def sourceBody534_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_29 sourceBody534_0

def sourceBody534_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_26 sourceBody534_30

def sourceBody534_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody534_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 58)

def sourceBody534_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody534_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 38)

def sourceBody534_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody534_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 54)

def sourceBody534_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody534_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 46)

def sourceBody534_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody534_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 50)

def sourceBody534_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody534_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 42)

def sourceBody534_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 22)

def sourceBody534_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 54)

def sourceBody534_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 14)

def sourceBody534_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 46)

def sourceBody534_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody534_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([4, 36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody534_0, 534, 12)) (some 481) ([20, 52, 12, 44, 28, 60, 8, 40, 24, 56, 16, 48, 32, 64, 2, 34]) (some (20, sourceBody534_48, 534, 13))

def sourceBody534_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_49 sourceBody534_3

def sourceBody534_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_50 sourceBody534_0

def sourceBody534_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_47 sourceBody534_51

def sourceBody534_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_46 sourceBody534_52

def sourceBody534_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_45 sourceBody534_53

def sourceBody534_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_44 sourceBody534_54

def sourceBody534_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_43 sourceBody534_55

def sourceBody534_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_42 sourceBody534_56

def sourceBody534_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_41 sourceBody534_57

def sourceBody534_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_40 sourceBody534_58

def sourceBody534_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_39 sourceBody534_59

def sourceBody534_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_38 sourceBody534_60

def sourceBody534_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_37 sourceBody534_61

def sourceBody534_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_36 sourceBody534_62

def sourceBody534_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_35 sourceBody534_63

def sourceBody534_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_34 sourceBody534_64

def sourceBody534_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_33 sourceBody534_65

def sourceBody534_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_32 sourceBody534_66

def sourceBody534_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 62)

def sourceBody534_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody534_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 44 44 52 12))

def sourceBody534_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 3#64, Flapjack.WordLangExpHOL.var 44])

def sourceBody534_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 4)

def sourceBody534_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody534_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody534_0, 534, 14)) (some 463) ([28, 60]) (some (52, sourceBody534_73, 534, 15))

def sourceBody534_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_74 sourceBody534_3

def sourceBody534_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_75 sourceBody534_0

def sourceBody534_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_72 sourceBody534_76

def sourceBody534_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_71 sourceBody534_77

def sourceBody534_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_70 sourceBody534_78

def sourceBody534_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_69 sourceBody534_79

def sourceBody534_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_68 sourceBody534_80

def sourceBody534_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody534_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody534_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody534_0, 534, 16)) (some 470) ([12]) (some (12, sourceBody534_83, 534, 17))

def sourceBody534_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_84 sourceBody534_3

def sourceBody534_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_85 sourceBody534_0

def sourceBody534_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_82 sourceBody534_86

def sourceBody534_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_87

def sourceBody534_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_88

def sourceBody534_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 36)

def sourceBody534_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody534_0, 534, 18)) (some 482) ([12]) (some (12, sourceBody534_83, 534, 19))

def sourceBody534_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_91 sourceBody534_3

def sourceBody534_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_92 sourceBody534_0

def sourceBody534_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_90 sourceBody534_93

def sourceBody534_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_94

def sourceBody534_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_95

def sourceBody534_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_89 sourceBody534_96

def sourceBody534_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 30)

def sourceBody534_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody534_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody534_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody534_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 44) sourceBody534_100 sourceBody534_101

def sourceBody534_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_102 sourceBody534_3

def sourceBody534_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody534_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody534_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 50)

def sourceBody534_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody534_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 42)

def sourceBody534_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody534_0, 534, 20)) (some 462) ([12, 44, 28, 60]) (some (12, sourceBody534_83, 534, 21))

def sourceBody534_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_109 sourceBody534_3

def sourceBody534_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_110 sourceBody534_0

def sourceBody534_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_108 sourceBody534_111

def sourceBody534_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_107 sourceBody534_112

def sourceBody534_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_106 sourceBody534_113

def sourceBody534_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_105 sourceBody534_114

def sourceBody534_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 26)

def sourceBody534_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 58)

def sourceBody534_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 6)

def sourceBody534_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 38)

def sourceBody534_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody534_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody534_0, 534, 22)) (some 462) ([44, 28, 60, 8]) (some (44, sourceBody534_120, 534, 23))

def sourceBody534_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_121 sourceBody534_3

def sourceBody534_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_122 sourceBody534_0

def sourceBody534_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_119 sourceBody534_123

def sourceBody534_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_118 sourceBody534_124

def sourceBody534_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_117 sourceBody534_125

def sourceBody534_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_116 sourceBody534_126

def sourceBody534_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody534_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody534_0, 534, 24)) (some 69) ([]) (some (28, sourceBody534_128, 534, 25))

def sourceBody534_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_129 sourceBody534_3

def sourceBody534_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_130 sourceBody534_0

def sourceBody534_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 30)

def sourceBody534_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody534_134 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody534_0, 534, 26)) (some 68) ([60]) (some (60, sourceBody534_133, 534, 27))

def sourceBody534_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_134 sourceBody534_3

def sourceBody534_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_135 sourceBody534_0

def sourceBody534_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_132 sourceBody534_136

def sourceBody534_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody534_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
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
      Flapjack.WordLangExpHOL.var 12])

def sourceBody534_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody534_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody534_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody534_0, 534, 28)) (some 77) ([8, 40, 24]) (some (8, sourceBody534_141, 534, 29))

def sourceBody534_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_142 sourceBody534_3

def sourceBody534_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_143 sourceBody534_0

def sourceBody534_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_140 sourceBody534_144

def sourceBody534_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_139 sourceBody534_145

def sourceBody534_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_138 sourceBody534_146

def sourceBody534_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_147

def sourceBody534_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_148

def sourceBody534_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
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
      Flapjack.WordLangExpHOL.var 52])

def sourceBody534_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 28)

def sourceBody534_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody534_0, 534, 30)) (some 77) ([8, 40, 24]) (some (8, sourceBody534_141, 534, 31))

def sourceBody534_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_152 sourceBody534_3

def sourceBody534_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_153 sourceBody534_0

def sourceBody534_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_140 sourceBody534_154

def sourceBody534_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_151 sourceBody534_155

def sourceBody534_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_150 sourceBody534_156

def sourceBody534_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_157

def sourceBody534_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_158

def sourceBody534_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_149 sourceBody534_159

def sourceBody534_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 44)

def sourceBody534_162 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody534_0, 534, 32)) (some 70) ([8]) (some (8, sourceBody534_141, 534, 33))

def sourceBody534_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_162 sourceBody534_3

def sourceBody534_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_163 sourceBody534_0

def sourceBody534_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_161 sourceBody534_164

def sourceBody534_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_165

def sourceBody534_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_166

def sourceBody534_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_160 sourceBody534_167

def sourceBody534_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_137 sourceBody534_168

def sourceBody534_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_169

def sourceBody534_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_170

def sourceBody534_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_131 sourceBody534_171

def sourceBody534_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_172

def sourceBody534_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_173

def sourceBody534_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_127 sourceBody534_174

def sourceBody534_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_175

def sourceBody534_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_176

def sourceBody534_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_115 sourceBody534_177

def sourceBody534_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_178

def sourceBody534_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_179

def sourceBody534_181 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody534_180 sourceBody534_0

def sourceBody534_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_181 sourceBody534_3

def sourceBody534_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_182 sourceBody534_0

def sourceBody534_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_104 sourceBody534_183

def sourceBody534_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_103 sourceBody534_184

def sourceBody534_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_99 sourceBody534_185

def sourceBody534_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_98 sourceBody534_186

def sourceBody534_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_97 sourceBody534_187

def sourceBody534_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody534_0, 534, 34)) (some 490) ([12]) (some (12, sourceBody534_83, 534, 35))

def sourceBody534_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_189 sourceBody534_3

def sourceBody534_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_190 sourceBody534_0

def sourceBody534_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_100 sourceBody534_191

def sourceBody534_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_192

def sourceBody534_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_193

def sourceBody534_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_188 sourceBody534_194

def sourceBody534_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody534_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [52]

def sourceBody534_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_197 sourceBody534_0

def sourceBody534_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_196 sourceBody534_198

def sourceBody534_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_195 sourceBody534_199

def sourceBody534_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_81 sourceBody534_200

def sourceBody534_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_201

def sourceBody534_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_202

def sourceBody534_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_67 sourceBody534_203

def sourceBody534_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_204

def sourceBody534_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_205

def sourceBody534_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_206

def sourceBody534_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_207

def sourceBody534_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_31 sourceBody534_208

def sourceBody534_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_209

def sourceBody534_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_210

def sourceBody534_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_25 sourceBody534_211

def sourceBody534_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_212

def sourceBody534_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_213

def sourceBody534_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_13 sourceBody534_214

def sourceBody534_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_215

def sourceBody534_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_216

def sourceBody534_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_217

def sourceBody534_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_218

def sourceBody534_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_219

def sourceBody534_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_220

def sourceBody534_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_221

def sourceBody534_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_222

def sourceBody534_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_9 sourceBody534_223

def sourceBody534_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_224

def sourceBody534_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_225

def sourceBody534_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_226

def sourceBody534_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_227

def sourceBody534_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_228

def sourceBody534_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_229

def sourceBody534_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_230

def sourceBody534_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_231

def sourceBody534_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_5 sourceBody534_232

def sourceBody534_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_233

def sourceBody534_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_234

def sourceBody534_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_235

def sourceBody534_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_236

def sourceBody534_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_237

def sourceBody534_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_238

def sourceBody534_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_239

def sourceBody534_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody534_0 sourceBody534_240

def source534 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (534, 1, sourceBody534_241)
end InitECandidate.Proofs.WordStages
