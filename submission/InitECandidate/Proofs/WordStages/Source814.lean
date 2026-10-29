import InitECandidate.Proofs.WordStages.Source798
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody814_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody814_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody814_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody814_0, 814, 2)) (some 69) ([]) (some (28, sourceBody814_1, 814, 3))

def sourceBody814_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody814_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_2 sourceBody814_3

def sourceBody814_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_4 sourceBody814_0

def sourceBody814_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 144#64)

def sourceBody814_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody814_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody814_0, 814, 4)) (some 68) ([20]) (some (20, sourceBody814_7, 814, 5))

def sourceBody814_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_8 sourceBody814_3

def sourceBody814_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_9 sourceBody814_0

def sourceBody814_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_6 sourceBody814_10

def sourceBody814_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody814_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody814_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody814_0, 814, 6)) (some 68) ([34]) (some (34, sourceBody814_13, 814, 7))

def sourceBody814_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_14 sourceBody814_3

def sourceBody814_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_15 sourceBody814_0

def sourceBody814_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_12 sourceBody814_16

def sourceBody814_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 576#64)

def sourceBody814_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody814_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody814_0, 814, 8)) (some 68) ([10]) (some (10, sourceBody814_19, 814, 9))

def sourceBody814_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_20 sourceBody814_3

def sourceBody814_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_21 sourceBody814_0

def sourceBody814_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_18 sourceBody814_22

def sourceBody814_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 34)

def sourceBody814_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody814_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody814_0, 814, 10)) (some 756) ([26]) (some (26, sourceBody814_25, 814, 11))

def sourceBody814_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_26 sourceBody814_3

def sourceBody814_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_27 sourceBody814_0

def sourceBody814_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_24 sourceBody814_28

def sourceBody814_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_29

def sourceBody814_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_30

def sourceBody814_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody814_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody814_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 4)

def sourceBody814_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody814_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody814_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 18 (Flapjack.WordRegImm.reg 32) sourceBody814_35 sourceBody814_36

def sourceBody814_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_37 sourceBody814_3

def sourceBody814_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody814_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody814_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody814_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 32 32 26 18))

def sourceBody814_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_42 sourceBody814_0

def sourceBody814_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_41 sourceBody814_43

def sourceBody814_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_40 sourceBody814_44

def sourceBody814_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 32])

def sourceBody814_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody814_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 28)

def sourceBody814_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody814_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody814_0, 814, 12)) (some 775) ([22, 36]) (some (22, sourceBody814_49, 814, 13))

def sourceBody814_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_50 sourceBody814_3

def sourceBody814_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_51 sourceBody814_0

def sourceBody814_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_48 sourceBody814_52

def sourceBody814_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_47 sourceBody814_53

def sourceBody814_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 30)

def sourceBody814_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody814_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody814_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody814_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 36 (Flapjack.WordRegImm.reg 8) sourceBody814_57 sourceBody814_58

def sourceBody814_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_59 sourceBody814_3

def sourceBody814_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 36)

def sourceBody814_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 12)

def sourceBody814_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody814_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody814_0, 814, 14)) (some 70) ([36]) (some (36, sourceBody814_63, 814, 15))

def sourceBody814_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_64 sourceBody814_3

def sourceBody814_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_65 sourceBody814_0

def sourceBody814_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_62 sourceBody814_66

def sourceBody814_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_67

def sourceBody814_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_68

def sourceBody814_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody814_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody814_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_71 sourceBody814_0

def sourceBody814_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_70 sourceBody814_72

def sourceBody814_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_69 sourceBody814_73

def sourceBody814_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody814_74 sourceBody814_0

def sourceBody814_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_75 sourceBody814_3

def sourceBody814_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_76 sourceBody814_0

def sourceBody814_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_61 sourceBody814_77

def sourceBody814_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_60 sourceBody814_78

def sourceBody814_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_56 sourceBody814_79

def sourceBody814_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_55 sourceBody814_80

def sourceBody814_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody814_0, 814, 16)) (some 777) ([36]) (some (36, sourceBody814_63, 814, 17))

def sourceBody814_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_82 sourceBody814_3

def sourceBody814_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_83 sourceBody814_0

def sourceBody814_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_48 sourceBody814_84

def sourceBody814_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 22)

