import InitECandidate.Proofs.WordStages.Source832
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody848_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody848_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 576#64)

def sourceBody848_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody848_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody848_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.reg 20) sourceBody848_2 sourceBody848_3

def sourceBody848_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody848_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_4 sourceBody848_5

def sourceBody848_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody848_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody848_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 60#64)

def sourceBody848_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 12)

def sourceBody848_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_10 sourceBody848_8

def sourceBody848_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_11 sourceBody848_8

def sourceBody848_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_9 sourceBody848_12

def sourceBody848_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_13

def sourceBody848_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody848_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody848_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_15 sourceBody848_16

def sourceBody848_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_14 sourceBody848_17

def sourceBody848_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.imm 0#64) sourceBody848_18 sourceBody848_8

def sourceBody848_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_19 sourceBody848_5

def sourceBody848_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_20 sourceBody848_8

def sourceBody848_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_7 sourceBody848_21

def sourceBody848_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_6 sourceBody848_22

def sourceBody848_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_1 sourceBody848_23

def sourceBody848_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_0 sourceBody848_24

def sourceBody848_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody848_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 2)) (some 69) ([]) (some (28, sourceBody848_26, 848, 3))

def sourceBody848_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_27 sourceBody848_5

def sourceBody848_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_28 sourceBody848_8

def sourceBody848_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody848_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody848_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody848_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 4)) (some 80) ([34, 10]) (some (34, sourceBody848_32, 848, 5))

def sourceBody848_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_33 sourceBody848_5

def sourceBody848_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_34 sourceBody848_8

def sourceBody848_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_31 sourceBody848_35

def sourceBody848_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_30 sourceBody848_36

def sourceBody848_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody848_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody848_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 6)) (some 85) ([26]) (some (26, sourceBody848_39, 848, 7))

def sourceBody848_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_40 sourceBody848_5

def sourceBody848_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_41 sourceBody848_8

def sourceBody848_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_38 sourceBody848_42

def sourceBody848_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody848_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody848_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 8)) (some 80) ([26, 18]) (some (26, sourceBody848_39, 848, 9))

def sourceBody848_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_46 sourceBody848_5

def sourceBody848_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_47 sourceBody848_8

def sourceBody848_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_45 sourceBody848_48

def sourceBody848_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_44 sourceBody848_49

def sourceBody848_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody848_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody848_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody848_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody848_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 32) sourceBody848_53 sourceBody848_54

def sourceBody848_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_55 sourceBody848_5

def sourceBody848_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 10)

def sourceBody848_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 160#64)

def sourceBody848_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody848_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody848_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.reg 22) sourceBody848_59 sourceBody848_60

def sourceBody848_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_61 sourceBody848_5

def sourceBody848_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody848_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 30])

def sourceBody848_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody848_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 24) sourceBody848_65 sourceBody848_63

def sourceBody848_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_66 sourceBody848_5

def sourceBody848_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody848_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_3 sourceBody848_8

def sourceBody848_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_69 sourceBody848_8

def sourceBody848_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody848_70 sourceBody848_8

def sourceBody848_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_71 sourceBody848_5

def sourceBody848_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_72 sourceBody848_8

def sourceBody848_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_68 sourceBody848_73

def sourceBody848_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_67 sourceBody848_74

def sourceBody848_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_64 sourceBody848_75

def sourceBody848_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_63 sourceBody848_76

def sourceBody848_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_62 sourceBody848_77

def sourceBody848_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_58 sourceBody848_78

def sourceBody848_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_57 sourceBody848_79

def sourceBody848_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_56 sourceBody848_80

def sourceBody848_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_52 sourceBody848_81

def sourceBody848_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_51 sourceBody848_82

def sourceBody848_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_50 sourceBody848_83

def sourceBody848_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody848_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 10)) (some 80) ([26, 18]) (some (26, sourceBody848_39, 848, 11))

def sourceBody848_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_86 sourceBody848_5

def sourceBody848_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_87 sourceBody848_8

def sourceBody848_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_45 sourceBody848_88

def sourceBody848_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_85 sourceBody848_89

def sourceBody848_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_84 sourceBody848_90

def sourceBody848_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody848_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 12)) (some 85) ([26]) (some (26, sourceBody848_39, 848, 13))

def sourceBody848_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_93 sourceBody848_5

def sourceBody848_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_94 sourceBody848_8

def sourceBody848_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_92 sourceBody848_95

def sourceBody848_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_91 sourceBody848_96

def sourceBody848_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody848_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_98 sourceBody848_78

def sourceBody848_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_57 sourceBody848_99

