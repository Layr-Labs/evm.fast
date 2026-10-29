import InitECandidate.Proofs.WordStages.Source797
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody813_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody813_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody813_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody813_0, 813, 2)) (some 69) ([]) (some (34, sourceBody813_1, 813, 3))

def sourceBody813_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody813_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_2 sourceBody813_3

def sourceBody813_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_4 sourceBody813_0

def sourceBody813_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody813_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody813_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody813_0, 813, 4)) (some 68) ([24]) (some (24, sourceBody813_7, 813, 5))

def sourceBody813_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_8 sourceBody813_3

def sourceBody813_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_9 sourceBody813_0

def sourceBody813_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_6 sourceBody813_10

def sourceBody813_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody813_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody813_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody813_0, 813, 6)) (some 68) ([44]) (some (44, sourceBody813_13, 813, 7))

def sourceBody813_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_14 sourceBody813_3

def sourceBody813_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_15 sourceBody813_0

def sourceBody813_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_12 sourceBody813_16

def sourceBody813_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody813_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody813_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody813_0, 813, 8)) (some 68) ([10]) (some (10, sourceBody813_19, 813, 9))

def sourceBody813_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_20 sourceBody813_3

def sourceBody813_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_21 sourceBody813_0

def sourceBody813_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_18 sourceBody813_22

def sourceBody813_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody813_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody813_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 4)

def sourceBody813_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody813_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody813_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 22 (Flapjack.WordRegImm.reg 42) sourceBody813_27 sourceBody813_28

def sourceBody813_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_29 sourceBody813_3

def sourceBody813_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody813_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody813_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody813_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 42 42 32 22))

def sourceBody813_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_34 sourceBody813_0

def sourceBody813_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_33 sourceBody813_35

def sourceBody813_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_32 sourceBody813_36

def sourceBody813_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 42])

def sourceBody813_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 18)

def sourceBody813_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 24)

def sourceBody813_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody813_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody813_0, 813, 10)) (some 787) ([28, 48]) (some (28, sourceBody813_41, 813, 11))

def sourceBody813_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_42 sourceBody813_3

def sourceBody813_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_43 sourceBody813_0

def sourceBody813_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_40 sourceBody813_44

def sourceBody813_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_39 sourceBody813_45

def sourceBody813_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 38)

def sourceBody813_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody813_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody813_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody813_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 48 (Flapjack.WordRegImm.reg 8) sourceBody813_49 sourceBody813_50

def sourceBody813_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_51 sourceBody813_3

def sourceBody813_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 48)

def sourceBody813_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 14)

def sourceBody813_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def sourceBody813_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody813_0, 813, 12)) (some 70) ([48]) (some (48, sourceBody813_55, 813, 13))

def sourceBody813_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_56 sourceBody813_3

def sourceBody813_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_57 sourceBody813_0

def sourceBody813_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_54 sourceBody813_58

def sourceBody813_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_59

def sourceBody813_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_60

def sourceBody813_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody813_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28]

def sourceBody813_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_63 sourceBody813_0

def sourceBody813_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_62 sourceBody813_64

def sourceBody813_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_61 sourceBody813_65

def sourceBody813_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody813_66 sourceBody813_0

def sourceBody813_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_67 sourceBody813_3

def sourceBody813_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_68 sourceBody813_0

def sourceBody813_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_53 sourceBody813_69

def sourceBody813_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_52 sourceBody813_70

def sourceBody813_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_48 sourceBody813_71

def sourceBody813_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_47 sourceBody813_72

def sourceBody813_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody813_0, 813, 14)) (some 789) ([48]) (some (48, sourceBody813_55, 813, 15))

def sourceBody813_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_74 sourceBody813_3

def sourceBody813_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_75 sourceBody813_0

def sourceBody813_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_40 sourceBody813_76

def sourceBody813_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody813_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody813_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody813_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 30) sourceBody813_80 sourceBody813_48

def sourceBody813_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_81 sourceBody813_3

def sourceBody813_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody813_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody813_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody813_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody813_0, 813, 16)) (some 70) ([8]) (some (8, sourceBody813_85, 813, 17))

