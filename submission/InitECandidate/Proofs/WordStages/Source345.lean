import InitECandidate.Proofs.WordStages.Source329
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody345_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody345_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody345_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody345_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody345_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 38) sourceBody345_2 sourceBody345_3

def sourceBody345_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody345_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_4 sourceBody345_5

def sourceBody345_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 12)

def sourceBody345_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody345_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody345_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 46)

def sourceBody345_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_10 sourceBody345_8

def sourceBody345_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_11 sourceBody345_8

def sourceBody345_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_9 sourceBody345_12

def sourceBody345_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_13

def sourceBody345_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody345_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody345_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_15 sourceBody345_16

def sourceBody345_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_14 sourceBody345_17

def sourceBody345_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody345_18 sourceBody345_8

def sourceBody345_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_19 sourceBody345_5

def sourceBody345_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_20 sourceBody345_8

def sourceBody345_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_7 sourceBody345_21

def sourceBody345_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_6 sourceBody345_22

def sourceBody345_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_1 sourceBody345_23

def sourceBody345_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_0 sourceBody345_24

def sourceBody345_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 2)

def sourceBody345_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 46 (Flapjack.WordLangAddr.addr 46 0#64))

def sourceBody345_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_27 sourceBody345_8

def sourceBody345_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_26 sourceBody345_28

def sourceBody345_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 46)

def sourceBody345_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 400#64)

def sourceBody345_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody345_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 2)) (some 68) ([26]) (some (26, sourceBody345_32, 345, 3))

def sourceBody345_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_33 sourceBody345_5

def sourceBody345_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_34 sourceBody345_8

def sourceBody345_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_31 sourceBody345_35

def sourceBody345_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 38)

def sourceBody345_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 400#64)

def sourceBody345_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def sourceBody345_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 4)) (some 78) ([54, 8]) (some (54, sourceBody345_39, 345, 5))

def sourceBody345_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_40 sourceBody345_5

def sourceBody345_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_41 sourceBody345_8

def sourceBody345_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_38 sourceBody345_42

def sourceBody345_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_37 sourceBody345_43

def sourceBody345_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_44

def sourceBody345_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_45

def sourceBody345_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 384#64])

def sourceBody345_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 2)

def sourceBody345_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 54)

def sourceBody345_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 8

def sourceBody345_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_50 sourceBody345_8

def sourceBody345_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_49 sourceBody345_51

def sourceBody345_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_52 sourceBody345_8

def sourceBody345_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_48 sourceBody345_53

def sourceBody345_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_54

def sourceBody345_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_47 sourceBody345_55

def sourceBody345_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_56

def sourceBody345_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_46 sourceBody345_57

def sourceBody345_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 392#64])

def sourceBody345_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 4)

def sourceBody345_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_60 sourceBody345_53

def sourceBody345_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_61

def sourceBody345_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_59 sourceBody345_62

def sourceBody345_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_63

def sourceBody345_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_58 sourceBody345_64

def sourceBody345_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody345_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 9#64)

def sourceBody345_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 12)

def sourceBody345_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody345_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody345_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody345_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 42 (Flapjack.WordRegImm.reg 30) sourceBody345_70 sourceBody345_71

def sourceBody345_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_72 sourceBody345_5

def sourceBody345_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody345_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 42)

def sourceBody345_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody345_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 32) sourceBody345_76 sourceBody345_74

def sourceBody345_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_77 sourceBody345_5

def sourceBody345_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody345_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody345_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody345_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody345_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 48 (Flapjack.WordRegImm.reg 14) sourceBody345_81 sourceBody345_82

def sourceBody345_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_83 sourceBody345_5

def sourceBody345_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody345_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 48)

def sourceBody345_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody345_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.reg 56) sourceBody345_87 sourceBody345_85

def sourceBody345_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_88 sourceBody345_5

def sourceBody345_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 28])

def sourceBody345_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody345_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody345_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody345_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 54, 8, 34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 6)) (some 162) ([16, 42]) (some (16, sourceBody345_93, 345, 7))

def sourceBody345_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_94 sourceBody345_5

def sourceBody345_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_95 sourceBody345_8

def sourceBody345_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_92 sourceBody345_96

def sourceBody345_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_91 sourceBody345_97

def sourceBody345_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def sourceBody345_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_99 sourceBody345_8

def sourceBody345_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_100 sourceBody345_8

def sourceBody345_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_98 sourceBody345_101

def sourceBody345_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 22)

def sourceBody345_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) sourceBody345_70 sourceBody345_71

def sourceBody345_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_104 sourceBody345_5

def sourceBody345_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 42)

def sourceBody345_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 11#64)

def sourceBody345_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_107 sourceBody345_8

def sourceBody345_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_108 sourceBody345_8

