import InitECandidate.Proofs.WordStages.Source302
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody318_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody318_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody318_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody318_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody318_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody318_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 28)

def sourceBody318_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody318_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody318_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody318_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 14) sourceBody318_7 sourceBody318_8

def sourceBody318_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_9 sourceBody318_4

def sourceBody318_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody318_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody318_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_12 sourceBody318_0

def sourceBody318_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_13 sourceBody318_0

def sourceBody318_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody318_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 14) sourceBody318_7 sourceBody318_8

def sourceBody318_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_16 sourceBody318_4

def sourceBody318_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_2 sourceBody318_0

def sourceBody318_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_18 sourceBody318_0

def sourceBody318_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody318_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody318_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody318_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody318_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 26) sourceBody318_23 sourceBody318_6

def sourceBody318_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_24 sourceBody318_4

def sourceBody318_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody318_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody318_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody318_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody318_0, 318, 2)) (some 286) ([14]) (some (14, sourceBody318_28, 318, 3))

def sourceBody318_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_29 sourceBody318_4

def sourceBody318_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_30 sourceBody318_0

def sourceBody318_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_27 sourceBody318_31

def sourceBody318_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_32

def sourceBody318_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_33

def sourceBody318_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody318_34 sourceBody318_0

def sourceBody318_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_35 sourceBody318_4

def sourceBody318_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_36 sourceBody318_0

def sourceBody318_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_26 sourceBody318_37

def sourceBody318_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_25 sourceBody318_38

def sourceBody318_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_22 sourceBody318_39

def sourceBody318_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_21 sourceBody318_40

def sourceBody318_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody318_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody318_0, 318, 4)) (some 299) ([14]) (some (14, sourceBody318_28, 318, 5))

def sourceBody318_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_43 sourceBody318_4

def sourceBody318_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_44 sourceBody318_0

def sourceBody318_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_42 sourceBody318_45

def sourceBody318_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_46

def sourceBody318_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_47

def sourceBody318_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_41 sourceBody318_48

def sourceBody318_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody318_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody318_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_51 sourceBody318_0

def sourceBody318_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_52 sourceBody318_0

def sourceBody318_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody318_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 8])

def sourceBody318_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody318_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 8])

def sourceBody318_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 8])

def sourceBody318_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody318_0, 318, 6)) (some 79) ([14, 26, 12]) (some (14, sourceBody318_28, 318, 7))

def sourceBody318_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_59 sourceBody318_4

def sourceBody318_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_60 sourceBody318_0

def sourceBody318_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_58 sourceBody318_61

def sourceBody318_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_57 sourceBody318_62

def sourceBody318_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_56 sourceBody318_63

def sourceBody318_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody318_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.reg 12) sourceBody318_50 sourceBody318_22

def sourceBody318_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_66 sourceBody318_4

def sourceBody318_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody318_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody318_19 sourceBody318_0

def sourceBody318_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_69 sourceBody318_4

def sourceBody318_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_70 sourceBody318_0

def sourceBody318_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_68 sourceBody318_71

def sourceBody318_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_67 sourceBody318_72

def sourceBody318_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_65 sourceBody318_73

def sourceBody318_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_11 sourceBody318_74

def sourceBody318_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_64 sourceBody318_75

def sourceBody318_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_76

def sourceBody318_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_77

def sourceBody318_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody318_78 sourceBody318_0

def sourceBody318_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_79 sourceBody318_4

def sourceBody318_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_80 sourceBody318_0

def sourceBody318_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_26 sourceBody318_81

def sourceBody318_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_25 sourceBody318_82

def sourceBody318_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_55 sourceBody318_83

def sourceBody318_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_54 sourceBody318_84

def sourceBody318_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_53 sourceBody318_85

def sourceBody318_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody318_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody318_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody318_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody318_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 8])

def sourceBody318_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 8])

def sourceBody318_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody318_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody318_0, 318, 8)) (some 291) ([12, 24, 18, 30]) (some (12, sourceBody318_93, 318, 9))

def sourceBody318_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_94 sourceBody318_4

def sourceBody318_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_95 sourceBody318_0

def sourceBody318_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_92 sourceBody318_96

def sourceBody318_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_91 sourceBody318_97

def sourceBody318_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_90 sourceBody318_98