def sourceBody848_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_56 sourceBody848_100

def sourceBody848_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_52 sourceBody848_101

def sourceBody848_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_51 sourceBody848_102

def sourceBody848_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_97 sourceBody848_103

def sourceBody848_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody848_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 14)) (some 80) ([26, 18]) (some (26, sourceBody848_39, 848, 15))

def sourceBody848_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_106 sourceBody848_5

def sourceBody848_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_107 sourceBody848_8

def sourceBody848_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_45 sourceBody848_108

def sourceBody848_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_105 sourceBody848_109

def sourceBody848_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_104 sourceBody848_110

def sourceBody848_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 88#64])

def sourceBody848_113 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 16)) (some 85) ([26]) (some (26, sourceBody848_39, 848, 17))

def sourceBody848_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_113 sourceBody848_5

def sourceBody848_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_114 sourceBody848_8

def sourceBody848_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_112 sourceBody848_115

def sourceBody848_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_111 sourceBody848_116

def sourceBody848_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 320#64)

def sourceBody848_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_118 sourceBody848_78

def sourceBody848_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_57 sourceBody848_119

def sourceBody848_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_56 sourceBody848_120

def sourceBody848_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_52 sourceBody848_121

def sourceBody848_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_51 sourceBody848_122

def sourceBody848_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_117 sourceBody848_123

def sourceBody848_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody848_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 18)) (some 80) ([26, 18]) (some (26, sourceBody848_39, 848, 19))

def sourceBody848_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_126 sourceBody848_5

def sourceBody848_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_127 sourceBody848_8

def sourceBody848_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_45 sourceBody848_128

def sourceBody848_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_125 sourceBody848_129

def sourceBody848_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_124 sourceBody848_130

def sourceBody848_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 120#64])

def sourceBody848_133 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 20)) (some 85) ([26]) (some (26, sourceBody848_39, 848, 21))

def sourceBody848_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_133 sourceBody848_5

def sourceBody848_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_134 sourceBody848_8

def sourceBody848_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_132 sourceBody848_135

def sourceBody848_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_131 sourceBody848_136

def sourceBody848_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody848_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_138 sourceBody848_78

def sourceBody848_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_57 sourceBody848_139

def sourceBody848_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_56 sourceBody848_140

def sourceBody848_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_52 sourceBody848_141

def sourceBody848_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_51 sourceBody848_142

def sourceBody848_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_137 sourceBody848_143

def sourceBody848_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 128#64])

def sourceBody848_146 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 22)) (some 80) ([26, 18]) (some (26, sourceBody848_39, 848, 23))

def sourceBody848_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_146 sourceBody848_5

def sourceBody848_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_147 sourceBody848_8

def sourceBody848_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_45 sourceBody848_148

def sourceBody848_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_145 sourceBody848_149

def sourceBody848_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_144 sourceBody848_150

def sourceBody848_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 152#64])

def sourceBody848_153 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 24)) (some 85) ([26]) (some (26, sourceBody848_39, 848, 25))

def sourceBody848_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_153 sourceBody848_5

def sourceBody848_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_154 sourceBody848_8

def sourceBody848_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_152 sourceBody848_155

def sourceBody848_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_151 sourceBody848_156

def sourceBody848_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 512#64)

def sourceBody848_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_158 sourceBody848_78

def sourceBody848_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_57 sourceBody848_159

def sourceBody848_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_56 sourceBody848_160

def sourceBody848_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_52 sourceBody848_161

def sourceBody848_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_51 sourceBody848_162

def sourceBody848_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_157 sourceBody848_163

def sourceBody848_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64])

def sourceBody848_166 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 26)) (some 80) ([26, 18]) (some (26, sourceBody848_39, 848, 27))

def sourceBody848_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_166 sourceBody848_5

def sourceBody848_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_167 sourceBody848_8

def sourceBody848_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_45 sourceBody848_168

def sourceBody848_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_165 sourceBody848_169

def sourceBody848_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_164 sourceBody848_170

def sourceBody848_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 184#64])

def sourceBody848_173 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 28)) (some 85) ([26]) (some (26, sourceBody848_39, 848, 29))

def sourceBody848_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_173 sourceBody848_5

def sourceBody848_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_174 sourceBody848_8

def sourceBody848_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_172 sourceBody848_175

def sourceBody848_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_171 sourceBody848_176

def sourceBody848_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 48#64)

def sourceBody848_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_178 sourceBody848_78

def sourceBody848_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_57 sourceBody848_179

def sourceBody848_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_56 sourceBody848_180

def sourceBody848_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_52 sourceBody848_181

def sourceBody848_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_51 sourceBody848_182