def sourceBody814_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody814_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody814_89 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 24) sourceBody814_88 sourceBody814_56

def sourceBody814_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_89 sourceBody814_3

def sourceBody814_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody814_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody814_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody814_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody814_0, 814, 18)) (some 70) ([8]) (some (8, sourceBody814_93, 814, 19))

def sourceBody814_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_94 sourceBody814_3

def sourceBody814_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_95 sourceBody814_0

def sourceBody814_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_92 sourceBody814_96

def sourceBody814_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_97

def sourceBody814_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_98

def sourceBody814_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36]

def sourceBody814_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_100 sourceBody814_0

def sourceBody814_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_57 sourceBody814_101

def sourceBody814_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_99 sourceBody814_102

def sourceBody814_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody814_103 sourceBody814_0

def sourceBody814_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_104 sourceBody814_3

def sourceBody814_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_105 sourceBody814_0

def sourceBody814_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_91 sourceBody814_106

def sourceBody814_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_90 sourceBody814_107

def sourceBody814_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_87 sourceBody814_108

def sourceBody814_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_86 sourceBody814_109

def sourceBody814_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 128#64])

def sourceBody814_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def sourceBody814_113 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody814_0, 814, 20)) (some 787) ([36, 8]) (some (36, sourceBody814_63, 814, 21))

def sourceBody814_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_113 sourceBody814_3

def sourceBody814_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_114 sourceBody814_0

def sourceBody814_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_112 sourceBody814_115

def sourceBody814_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_111 sourceBody814_116

def sourceBody814_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_110 sourceBody814_117

def sourceBody814_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 30)

def sourceBody814_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody814_0, 814, 22)) (some 70) ([8]) (some (8, sourceBody814_93, 814, 23))

def sourceBody814_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_120 sourceBody814_3

def sourceBody814_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_121 sourceBody814_0

def sourceBody814_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_92 sourceBody814_122

def sourceBody814_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_123

def sourceBody814_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_124

def sourceBody814_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_125 sourceBody814_102

def sourceBody814_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody814_126 sourceBody814_0

def sourceBody814_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_127 sourceBody814_3

def sourceBody814_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_128 sourceBody814_0

def sourceBody814_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_91 sourceBody814_129

def sourceBody814_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_90 sourceBody814_130

def sourceBody814_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_87 sourceBody814_131

def sourceBody814_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_119 sourceBody814_132

def sourceBody814_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_118 sourceBody814_133

def sourceBody814_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 20)

def sourceBody814_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody814_0, 814, 24)) (some 789) ([36]) (some (36, sourceBody814_63, 814, 25))

def sourceBody814_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_136 sourceBody814_3

def sourceBody814_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_137 sourceBody814_0

def sourceBody814_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_135 sourceBody814_138

def sourceBody814_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_134 sourceBody814_139

def sourceBody814_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody814_0, 814, 26)) (some 70) ([8]) (some (8, sourceBody814_93, 814, 27))

def sourceBody814_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_141 sourceBody814_3

def sourceBody814_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_142 sourceBody814_0

def sourceBody814_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_92 sourceBody814_143

def sourceBody814_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_144

def sourceBody814_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_145

def sourceBody814_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_146 sourceBody814_102

def sourceBody814_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody814_147 sourceBody814_0

def sourceBody814_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_148 sourceBody814_3

def sourceBody814_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_149 sourceBody814_0

def sourceBody814_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_91 sourceBody814_150

def sourceBody814_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_90 sourceBody814_151

def sourceBody814_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_87 sourceBody814_152

def sourceBody814_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_86 sourceBody814_153

def sourceBody814_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_140 sourceBody814_154

def sourceBody814_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 34)

def sourceBody814_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody814_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody814_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody814_0, 814, 28)) (some 794) ([8, 24, 16]) (some (8, sourceBody814_93, 814, 29))

def sourceBody814_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_159 sourceBody814_3

def sourceBody814_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_160 sourceBody814_0

def sourceBody814_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_158 sourceBody814_161

def sourceBody814_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_157 sourceBody814_162

def sourceBody814_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_156 sourceBody814_163

def sourceBody814_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_164

def sourceBody814_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_165

def sourceBody814_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_155 sourceBody814_166

def sourceBody814_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody814_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 36)