def sourceBody318_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_89 sourceBody318_99

def sourceBody318_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody318_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody318_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody318_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.WordRegImm.reg 18) sourceBody318_102 sourceBody318_103

def sourceBody318_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_104 sourceBody318_4

def sourceBody318_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 24)

def sourceBody318_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody318_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody318_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody318_0, 318, 10)) (some 74) ([24]) (some (24, sourceBody318_108, 318, 11))

def sourceBody318_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_109 sourceBody318_4

def sourceBody318_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_110 sourceBody318_0

def sourceBody318_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_107 sourceBody318_111

def sourceBody318_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody318_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody318_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 18)

def sourceBody318_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 24) 30

def sourceBody318_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_116 sourceBody318_0

def sourceBody318_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_115 sourceBody318_117

def sourceBody318_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_118 sourceBody318_0

def sourceBody318_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_114 sourceBody318_119

def sourceBody318_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_120

def sourceBody318_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_113 sourceBody318_121

def sourceBody318_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_122

def sourceBody318_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody318_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody318_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_125 sourceBody318_119

def sourceBody318_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_126

def sourceBody318_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_124 sourceBody318_127

def sourceBody318_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_128

def sourceBody318_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_123 sourceBody318_129

def sourceBody318_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody318_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody318_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_132 sourceBody318_119

def sourceBody318_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_133

def sourceBody318_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_131 sourceBody318_134

def sourceBody318_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_135

def sourceBody318_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_130 sourceBody318_136

def sourceBody318_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody318_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody318_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_139 sourceBody318_119

def sourceBody318_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_140

def sourceBody318_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_138 sourceBody318_141

def sourceBody318_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_142

def sourceBody318_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_137 sourceBody318_143

def sourceBody318_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody318_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_101 sourceBody318_119

def sourceBody318_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_146

def sourceBody318_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_145 sourceBody318_147

def sourceBody318_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_148

def sourceBody318_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_144 sourceBody318_149

def sourceBody318_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def sourceBody318_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_151 sourceBody318_0

def sourceBody318_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_152 sourceBody318_0

def sourceBody318_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_150 sourceBody318_153

def sourceBody318_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody318_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 24)

def sourceBody318_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_156 sourceBody318_0

def sourceBody318_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_157 sourceBody318_0

def sourceBody318_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_155 sourceBody318_158

def sourceBody318_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_159

def sourceBody318_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_154 sourceBody318_160

def sourceBody318_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 14])

def sourceBody318_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 24)

def sourceBody318_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_163 sourceBody318_0

def sourceBody318_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_164 sourceBody318_0

def sourceBody318_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_162 sourceBody318_165

def sourceBody318_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_166

def sourceBody318_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_161 sourceBody318_167

def sourceBody318_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_3 sourceBody318_0

def sourceBody318_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_169 sourceBody318_0

def sourceBody318_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_168 sourceBody318_170

def sourceBody318_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_112 sourceBody318_171

def sourceBody318_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_172

def sourceBody318_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_173

def sourceBody318_175 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody318_53 sourceBody318_174

def sourceBody318_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_175 sourceBody318_4

def sourceBody318_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_176 sourceBody318_0

def sourceBody318_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_106 sourceBody318_177

def sourceBody318_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_105 sourceBody318_178

def sourceBody318_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_101 sourceBody318_179

def sourceBody318_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_68 sourceBody318_180

def sourceBody318_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_100 sourceBody318_181

def sourceBody318_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_182

def sourceBody318_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_183

def sourceBody318_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_54 sourceBody318_184

def sourceBody318_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_185

def sourceBody318_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_88 sourceBody318_186

def sourceBody318_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_187

def sourceBody318_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody318_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody318_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 168#64]))

def sourceBody318_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64])

def sourceBody318_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody318_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 26

def sourceBody318_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_194 sourceBody318_0

def sourceBody318_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_193 sourceBody318_195

def sourceBody318_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_196 sourceBody318_0

def sourceBody318_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_6 sourceBody318_197

def sourceBody318_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_198

def sourceBody318_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_192 sourceBody318_199

def sourceBody318_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_200

def sourceBody318_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 168#64])

def sourceBody318_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_202 sourceBody318_199

def sourceBody318_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_203

def sourceBody318_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_201 sourceBody318_204