def sourceBody345_110 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 58 (Flapjack.WordRegImm.imm 0#64) sourceBody345_109 sourceBody345_8

def sourceBody345_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_110 sourceBody345_5

def sourceBody345_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_111 sourceBody345_8

def sourceBody345_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_106 sourceBody345_112

def sourceBody345_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_105 sourceBody345_113

def sourceBody345_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_69 sourceBody345_114

def sourceBody345_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_103 sourceBody345_115

def sourceBody345_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_102 sourceBody345_116

def sourceBody345_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody345_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody345_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_119 sourceBody345_8

def sourceBody345_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_120 sourceBody345_8

def sourceBody345_122 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 58 (Flapjack.WordRegImm.imm 0#64) sourceBody345_121 sourceBody345_8

def sourceBody345_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_122 sourceBody345_5

def sourceBody345_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_123 sourceBody345_8

def sourceBody345_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_106 sourceBody345_124

def sourceBody345_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_105 sourceBody345_125

def sourceBody345_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_118 sourceBody345_126

def sourceBody345_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_103 sourceBody345_127

def sourceBody345_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_117 sourceBody345_128

def sourceBody345_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody345_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 14#64)

def sourceBody345_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_131 sourceBody345_8

def sourceBody345_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_132 sourceBody345_8

def sourceBody345_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 58 (Flapjack.WordRegImm.imm 0#64) sourceBody345_133 sourceBody345_8

def sourceBody345_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_134 sourceBody345_5

def sourceBody345_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_135 sourceBody345_8

def sourceBody345_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_106 sourceBody345_136

def sourceBody345_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_105 sourceBody345_137

def sourceBody345_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_130 sourceBody345_138

def sourceBody345_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_103 sourceBody345_139

def sourceBody345_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_129 sourceBody345_140

def sourceBody345_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody345_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 13#64)

def sourceBody345_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_143 sourceBody345_8

def sourceBody345_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_144 sourceBody345_8

def sourceBody345_146 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 58 (Flapjack.WordRegImm.imm 0#64) sourceBody345_145 sourceBody345_8

def sourceBody345_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_146 sourceBody345_5

def sourceBody345_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_147 sourceBody345_8

def sourceBody345_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_106 sourceBody345_148

def sourceBody345_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_105 sourceBody345_149

def sourceBody345_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_142 sourceBody345_150

def sourceBody345_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_103 sourceBody345_151

def sourceBody345_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_141 sourceBody345_152

def sourceBody345_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody345_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 254#64)

def sourceBody345_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody345_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 4)

def sourceBody345_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 54, 8, 34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 8)) (some 162) ([16, 42]) (some (16, sourceBody345_93, 345, 9))

def sourceBody345_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_158 sourceBody345_5

def sourceBody345_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_159 sourceBody345_8

def sourceBody345_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_157 sourceBody345_160

def sourceBody345_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_156 sourceBody345_161

def sourceBody345_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody345_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 16)

def sourceBody345_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_164 sourceBody345_8

def sourceBody345_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_165 sourceBody345_8

def sourceBody345_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_163 sourceBody345_166

def sourceBody345_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_167

def sourceBody345_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody345_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_169 sourceBody345_93

def sourceBody345_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_168 sourceBody345_170

def sourceBody345_172 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody345_162 sourceBody345_171

def sourceBody345_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_172 sourceBody345_5

def sourceBody345_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_173 sourceBody345_8

def sourceBody345_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_90 sourceBody345_174

def sourceBody345_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_89 sourceBody345_175

def sourceBody345_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_86 sourceBody345_176

def sourceBody345_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_85 sourceBody345_177

def sourceBody345_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_84 sourceBody345_178

def sourceBody345_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_80 sourceBody345_179

def sourceBody345_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_155 sourceBody345_180

def sourceBody345_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_78 sourceBody345_181

def sourceBody345_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_75 sourceBody345_182

def sourceBody345_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_74 sourceBody345_183

def sourceBody345_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_73 sourceBody345_184

def sourceBody345_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_154 sourceBody345_185

def sourceBody345_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_68 sourceBody345_186

def sourceBody345_188 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody345_153 sourceBody345_187

def sourceBody345_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_188 sourceBody345_5

def sourceBody345_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_189 sourceBody345_8

def sourceBody345_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_90 sourceBody345_190

def sourceBody345_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_89 sourceBody345_191

def sourceBody345_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_86 sourceBody345_192

def sourceBody345_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_85 sourceBody345_193

def sourceBody345_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_84 sourceBody345_194

def sourceBody345_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_80 sourceBody345_195

def sourceBody345_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_79 sourceBody345_196

def sourceBody345_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_78 sourceBody345_197

def sourceBody345_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_75 sourceBody345_198

def sourceBody345_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_74 sourceBody345_199

def sourceBody345_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_73 sourceBody345_200

def sourceBody345_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_69 sourceBody345_201

def sourceBody345_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_68 sourceBody345_202

def sourceBody345_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody345_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 42)

def sourceBody345_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 16) 30

