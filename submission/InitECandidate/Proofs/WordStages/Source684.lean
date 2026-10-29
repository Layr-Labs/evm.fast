import InitECandidate.Proofs.WordStages.Source668
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody684_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody684_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody684_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 26 26 18 34))

def sourceBody684_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody684_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_2 sourceBody684_3

def sourceBody684_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_1 sourceBody684_4

def sourceBody684_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_0 sourceBody684_5

def sourceBody684_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 26)

def sourceBody684_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody684_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody684_3, 684, 2)) (some 69) ([]) (some (38, sourceBody684_8, 684, 3))

def sourceBody684_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody684_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_9 sourceBody684_10

def sourceBody684_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_11 sourceBody684_3

def sourceBody684_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 42)

def sourceBody684_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody684_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody684_3, 684, 4)) (some 68) ([30]) (some (30, sourceBody684_14, 684, 5))

def sourceBody684_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_15 sourceBody684_10

def sourceBody684_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_16 sourceBody684_3

def sourceBody684_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_13 sourceBody684_17

def sourceBody684_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 42)

def sourceBody684_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody684_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody684_3, 684, 6)) (some 68) ([44]) (some (44, sourceBody684_20, 684, 7))

def sourceBody684_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_21 sourceBody684_10

def sourceBody684_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_22 sourceBody684_3

def sourceBody684_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_19 sourceBody684_23

def sourceBody684_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody684_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 38)

def sourceBody684_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody684_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody684_3, 684, 8)) (some 680) ([16, 32]) (some (16, sourceBody684_27, 684, 9))

def sourceBody684_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_28 sourceBody684_10

def sourceBody684_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_29 sourceBody684_3

def sourceBody684_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_26 sourceBody684_30

def sourceBody684_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_25 sourceBody684_31

def sourceBody684_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_32

def sourceBody684_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_33

def sourceBody684_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 30)

def sourceBody684_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 6)

def sourceBody684_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 42)

def sourceBody684_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody684_3, 684, 10)) (some 77) ([16, 32, 24]) (some (16, sourceBody684_27, 684, 11))

def sourceBody684_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_38 sourceBody684_10

def sourceBody684_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_39 sourceBody684_3

def sourceBody684_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_37 sourceBody684_40

def sourceBody684_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_36 sourceBody684_41

def sourceBody684_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_35 sourceBody684_42

def sourceBody684_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_43

def sourceBody684_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_44

def sourceBody684_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_34 sourceBody684_45

def sourceBody684_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody684_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody684_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody684_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 14)

def sourceBody684_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody684_3, 684, 12)) (some 138) ([16, 32, 24, 40]) (some (16, sourceBody684_27, 684, 13))

def sourceBody684_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_51 sourceBody684_10

def sourceBody684_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_52 sourceBody684_3

def sourceBody684_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_50 sourceBody684_53

def sourceBody684_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_49 sourceBody684_54

def sourceBody684_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_48 sourceBody684_55

def sourceBody684_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_47 sourceBody684_56

def sourceBody684_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody684_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody684_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 44)

def sourceBody684_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody684_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody684_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.WordRegImm.reg 40) sourceBody684_61 sourceBody684_62

def sourceBody684_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_63 sourceBody684_10

def sourceBody684_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody684_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody684_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 10)

def sourceBody684_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody684_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 14)

def sourceBody684_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 16)

def sourceBody684_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody684_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody684_3, 684, 14)) (some 104) ([24, 40, 20, 36, 28]) (some (24, sourceBody684_71, 684, 15))

def sourceBody684_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_72 sourceBody684_10

def sourceBody684_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_73 sourceBody684_3

def sourceBody684_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_70 sourceBody684_74

def sourceBody684_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_69 sourceBody684_75

def sourceBody684_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_68 sourceBody684_76

def sourceBody684_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_67 sourceBody684_77

def sourceBody684_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_66 sourceBody684_78

def sourceBody684_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 32)

def sourceBody684_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody684_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody684_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody684_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 20) sourceBody684_82 sourceBody684_83

def sourceBody684_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_84 sourceBody684_10

def sourceBody684_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 40)

def sourceBody684_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 2)

def sourceBody684_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 38)

def sourceBody684_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 38)

def sourceBody684_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 30)

def sourceBody684_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody684_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody684_3, 684, 16)) (some 683) ([40, 20, 36, 28]) (some (40, sourceBody684_91, 684, 17))

def sourceBody684_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_92 sourceBody684_10

def sourceBody684_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_93 sourceBody684_3

def sourceBody684_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_90 sourceBody684_94

def sourceBody684_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_89 sourceBody684_95

def sourceBody684_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_88 sourceBody684_96