def sourceBody318_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody318_207 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody318_0, 318, 12)) (some 316) ([20]) (some (20, sourceBody318_206, 318, 13))

def sourceBody318_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_207 sourceBody318_4

def sourceBody318_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_208 sourceBody318_0

def sourceBody318_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_15 sourceBody318_209

def sourceBody318_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_205 sourceBody318_210

def sourceBody318_212 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody318_53 sourceBody318_211

def sourceBody318_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_212 sourceBody318_4

def sourceBody318_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_213 sourceBody318_0

def sourceBody318_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_26 sourceBody318_214

def sourceBody318_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_25 sourceBody318_215

def sourceBody318_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_22 sourceBody318_216

def sourceBody318_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_191 sourceBody318_217

def sourceBody318_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 8])

def sourceBody318_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody318_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_220 sourceBody318_0

def sourceBody318_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_219 sourceBody318_221

def sourceBody318_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody318_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody318_225 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody318_0, 318, 14)) (some 74) ([12]) (some (12, sourceBody318_93, 318, 15))

def sourceBody318_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_225 sourceBody318_4

def sourceBody318_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_226 sourceBody318_0

def sourceBody318_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_224 sourceBody318_227

def sourceBody318_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody318_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody318_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody318_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 18

def sourceBody318_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_232 sourceBody318_0

def sourceBody318_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_231 sourceBody318_233

def sourceBody318_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_234 sourceBody318_0

def sourceBody318_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_230 sourceBody318_235

def sourceBody318_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_236

def sourceBody318_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_229 sourceBody318_237

def sourceBody318_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_238

def sourceBody318_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody318_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody318_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_241 sourceBody318_235

def sourceBody318_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_242

def sourceBody318_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_240 sourceBody318_243

def sourceBody318_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_244

def sourceBody318_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_239 sourceBody318_245

def sourceBody318_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody318_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody318_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_248 sourceBody318_235

def sourceBody318_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_249

def sourceBody318_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_247 sourceBody318_250

def sourceBody318_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_251

def sourceBody318_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_246 sourceBody318_252

def sourceBody318_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody318_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_90 sourceBody318_235

def sourceBody318_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_255

def sourceBody318_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_254 sourceBody318_256

def sourceBody318_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_257

def sourceBody318_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_253 sourceBody318_258

def sourceBody318_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody318_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_260 sourceBody318_0

def sourceBody318_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_261 sourceBody318_0

def sourceBody318_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_259 sourceBody318_262

def sourceBody318_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody318_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 12)

def sourceBody318_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_265 sourceBody318_0

def sourceBody318_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_266 sourceBody318_0

def sourceBody318_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_264 sourceBody318_267

def sourceBody318_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_268

def sourceBody318_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_263 sourceBody318_269

def sourceBody318_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody318_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody318_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_272 sourceBody318_0

def sourceBody318_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_273 sourceBody318_0

def sourceBody318_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_271 sourceBody318_274

def sourceBody318_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_275

def sourceBody318_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_270 sourceBody318_276

def sourceBody318_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_277 sourceBody318_170

def sourceBody318_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_228 sourceBody318_278

def sourceBody318_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_279

def sourceBody318_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_280

def sourceBody318_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_223 sourceBody318_281

def sourceBody318_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_222 sourceBody318_282

def sourceBody318_284 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody318_218 sourceBody318_283

def sourceBody318_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_284 sourceBody318_4

def sourceBody318_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_285 sourceBody318_0

def sourceBody318_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_26 sourceBody318_286

def sourceBody318_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_25 sourceBody318_287

def sourceBody318_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_190 sourceBody318_288

def sourceBody318_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_189 sourceBody318_289

def sourceBody318_291 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody318_188 sourceBody318_290

def sourceBody318_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_291 sourceBody318_4

def sourceBody318_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_292 sourceBody318_0

def sourceBody318_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_26 sourceBody318_293

def sourceBody318_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_25 sourceBody318_294

def sourceBody318_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_87 sourceBody318_295

def sourceBody318_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_21 sourceBody318_296

def sourceBody318_298 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody318_86 sourceBody318_297

def sourceBody318_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_298 sourceBody318_4

def sourceBody318_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_299 sourceBody318_0

def sourceBody318_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_26 sourceBody318_300

def sourceBody318_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_25 sourceBody318_301

