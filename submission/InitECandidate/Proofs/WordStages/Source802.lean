import InitECandidate.Proofs.WordStages.Source786
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody802_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody802_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody802_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody802_0, 802, 2)) (some 69) ([]) (some (36, sourceBody802_1, 802, 3))

def sourceBody802_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody802_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_2 sourceBody802_3

def sourceBody802_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_4 sourceBody802_0

def sourceBody802_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody802_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody802_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody802_0, 802, 4)) (some 68) ([14]) (some (14, sourceBody802_7, 802, 5))

def sourceBody802_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_8 sourceBody802_3

def sourceBody802_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_9 sourceBody802_0

def sourceBody802_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_6 sourceBody802_10

def sourceBody802_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody802_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody802_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody802_0, 802, 6)) (some 68) ([28]) (some (28, sourceBody802_13, 802, 7))

def sourceBody802_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_14 sourceBody802_3

def sourceBody802_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_15 sourceBody802_0

def sourceBody802_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_12 sourceBody802_16

def sourceBody802_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody802_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody802_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 16 16 20 34))

def sourceBody802_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 36)

def sourceBody802_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 16])

def sourceBody802_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody802_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody802_0, 802, 8)) (some 729) ([30, 24]) (some (20, sourceBody802_23, 802, 9))

def sourceBody802_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_24 sourceBody802_3

def sourceBody802_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_25 sourceBody802_0

def sourceBody802_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_22 sourceBody802_26

def sourceBody802_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_21 sourceBody802_27

def sourceBody802_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_20 sourceBody802_28

def sourceBody802_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_19 sourceBody802_29

def sourceBody802_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_18 sourceBody802_30

def sourceBody802_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_31

def sourceBody802_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_32

def sourceBody802_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody802_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody802_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody802_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody802_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody802_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 34 (Flapjack.WordRegImm.reg 16) sourceBody802_37 sourceBody802_38

def sourceBody802_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_39 sourceBody802_3

def sourceBody802_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 34)

def sourceBody802_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody802_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 36)

def sourceBody802_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody802_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody802_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody802_0, 802, 10)) (some 739) ([34, 16, 30]) (some (34, sourceBody802_45, 802, 11))

def sourceBody802_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_46 sourceBody802_3

def sourceBody802_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_47 sourceBody802_0

def sourceBody802_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_44 sourceBody802_48

def sourceBody802_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_43 sourceBody802_49

def sourceBody802_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_42 sourceBody802_50

def sourceBody802_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_51

def sourceBody802_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_52

def sourceBody802_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody802_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 30 30 34 16))

def sourceBody802_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 2#64],
      Flapjack.WordLangExpHOL.var 28])

def sourceBody802_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody802_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 12 12 24 38))

def sourceBody802_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody802_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 30])

def sourceBody802_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 12])

def sourceBody802_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody802_0, 802, 12)) (some 739) ([26, 18, 32]) (some (34, sourceBody802_45, 802, 13))

def sourceBody802_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_62 sourceBody802_3

def sourceBody802_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_63 sourceBody802_0

def sourceBody802_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_61 sourceBody802_64

def sourceBody802_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_60 sourceBody802_65

def sourceBody802_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_59 sourceBody802_66

def sourceBody802_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_58 sourceBody802_67

def sourceBody802_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_57 sourceBody802_68

def sourceBody802_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_56 sourceBody802_69

def sourceBody802_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_55 sourceBody802_70

def sourceBody802_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_54 sourceBody802_71

def sourceBody802_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_35 sourceBody802_72

def sourceBody802_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_73

def sourceBody802_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_74

def sourceBody802_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_53 sourceBody802_75

def sourceBody802_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def sourceBody802_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody802_0, 802, 14)) (some 734) ([34, 16, 30]) (some (34, sourceBody802_45, 802, 15))

def sourceBody802_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_78 sourceBody802_3

def sourceBody802_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_79 sourceBody802_0

def sourceBody802_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_77 sourceBody802_80

def sourceBody802_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_43 sourceBody802_81

def sourceBody802_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_42 sourceBody802_82

def sourceBody802_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_83

def sourceBody802_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_84

def sourceBody802_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_76 sourceBody802_85

def sourceBody802_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody802_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 20)

def sourceBody802_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_88 sourceBody802_0

def sourceBody802_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_89 sourceBody802_0

def sourceBody802_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_87 sourceBody802_90

def sourceBody802_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_91

def sourceBody802_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_86 sourceBody802_92

def sourceBody802_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody802_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_93 sourceBody802_94

def sourceBody802_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody802_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody802_95 sourceBody802_96

def sourceBody802_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_97 sourceBody802_3

def sourceBody802_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_98 sourceBody802_0

def sourceBody802_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_41 sourceBody802_99

def sourceBody802_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_40 sourceBody802_100

def sourceBody802_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_36 sourceBody802_101

def sourceBody802_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_35 sourceBody802_102

def sourceBody802_104 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody802_103 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody802_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_104 sourceBody802_3

def sourceBody802_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_3 sourceBody802_105

def sourceBody802_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody802_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody802_0, 802, 16)) (some 729) ([34, 16]) (some (34, sourceBody802_45, 802, 17))

def sourceBody802_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_108 sourceBody802_3

def sourceBody802_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_109 sourceBody802_0

def sourceBody802_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_43 sourceBody802_110

def sourceBody802_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_107 sourceBody802_111

def sourceBody802_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_112

def sourceBody802_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_113

def sourceBody802_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_106 sourceBody802_114

def sourceBody802_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 22)

def sourceBody802_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody802_0, 802, 18)) (some 70) ([34]) (some (34, sourceBody802_45, 802, 19))

def sourceBody802_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_117 sourceBody802_3

def sourceBody802_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_118 sourceBody802_0

def sourceBody802_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_116 sourceBody802_119

def sourceBody802_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_120

def sourceBody802_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_121

def sourceBody802_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_115 sourceBody802_122

def sourceBody802_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody802_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody802_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_125 sourceBody802_0

def sourceBody802_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_124 sourceBody802_126

def sourceBody802_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_123 sourceBody802_127

def sourceBody802_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_34 sourceBody802_128

def sourceBody802_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_129

def sourceBody802_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_33 sourceBody802_130

def sourceBody802_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_17 sourceBody802_131

def sourceBody802_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_132

def sourceBody802_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_133

def sourceBody802_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_11 sourceBody802_134

def sourceBody802_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_135

def sourceBody802_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_136

def sourceBody802_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_5 sourceBody802_137

def sourceBody802_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_138

def sourceBody802_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody802_0 sourceBody802_139

def source802 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (802, 6, sourceBody802_140)
end InitECandidate.Proofs.WordStages