def sourceBody345_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_206 sourceBody345_8

def sourceBody345_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_205 sourceBody345_207

def sourceBody345_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_208 sourceBody345_8

def sourceBody345_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_103 sourceBody345_209

def sourceBody345_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_210

def sourceBody345_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_204 sourceBody345_211

def sourceBody345_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_212

def sourceBody345_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_203 sourceBody345_213

def sourceBody345_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 26)

def sourceBody345_216 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.reg 30) sourceBody345_70 sourceBody345_71

def sourceBody345_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_216 sourceBody345_5

def sourceBody345_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody345_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_218 sourceBody345_166

def sourceBody345_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_219

def sourceBody345_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_220 sourceBody345_170

def sourceBody345_222 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 58 (Flapjack.WordRegImm.imm 0#64) sourceBody345_221 sourceBody345_8

def sourceBody345_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_222 sourceBody345_5

def sourceBody345_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_223 sourceBody345_8

def sourceBody345_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_106 sourceBody345_224

def sourceBody345_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_217 sourceBody345_225

def sourceBody345_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_69 sourceBody345_226

def sourceBody345_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_215 sourceBody345_227

def sourceBody345_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_214 sourceBody345_228

def sourceBody345_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 54)

def sourceBody345_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 8)

def sourceBody345_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody345_233 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 10)) (some 169) ([30, 58]) (some (30, sourceBody345_232, 345, 11))

def sourceBody345_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_233 sourceBody345_5

def sourceBody345_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_234 sourceBody345_8

def sourceBody345_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_231 sourceBody345_235

def sourceBody345_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_230 sourceBody345_236

def sourceBody345_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody345_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 42)

def sourceBody345_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 50)

def sourceBody345_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody345_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody345_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 58)

def sourceBody345_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_243 sourceBody345_8

def sourceBody345_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_244 sourceBody345_8

def sourceBody345_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_242 sourceBody345_245

def sourceBody345_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_246

def sourceBody345_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody345_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody345_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_248 sourceBody345_249

def sourceBody345_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_247 sourceBody345_250

def sourceBody345_252 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody345_251 sourceBody345_8

def sourceBody345_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_252 sourceBody345_5

def sourceBody345_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_253 sourceBody345_8

def sourceBody345_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_241 sourceBody345_254

def sourceBody345_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_78 sourceBody345_255

def sourceBody345_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_240 sourceBody345_256

def sourceBody345_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_239 sourceBody345_257

def sourceBody345_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody345_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody345_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody345_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody345_263 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 48) sourceBody345_261 sourceBody345_262

def sourceBody345_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_263 sourceBody345_5

def sourceBody345_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody345_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 30)

def sourceBody345_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody345_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody345_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody345_270 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 12)) (some 337) ([32, 20, 48, 14]) (some (32, sourceBody345_269, 345, 13))

def sourceBody345_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_270 sourceBody345_5

def sourceBody345_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_271 sourceBody345_8

def sourceBody345_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_268 sourceBody345_272

def sourceBody345_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_267 sourceBody345_273

def sourceBody345_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_262 sourceBody345_274

def sourceBody345_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_266 sourceBody345_275

def sourceBody345_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody345_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 20)

def sourceBody345_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 32) 48

def sourceBody345_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_279 sourceBody345_8

def sourceBody345_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_278 sourceBody345_280

def sourceBody345_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_281 sourceBody345_8

def sourceBody345_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_241 sourceBody345_282

def sourceBody345_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_283

def sourceBody345_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_277 sourceBody345_284

def sourceBody345_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_285

def sourceBody345_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_276 sourceBody345_286

def sourceBody345_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody345_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_288 sourceBody345_8

def sourceBody345_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_289 sourceBody345_8

def sourceBody345_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_287 sourceBody345_290

def sourceBody345_292 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody345_291 sourceBody345_8

def sourceBody345_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_292 sourceBody345_5

def sourceBody345_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_293 sourceBody345_8

def sourceBody345_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_265 sourceBody345_294

def sourceBody345_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_264 sourceBody345_295

def sourceBody345_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_82 sourceBody345_296

def sourceBody345_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_260 sourceBody345_297

def sourceBody345_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody345_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody345_301 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 56) sourceBody345_87 sourceBody345_85

def sourceBody345_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_301 sourceBody345_5

def sourceBody345_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def sourceBody345_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 30)

def sourceBody345_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 58)

def sourceBody345_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody345_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody345_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody345_309 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 14)) (some 337) ([40, 28, 56, 10]) (some (40, sourceBody345_308, 345, 15))

def sourceBody345_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_309 sourceBody345_5

def sourceBody345_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_310 sourceBody345_8

def sourceBody345_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_307 sourceBody345_311

def sourceBody345_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_306 sourceBody345_312

def sourceBody345_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_305 sourceBody345_313

def sourceBody345_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_304 sourceBody345_314

