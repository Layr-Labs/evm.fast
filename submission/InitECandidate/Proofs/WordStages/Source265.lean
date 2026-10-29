import InitECandidate.Proofs.WordStages.Source249
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody265_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody265_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody265_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody265_0, 265, 2)) (some 69) ([]) (some (28, sourceBody265_1, 265, 3))

def sourceBody265_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody265_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_2 sourceBody265_3

def sourceBody265_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_4 sourceBody265_0

def sourceBody265_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody265_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody265_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody265_0, 265, 4)) (some 68) ([12]) (some (12, sourceBody265_7, 265, 5))

def sourceBody265_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_8 sourceBody265_3

def sourceBody265_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_9 sourceBody265_0

def sourceBody265_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_6 sourceBody265_10

def sourceBody265_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody265_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody265_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody265_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody265_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody265_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 16 (Flapjack.WordRegImm.reg 26) sourceBody265_15 sourceBody265_16

def sourceBody265_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_17 sourceBody265_3

def sourceBody265_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody265_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody265_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody265_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 26) sourceBody265_15 sourceBody265_16

def sourceBody265_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_22 sourceBody265_3

def sourceBody265_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody265_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 14 14 16 26))

def sourceBody265_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 14])

def sourceBody265_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 28,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody265_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody265_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody265_0, 265, 6)) (some 260) ([24, 20]) (some (16, sourceBody265_28, 265, 7))

def sourceBody265_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_29 sourceBody265_3

def sourceBody265_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_30 sourceBody265_0

def sourceBody265_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_27 sourceBody265_31

def sourceBody265_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_26 sourceBody265_32

def sourceBody265_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_25 sourceBody265_33

def sourceBody265_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_24 sourceBody265_34

def sourceBody265_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_13 sourceBody265_35

def sourceBody265_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_36

def sourceBody265_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_37

def sourceBody265_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody265_38 sourceBody265_0

def sourceBody265_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_39 sourceBody265_3

def sourceBody265_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_40 sourceBody265_0

def sourceBody265_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_19 sourceBody265_41

def sourceBody265_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_23 sourceBody265_42

def sourceBody265_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_21 sourceBody265_43

def sourceBody265_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_20 sourceBody265_44

def sourceBody265_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody265_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody265_0, 265, 8)) (some 261) ([24, 20]) (some (16, sourceBody265_28, 265, 9))

def sourceBody265_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_47 sourceBody265_3

def sourceBody265_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_48 sourceBody265_0

def sourceBody265_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_27 sourceBody265_49

def sourceBody265_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_26 sourceBody265_50

def sourceBody265_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_25 sourceBody265_51

def sourceBody265_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_24 sourceBody265_52

def sourceBody265_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_13 sourceBody265_53

def sourceBody265_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_54

def sourceBody265_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_55

def sourceBody265_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody265_56 sourceBody265_0

def sourceBody265_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_57 sourceBody265_3

def sourceBody265_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_58 sourceBody265_0

def sourceBody265_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_19 sourceBody265_59

def sourceBody265_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_23 sourceBody265_60

def sourceBody265_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_46 sourceBody265_61

def sourceBody265_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_20 sourceBody265_62

def sourceBody265_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_45 sourceBody265_63

def sourceBody265_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody265_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody265_0, 265, 10)) (some 262) ([24, 20]) (some (16, sourceBody265_28, 265, 11))

def sourceBody265_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_66 sourceBody265_3

def sourceBody265_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_67 sourceBody265_0

def sourceBody265_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_27 sourceBody265_68

def sourceBody265_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_26 sourceBody265_69

def sourceBody265_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_25 sourceBody265_70

def sourceBody265_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_24 sourceBody265_71

def sourceBody265_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_13 sourceBody265_72

def sourceBody265_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_73

def sourceBody265_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_74

def sourceBody265_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody265_75 sourceBody265_0

def sourceBody265_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_76 sourceBody265_3

def sourceBody265_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_77 sourceBody265_0

def sourceBody265_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_19 sourceBody265_78

def sourceBody265_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_23 sourceBody265_79

def sourceBody265_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_65 sourceBody265_80

def sourceBody265_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_20 sourceBody265_81

def sourceBody265_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_64 sourceBody265_82

def sourceBody265_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody265_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody265_0, 265, 12)) (some 263) ([24, 20]) (some (16, sourceBody265_28, 265, 13))

