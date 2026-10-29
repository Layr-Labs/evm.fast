import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody78_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody78_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody78_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 7#64])

def sourceBody78_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody78_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody78_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody78_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 8) sourceBody78_4 sourceBody78_5

def sourceBody78_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody78_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_6 sourceBody78_7

def sourceBody78_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody78_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody78_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody78_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 8) sourceBody78_4 sourceBody78_5

def sourceBody78_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_12 sourceBody78_7

def sourceBody78_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12])

def sourceBody78_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody78_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 8

def sourceBody78_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_16 sourceBody78_0

def sourceBody78_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_15 sourceBody78_17

def sourceBody78_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_18 sourceBody78_0

def sourceBody78_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_5 sourceBody78_19

def sourceBody78_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_0 sourceBody78_20

def sourceBody78_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_14 sourceBody78_21

def sourceBody78_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_0 sourceBody78_22

def sourceBody78_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody78_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_24 sourceBody78_21

def sourceBody78_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_0 sourceBody78_25

def sourceBody78_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_23 sourceBody78_26

def sourceBody78_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody78_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_28 sourceBody78_21

def sourceBody78_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_0 sourceBody78_29

def sourceBody78_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_27 sourceBody78_30

def sourceBody78_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody78_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_32 sourceBody78_21

def sourceBody78_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_0 sourceBody78_33

def sourceBody78_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_31 sourceBody78_34

def sourceBody78_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody78_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody78_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_37 sourceBody78_0

def sourceBody78_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_38 sourceBody78_0

def sourceBody78_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_36 sourceBody78_39

def sourceBody78_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_0 sourceBody78_40

def sourceBody78_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_35 sourceBody78_41

def sourceBody78_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody78_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_42 sourceBody78_43

def sourceBody78_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody78_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody78_44 sourceBody78_45

def sourceBody78_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_46 sourceBody78_7

def sourceBody78_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_47 sourceBody78_0

def sourceBody78_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_9 sourceBody78_48

def sourceBody78_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_13 sourceBody78_49

def sourceBody78_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_11 sourceBody78_50

def sourceBody78_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_10 sourceBody78_51

def sourceBody78_53 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody78_52 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody78_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_53 sourceBody78_7

def sourceBody78_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_7 sourceBody78_54

def sourceBody78_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody78_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody78_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_57 sourceBody78_39

def sourceBody78_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_0 sourceBody78_58

def sourceBody78_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_23 sourceBody78_59

def sourceBody78_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_60 sourceBody78_43

def sourceBody78_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody78_61 sourceBody78_45

def sourceBody78_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_62 sourceBody78_7

def sourceBody78_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_63 sourceBody78_0

def sourceBody78_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_9 sourceBody78_64

def sourceBody78_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_13 sourceBody78_65

def sourceBody78_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_56 sourceBody78_66

def sourceBody78_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_10 sourceBody78_67

def sourceBody78_69 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody78_68 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody78_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_69 sourceBody78_7

def sourceBody78_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_7 sourceBody78_70

def sourceBody78_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_55 sourceBody78_71

def sourceBody78_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody78_72 sourceBody78_0

def sourceBody78_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_73 sourceBody78_7

def sourceBody78_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_74 sourceBody78_0

def sourceBody78_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_9 sourceBody78_75

def sourceBody78_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_8 sourceBody78_76

def sourceBody78_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_3 sourceBody78_77

def sourceBody78_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_2 sourceBody78_78

def sourceBody78_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 10 (Flapjack.WordLangAddr.addr 6 0#64))

def sourceBody78_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_80 sourceBody78_0

def sourceBody78_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_5 sourceBody78_81

def sourceBody78_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_14 sourceBody78_82

def sourceBody78_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody78_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_84 sourceBody78_82

def sourceBody78_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_83 sourceBody78_85

def sourceBody78_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody78_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_87 sourceBody78_82

def sourceBody78_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_86 sourceBody78_88

def sourceBody78_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody78_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_90 sourceBody78_82

def sourceBody78_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_89 sourceBody78_91

def sourceBody78_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody78_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_93 sourceBody78_82

def sourceBody78_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_92 sourceBody78_94

def sourceBody78_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 5#64])

def sourceBody78_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_96 sourceBody78_82

def sourceBody78_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_95 sourceBody78_97

def sourceBody78_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 6#64])

def sourceBody78_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_99 sourceBody78_82

def sourceBody78_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_98 sourceBody78_100

def sourceBody78_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 7#64])

def sourceBody78_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_102 sourceBody78_82

def sourceBody78_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_101 sourceBody78_103

def sourceBody78_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_104 sourceBody78_59

def sourceBody78_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_105 sourceBody78_43

def sourceBody78_107 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody78_106 sourceBody78_45

def sourceBody78_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_107 sourceBody78_7

def sourceBody78_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_108 sourceBody78_0

def sourceBody78_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_9 sourceBody78_109

def sourceBody78_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_13 sourceBody78_110

def sourceBody78_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_56 sourceBody78_111

def sourceBody78_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_10 sourceBody78_112

def sourceBody78_114 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody78_113 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody78_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_114 sourceBody78_7

def sourceBody78_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_7 sourceBody78_115

def sourceBody78_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_79 sourceBody78_116

def sourceBody78_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody78_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody78_120 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 8) sourceBody78_4 sourceBody78_5

def sourceBody78_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_120 sourceBody78_7

def sourceBody78_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody78_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_122 sourceBody78_39

def sourceBody78_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_0 sourceBody78_123

def sourceBody78_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_83 sourceBody78_124

def sourceBody78_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_125 sourceBody78_43

def sourceBody78_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody78_126 sourceBody78_45

def sourceBody78_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_127 sourceBody78_7

def sourceBody78_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_128 sourceBody78_0

def sourceBody78_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_9 sourceBody78_129

def sourceBody78_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_121 sourceBody78_130

def sourceBody78_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_119 sourceBody78_131

def sourceBody78_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_118 sourceBody78_132

def sourceBody78_134 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody78_133 (Flapjack.Spt.ls PUnit.unit)

def sourceBody78_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_134 sourceBody78_7

def sourceBody78_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_7 sourceBody78_135

def sourceBody78_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_117 sourceBody78_136

def sourceBody78_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody78_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody78_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_139 sourceBody78_0

def sourceBody78_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_138 sourceBody78_140

def sourceBody78_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_137 sourceBody78_141

def sourceBody78_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_1 sourceBody78_142

def sourceBody78_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody78_0 sourceBody78_143

def source78 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (78, 3, sourceBody78_144)
end InitECandidate.Proofs.WordStages