def sourceBody345_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 6)

def sourceBody345_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_316 sourceBody345_8

def sourceBody345_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_262 sourceBody345_8

def sourceBody345_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_82 sourceBody345_8

def sourceBody345_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody345_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_320 sourceBody345_8

def sourceBody345_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_321 sourceBody345_8

def sourceBody345_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_319 sourceBody345_322

def sourceBody345_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_318 sourceBody345_323

def sourceBody345_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_317 sourceBody345_324

def sourceBody345_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_315 sourceBody345_325

def sourceBody345_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody345_328 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 16)) (some 336) ([40, 28, 56]) (some (40, sourceBody345_308, 345, 17))

def sourceBody345_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_328 sourceBody345_5

def sourceBody345_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_329 sourceBody345_8

def sourceBody345_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_327 sourceBody345_330

def sourceBody345_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_305 sourceBody345_331

def sourceBody345_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_304 sourceBody345_332

def sourceBody345_334 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody345_326 sourceBody345_333

def sourceBody345_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_334 sourceBody345_5

def sourceBody345_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_335 sourceBody345_8

def sourceBody345_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_303 sourceBody345_336

def sourceBody345_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_302 sourceBody345_337

def sourceBody345_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_300 sourceBody345_338

def sourceBody345_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_299 sourceBody345_339

def sourceBody345_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody345_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 32)

def sourceBody345_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 20)

def sourceBody345_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 48)

def sourceBody345_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 14)

def sourceBody345_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody345_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 24

def sourceBody345_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_347 sourceBody345_8

def sourceBody345_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_346 sourceBody345_348

def sourceBody345_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 56)

def sourceBody345_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64])
  24

def sourceBody345_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_351 sourceBody345_8

def sourceBody345_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_350 sourceBody345_352

def sourceBody345_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody345_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 16#64])
  24

def sourceBody345_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_355 sourceBody345_8

def sourceBody345_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_354 sourceBody345_356

def sourceBody345_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 36)

def sourceBody345_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 24#64])
  24

def sourceBody345_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_359 sourceBody345_8

def sourceBody345_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_358 sourceBody345_360

def sourceBody345_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_361 sourceBody345_8

def sourceBody345_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_357 sourceBody345_362

def sourceBody345_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_353 sourceBody345_363

def sourceBody345_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_349 sourceBody345_364

def sourceBody345_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_345 sourceBody345_365

def sourceBody345_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_366

def sourceBody345_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_344 sourceBody345_367

def sourceBody345_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_368

def sourceBody345_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_343 sourceBody345_369

def sourceBody345_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_370

def sourceBody345_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_342 sourceBody345_371

def sourceBody345_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_372

def sourceBody345_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_341 sourceBody345_373

def sourceBody345_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_374

def sourceBody345_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_340 sourceBody345_375

def sourceBody345_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody345_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 40)

def sourceBody345_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_378 sourceBody345_8

def sourceBody345_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_379 sourceBody345_8

def sourceBody345_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_377 sourceBody345_380

def sourceBody345_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_381

def sourceBody345_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_376 sourceBody345_382

def sourceBody345_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 22)

def sourceBody345_385 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 28 (Flapjack.WordRegImm.reg 56) sourceBody345_87 sourceBody345_85

def sourceBody345_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_385 sourceBody345_5

def sourceBody345_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody345_388 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 18)) (some 336) ([40, 28, 56]) (some (40, sourceBody345_308, 345, 19))

def sourceBody345_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_388 sourceBody345_5

def sourceBody345_390 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_389 sourceBody345_8

def sourceBody345_391 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_387 sourceBody345_390

def sourceBody345_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_305 sourceBody345_391

def sourceBody345_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_304 sourceBody345_392

def sourceBody345_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody345_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_394 sourceBody345_373

def sourceBody345_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_395

def sourceBody345_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_393 sourceBody345_396

def sourceBody345_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_397 sourceBody345_382

def sourceBody345_399 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 20)) (some 336) ([40, 28, 56]) (some (40, sourceBody345_308, 345, 21))

def sourceBody345_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_399 sourceBody345_5

def sourceBody345_401 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_400 sourceBody345_8

def sourceBody345_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_387 sourceBody345_401

def sourceBody345_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_305 sourceBody345_402

def sourceBody345_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_304 sourceBody345_403

def sourceBody345_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 80#64])

def sourceBody345_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_405 sourceBody345_373

def sourceBody345_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_406

def sourceBody345_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_404 sourceBody345_407

def sourceBody345_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody345_410 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 22)) (some 336) ([40, 28, 56]) (some (40, sourceBody345_308, 345, 23))

def sourceBody345_411 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_410 sourceBody345_5

def sourceBody345_412 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_411 sourceBody345_8

def sourceBody345_413 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_387 sourceBody345_412

def sourceBody345_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_409 sourceBody345_413

def sourceBody345_415 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_304 sourceBody345_414

