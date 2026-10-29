import InitECandidate.Proofs.WordStages.Source560
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody576_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody576_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody576_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 32, 6, 26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody576_0, 576, 2)) (some 475) ([]) (some (18, sourceBody576_1, 576, 3))

def sourceBody576_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody576_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_2 sourceBody576_3

def sourceBody576_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_4 sourceBody576_0

def sourceBody576_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody576_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody576_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody576_0, 576, 4)) (some 470) ([38]) (some (38, sourceBody576_7, 576, 5))

def sourceBody576_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_8 sourceBody576_3

def sourceBody576_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_9 sourceBody576_0

def sourceBody576_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_6 sourceBody576_10

def sourceBody576_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_11

def sourceBody576_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_12

def sourceBody576_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody576_0, 576, 6)) (some 572) ([]) (some (38, sourceBody576_7, 576, 7))

def sourceBody576_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_14 sourceBody576_3

def sourceBody576_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_15 sourceBody576_0

def sourceBody576_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody576_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody576_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 32)

def sourceBody576_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 6)

def sourceBody576_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 26)

def sourceBody576_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody576_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody576_0, 576, 8)) (some 462) ([24, 16, 36, 10]) (some (24, sourceBody576_22, 576, 9))

def sourceBody576_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_23 sourceBody576_3

def sourceBody576_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_24 sourceBody576_0

def sourceBody576_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_21 sourceBody576_25

def sourceBody576_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_20 sourceBody576_26

def sourceBody576_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_19 sourceBody576_27

def sourceBody576_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_18 sourceBody576_28

def sourceBody576_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody576_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 38)

def sourceBody576_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody576_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody576_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 16 (Flapjack.WordRegImm.reg 36) sourceBody576_32 sourceBody576_33

def sourceBody576_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_34 sourceBody576_3

def sourceBody576_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 256#64])

def sourceBody576_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 38)

def sourceBody576_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody576_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody576_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 30 (Flapjack.WordRegImm.reg 20) sourceBody576_38 sourceBody576_39

def sourceBody576_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_40 sourceBody576_3

def sourceBody576_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody576_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody576_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody576_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody576_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 22) sourceBody576_44 sourceBody576_45

def sourceBody576_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_46 sourceBody576_3

def sourceBody576_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody576_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 2])

def sourceBody576_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody576_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.reg 8) sourceBody576_50 sourceBody576_48

def sourceBody576_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_51 sourceBody576_3

def sourceBody576_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 34)

def sourceBody576_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody576_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody576_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody576_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody576_0, 576, 10)) (some 476) ([16, 36, 10, 30]) (some (16, sourceBody576_56, 576, 11))

def sourceBody576_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_57 sourceBody576_3

def sourceBody576_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_58 sourceBody576_0

def sourceBody576_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_39 sourceBody576_59

def sourceBody576_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_55 sourceBody576_60

def sourceBody576_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_54 sourceBody576_61

def sourceBody576_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_33 sourceBody576_62

def sourceBody576_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_63

def sourceBody576_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_64

def sourceBody576_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody576_0, 576, 12)) (some 490) ([16]) (some (16, sourceBody576_56, 576, 13))

def sourceBody576_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_66 sourceBody576_3

def sourceBody576_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_67 sourceBody576_0

def sourceBody576_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_32 sourceBody576_68

def sourceBody576_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_69

def sourceBody576_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_70

def sourceBody576_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_65 sourceBody576_71

def sourceBody576_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody576_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody576_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_74 sourceBody576_0

def sourceBody576_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_73 sourceBody576_75

def sourceBody576_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_72 sourceBody576_76

def sourceBody576_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody576_77 sourceBody576_0

def sourceBody576_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_78 sourceBody576_3

def sourceBody576_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_79 sourceBody576_0

def sourceBody576_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_53 sourceBody576_80

def sourceBody576_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_52 sourceBody576_81

def sourceBody576_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_49 sourceBody576_82

def sourceBody576_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_48 sourceBody576_83

def sourceBody576_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_47 sourceBody576_84

def sourceBody576_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_43 sourceBody576_85

def sourceBody576_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_42 sourceBody576_86

def sourceBody576_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_41 sourceBody576_87

def sourceBody576_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_37 sourceBody576_88

def sourceBody576_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_36 sourceBody576_89

def sourceBody576_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_35 sourceBody576_90

def sourceBody576_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_31 sourceBody576_91

def sourceBody576_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_30 sourceBody576_92