def sourceBody684_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_87 sourceBody684_97

def sourceBody684_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_98

def sourceBody684_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_99

def sourceBody684_101 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody684_100 sourceBody684_3

def sourceBody684_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_101 sourceBody684_10

def sourceBody684_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_102 sourceBody684_3

def sourceBody684_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_86 sourceBody684_103

def sourceBody684_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_85 sourceBody684_104

def sourceBody684_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_81 sourceBody684_105

def sourceBody684_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_80 sourceBody684_106

def sourceBody684_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody684_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody684_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_109 sourceBody684_3

def sourceBody684_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_110 sourceBody684_3

def sourceBody684_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_108 sourceBody684_111

def sourceBody684_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_112

def sourceBody684_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_107 sourceBody684_113

def sourceBody684_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 16)

def sourceBody684_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 44)

def sourceBody684_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 40 (Flapjack.WordRegImm.reg 20) sourceBody684_82 sourceBody684_83

def sourceBody684_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_117 sourceBody684_10

def sourceBody684_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody684_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 30)

def sourceBody684_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody684_3, 684, 18)) (some 682) ([40, 20, 36]) (some (40, sourceBody684_91, 684, 19))

def sourceBody684_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_121 sourceBody684_10

def sourceBody684_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_122 sourceBody684_3

def sourceBody684_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_120 sourceBody684_123

def sourceBody684_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_119 sourceBody684_124

def sourceBody684_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_87 sourceBody684_125

def sourceBody684_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_126

def sourceBody684_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_127

def sourceBody684_129 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody684_128 sourceBody684_3

def sourceBody684_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_129 sourceBody684_10

def sourceBody684_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_130 sourceBody684_3

def sourceBody684_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_86 sourceBody684_131

def sourceBody684_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_118 sourceBody684_132

def sourceBody684_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_116 sourceBody684_133

def sourceBody684_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_115 sourceBody684_134

def sourceBody684_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_114 sourceBody684_135

def sourceBody684_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_79 sourceBody684_136

def sourceBody684_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_137

def sourceBody684_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_138

def sourceBody684_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody684_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_139 sourceBody684_140

def sourceBody684_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody684_143 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody684_141 sourceBody684_142

def sourceBody684_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_143 sourceBody684_10

def sourceBody684_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_144 sourceBody684_3

def sourceBody684_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_65 sourceBody684_145

def sourceBody684_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_64 sourceBody684_146

def sourceBody684_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_60 sourceBody684_147

def sourceBody684_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_59 sourceBody684_148

def sourceBody684_150 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody684_149 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody684_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_150 sourceBody684_10

def sourceBody684_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_10 sourceBody684_151

def sourceBody684_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody684_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 38)

def sourceBody684_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 42)

def sourceBody684_156 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody684_3, 684, 20)) (some 77) ([24, 40, 20]) (some (24, sourceBody684_71, 684, 21))

def sourceBody684_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_156 sourceBody684_10

def sourceBody684_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_157 sourceBody684_3

def sourceBody684_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_155 sourceBody684_158

def sourceBody684_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_154 sourceBody684_159

def sourceBody684_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_153 sourceBody684_160

def sourceBody684_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_161

def sourceBody684_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_162

def sourceBody684_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_152 sourceBody684_163

def sourceBody684_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody684_166 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody684_3, 684, 22)) (some 70) ([24]) (some (24, sourceBody684_71, 684, 23))

def sourceBody684_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_166 sourceBody684_10

def sourceBody684_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_167 sourceBody684_3

def sourceBody684_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_165 sourceBody684_168

def sourceBody684_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_169

def sourceBody684_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_170

def sourceBody684_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_164 sourceBody684_171

def sourceBody684_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody684_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32]

def sourceBody684_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_174 sourceBody684_3

def sourceBody684_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_173 sourceBody684_175

def sourceBody684_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_172 sourceBody684_176

def sourceBody684_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_58 sourceBody684_177

def sourceBody684_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_178

def sourceBody684_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_57 sourceBody684_179

def sourceBody684_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_180

def sourceBody684_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_181

def sourceBody684_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_46 sourceBody684_182

def sourceBody684_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_24 sourceBody684_183

def sourceBody684_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_184

def sourceBody684_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_185

def sourceBody684_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_18 sourceBody684_186

def sourceBody684_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_187

def sourceBody684_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_188

def sourceBody684_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_12 sourceBody684_189

def sourceBody684_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_190

def sourceBody684_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_3 sourceBody684_191

def sourceBody684_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_7 sourceBody684_192

def sourceBody684_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody684_6 sourceBody684_193

def source684 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (684, 8, sourceBody684_194)
end InitECandidate.Proofs.WordStages