def sourceBody345_416 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_408 sourceBody345_415

def sourceBody345_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 112#64])

def sourceBody345_418 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_417 sourceBody345_373

def sourceBody345_419 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_418

def sourceBody345_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_416 sourceBody345_419

def sourceBody345_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody345_422 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_421 sourceBody345_380

def sourceBody345_423 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_422

def sourceBody345_424 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_420 sourceBody345_423

def sourceBody345_425 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody345_398 sourceBody345_424

def sourceBody345_426 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_425 sourceBody345_5

def sourceBody345_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_426 sourceBody345_8

def sourceBody345_428 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_303 sourceBody345_427

def sourceBody345_429 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_386 sourceBody345_428

def sourceBody345_430 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_384 sourceBody345_429

def sourceBody345_431 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_87 sourceBody345_430

def sourceBody345_432 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_383 sourceBody345_431

def sourceBody345_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 14#64)

def sourceBody345_434 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 24)) (some 337) ([40, 28, 56, 10]) (some (40, sourceBody345_308, 345, 25))

def sourceBody345_435 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_434 sourceBody345_5

def sourceBody345_436 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_435 sourceBody345_8

def sourceBody345_437 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_433 sourceBody345_436

def sourceBody345_438 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_387 sourceBody345_437

def sourceBody345_439 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_305 sourceBody345_438

def sourceBody345_440 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_304 sourceBody345_439

def sourceBody345_441 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_432 sourceBody345_440

def sourceBody345_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 144#64])

def sourceBody345_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody345_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 28)

def sourceBody345_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 56

def sourceBody345_446 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_445 sourceBody345_8

def sourceBody345_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_444 sourceBody345_446

def sourceBody345_448 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_447 sourceBody345_8

def sourceBody345_449 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_443 sourceBody345_448

def sourceBody345_450 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_449

def sourceBody345_451 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_442 sourceBody345_450

def sourceBody345_452 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_451

def sourceBody345_453 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_441 sourceBody345_452

def sourceBody345_454 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_453 sourceBody345_382

def sourceBody345_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody345_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody345_457 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 26)) (some 339) ([40, 28, 56]) (some (40, sourceBody345_308, 345, 27))

def sourceBody345_458 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_457 sourceBody345_5

def sourceBody345_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_458 sourceBody345_8

def sourceBody345_460 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_456 sourceBody345_459

def sourceBody345_461 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_305 sourceBody345_460

def sourceBody345_462 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_304 sourceBody345_461

def sourceBody345_463 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 28)) (some 340) ([40, 28]) (some (40, sourceBody345_308, 345, 29))

def sourceBody345_464 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_463 sourceBody345_5

def sourceBody345_465 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_464 sourceBody345_8

def sourceBody345_466 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_305 sourceBody345_465

def sourceBody345_467 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_304 sourceBody345_466

def sourceBody345_468 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody345_462 sourceBody345_467

def sourceBody345_469 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_468 sourceBody345_5

def sourceBody345_470 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_469 sourceBody345_8

def sourceBody345_471 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_303 sourceBody345_470

def sourceBody345_472 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_386 sourceBody345_471

def sourceBody345_473 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_455 sourceBody345_472

def sourceBody345_474 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_299 sourceBody345_473

def sourceBody345_475 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_454 sourceBody345_474

def sourceBody345_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 152#64])

def sourceBody345_477 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_476 sourceBody345_450

def sourceBody345_478 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_477

def sourceBody345_479 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_475 sourceBody345_478

def sourceBody345_480 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_479 sourceBody345_382

def sourceBody345_481 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 30)) (some 336) ([40, 28, 56]) (some (40, sourceBody345_308, 345, 31))

def sourceBody345_482 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_481 sourceBody345_5

def sourceBody345_483 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_482 sourceBody345_8

def sourceBody345_484 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_327 sourceBody345_483

def sourceBody345_485 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_305 sourceBody345_484

def sourceBody345_486 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_304 sourceBody345_485

def sourceBody345_487 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_480 sourceBody345_486

def sourceBody345_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 160#64])

def sourceBody345_489 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_488 sourceBody345_373

def sourceBody345_490 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_489

def sourceBody345_491 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_487 sourceBody345_490

def sourceBody345_492 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_491 sourceBody345_382

def sourceBody345_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 30)

def sourceBody345_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 58)

def sourceBody345_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def sourceBody345_496 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 32)) (some 338) ([56, 10]) (some (56, sourceBody345_495, 345, 33))

def sourceBody345_497 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_496 sourceBody345_5

def sourceBody345_498 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_497 sourceBody345_8

def sourceBody345_499 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_494 sourceBody345_498

def sourceBody345_500 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_493 sourceBody345_499

def sourceBody345_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody345_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 40)

def sourceBody345_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 10)

def sourceBody345_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 56) 36

def sourceBody345_505 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_504 sourceBody345_8

def sourceBody345_506 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_503 sourceBody345_505