def sourceBody265_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_85 sourceBody265_3

def sourceBody265_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_86 sourceBody265_0

def sourceBody265_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_27 sourceBody265_87

def sourceBody265_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_26 sourceBody265_88

def sourceBody265_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_25 sourceBody265_89

def sourceBody265_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_24 sourceBody265_90

def sourceBody265_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_13 sourceBody265_91

def sourceBody265_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_92

def sourceBody265_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_93

def sourceBody265_95 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody265_94 sourceBody265_0

def sourceBody265_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_95 sourceBody265_3

def sourceBody265_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_96 sourceBody265_0

def sourceBody265_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_19 sourceBody265_97

def sourceBody265_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_23 sourceBody265_98

def sourceBody265_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_84 sourceBody265_99

def sourceBody265_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_20 sourceBody265_100

def sourceBody265_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_83 sourceBody265_101

def sourceBody265_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody265_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody265_0, 265, 14)) (some 264) ([24, 20]) (some (16, sourceBody265_28, 265, 15))

def sourceBody265_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_104 sourceBody265_3

def sourceBody265_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_105 sourceBody265_0

def sourceBody265_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_27 sourceBody265_106

def sourceBody265_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_26 sourceBody265_107

def sourceBody265_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_25 sourceBody265_108

def sourceBody265_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_24 sourceBody265_109

def sourceBody265_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_13 sourceBody265_110

def sourceBody265_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_111

def sourceBody265_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_112

def sourceBody265_114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody265_113 sourceBody265_0

def sourceBody265_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_114 sourceBody265_3

def sourceBody265_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_115 sourceBody265_0

def sourceBody265_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_19 sourceBody265_116

def sourceBody265_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_23 sourceBody265_117

def sourceBody265_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_103 sourceBody265_118

def sourceBody265_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_20 sourceBody265_119

def sourceBody265_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_102 sourceBody265_120

def sourceBody265_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody265_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody265_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_123 sourceBody265_0

def sourceBody265_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_124 sourceBody265_0

def sourceBody265_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_122 sourceBody265_125

def sourceBody265_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_126

def sourceBody265_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_121 sourceBody265_127

def sourceBody265_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody265_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_128 sourceBody265_129

def sourceBody265_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody265_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody265_130 sourceBody265_131

def sourceBody265_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_132 sourceBody265_3

def sourceBody265_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_133 sourceBody265_0

def sourceBody265_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_19 sourceBody265_134

def sourceBody265_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_18 sourceBody265_135

def sourceBody265_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_14 sourceBody265_136

def sourceBody265_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_13 sourceBody265_137

def sourceBody265_139 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody265_138 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody265_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_139 sourceBody265_3

def sourceBody265_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_3 sourceBody265_140

def sourceBody265_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 28)

def sourceBody265_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody265_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody265_145 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody265_0, 265, 16)) (some 238) ([16, 26, 14, 24]) (some (16, sourceBody265_28, 265, 17))

def sourceBody265_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_145 sourceBody265_3

def sourceBody265_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_146 sourceBody265_0

def sourceBody265_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_144 sourceBody265_147

def sourceBody265_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_143 sourceBody265_148

def sourceBody265_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_14 sourceBody265_149

def sourceBody265_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_142 sourceBody265_150

def sourceBody265_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_151

def sourceBody265_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_152

def sourceBody265_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_141 sourceBody265_153

def sourceBody265_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody265_156 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody265_0, 265, 18)) (some 70) ([16]) (some (16, sourceBody265_28, 265, 19))

def sourceBody265_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_156 sourceBody265_3

def sourceBody265_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_157 sourceBody265_0

def sourceBody265_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_155 sourceBody265_158

def sourceBody265_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_159

def sourceBody265_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_160

def sourceBody265_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_154 sourceBody265_161

def sourceBody265_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody265_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody265_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_164 sourceBody265_0

def sourceBody265_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_163 sourceBody265_165

def sourceBody265_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_162 sourceBody265_166

def sourceBody265_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_12 sourceBody265_167

def sourceBody265_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_168

def sourceBody265_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_11 sourceBody265_169

def sourceBody265_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_170

def sourceBody265_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_171

def sourceBody265_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_5 sourceBody265_172

def sourceBody265_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_173

def sourceBody265_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody265_0 sourceBody265_174

def source265 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (265, 6, sourceBody265_175)
end InitECandidate.Proofs.WordStages