def sourceBody813_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_86 sourceBody813_3

def sourceBody813_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_87 sourceBody813_0

def sourceBody813_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_84 sourceBody813_88

def sourceBody813_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_89

def sourceBody813_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_90

def sourceBody813_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [48]

def sourceBody813_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_92 sourceBody813_0

def sourceBody813_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_49 sourceBody813_93

def sourceBody813_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_91 sourceBody813_94

def sourceBody813_96 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody813_95 sourceBody813_0

def sourceBody813_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_96 sourceBody813_3

def sourceBody813_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_97 sourceBody813_0

def sourceBody813_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_83 sourceBody813_98

def sourceBody813_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_82 sourceBody813_99

def sourceBody813_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_79 sourceBody813_100

def sourceBody813_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_78 sourceBody813_101

def sourceBody813_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 256#64])

def sourceBody813_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody813_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody813_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([48, 8, 30, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody813_0, 813, 18)) (some 146) ([40, 16]) (some (40, sourceBody813_105, 813, 19))

def sourceBody813_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_106 sourceBody813_3

def sourceBody813_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_107 sourceBody813_0

def sourceBody813_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_104 sourceBody813_108

def sourceBody813_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_103 sourceBody813_109

def sourceBody813_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 44)

def sourceBody813_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 48)

def sourceBody813_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 8)

def sourceBody813_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody813_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 20)

def sourceBody813_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody813_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 12

def sourceBody813_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_117 sourceBody813_0

def sourceBody813_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_116 sourceBody813_118

def sourceBody813_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 36)

def sourceBody813_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64])
  12

def sourceBody813_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_121 sourceBody813_0

def sourceBody813_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_120 sourceBody813_122

def sourceBody813_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody813_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 16#64])
  12

def sourceBody813_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_125 sourceBody813_0

def sourceBody813_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_124 sourceBody813_126

def sourceBody813_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 46)

def sourceBody813_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 24#64])
  12

def sourceBody813_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_129 sourceBody813_0

def sourceBody813_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_128 sourceBody813_130

def sourceBody813_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_131 sourceBody813_0

def sourceBody813_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_127 sourceBody813_132

def sourceBody813_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_123 sourceBody813_133

def sourceBody813_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_119 sourceBody813_134

def sourceBody813_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_115 sourceBody813_135

def sourceBody813_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_136

def sourceBody813_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_114 sourceBody813_137

def sourceBody813_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_138

def sourceBody813_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_113 sourceBody813_139

def sourceBody813_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_140

def sourceBody813_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_112 sourceBody813_141

def sourceBody813_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_142

def sourceBody813_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_111 sourceBody813_143

def sourceBody813_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_144

def sourceBody813_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody813_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def sourceBody813_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 44)

def sourceBody813_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody813_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody813_151 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody813_0, 813, 20)) (some 784) ([16, 36, 26, 46]) (some (16, sourceBody813_150, 813, 21))

def sourceBody813_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_151 sourceBody813_3

def sourceBody813_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_152 sourceBody813_0

def sourceBody813_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_149 sourceBody813_153

def sourceBody813_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_148 sourceBody813_154

def sourceBody813_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_147 sourceBody813_155

def sourceBody813_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_146 sourceBody813_156

def sourceBody813_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_157

def sourceBody813_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_158

def sourceBody813_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_145 sourceBody813_159

def sourceBody813_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody813_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody813_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody813_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody813_165 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 36) sourceBody813_163 sourceBody813_164

def sourceBody813_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_165 sourceBody813_3

def sourceBody813_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody813_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 34)

def sourceBody813_169 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody813_0, 813, 22)) (some 780) ([16, 36]) (some (16, sourceBody813_150, 813, 23))

def sourceBody813_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_169 sourceBody813_3

def sourceBody813_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_170 sourceBody813_0

def sourceBody813_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_147 sourceBody813_171

def sourceBody813_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_168 sourceBody813_172

def sourceBody813_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_173

def sourceBody813_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_174

def sourceBody813_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 34)

def sourceBody813_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 24)

def sourceBody813_178 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody813_0, 813, 24)) (some 783) ([16, 36, 26]) (some (16, sourceBody813_150, 813, 25))