def sourceBody345_507 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_506 sourceBody345_8

def sourceBody345_508 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_502 sourceBody345_507

def sourceBody345_509 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_508

def sourceBody345_510 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_501 sourceBody345_509

def sourceBody345_511 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_510

def sourceBody345_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 200#64])

def sourceBody345_513 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_303 sourceBody345_507

def sourceBody345_514 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_513

def sourceBody345_515 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_512 sourceBody345_514

def sourceBody345_516 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_515

def sourceBody345_517 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_511 sourceBody345_516

def sourceBody345_518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody345_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 56)

def sourceBody345_520 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_519 sourceBody345_8

def sourceBody345_521 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_520 sourceBody345_8

def sourceBody345_522 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_518 sourceBody345_521

def sourceBody345_523 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_522

def sourceBody345_524 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_517 sourceBody345_523

def sourceBody345_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 22)

def sourceBody345_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody345_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody345_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody345_529 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 36) sourceBody345_527 sourceBody345_528

def sourceBody345_530 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_529 sourceBody345_5

def sourceBody345_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 30)

def sourceBody345_532 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 58)

def sourceBody345_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody345_534 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 34)) (some 341) ([36, 24]) (some (36, sourceBody345_533, 345, 35))

def sourceBody345_535 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_534 sourceBody345_5

def sourceBody345_536 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_535 sourceBody345_8

def sourceBody345_537 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_532 sourceBody345_536

def sourceBody345_538 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_531 sourceBody345_537

def sourceBody345_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 56)

def sourceBody345_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody345_541 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody345_542 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 36)) (some 342) ([52, 18]) (some (52, sourceBody345_541, 345, 37))

def sourceBody345_543 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_542 sourceBody345_5

def sourceBody345_544 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_543 sourceBody345_8

def sourceBody345_545 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_540 sourceBody345_544

def sourceBody345_546 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_539 sourceBody345_545

def sourceBody345_547 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 208#64])

def sourceBody345_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 36)

def sourceBody345_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 18)

def sourceBody345_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 52) 44

def sourceBody345_551 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_550 sourceBody345_8

def sourceBody345_552 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_549 sourceBody345_551

def sourceBody345_553 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_552 sourceBody345_8

def sourceBody345_554 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_548 sourceBody345_553

def sourceBody345_555 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_554

def sourceBody345_556 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_547 sourceBody345_555

def sourceBody345_557 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_556

def sourceBody345_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 216#64])

def sourceBody345_559 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody345_560 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_559 sourceBody345_553

def sourceBody345_561 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_560

def sourceBody345_562 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_558 sourceBody345_561

def sourceBody345_563 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_562

def sourceBody345_564 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_557 sourceBody345_563

def sourceBody345_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody345_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 52)

def sourceBody345_567 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_566 sourceBody345_8

def sourceBody345_568 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_567 sourceBody345_8

def sourceBody345_569 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_565 sourceBody345_568

def sourceBody345_570 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_569

def sourceBody345_571 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_564 sourceBody345_570

def sourceBody345_572 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_546 sourceBody345_571

def sourceBody345_573 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_572

def sourceBody345_574 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_573

def sourceBody345_575 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_574

def sourceBody345_576 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_575

def sourceBody345_577 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_538 sourceBody345_576

def sourceBody345_578 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_577

def sourceBody345_579 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_578

def sourceBody345_580 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_579

def sourceBody345_581 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_580

def sourceBody345_582 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody345_581 sourceBody345_8

def sourceBody345_583 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_582 sourceBody345_5

def sourceBody345_584 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_583 sourceBody345_8

def sourceBody345_585 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_354 sourceBody345_584

def sourceBody345_586 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_530 sourceBody345_585

def sourceBody345_587 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_526 sourceBody345_586

def sourceBody345_588 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_525 sourceBody345_587

def sourceBody345_589 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_524 sourceBody345_588

def sourceBody345_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody345_591 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 36) sourceBody345_527 sourceBody345_528

def sourceBody345_592 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_591 sourceBody345_5

def sourceBody345_593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody345_594 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 38)) (some 336) ([56, 10, 36]) (some (56, sourceBody345_495, 345, 39))

def sourceBody345_595 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_594 sourceBody345_5

def sourceBody345_596 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_595 sourceBody345_8

def sourceBody345_597 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_593 sourceBody345_596

def sourceBody345_598 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_494 sourceBody345_597

def sourceBody345_599 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_493 sourceBody345_598

def sourceBody345_600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 224#64])

def sourceBody345_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 32)

def sourceBody345_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 20)

def sourceBody345_603 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 48)

def sourceBody345_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 14)

def sourceBody345_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 56) 18

def sourceBody345_606 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_605 sourceBody345_8

def sourceBody345_607 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_540 sourceBody345_606

def sourceBody345_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 56, Flapjack.WordLangExpHOL.const 8#64])
  18

