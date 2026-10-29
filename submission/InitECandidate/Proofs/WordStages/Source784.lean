import InitECandidate.Proofs.WordStages.Source768
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody784_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody784_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody784_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody784_0, 784, 2)) (some 69) ([]) (some (16, sourceBody784_1, 784, 3))

def sourceBody784_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody784_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_2 sourceBody784_3

def sourceBody784_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_4 sourceBody784_0

def sourceBody784_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody784_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody784_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody784_0, 784, 4)) (some 68) ([26]) (some (26, sourceBody784_7, 784, 5))

def sourceBody784_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_8 sourceBody784_3

def sourceBody784_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_9 sourceBody784_0

def sourceBody784_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_6 sourceBody784_10

def sourceBody784_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody784_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody784_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody784_0, 784, 6)) (some 778) ([10]) (some (10, sourceBody784_13, 784, 7))

def sourceBody784_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_14 sourceBody784_3

def sourceBody784_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_15 sourceBody784_0

def sourceBody784_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_12 sourceBody784_16

def sourceBody784_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_17

def sourceBody784_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_18

def sourceBody784_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
    (Flapjack.WordLangExpHOL.const 6#64))

def sourceBody784_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody784_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody784_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody784_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody784_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 24) sourceBody784_24 sourceBody784_22

def sourceBody784_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_25 sourceBody784_3

def sourceBody784_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody784_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody784_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody784_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_29 sourceBody784_0

def sourceBody784_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_30 sourceBody784_0

def sourceBody784_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_28 sourceBody784_31

def sourceBody784_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_32

def sourceBody784_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody784_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody784_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 24) sourceBody784_24 sourceBody784_22

def sourceBody784_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_36 sourceBody784_3

def sourceBody784_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody784_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody784_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody784_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody784_0, 784, 8)) (some 782) ([14, 24]) (some (14, sourceBody784_40, 784, 9))

def sourceBody784_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_41 sourceBody784_3

def sourceBody784_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_42 sourceBody784_0

def sourceBody784_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_39 sourceBody784_43

def sourceBody784_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_38 sourceBody784_44

def sourceBody784_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_45

def sourceBody784_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_46

def sourceBody784_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody784_47 sourceBody784_0

def sourceBody784_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_48 sourceBody784_3

def sourceBody784_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_49 sourceBody784_0

def sourceBody784_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_27 sourceBody784_50

def sourceBody784_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_37 sourceBody784_51

def sourceBody784_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_35 sourceBody784_52

def sourceBody784_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_34 sourceBody784_53

def sourceBody784_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_33 sourceBody784_54

def sourceBody784_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
        (Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 6,
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                  (Flapjack.WordLangExpHOL.const 6#64))
                (Flapjack.WordLangExpHOL.const 3#64)]))
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
          [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 63#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody784_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody784_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody784_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody784_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 12) sourceBody784_35 sourceBody784_59

def sourceBody784_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_60 sourceBody784_3

def sourceBody784_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody784_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody784_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody784_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody784_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody784_0, 784, 10)) (some 783) ([24, 12, 22]) (some (24, sourceBody784_65, 784, 11))

def sourceBody784_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_66 sourceBody784_3

def sourceBody784_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_67 sourceBody784_0

def sourceBody784_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_64 sourceBody784_68

def sourceBody784_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_63 sourceBody784_69

def sourceBody784_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_39 sourceBody784_70

def sourceBody784_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_71

def sourceBody784_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_72

def sourceBody784_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody784_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_74 sourceBody784_0

def sourceBody784_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_75 sourceBody784_0

def sourceBody784_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_73 sourceBody784_76

def sourceBody784_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody784_77 sourceBody784_0

def sourceBody784_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_78 sourceBody784_3

def sourceBody784_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_79 sourceBody784_0

def sourceBody784_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_62 sourceBody784_80

def sourceBody784_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_61 sourceBody784_81

def sourceBody784_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_58 sourceBody784_82

def sourceBody784_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_57 sourceBody784_83

def sourceBody784_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_56 sourceBody784_84

def sourceBody784_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_85

def sourceBody784_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_55 sourceBody784_86

def sourceBody784_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody784_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_87 sourceBody784_88

def sourceBody784_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody784_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody784_89 sourceBody784_90

def sourceBody784_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_91 sourceBody784_3

def sourceBody784_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_92 sourceBody784_0

def sourceBody784_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_27 sourceBody784_93

def sourceBody784_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_26 sourceBody784_94

def sourceBody784_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_23 sourceBody784_95

def sourceBody784_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_22 sourceBody784_96

def sourceBody784_98 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody784_97 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody784_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_98 sourceBody784_3

def sourceBody784_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_3 sourceBody784_99

def sourceBody784_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody784_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody784_0, 784, 12)) (some 780) ([14, 24]) (some (14, sourceBody784_40, 784, 13))

def sourceBody784_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_102 sourceBody784_3

def sourceBody784_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_103 sourceBody784_0

def sourceBody784_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_39 sourceBody784_104

def sourceBody784_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_101 sourceBody784_105

def sourceBody784_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_106

def sourceBody784_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_107

def sourceBody784_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_100 sourceBody784_108

def sourceBody784_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody784_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody784_0, 784, 14)) (some 70) ([14]) (some (14, sourceBody784_40, 784, 15))

def sourceBody784_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_111 sourceBody784_3

def sourceBody784_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_112 sourceBody784_0

def sourceBody784_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_110 sourceBody784_113

def sourceBody784_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_114

def sourceBody784_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_115

def sourceBody784_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_109 sourceBody784_116

def sourceBody784_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody784_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody784_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_119 sourceBody784_0

def sourceBody784_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_118 sourceBody784_120

def sourceBody784_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_117 sourceBody784_121

def sourceBody784_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_21 sourceBody784_122

def sourceBody784_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_123

def sourceBody784_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_20 sourceBody784_124

def sourceBody784_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_125

def sourceBody784_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_19 sourceBody784_126

def sourceBody784_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_11 sourceBody784_127

def sourceBody784_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_128

def sourceBody784_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_129

def sourceBody784_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_5 sourceBody784_130

def sourceBody784_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_131

def sourceBody784_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody784_0 sourceBody784_132

def source784 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (784, 5, sourceBody784_133)
end InitECandidate.Proofs.WordStages