def sourceBody813_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_178 sourceBody813_3

def sourceBody813_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_179 sourceBody813_0

def sourceBody813_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_177 sourceBody813_180

def sourceBody813_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_176 sourceBody813_181

def sourceBody813_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_168 sourceBody813_182

def sourceBody813_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_183

def sourceBody813_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_184

def sourceBody813_186 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody813_175 sourceBody813_185

def sourceBody813_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_186 sourceBody813_3

def sourceBody813_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_187 sourceBody813_0

def sourceBody813_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_167 sourceBody813_188

def sourceBody813_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_166 sourceBody813_189

def sourceBody813_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_162 sourceBody813_190

def sourceBody813_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_161 sourceBody813_191

def sourceBody813_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_160 sourceBody813_192

def sourceBody813_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody813_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 40)

def sourceBody813_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_195 sourceBody813_0

def sourceBody813_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_196 sourceBody813_0

def sourceBody813_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_194 sourceBody813_197

def sourceBody813_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_198

def sourceBody813_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_193 sourceBody813_199

def sourceBody813_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_110 sourceBody813_200

def sourceBody813_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_201

def sourceBody813_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_202

def sourceBody813_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_203

def sourceBody813_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_204

def sourceBody813_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_205

def sourceBody813_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_206

def sourceBody813_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_207

def sourceBody813_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_208

def sourceBody813_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_102 sourceBody813_209

def sourceBody813_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_77 sourceBody813_210

def sourceBody813_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_211

def sourceBody813_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_212

def sourceBody813_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_73 sourceBody813_213

def sourceBody813_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_46 sourceBody813_214

def sourceBody813_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_215

def sourceBody813_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_216

def sourceBody813_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_38 sourceBody813_217

def sourceBody813_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_37 sourceBody813_218

def sourceBody813_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody813_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_219 sourceBody813_220

def sourceBody813_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody813_223 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody813_221 sourceBody813_222

def sourceBody813_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_223 sourceBody813_3

def sourceBody813_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_224 sourceBody813_0

def sourceBody813_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_31 sourceBody813_225

def sourceBody813_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_30 sourceBody813_226

def sourceBody813_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_26 sourceBody813_227

def sourceBody813_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_25 sourceBody813_228

def sourceBody813_230 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody813_229 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody813_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_230 sourceBody813_3

def sourceBody813_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_3 sourceBody813_231

def sourceBody813_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 34)

def sourceBody813_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 6)

def sourceBody813_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody813_236 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody813_0, 813, 26)) (some 788) ([22, 42]) (some (22, sourceBody813_235, 813, 27))

def sourceBody813_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_236 sourceBody813_3

def sourceBody813_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_237 sourceBody813_0

def sourceBody813_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_234 sourceBody813_238

def sourceBody813_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_233 sourceBody813_239

def sourceBody813_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_240

def sourceBody813_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_241

def sourceBody813_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_232 sourceBody813_242

def sourceBody813_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody813_245 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody813_0, 813, 28)) (some 70) ([22]) (some (22, sourceBody813_235, 813, 29))

def sourceBody813_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_245 sourceBody813_3

def sourceBody813_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_246 sourceBody813_0

def sourceBody813_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_244 sourceBody813_247

def sourceBody813_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_248

def sourceBody813_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_249

def sourceBody813_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_243 sourceBody813_250

def sourceBody813_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody813_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32]

def sourceBody813_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_253 sourceBody813_0

def sourceBody813_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_252 sourceBody813_254

def sourceBody813_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_251 sourceBody813_255

def sourceBody813_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_24 sourceBody813_256

def sourceBody813_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_257

def sourceBody813_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_23 sourceBody813_258

def sourceBody813_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_259

def sourceBody813_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_260

def sourceBody813_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_17 sourceBody813_261

def sourceBody813_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_262

def sourceBody813_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_263

def sourceBody813_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_11 sourceBody813_264

def sourceBody813_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_265

def sourceBody813_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_266

def sourceBody813_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_5 sourceBody813_267

def sourceBody813_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_268

def sourceBody813_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody813_0 sourceBody813_269

def source813 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (813, 4, sourceBody813_270)
end InitECandidate.Proofs.WordStages
