import InitECandidate.Proofs.WordStages.Source234
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody250_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody250_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody250_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody250_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody250_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 28) sourceBody250_2 sourceBody250_3

def sourceBody250_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody250_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_4 sourceBody250_5

def sourceBody250_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody250_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody250_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody250_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody250_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_9 sourceBody250_10

def sourceBody250_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_8 sourceBody250_11

def sourceBody250_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody250_12 sourceBody250_10

def sourceBody250_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_13 sourceBody250_5

def sourceBody250_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_14 sourceBody250_10

def sourceBody250_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_7 sourceBody250_15

def sourceBody250_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_6 sourceBody250_16

def sourceBody250_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_1 sourceBody250_17

def sourceBody250_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_0 sourceBody250_18

def sourceBody250_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody250_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody250_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody250_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 28 (Flapjack.WordRegImm.reg 12) sourceBody250_22 sourceBody250_1

def sourceBody250_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_23 sourceBody250_5

def sourceBody250_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 28)

def sourceBody250_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody250_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody250_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody250_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody250_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 22) sourceBody250_28 sourceBody250_29

def sourceBody250_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_30 sourceBody250_5

def sourceBody250_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody250_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody250_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody250_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody250_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 26 (Flapjack.WordRegImm.reg 14) sourceBody250_34 sourceBody250_35

def sourceBody250_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_36 sourceBody250_5

def sourceBody250_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody250_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.var 26])

def sourceBody250_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody250_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 30) sourceBody250_40 sourceBody250_38

def sourceBody250_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_41 sourceBody250_5

def sourceBody250_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 20)

def sourceBody250_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody250_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody250_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody250_10, 250, 2)) (some 245) ([12]) (some (12, sourceBody250_45, 250, 3))

def sourceBody250_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_46 sourceBody250_5

def sourceBody250_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_47 sourceBody250_10

def sourceBody250_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_44 sourceBody250_48

def sourceBody250_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_10 sourceBody250_49

def sourceBody250_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_10 sourceBody250_50

def sourceBody250_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody250_51 sourceBody250_10

def sourceBody250_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_52 sourceBody250_5

def sourceBody250_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_53 sourceBody250_10

def sourceBody250_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_43 sourceBody250_54

def sourceBody250_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_42 sourceBody250_55

def sourceBody250_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_39 sourceBody250_56

def sourceBody250_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_38 sourceBody250_57

def sourceBody250_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_37 sourceBody250_58

def sourceBody250_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_33 sourceBody250_59

def sourceBody250_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_32 sourceBody250_60

def sourceBody250_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_31 sourceBody250_61

def sourceBody250_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_27 sourceBody250_62

def sourceBody250_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_7 sourceBody250_63

def sourceBody250_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody250_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 12 (Flapjack.WordRegImm.reg 22) sourceBody250_28 sourceBody250_29

def sourceBody250_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_66 sourceBody250_5

def sourceBody250_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody250_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
              (Flapjack.WordLangExpHOL.const 3#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody250_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 11#64)

def sourceBody250_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody250_10, 250, 4)) (some 245) ([12]) (some (12, sourceBody250_45, 250, 5))

def sourceBody250_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_71 sourceBody250_5

def sourceBody250_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_72 sourceBody250_10

def sourceBody250_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_70 sourceBody250_73

def sourceBody250_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_10 sourceBody250_74

def sourceBody250_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_10 sourceBody250_75

def sourceBody250_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody250_76 sourceBody250_10

def sourceBody250_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_77 sourceBody250_5

def sourceBody250_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_78 sourceBody250_10

def sourceBody250_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_68 sourceBody250_79

def sourceBody250_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_31 sourceBody250_80

def sourceBody250_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_69 sourceBody250_81

def sourceBody250_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_7 sourceBody250_82

def sourceBody250_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody250_83 sourceBody250_10

def sourceBody250_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_84 sourceBody250_5

def sourceBody250_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_85 sourceBody250_10

def sourceBody250_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_68 sourceBody250_86

def sourceBody250_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_67 sourceBody250_87

def sourceBody250_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_65 sourceBody250_88

def sourceBody250_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_29 sourceBody250_89

def sourceBody250_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_64 sourceBody250_90

def sourceBody250_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody250_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody250_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_93 sourceBody250_10

def sourceBody250_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_94 sourceBody250_10

def sourceBody250_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_92 sourceBody250_95

def sourceBody250_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_10 sourceBody250_96

def sourceBody250_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_91 sourceBody250_97

def sourceBody250_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_26 sourceBody250_98

def sourceBody250_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_10 sourceBody250_99

def sourceBody250_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody250_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_100 sourceBody250_101

def sourceBody250_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody250_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody250_102 sourceBody250_103

def sourceBody250_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_104 sourceBody250_5

def sourceBody250_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_105 sourceBody250_10

def sourceBody250_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_25 sourceBody250_106

def sourceBody250_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_24 sourceBody250_107

def sourceBody250_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_21 sourceBody250_108

def sourceBody250_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_20 sourceBody250_109

def sourceBody250_111 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody250_110 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)

def sourceBody250_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_111 sourceBody250_5

def sourceBody250_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_5 sourceBody250_112

def sourceBody250_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 2))

def sourceBody250_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody250_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.reg 12) sourceBody250_22 sourceBody250_1

def sourceBody250_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_116 sourceBody250_5

def sourceBody250_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody250_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody250_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody250_10, 250, 6)) (some 245) ([28]) (some (28, sourceBody250_119, 250, 7))

def sourceBody250_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_120 sourceBody250_5

def sourceBody250_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_121 sourceBody250_10

def sourceBody250_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_118 sourceBody250_122

def sourceBody250_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_10 sourceBody250_123

def sourceBody250_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_10 sourceBody250_124

def sourceBody250_126 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody250_125 sourceBody250_10

def sourceBody250_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_126 sourceBody250_5

def sourceBody250_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_127 sourceBody250_10

def sourceBody250_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_25 sourceBody250_128

def sourceBody250_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_117 sourceBody250_129

def sourceBody250_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_115 sourceBody250_130

def sourceBody250_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_114 sourceBody250_131

def sourceBody250_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_113 sourceBody250_132

def sourceBody250_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody250_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_134 sourceBody250_10

def sourceBody250_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_3 sourceBody250_135

def sourceBody250_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_133 sourceBody250_136

def sourceBody250_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_8 sourceBody250_137

def sourceBody250_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_10 sourceBody250_138

def sourceBody250_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody250_19 sourceBody250_139

def source250 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (250, 5, sourceBody250_140)
end InitECandidate.Proofs.WordStages
