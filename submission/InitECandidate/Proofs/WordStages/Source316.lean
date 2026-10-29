import InitECandidate.Proofs.WordStages.Source300
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody316_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody316_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody316_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody316_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody316_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody316_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody316_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody316_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody316_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody316_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 18 (Flapjack.WordRegImm.reg 34) sourceBody316_7 sourceBody316_8

def sourceBody316_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_9 sourceBody316_4

def sourceBody316_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody316_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody316_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody316_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 34) sourceBody316_7 sourceBody316_8

def sourceBody316_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_14 sourceBody316_4

def sourceBody316_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody316_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody316_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_17 sourceBody316_0

def sourceBody316_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_18 sourceBody316_0

def sourceBody316_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_16 sourceBody316_19

def sourceBody316_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_20

def sourceBody316_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody316_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_22 sourceBody316_0

def sourceBody316_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_23 sourceBody316_0

def sourceBody316_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_21 sourceBody316_24

def sourceBody316_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody316_25 sourceBody316_0

def sourceBody316_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_26 sourceBody316_4

def sourceBody316_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_27 sourceBody316_0

def sourceBody316_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_11 sourceBody316_28

def sourceBody316_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_15 sourceBody316_29

def sourceBody316_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_13 sourceBody316_30

def sourceBody316_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_12 sourceBody316_31

def sourceBody316_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody316_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 26)

def sourceBody316_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_34 sourceBody316_0

def sourceBody316_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_35 sourceBody316_0

def sourceBody316_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_33 sourceBody316_36

def sourceBody316_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_37

def sourceBody316_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_32 sourceBody316_38

def sourceBody316_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody316_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_39 sourceBody316_40

def sourceBody316_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody316_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody316_41 sourceBody316_42

def sourceBody316_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_43 sourceBody316_4

def sourceBody316_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_44 sourceBody316_0

def sourceBody316_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_11 sourceBody316_45

def sourceBody316_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_10 sourceBody316_46

def sourceBody316_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_6 sourceBody316_47

def sourceBody316_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_5 sourceBody316_48

def sourceBody316_50 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody316_49 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody316_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_50 sourceBody316_4

def sourceBody316_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_4 sourceBody316_51

def sourceBody316_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 168#64]))

def sourceBody316_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 12)

def sourceBody316_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody316_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody316_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 6) sourceBody316_56 sourceBody316_13

def sourceBody316_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_57 sourceBody316_4

def sourceBody316_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 34)

def sourceBody316_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 26)

def sourceBody316_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody316_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody316_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody316_0, 316, 2)) (some 286) ([34]) (some (34, sourceBody316_62, 316, 3))

def sourceBody316_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_63 sourceBody316_4

def sourceBody316_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_64 sourceBody316_0

def sourceBody316_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_61 sourceBody316_65

def sourceBody316_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_66

def sourceBody316_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_67

def sourceBody316_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody316_68 sourceBody316_0

def sourceBody316_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_69 sourceBody316_4

def sourceBody316_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_70 sourceBody316_0

def sourceBody316_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_59 sourceBody316_71

def sourceBody316_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_58 sourceBody316_72

def sourceBody316_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_55 sourceBody316_73

def sourceBody316_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_60 sourceBody316_74

def sourceBody316_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody316_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody316_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody316_79 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 296) ([0, 18, 34, 6, 24]) (none)

def sourceBody316_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_79 sourceBody316_0

def sourceBody316_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_78 sourceBody316_80

def sourceBody316_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_77 sourceBody316_81

def sourceBody316_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_13 sourceBody316_82

def sourceBody316_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_76 sourceBody316_83

def sourceBody316_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_75 sourceBody316_84

def sourceBody316_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody316_85 sourceBody316_0

def sourceBody316_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_86 sourceBody316_4

def sourceBody316_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_87 sourceBody316_0

def sourceBody316_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_59 sourceBody316_88

def sourceBody316_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_58 sourceBody316_89

def sourceBody316_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_55 sourceBody316_90

def sourceBody316_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_54 sourceBody316_91

def sourceBody316_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody316_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody316_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 34)

def sourceBody316_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody316_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 32) sourceBody316_96 sourceBody316_94

def sourceBody316_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_97 sourceBody316_4

def sourceBody316_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 26)

def sourceBody316_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody316_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody316_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody316_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 20) sourceBody316_101 sourceBody316_102

def sourceBody316_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_103 sourceBody316_4

def sourceBody316_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody316_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 28)

def sourceBody316_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody316_108 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 22) sourceBody316_107 sourceBody316_105

def sourceBody316_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_108 sourceBody316_4

def sourceBody316_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 4])

def sourceBody316_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody316_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody316_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody316_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody316_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 16) sourceBody316_113 sourceBody316_114

def sourceBody316_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_115 sourceBody316_4

def sourceBody316_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody316_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody316_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody316_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody316_0, 316, 4)) (some 286) ([24]) (some (24, sourceBody316_119, 316, 5))

def sourceBody316_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_120 sourceBody316_4

def sourceBody316_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_121 sourceBody316_0

def sourceBody316_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_118 sourceBody316_122

def sourceBody316_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_123

def sourceBody316_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_124

def sourceBody316_126 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody316_125 sourceBody316_0

def sourceBody316_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_126 sourceBody316_4

def sourceBody316_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_127 sourceBody316_0

def sourceBody316_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_117 sourceBody316_128

def sourceBody316_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_116 sourceBody316_129

def sourceBody316_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_94 sourceBody316_130