def sourceBody848_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_177 sourceBody848_183

def sourceBody848_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 256#64])

def sourceBody848_186 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 30)) (some 80) ([26, 18]) (some (26, sourceBody848_39, 848, 31))

def sourceBody848_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_186 sourceBody848_5

def sourceBody848_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_187 sourceBody848_8

def sourceBody848_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_45 sourceBody848_188

def sourceBody848_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_185 sourceBody848_189

def sourceBody848_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_184 sourceBody848_190

def sourceBody848_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 280#64])

def sourceBody848_193 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 32)) (some 85) ([26]) (some (26, sourceBody848_39, 848, 33))

def sourceBody848_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_193 sourceBody848_5

def sourceBody848_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_194 sourceBody848_8

def sourceBody848_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_192 sourceBody848_195

def sourceBody848_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_191 sourceBody848_196

def sourceBody848_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody848_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_198 sourceBody848_78

def sourceBody848_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_57 sourceBody848_199

def sourceBody848_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_56 sourceBody848_200

def sourceBody848_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_52 sourceBody848_201

def sourceBody848_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_51 sourceBody848_202

def sourceBody848_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_197 sourceBody848_203

def sourceBody848_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 320#64])

def sourceBody848_206 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 34)) (some 80) ([26, 18]) (some (26, sourceBody848_39, 848, 35))

def sourceBody848_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_206 sourceBody848_5

def sourceBody848_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_207 sourceBody848_8

def sourceBody848_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_45 sourceBody848_208

def sourceBody848_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_205 sourceBody848_209

def sourceBody848_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_204 sourceBody848_210

def sourceBody848_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 344#64])

def sourceBody848_213 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 36)) (some 85) ([26]) (some (26, sourceBody848_39, 848, 37))

def sourceBody848_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_213 sourceBody848_5

def sourceBody848_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_214 sourceBody848_8

def sourceBody848_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_212 sourceBody848_215

def sourceBody848_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_211 sourceBody848_216

def sourceBody848_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody848_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_218 sourceBody848_78

def sourceBody848_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_57 sourceBody848_219

def sourceBody848_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_56 sourceBody848_220

def sourceBody848_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_52 sourceBody848_221

def sourceBody848_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_51 sourceBody848_222

def sourceBody848_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_217 sourceBody848_223

def sourceBody848_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 384#64])

def sourceBody848_226 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 38)) (some 80) ([26, 18]) (some (26, sourceBody848_39, 848, 39))

def sourceBody848_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_226 sourceBody848_5

def sourceBody848_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_227 sourceBody848_8

def sourceBody848_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_45 sourceBody848_228

def sourceBody848_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_225 sourceBody848_229

def sourceBody848_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_224 sourceBody848_230

def sourceBody848_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 408#64])

def sourceBody848_233 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 40)) (some 85) ([26]) (some (26, sourceBody848_39, 848, 41))

def sourceBody848_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_233 sourceBody848_5

def sourceBody848_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_234 sourceBody848_8

def sourceBody848_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_232 sourceBody848_235

def sourceBody848_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_231 sourceBody848_236

def sourceBody848_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody848_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_238 sourceBody848_78

def sourceBody848_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_57 sourceBody848_239

def sourceBody848_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_56 sourceBody848_240

def sourceBody848_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_52 sourceBody848_241

def sourceBody848_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_51 sourceBody848_242

def sourceBody848_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_237 sourceBody848_243

def sourceBody848_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 512#64])

def sourceBody848_246 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 42)) (some 80) ([26, 18]) (some (26, sourceBody848_39, 848, 43))

def sourceBody848_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_246 sourceBody848_5

def sourceBody848_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_247 sourceBody848_8

def sourceBody848_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_45 sourceBody848_248

def sourceBody848_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_245 sourceBody848_249

def sourceBody848_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_244 sourceBody848_250

def sourceBody848_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 536#64])

def sourceBody848_253 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 44)) (some 85) ([26]) (some (26, sourceBody848_39, 848, 45))

def sourceBody848_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_253 sourceBody848_5

def sourceBody848_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_254 sourceBody848_8

def sourceBody848_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_252 sourceBody848_255

def sourceBody848_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_251 sourceBody848_256

def sourceBody848_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_257 sourceBody848_223

def sourceBody848_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody848_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody848_261 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 46)) (some 70) ([18]) (some (18, sourceBody848_260, 848, 47))

def sourceBody848_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_261 sourceBody848_5

def sourceBody848_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_262 sourceBody848_8

def sourceBody848_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_259 sourceBody848_263

def sourceBody848_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_264

def sourceBody848_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_265

def sourceBody848_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_258 sourceBody848_266