def sourceBody345_609 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_608 sourceBody345_8

def sourceBody345_610 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_548 sourceBody345_609

def sourceBody345_611 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 56, Flapjack.WordLangExpHOL.const 16#64])
  18

def sourceBody345_612 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_611 sourceBody345_8

def sourceBody345_613 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_559 sourceBody345_612

def sourceBody345_614 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 52)

def sourceBody345_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 56, Flapjack.WordLangExpHOL.const 24#64])
  18

def sourceBody345_616 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_615 sourceBody345_8

def sourceBody345_617 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_614 sourceBody345_616

def sourceBody345_618 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_617 sourceBody345_8

def sourceBody345_619 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_613 sourceBody345_618

def sourceBody345_620 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_610 sourceBody345_619

def sourceBody345_621 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_607 sourceBody345_620

def sourceBody345_622 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_604 sourceBody345_621

def sourceBody345_623 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_622

def sourceBody345_624 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_603 sourceBody345_623

def sourceBody345_625 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_624

def sourceBody345_626 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_602 sourceBody345_625

def sourceBody345_627 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_626

def sourceBody345_628 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_601 sourceBody345_627

def sourceBody345_629 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_628

def sourceBody345_630 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_600 sourceBody345_629

def sourceBody345_631 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_630

def sourceBody345_632 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_599 sourceBody345_631

def sourceBody345_633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody345_634 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 40)) (some 341) ([36, 24]) (some (36, sourceBody345_533, 345, 41))

def sourceBody345_635 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_634 sourceBody345_5

def sourceBody345_636 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_635 sourceBody345_8

def sourceBody345_637 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_633 sourceBody345_636

def sourceBody345_638 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_531 sourceBody345_637

def sourceBody345_639 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 42)) (some 343) ([52, 18]) (some (52, sourceBody345_541, 345, 43))

def sourceBody345_640 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_639 sourceBody345_5

def sourceBody345_641 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_640 sourceBody345_8

def sourceBody345_642 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_540 sourceBody345_641

def sourceBody345_643 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_539 sourceBody345_642

def sourceBody345_644 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 256#64])

def sourceBody345_645 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_644 sourceBody345_555

def sourceBody345_646 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_645

def sourceBody345_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 264#64])

def sourceBody345_648 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_647 sourceBody345_561

def sourceBody345_649 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_648

def sourceBody345_650 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_646 sourceBody345_649

def sourceBody345_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody345_652 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_651 sourceBody345_568

def sourceBody345_653 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_652

def sourceBody345_654 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_650 sourceBody345_653

def sourceBody345_655 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_643 sourceBody345_654

def sourceBody345_656 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_655

def sourceBody345_657 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_656

def sourceBody345_658 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_657

def sourceBody345_659 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_658

def sourceBody345_660 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_638 sourceBody345_659

def sourceBody345_661 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_660

def sourceBody345_662 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_661

def sourceBody345_663 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_662

def sourceBody345_664 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_663

def sourceBody345_665 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_632 sourceBody345_664

def sourceBody345_666 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody345_665 sourceBody345_8

def sourceBody345_667 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_666 sourceBody345_5

def sourceBody345_668 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_667 sourceBody345_8

def sourceBody345_669 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_354 sourceBody345_668

def sourceBody345_670 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_592 sourceBody345_669

def sourceBody345_671 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_590 sourceBody345_670

def sourceBody345_672 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_525 sourceBody345_671

def sourceBody345_673 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_589 sourceBody345_672

def sourceBody345_674 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody345_675 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 44)) (some 341) ([36, 24]) (some (36, sourceBody345_533, 345, 45))

def sourceBody345_676 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_675 sourceBody345_5

def sourceBody345_677 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_676 sourceBody345_8

def sourceBody345_678 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_532 sourceBody345_677

def sourceBody345_679 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_531 sourceBody345_678

def sourceBody345_680 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 46)) (some 344) ([52, 18]) (some (52, sourceBody345_541, 345, 47))

def sourceBody345_681 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_680 sourceBody345_5

def sourceBody345_682 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_681 sourceBody345_8

def sourceBody345_683 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_540 sourceBody345_682

def sourceBody345_684 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_539 sourceBody345_683

def sourceBody345_685 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 272#64])

def sourceBody345_686 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_685 sourceBody345_555

def sourceBody345_687 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_686

def sourceBody345_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 280#64])

def sourceBody345_689 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_688 sourceBody345_561

def sourceBody345_690 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_689

def sourceBody345_691 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_687 sourceBody345_690

def sourceBody345_692 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_691 sourceBody345_570

def sourceBody345_693 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_684 sourceBody345_692

def sourceBody345_694 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_693

def sourceBody345_695 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_694

def sourceBody345_696 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_695

def sourceBody345_697 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_696

def sourceBody345_698 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_679 sourceBody345_697

def sourceBody345_699 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_698

def sourceBody345_700 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_699

def sourceBody345_701 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_700