def sourceBody316_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_59 sourceBody316_131

def sourceBody316_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody316_134 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody316_0, 316, 6)) (some 68) ([24]) (some (24, sourceBody316_119, 316, 7))

def sourceBody316_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_134 sourceBody316_4

def sourceBody316_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_135 sourceBody316_0

def sourceBody316_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_133 sourceBody316_136

def sourceBody316_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody316_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 30)

def sourceBody316_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 16 (Flapjack.WordLangAddr.addr 24 0#64))

def sourceBody316_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_140 sourceBody316_0

def sourceBody316_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_139 sourceBody316_141

def sourceBody316_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_138 sourceBody316_142

def sourceBody316_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 34)

def sourceBody316_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody316_146 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 32) sourceBody316_96 sourceBody316_94

def sourceBody316_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_146 sourceBody316_4

def sourceBody316_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody316_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 18)

def sourceBody316_150 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 297) ([0, 24, 16, 32]) (none)

def sourceBody316_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_150 sourceBody316_0

def sourceBody316_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_149 sourceBody316_151

def sourceBody316_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_96 sourceBody316_152

def sourceBody316_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_138 sourceBody316_153

def sourceBody316_155 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody316_154 sourceBody316_0

def sourceBody316_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_155 sourceBody316_4

def sourceBody316_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_156 sourceBody316_0

def sourceBody316_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_148 sourceBody316_157

def sourceBody316_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_147 sourceBody316_158

def sourceBody316_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_145 sourceBody316_159

def sourceBody316_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_144 sourceBody316_160

def sourceBody316_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_143 sourceBody316_161

def sourceBody316_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody316_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody316_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody316_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody316_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody316_168 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody316_0, 316, 8)) (some 292) ([16, 32, 10, 28]) (some (16, sourceBody316_167, 316, 9))

def sourceBody316_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_168 sourceBody316_4

def sourceBody316_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_169 sourceBody316_0

def sourceBody316_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_166 sourceBody316_170

def sourceBody316_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_165 sourceBody316_171

def sourceBody316_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_164 sourceBody316_172

def sourceBody316_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_163 sourceBody316_173

def sourceBody316_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody316_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody316_177 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 32 (Flapjack.WordRegImm.reg 10) sourceBody316_164 sourceBody316_176

def sourceBody316_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_177 sourceBody316_4

def sourceBody316_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 32)

def sourceBody316_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody316_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 1#64,
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 40#64])])

def sourceBody316_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody316_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody316_184 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 296) ([0, 16, 32, 10, 28]) (none)

def sourceBody316_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_184 sourceBody316_0

def sourceBody316_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_183 sourceBody316_185

def sourceBody316_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_182 sourceBody316_186

def sourceBody316_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_181 sourceBody316_187

def sourceBody316_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_180 sourceBody316_188

def sourceBody316_190 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody316_189 sourceBody316_0

def sourceBody316_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_190 sourceBody316_4

def sourceBody316_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_191 sourceBody316_0

def sourceBody316_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_179 sourceBody316_192

def sourceBody316_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_178 sourceBody316_193

def sourceBody316_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_175 sourceBody316_194

def sourceBody316_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_95 sourceBody316_195

def sourceBody316_197 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 297) ([0, 16, 32, 10]) (none)

def sourceBody316_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_197 sourceBody316_0

def sourceBody316_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_182 sourceBody316_198

def sourceBody316_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_181 sourceBody316_199

def sourceBody316_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_180 sourceBody316_200

def sourceBody316_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_196 sourceBody316_201

def sourceBody316_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_174 sourceBody316_202

def sourceBody316_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_203

def sourceBody316_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_204

def sourceBody316_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_162 sourceBody316_205

def sourceBody316_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_137 sourceBody316_206

def sourceBody316_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_207

def sourceBody316_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_208

def sourceBody316_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_132 sourceBody316_209

def sourceBody316_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_112 sourceBody316_210

def sourceBody316_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_211

def sourceBody316_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_111 sourceBody316_212

def sourceBody316_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_213

def sourceBody316_215 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody316_214 sourceBody316_0

def sourceBody316_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_215 sourceBody316_4

def sourceBody316_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_216 sourceBody316_0

def sourceBody316_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_110 sourceBody316_217

def sourceBody316_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_109 sourceBody316_218

def sourceBody316_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_106 sourceBody316_219

def sourceBody316_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_105 sourceBody316_220

def sourceBody316_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_104 sourceBody316_221

def sourceBody316_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_100 sourceBody316_222

def sourceBody316_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_99 sourceBody316_223

def sourceBody316_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_98 sourceBody316_224

def sourceBody316_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_95 sourceBody316_225

def sourceBody316_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_94 sourceBody316_226

def sourceBody316_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_58 sourceBody316_227

def sourceBody316_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_93 sourceBody316_228

def sourceBody316_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_54 sourceBody316_229

def sourceBody316_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_92 sourceBody316_230

def sourceBody316_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody316_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_232 sourceBody316_0

def sourceBody316_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_76 sourceBody316_233

def sourceBody316_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_231 sourceBody316_234

def sourceBody316_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_53 sourceBody316_235

def sourceBody316_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_236

def sourceBody316_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_52 sourceBody316_237

def sourceBody316_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_3 sourceBody316_238

def sourceBody316_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_239

def sourceBody316_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_2 sourceBody316_240

def sourceBody316_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_241

def sourceBody316_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_1 sourceBody316_242

def sourceBody316_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody316_0 sourceBody316_243

def source316 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (316, 2, sourceBody316_244)
end InitECandidate.Proofs.WordStages