def sourceBody848_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody848_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody848_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 61#64)

def sourceBody848_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 26)

def sourceBody848_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_271 sourceBody848_8

def sourceBody848_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_272 sourceBody848_8

def sourceBody848_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_270 sourceBody848_273

def sourceBody848_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_274

def sourceBody848_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody848_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_276 sourceBody848_39

def sourceBody848_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_275 sourceBody848_277

def sourceBody848_279 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody848_278 sourceBody848_8

def sourceBody848_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_279 sourceBody848_5

def sourceBody848_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_280 sourceBody848_8

def sourceBody848_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_269 sourceBody848_281

def sourceBody848_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_56 sourceBody848_282

def sourceBody848_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_52 sourceBody848_283

def sourceBody848_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_268 sourceBody848_284

def sourceBody848_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_267 sourceBody848_285

def sourceBody848_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody848_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody848_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 48#64)

def sourceBody848_290 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 48)) (some 77) ([18, 32, 14]) (some (18, sourceBody848_260, 848, 49))

def sourceBody848_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_290 sourceBody848_5

def sourceBody848_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_291 sourceBody848_8

def sourceBody848_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_289 sourceBody848_292

def sourceBody848_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_288 sourceBody848_293

def sourceBody848_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_287 sourceBody848_294

def sourceBody848_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_295

def sourceBody848_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_296

def sourceBody848_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_286 sourceBody848_297

def sourceBody848_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody848_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody848_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody848_302 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 50)) (some 77) ([18, 32, 14]) (some (18, sourceBody848_260, 848, 51))

def sourceBody848_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_302 sourceBody848_5

def sourceBody848_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_303 sourceBody848_8

def sourceBody848_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_301 sourceBody848_304

def sourceBody848_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_300 sourceBody848_305

def sourceBody848_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_299 sourceBody848_306

def sourceBody848_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_307

def sourceBody848_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_308

def sourceBody848_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_298 sourceBody848_309

def sourceBody848_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 80#64])

def sourceBody848_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 352#64])

def sourceBody848_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody848_314 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 52)) (some 77) ([18, 32, 14]) (some (18, sourceBody848_260, 848, 53))

def sourceBody848_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_314 sourceBody848_5

def sourceBody848_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_315 sourceBody848_8

def sourceBody848_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_313 sourceBody848_316

def sourceBody848_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_312 sourceBody848_317

def sourceBody848_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_311 sourceBody848_318

def sourceBody848_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_319

def sourceBody848_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_320

def sourceBody848_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_310 sourceBody848_321

def sourceBody848_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 88#64])

def sourceBody848_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 416#64])

def sourceBody848_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody848_326 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody848_8, 848, 54)) (some 77) ([18, 32, 14]) (some (18, sourceBody848_260, 848, 55))

def sourceBody848_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_326 sourceBody848_5

def sourceBody848_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_327 sourceBody848_8

def sourceBody848_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_325 sourceBody848_328

def sourceBody848_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_324 sourceBody848_329

def sourceBody848_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_323 sourceBody848_330

def sourceBody848_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_331

def sourceBody848_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_332

def sourceBody848_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_322 sourceBody848_333

def sourceBody848_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 184#64])

def sourceBody848_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 544#64])

def sourceBody848_337 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody848_8, 848, 56)) (some 77) ([18, 32, 14]) (some (18, sourceBody848_260, 848, 57))

def sourceBody848_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_337 sourceBody848_5

def sourceBody848_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_338 sourceBody848_8

def sourceBody848_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_313 sourceBody848_339

def sourceBody848_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_336 sourceBody848_340

def sourceBody848_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_335 sourceBody848_341

def sourceBody848_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_342

def sourceBody848_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_343

def sourceBody848_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_334 sourceBody848_344

def sourceBody848_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody848_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody848_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_347 sourceBody848_8

def sourceBody848_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_346 sourceBody848_348

def sourceBody848_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_345 sourceBody848_349

def sourceBody848_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_43 sourceBody848_350

def sourceBody848_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_351

def sourceBody848_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_352

def sourceBody848_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_353

def sourceBody848_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_354

def sourceBody848_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_37 sourceBody848_355

def sourceBody848_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_356

def sourceBody848_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_357

def sourceBody848_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_2 sourceBody848_358

def sourceBody848_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_359

def sourceBody848_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_29 sourceBody848_360

def sourceBody848_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_361

def sourceBody848_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_8 sourceBody848_362

def sourceBody848_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody848_25 sourceBody848_363

def source848 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (848, 4, sourceBody848_364)
end InitECandidate.Proofs.WordStages