def sourceBody576_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 4])

def sourceBody576_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody576_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody576_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 24)

def sourceBody576_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody576_99 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 30) sourceBody576_98 sourceBody576_55

def sourceBody576_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_99 sourceBody576_3

def sourceBody576_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody576_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 50#64)

def sourceBody576_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 36)

def sourceBody576_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_103 sourceBody576_0

def sourceBody576_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_104 sourceBody576_0

def sourceBody576_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_102 sourceBody576_105

def sourceBody576_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_106

def sourceBody576_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody576_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody576_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_108 sourceBody576_109

def sourceBody576_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_107 sourceBody576_110

def sourceBody576_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody576_111 sourceBody576_0

def sourceBody576_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_112 sourceBody576_3

def sourceBody576_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_113 sourceBody576_0

def sourceBody576_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_101 sourceBody576_114

def sourceBody576_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_100 sourceBody576_115

def sourceBody576_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_97 sourceBody576_116

def sourceBody576_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_96 sourceBody576_117

def sourceBody576_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 16#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 24])
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody576_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody576_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody576_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 10, 30, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody576_0, 576, 14)) (some 146) ([40, 2]) (some (40, sourceBody576_121, 576, 15))

def sourceBody576_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_122 sourceBody576_3

def sourceBody576_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_123 sourceBody576_0

def sourceBody576_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_120 sourceBody576_124

def sourceBody576_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_119 sourceBody576_125

def sourceBody576_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 24)

def sourceBody576_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody576_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody576_0, 576, 16)) (some 434) ([2]) (some (2, sourceBody576_128, 576, 17))

def sourceBody576_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_129 sourceBody576_3

def sourceBody576_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_130 sourceBody576_0

def sourceBody576_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_127 sourceBody576_131

def sourceBody576_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_132

def sourceBody576_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_133

def sourceBody576_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 36)

def sourceBody576_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody576_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 30)

def sourceBody576_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 20)

def sourceBody576_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody576_0, 576, 18)) (some 476) ([2, 22, 14, 34]) (some (2, sourceBody576_128, 576, 19))

def sourceBody576_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_139 sourceBody576_3

def sourceBody576_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_140 sourceBody576_0

def sourceBody576_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_138 sourceBody576_141

def sourceBody576_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_137 sourceBody576_142

def sourceBody576_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_136 sourceBody576_143

def sourceBody576_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_135 sourceBody576_144

def sourceBody576_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_145

def sourceBody576_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_146

def sourceBody576_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_134 sourceBody576_147

def sourceBody576_149 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody576_0, 576, 20)) (some 490) ([2]) (some (2, sourceBody576_128, 576, 21))

def sourceBody576_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_149 sourceBody576_3

def sourceBody576_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_150 sourceBody576_0

def sourceBody576_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_44 sourceBody576_151

def sourceBody576_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_152

def sourceBody576_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_153

def sourceBody576_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_148 sourceBody576_154

def sourceBody576_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody576_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [40]

def sourceBody576_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_157 sourceBody576_0

def sourceBody576_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_156 sourceBody576_158

def sourceBody576_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_155 sourceBody576_159

def sourceBody576_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_126 sourceBody576_160

def sourceBody576_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_161

def sourceBody576_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_162

def sourceBody576_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_163

def sourceBody576_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_164

def sourceBody576_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_165

def sourceBody576_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_166

def sourceBody576_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_167

def sourceBody576_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_168

def sourceBody576_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_118 sourceBody576_169

def sourceBody576_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_95 sourceBody576_170

def sourceBody576_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_171

def sourceBody576_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_94 sourceBody576_172

def sourceBody576_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_173

def sourceBody576_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_93 sourceBody576_174

def sourceBody576_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_29 sourceBody576_175

def sourceBody576_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_176

def sourceBody576_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_177

def sourceBody576_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_17 sourceBody576_178

def sourceBody576_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_179

def sourceBody576_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_16 sourceBody576_180

def sourceBody576_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_181

def sourceBody576_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_182

def sourceBody576_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_13 sourceBody576_183

def sourceBody576_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_5 sourceBody576_184

def sourceBody576_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_185

def sourceBody576_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_186

def sourceBody576_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_187

def sourceBody576_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_188

def sourceBody576_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_189

def sourceBody576_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_190

def sourceBody576_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_191

def sourceBody576_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody576_0 sourceBody576_192

def source576 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (576, 1, sourceBody576_193)
end InitECandidate.Proofs.WordStages