def sourceBody814_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_169 sourceBody814_0

def sourceBody814_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_170 sourceBody814_0

def sourceBody814_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_168 sourceBody814_171

def sourceBody814_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_172

def sourceBody814_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_167 sourceBody814_173

def sourceBody814_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_85 sourceBody814_174

def sourceBody814_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_175

def sourceBody814_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_176

def sourceBody814_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_81 sourceBody814_177

def sourceBody814_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_54 sourceBody814_178

def sourceBody814_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_179

def sourceBody814_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_180

def sourceBody814_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_46 sourceBody814_181

def sourceBody814_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_45 sourceBody814_182

def sourceBody814_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody814_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_183 sourceBody814_184

def sourceBody814_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody814_187 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody814_185 sourceBody814_186

def sourceBody814_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_187 sourceBody814_3

def sourceBody814_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_188 sourceBody814_0

def sourceBody814_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_39 sourceBody814_189

def sourceBody814_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_38 sourceBody814_190

def sourceBody814_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_34 sourceBody814_191

def sourceBody814_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_33 sourceBody814_192

def sourceBody814_194 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody814_193 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody814_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_194 sourceBody814_3

def sourceBody814_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_3 sourceBody814_195

def sourceBody814_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 34)

def sourceBody814_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 34)

def sourceBody814_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody814_200 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody814_0, 814, 30)) (some 765) ([18, 32]) (some (18, sourceBody814_199, 814, 31))

def sourceBody814_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_200 sourceBody814_3

def sourceBody814_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_201 sourceBody814_0

def sourceBody814_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_198 sourceBody814_202

def sourceBody814_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_197 sourceBody814_203

def sourceBody814_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_204

def sourceBody814_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_205

def sourceBody814_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_196 sourceBody814_206

def sourceBody814_208 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody814_0, 814, 32)) (some 757) ([18]) (some (18, sourceBody814_199, 814, 33))

def sourceBody814_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_208 sourceBody814_3

def sourceBody814_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_209 sourceBody814_0

def sourceBody814_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_197 sourceBody814_210

def sourceBody814_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 6)

def sourceBody814_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody814_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody814_215 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody814_0, 814, 34)) (some 78) ([32, 14]) (some (32, sourceBody814_214, 814, 35))

def sourceBody814_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_215 sourceBody814_3

def sourceBody814_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_216 sourceBody814_0

def sourceBody814_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_213 sourceBody814_217

def sourceBody814_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_212 sourceBody814_218

def sourceBody814_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_219

def sourceBody814_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_220

def sourceBody814_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 31#64])

def sourceBody814_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 26)

def sourceBody814_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 32 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody814_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_224 sourceBody814_0

def sourceBody814_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_223 sourceBody814_225

def sourceBody814_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_222 sourceBody814_226

def sourceBody814_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_221 sourceBody814_227

def sourceBody814_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody814_230 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody814_0, 814, 36)) (some 70) ([32]) (some (32, sourceBody814_214, 814, 37))

def sourceBody814_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_230 sourceBody814_3

def sourceBody814_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_231 sourceBody814_0

def sourceBody814_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_229 sourceBody814_232

def sourceBody814_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_233

def sourceBody814_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_234

def sourceBody814_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_228 sourceBody814_235

def sourceBody814_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody814_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_237 sourceBody814_0

def sourceBody814_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_36 sourceBody814_238

def sourceBody814_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_236 sourceBody814_239

def sourceBody814_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_211 sourceBody814_240

def sourceBody814_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_241

def sourceBody814_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_242

def sourceBody814_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_207 sourceBody814_243

def sourceBody814_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_32 sourceBody814_244

def sourceBody814_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_245

def sourceBody814_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_31 sourceBody814_246

def sourceBody814_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_23 sourceBody814_247

def sourceBody814_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_248

def sourceBody814_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_249

def sourceBody814_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_17 sourceBody814_250

def sourceBody814_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_251

def sourceBody814_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_252

def sourceBody814_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_11 sourceBody814_253

def sourceBody814_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_254

def sourceBody814_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_255

def sourceBody814_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_5 sourceBody814_256

def sourceBody814_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_257

def sourceBody814_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody814_0 sourceBody814_258

def source814 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (814, 4, sourceBody814_259)
end InitECandidate.Proofs.WordStages