def sourceBody318_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_50 sourceBody318_302

def sourceBody318_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_21 sourceBody318_303

def sourceBody318_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_49 sourceBody318_304

def sourceBody318_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_20 sourceBody318_305

def sourceBody318_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_306

def sourceBody318_308 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody318_19 sourceBody318_307

def sourceBody318_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_308 sourceBody318_4

def sourceBody318_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_309 sourceBody318_0

def sourceBody318_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_11 sourceBody318_310

def sourceBody318_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_17 sourceBody318_311

def sourceBody318_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_6 sourceBody318_312

def sourceBody318_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_15 sourceBody318_313

def sourceBody318_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_14 sourceBody318_314

def sourceBody318_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody318_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_315 sourceBody318_316

def sourceBody318_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody318_319 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody318_317 sourceBody318_318

def sourceBody318_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_319 sourceBody318_4

def sourceBody318_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_320 sourceBody318_0

def sourceBody318_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_11 sourceBody318_321

def sourceBody318_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_10 sourceBody318_322

def sourceBody318_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_6 sourceBody318_323

def sourceBody318_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_5 sourceBody318_324

def sourceBody318_326 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody318_325 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody318_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_326 sourceBody318_4

def sourceBody318_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_4 sourceBody318_327

def sourceBody318_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody318_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody318_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody318_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody318_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody318_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody318_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody318_336 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody318_0, 318, 16)) (some 317) ([20, 14, 26, 12]) (some (20, sourceBody318_206, 318, 17))

def sourceBody318_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_336 sourceBody318_4

def sourceBody318_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_337 sourceBody318_0

def sourceBody318_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_335 sourceBody318_338

def sourceBody318_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_334 sourceBody318_339

def sourceBody318_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_333 sourceBody318_340

def sourceBody318_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_332 sourceBody318_341

def sourceBody318_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 32#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 32#64]))
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody318_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody318_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_344 sourceBody318_197

def sourceBody318_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_345

def sourceBody318_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_343 sourceBody318_346

def sourceBody318_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_347

def sourceBody318_349 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody318_0, 318, 18)) (some 316) ([20]) (some (20, sourceBody318_206, 318, 19))

def sourceBody318_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_349 sourceBody318_4

def sourceBody318_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_350 sourceBody318_0

def sourceBody318_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_332 sourceBody318_351

def sourceBody318_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_348 sourceBody318_352

def sourceBody318_354 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody318_342 sourceBody318_353

def sourceBody318_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_354 sourceBody318_4

def sourceBody318_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_355 sourceBody318_0

def sourceBody318_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_26 sourceBody318_356

def sourceBody318_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_25 sourceBody318_357

def sourceBody318_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_87 sourceBody318_358

def sourceBody318_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_331 sourceBody318_359

def sourceBody318_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody318_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 20)

def sourceBody318_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_362 sourceBody318_0

def sourceBody318_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_363 sourceBody318_0

def sourceBody318_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_361 sourceBody318_364

def sourceBody318_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_365

def sourceBody318_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_360 sourceBody318_366

def sourceBody318_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_330 sourceBody318_367

def sourceBody318_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_368

def sourceBody318_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_369 sourceBody318_316

def sourceBody318_371 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody318_370 sourceBody318_318

def sourceBody318_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_371 sourceBody318_4

def sourceBody318_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_372 sourceBody318_0

def sourceBody318_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_11 sourceBody318_373

def sourceBody318_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_10 sourceBody318_374

def sourceBody318_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_6 sourceBody318_375

def sourceBody318_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_329 sourceBody318_376

def sourceBody318_378 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody318_377 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody318_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_378 sourceBody318_4

def sourceBody318_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_4 sourceBody318_379

def sourceBody318_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_328 sourceBody318_380

def sourceBody318_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody318_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody318_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_383 sourceBody318_0

def sourceBody318_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_382 sourceBody318_384

def sourceBody318_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_381 sourceBody318_385

def sourceBody318_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_3 sourceBody318_386

def sourceBody318_388 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_387

def sourceBody318_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_2 sourceBody318_388

def sourceBody318_390 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_389

def sourceBody318_391 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_1 sourceBody318_390

def sourceBody318_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody318_0 sourceBody318_391

def source318 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (318, 5, sourceBody318_392)
end InitECandidate.Proofs.WordStages