def sourceBody345_702 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_701

def sourceBody345_703 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody345_702 sourceBody345_8

def sourceBody345_704 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_703 sourceBody345_5

def sourceBody345_705 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_704 sourceBody345_8

def sourceBody345_706 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_354 sourceBody345_705

def sourceBody345_707 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_592 sourceBody345_706

def sourceBody345_708 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_674 sourceBody345_707

def sourceBody345_709 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_525 sourceBody345_708

def sourceBody345_710 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_673 sourceBody345_709

def sourceBody345_711 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 48)) (some 336) ([56, 10, 36]) (some (56, sourceBody345_495, 345, 49))

def sourceBody345_712 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_711 sourceBody345_5

def sourceBody345_713 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_712 sourceBody345_8

def sourceBody345_714 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_593 sourceBody345_713

def sourceBody345_715 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_494 sourceBody345_714

def sourceBody345_716 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_493 sourceBody345_715

def sourceBody345_717 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_710 sourceBody345_716

def sourceBody345_718 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody345_719 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_718 sourceBody345_629

def sourceBody345_720 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_719

def sourceBody345_721 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_717 sourceBody345_720

def sourceBody345_722 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody345_723 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 50)) (some 336) ([56, 10, 36]) (some (56, sourceBody345_495, 345, 51))

def sourceBody345_724 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_723 sourceBody345_5

def sourceBody345_725 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_724 sourceBody345_8

def sourceBody345_726 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_593 sourceBody345_725

def sourceBody345_727 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_722 sourceBody345_726

def sourceBody345_728 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_493 sourceBody345_727

def sourceBody345_729 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_721 sourceBody345_728

def sourceBody345_730 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 320#64])

def sourceBody345_731 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_730 sourceBody345_629

def sourceBody345_732 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_731

def sourceBody345_733 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_729 sourceBody345_732

def sourceBody345_734 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody345_735 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody345_8, 345, 52)) (some 336) ([56, 10, 36]) (some (56, sourceBody345_495, 345, 53))

def sourceBody345_736 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_735 sourceBody345_5

def sourceBody345_737 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_736 sourceBody345_8

def sourceBody345_738 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_593 sourceBody345_737

def sourceBody345_739 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_734 sourceBody345_738

def sourceBody345_740 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_493 sourceBody345_739

def sourceBody345_741 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_733 sourceBody345_740

def sourceBody345_742 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 352#64])

def sourceBody345_743 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_742 sourceBody345_629

def sourceBody345_744 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_743

def sourceBody345_745 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_741 sourceBody345_744

def sourceBody345_746 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 38)

def sourceBody345_747 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [56]

def sourceBody345_748 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_747 sourceBody345_8

def sourceBody345_749 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_746 sourceBody345_748

def sourceBody345_750 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_745 sourceBody345_749

def sourceBody345_751 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_500 sourceBody345_750

def sourceBody345_752 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_751

def sourceBody345_753 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_752

def sourceBody345_754 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_753

def sourceBody345_755 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_754

def sourceBody345_756 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_492 sourceBody345_755

def sourceBody345_757 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_756

def sourceBody345_758 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_757

def sourceBody345_759 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_758

def sourceBody345_760 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_759

def sourceBody345_761 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_760

def sourceBody345_762 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_761

def sourceBody345_763 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_762

def sourceBody345_764 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_763

def sourceBody345_765 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_298 sourceBody345_764

def sourceBody345_766 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_765

def sourceBody345_767 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_766

def sourceBody345_768 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_259 sourceBody345_767

def sourceBody345_769 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_768

def sourceBody345_770 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_258 sourceBody345_769

def sourceBody345_771 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_238 sourceBody345_770

def sourceBody345_772 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_771

def sourceBody345_773 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_237 sourceBody345_772

def sourceBody345_774 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_773

def sourceBody345_775 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_774

def sourceBody345_776 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_775

def sourceBody345_777 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_776

def sourceBody345_778 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_229 sourceBody345_777

def sourceBody345_779 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_67 sourceBody345_778

def sourceBody345_780 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_779

def sourceBody345_781 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_66 sourceBody345_780

def sourceBody345_782 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_781

def sourceBody345_783 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_782

def sourceBody345_784 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_783

def sourceBody345_785 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_784

def sourceBody345_786 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_785

def sourceBody345_787 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_786

def sourceBody345_788 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_787

def sourceBody345_789 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_788

def sourceBody345_790 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_789

def sourceBody345_791 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_65 sourceBody345_790

def sourceBody345_792 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_36 sourceBody345_791

def sourceBody345_793 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_792

def sourceBody345_794 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_8 sourceBody345_793

def sourceBody345_795 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_30 sourceBody345_794

def sourceBody345_796 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_29 sourceBody345_795

def sourceBody345_797 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody345_25 sourceBody345_796

def source345 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (345, 3, sourceBody345_797)
end InitECandidate.Proofs.WordStages
