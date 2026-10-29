import InitECandidate.Proofs.WordStages.Source347
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel347
def word347_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def word347_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_0 word347_0_1

def word347_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word347_0_5 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_3 word347_0_4

def word347_0_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_7 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_5 word347_0_6

def word347_0_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_9 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_7 word347_0_8

def word347_0_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 46)

def word347_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_9 word347_0_10

def word347_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 6#64)

def word347_0_13 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_11 word347_0_12

def word347_0_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word347_0_15 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_13 word347_0_14

def word347_0_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word347_0_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 38) word347_0_15 word347_0_16

def word347_0_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_19 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_18 word347_0_4

def word347_0_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_21 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_19 word347_0_20

def word347_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_17 word347_0_21

def word347_0_23 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_2 word347_0_22

def word347_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_23 word347_0_4

def word347_0_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 2)

def word347_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_24 word347_0_25

def word347_0_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 46 (Flapjack.WordLangAddr.addr 46 0#64))

def word347_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_26 word347_0_27

def word347_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 46)

def word347_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_28 word347_0_29

def word347_0_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 400#64)

def word347_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_30 word347_0_31

def word347_0_33 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_32 word347_0_31

def word347_0_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def word347_0_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 2)) (some 68) ([26]) (some (26, word347_0_34, 347, 3))

def word347_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_33 word347_0_35

def word347_0_37 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_36 word347_0_4

def word347_0_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 38)

def word347_0_39 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_37 word347_0_38

def word347_0_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 400#64)

def word347_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_39 word347_0_40

def word347_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_41 word347_0_40

def word347_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def word347_0_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 4)) (some 78) ([54, 8]) (some (54, word347_0_43, 347, 5))

def word347_0_45 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_42 word347_0_44

def word347_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_45 word347_0_4

def word347_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 384#64])

def word347_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_46 word347_0_47

def word347_0_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 2)

def word347_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_48 word347_0_49

def word347_0_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 54)

def word347_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_50 word347_0_51

def word347_0_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 8

def word347_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_52 word347_0_53

def word347_0_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 392#64])

def word347_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_54 word347_0_55

def word347_0_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 4)

def word347_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_56 word347_0_57

def word347_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_58 word347_0_51

def word347_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_59 word347_0_53

def word347_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_60 word347_0_61

def word347_0_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 9#64)

def word347_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_62 word347_0_63

def word347_0_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 12)

def word347_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_64 word347_0_65

def word347_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_66 word347_0_67

def word347_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_69 word347_0_4

def word347_0_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_70 word347_0_71

def word347_0_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_72 word347_0_73

def word347_0_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_74 word347_0_75

def word347_0_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_78 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_77 word347_0_4

def word347_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_78 word347_0_71

def word347_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_81 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_79 word347_0_80

def word347_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_81 word347_0_71

def word347_0_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 42 (Flapjack.WordRegImm.reg 30) word347_0_76 word347_0_82

def word347_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_68 word347_0_83

def word347_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_84 word347_0_4

def word347_0_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 4#64)

def word347_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_85 word347_0_86

def word347_0_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def word347_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_87 word347_0_88

def word347_0_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_91 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_90 word347_0_4

def word347_0_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_91 word347_0_92

def word347_0_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_95 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_93 word347_0_94

def word347_0_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_97 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_95 word347_0_96

def word347_0_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_98 word347_0_4

def word347_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_99 word347_0_92

def word347_0_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_100 word347_0_101

def word347_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_102 word347_0_92

def word347_0_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 48 (Flapjack.WordRegImm.reg 14) word347_0_97 word347_0_103

def word347_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_89 word347_0_104

def word347_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_105 word347_0_4

def word347_0_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 28])

def word347_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_106 word347_0_107

def word347_0_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def word347_0_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def word347_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_109 word347_0_110

def word347_0_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def word347_0_113 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 54, 8, 34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 6)) (some 162) ([16, 42]) (some (16, word347_0_112, 347, 7))

def word347_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_111 word347_0_113

def word347_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_114 word347_0_4

def word347_0_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def word347_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_115 word347_0_116

def word347_0_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 22)

def word347_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_117 word347_0_118

def word347_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_119 word347_0_67

def word347_0_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_70 word347_0_121

def word347_0_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 11#64)

def word347_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_122 word347_0_123

def word347_0_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_126 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_78 word347_0_125

def word347_0_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) word347_0_124 word347_0_126

def word347_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_120 word347_0_127

def word347_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_128 word347_0_4

def word347_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_129 word347_0_118

def word347_0_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 2#64)

def word347_0_132 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_130 word347_0_131

def word347_0_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 12#64)

def word347_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_122 word347_0_133

def word347_0_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) word347_0_134 word347_0_126

def word347_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_132 word347_0_135

def word347_0_137 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_136 word347_0_4

def word347_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_137 word347_0_118

def word347_0_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 3#64)

def word347_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_138 word347_0_139

def word347_0_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 14#64)

def word347_0_142 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_122 word347_0_141

def word347_0_143 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) word347_0_142 word347_0_126

def word347_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_140 word347_0_143

def word347_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_144 word347_0_4

def word347_0_146 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_145 word347_0_118

def word347_0_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 4#64)

def word347_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_146 word347_0_147

def word347_0_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 13#64)

def word347_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_122 word347_0_149

def word347_0_151 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) word347_0_150 word347_0_126

def word347_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_148 word347_0_151

def word347_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_152 word347_0_4

def word347_0_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 192#64)

def word347_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_65 word347_0_154

def word347_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_155 word347_0_83

def word347_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_156 word347_0_4

def word347_0_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 254#64)

def word347_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_157 word347_0_158

def word347_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_159 word347_0_88

def word347_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_160 word347_0_104

def word347_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_161 word347_0_4

def word347_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_162 word347_0_107

def word347_0_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 2#64)

def word347_0_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 16)

def word347_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_164 word347_0_165

def word347_0_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 6#64)

def word347_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_166 word347_0_167

def word347_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_168 word347_0_112

def word347_0_170 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) word347_0_16 word347_0_169

def word347_0_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def word347_0_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 4)

def word347_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_171 word347_0_172

def word347_0_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 54, 8, 34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 8)) (some 162) ([16, 42]) (some (16, word347_0_112, 347, 9))

def word347_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_173 word347_0_174

def word347_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_175 word347_0_4

def word347_0_177 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_170 word347_0_176

def word347_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_163 word347_0_177

def word347_0_179 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_178 word347_0_4

def word347_0_180 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) word347_0_153 word347_0_179

def word347_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_108 word347_0_180

def word347_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_181 word347_0_4

def word347_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 0#64])

def word347_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_182 word347_0_183

def word347_0_185 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_184 word347_0_118

def word347_0_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 42)

def word347_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_185 word347_0_186

def word347_0_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 16) 30

def word347_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_187 word347_0_188

def word347_0_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 26)

def word347_0_191 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_189 word347_0_190

def word347_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_191 word347_0_67

def word347_0_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 3#64)

def word347_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_122 word347_0_193

def word347_0_195 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_194 word347_0_165

def word347_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_195 word347_0_167

def word347_0_197 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_196 word347_0_112

def word347_0_198 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.reg 30) word347_0_197 word347_0_16

def word347_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_198 word347_0_126

def word347_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_192 word347_0_199

def word347_0_201 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_200 word347_0_4

def word347_0_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 54)

def word347_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_201 word347_0_202

def word347_0_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 8)

def word347_0_205 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_203 word347_0_204

def word347_0_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word347_0_207 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 10)) (some 169) ([30, 58]) (some (30, word347_0_206, 347, 11))

def word347_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_205 word347_0_207

def word347_0_209 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_208 word347_0_4

def word347_0_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def word347_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_209 word347_0_210

def word347_0_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 42)

def word347_0_213 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_211 word347_0_212

def word347_0_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 50)

def word347_0_215 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_213 word347_0_214

def word347_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_75 word347_0_4

def word347_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_216 word347_0_217

def word347_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 4#64)

def word347_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_218 word347_0_219

def word347_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 58)

def word347_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_220 word347_0_221

def word347_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 6#64)

def word347_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_222 word347_0_223

def word347_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def word347_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_224 word347_0_225

def word347_0_227 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 32) word347_0_226 word347_0_16

def word347_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_71 word347_0_4

def word347_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_228 word347_0_229

def word347_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_227 word347_0_230

def word347_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_215 word347_0_231

def word347_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_232 word347_0_4

def word347_0_234 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_233 word347_0_125

def word347_0_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def word347_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_234 word347_0_235

def word347_0_237 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_236 word347_0_98

def word347_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_217 word347_0_4

def word347_0_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_238 word347_0_239

def word347_0_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 30)

def word347_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_240 word347_0_241

def word347_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_242 word347_0_229

def word347_0_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 8#64)

def word347_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_243 word347_0_244

def word347_0_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 12#64)

def word347_0_247 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_245 word347_0_246

def word347_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_247 word347_0_246

def word347_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_248 word347_0_244

def word347_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_249 word347_0_229

def word347_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_250 word347_0_246

def word347_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_251 word347_0_244

def word347_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_252 word347_0_229

def word347_0_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def word347_0_255 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 12)) (some 339) ([32, 20, 48, 14]) (some (32, word347_0_254, 347, 13))

def word347_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_253 word347_0_255

def word347_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_256 word347_0_4

def word347_0_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 8#64])

def word347_0_259 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_257 word347_0_258

def word347_0_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def word347_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_259 word347_0_260

def word347_0_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 20)

def word347_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_261 word347_0_262

def word347_0_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 32) 48

def word347_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_263 word347_0_264

def word347_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_265 word347_0_121

def word347_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_229 word347_0_4

def word347_0_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_267 word347_0_268

def word347_0_270 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 48) word347_0_266 word347_0_269

def word347_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_237 word347_0_270

def word347_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_271 word347_0_4

def word347_0_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def word347_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_272 word347_0_273

def word347_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 4#64)

def word347_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_274 word347_0_275

def word347_0_277 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_96 word347_0_4

def word347_0_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_277 word347_0_278

def word347_0_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 30)

def word347_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_279 word347_0_280

def word347_0_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 58)

def word347_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_281 word347_0_282

def word347_0_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 8#64)

def word347_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_283 word347_0_284

def word347_0_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 12#64)

def word347_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_285 word347_0_286

def word347_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_287 word347_0_286

def word347_0_289 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_288 word347_0_284

def word347_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_289 word347_0_286

def word347_0_291 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_290 word347_0_284

def word347_0_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word347_0_293 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 14)) (some 339) ([40, 28, 56, 10]) (some (40, word347_0_292, 347, 15))

def word347_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_291 word347_0_293

def word347_0_295 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_294 word347_0_4

def word347_0_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 6)

def word347_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_295 word347_0_296

def word347_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_297 word347_0_229

def word347_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_298 word347_0_98

def word347_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_299 word347_0_268

def word347_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_92 word347_0_4

def word347_0_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_301 word347_0_302

def word347_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_303 word347_0_280

def word347_0_305 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_304 word347_0_282

def word347_0_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 32#64)

def word347_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_305 word347_0_306

def word347_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_307 word347_0_306

def word347_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_308 word347_0_306

def word347_0_310 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 16)) (some 338) ([40, 28, 56]) (some (40, word347_0_292, 347, 17))

def word347_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_309 word347_0_310

def word347_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_311 word347_0_4

def word347_0_313 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 56) word347_0_300 word347_0_312

def word347_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_276 word347_0_313

def word347_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_314 word347_0_4

def word347_0_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 16#64])

def word347_0_317 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_315 word347_0_316

def word347_0_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 32)

def word347_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_317 word347_0_318

def word347_0_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 20)

def word347_0_321 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_319 word347_0_320

def word347_0_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 48)

def word347_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_321 word347_0_322

def word347_0_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 14)

def word347_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_323 word347_0_324

def word347_0_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def word347_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_325 word347_0_326

def word347_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 24

def word347_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_327 word347_0_328

def word347_0_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 56)

def word347_0_331 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_329 word347_0_330

def word347_0_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64])
  24

def word347_0_333 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_331 word347_0_332

def word347_0_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def word347_0_335 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_333 word347_0_334

def word347_0_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 16#64])
  24

def word347_0_337 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_335 word347_0_336

def word347_0_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 36)

def word347_0_339 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_337 word347_0_338

def word347_0_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 24#64])
  24

def word347_0_341 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_339 word347_0_340

def word347_0_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def word347_0_343 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_341 word347_0_342

def word347_0_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 40)

def word347_0_345 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_343 word347_0_344

def word347_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_345 word347_0_96

def word347_0_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 22)

def word347_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_346 word347_0_347

def word347_0_349 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_283 word347_0_101

def word347_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_349 word347_0_101

def word347_0_351 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_350 word347_0_101

def word347_0_352 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 18)) (some 338) ([40, 28, 56]) (some (40, word347_0_292, 347, 19))

def word347_0_353 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_351 word347_0_352

def word347_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_353 word347_0_4

def word347_0_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 48#64])

def word347_0_356 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_354 word347_0_355

def word347_0_357 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_356 word347_0_318

def word347_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_357 word347_0_320

def word347_0_359 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_358 word347_0_322

def word347_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_359 word347_0_324

def word347_0_361 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_360 word347_0_326

def word347_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_361 word347_0_328

def word347_0_363 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_362 word347_0_330

def word347_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_363 word347_0_332

def word347_0_365 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_364 word347_0_334

def word347_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_365 word347_0_336

def word347_0_367 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_366 word347_0_338

def word347_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_367 word347_0_340

def word347_0_369 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_368 word347_0_342

def word347_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_369 word347_0_344

def word347_0_371 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_305 word347_0_101

def word347_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_371 word347_0_101

def word347_0_373 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_372 word347_0_101

def word347_0_374 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 20)) (some 338) ([40, 28, 56]) (some (40, word347_0_292, 347, 21))

def word347_0_375 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_373 word347_0_374

def word347_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_375 word347_0_4

def word347_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 80#64])

def word347_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_376 word347_0_377

def word347_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_378 word347_0_318

def word347_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_379 word347_0_320

def word347_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_380 word347_0_322

def word347_0_382 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_381 word347_0_324

def word347_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_382 word347_0_326

def word347_0_384 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_383 word347_0_328

def word347_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_384 word347_0_330

def word347_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_385 word347_0_332

def word347_0_387 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_386 word347_0_334

def word347_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_387 word347_0_336

def word347_0_389 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_388 word347_0_338

def word347_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_389 word347_0_340

def word347_0_391 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_390 word347_0_280

def word347_0_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def word347_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_391 word347_0_392

def word347_0_394 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_393 word347_0_101

def word347_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_394 word347_0_101

def word347_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_395 word347_0_101

def word347_0_397 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 22)) (some 338) ([40, 28, 56]) (some (40, word347_0_292, 347, 23))

def word347_0_398 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_396 word347_0_397

def word347_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_398 word347_0_4

def word347_0_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 112#64])

def word347_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_399 word347_0_400

def word347_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_401 word347_0_318

def word347_0_403 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_402 word347_0_320

def word347_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_403 word347_0_322

def word347_0_405 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_404 word347_0_324

def word347_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_405 word347_0_326

def word347_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_406 word347_0_328

def word347_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_407 word347_0_330

def word347_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_408 word347_0_332

def word347_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_409 word347_0_334

def word347_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_410 word347_0_336

def word347_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_411 word347_0_338

def word347_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_412 word347_0_340

def word347_0_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 2#64])

def word347_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_413 word347_0_414

def word347_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_415 word347_0_344

def word347_0_417 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 28 (Flapjack.WordRegImm.reg 56) word347_0_370 word347_0_416

def word347_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_348 word347_0_417

def word347_0_419 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_418 word347_0_4

def word347_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_419 word347_0_280

def word347_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_420 word347_0_282

def word347_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_421 word347_0_101

def word347_0_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 14#64)

def word347_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_422 word347_0_423

def word347_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_424 word347_0_423

def word347_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_425 word347_0_101

def word347_0_427 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 24)) (some 339) ([40, 28, 56, 10]) (some (40, word347_0_292, 347, 25))

def word347_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_426 word347_0_427

def word347_0_429 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_428 word347_0_4

def word347_0_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 144#64])

def word347_0_431 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_429 word347_0_430

def word347_0_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def word347_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_431 word347_0_432

def word347_0_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 28)

def word347_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_433 word347_0_434

def word347_0_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 56

def word347_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_435 word347_0_436

def word347_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_437 word347_0_342

def word347_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_438 word347_0_344

def word347_0_440 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_439 word347_0_273

def word347_0_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 3#64)

def word347_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_440 word347_0_441

def word347_0_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 20#64)

def word347_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_283 word347_0_443

def word347_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_444 word347_0_443

def word347_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_445 word347_0_443

def word347_0_447 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 26)) (some 341) ([40, 28, 56]) (some (40, word347_0_292, 347, 27))

def word347_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_446 word347_0_447

def word347_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_448 word347_0_4

def word347_0_450 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 28)) (some 342) ([40, 28]) (some (40, word347_0_292, 347, 29))

def word347_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_305 word347_0_450

def word347_0_452 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_451 word347_0_4

def word347_0_453 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 28 (Flapjack.WordRegImm.reg 56) word347_0_449 word347_0_452

def word347_0_454 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_442 word347_0_453

def word347_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_454 word347_0_4

def word347_0_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 152#64])

def word347_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_455 word347_0_456

def word347_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_457 word347_0_432

def word347_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_458 word347_0_434

def word347_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_459 word347_0_436

def word347_0_461 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_460 word347_0_342

def word347_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_461 word347_0_344

def word347_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_462 word347_0_280

def word347_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_463 word347_0_282

def word347_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_464 word347_0_306

def word347_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_465 word347_0_306

def word347_0_467 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 30)) (some 338) ([40, 28, 56]) (some (40, word347_0_292, 347, 31))

def word347_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_466 word347_0_467

def word347_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_468 word347_0_4

def word347_0_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 160#64])

def word347_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_469 word347_0_470

def word347_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_471 word347_0_318

def word347_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_472 word347_0_320

def word347_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_473 word347_0_322

def word347_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_474 word347_0_324

def word347_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_475 word347_0_326

def word347_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_476 word347_0_328

def word347_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_477 word347_0_330

def word347_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_478 word347_0_332

def word347_0_480 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_479 word347_0_334

def word347_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_480 word347_0_336

def word347_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_481 word347_0_338

def word347_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_482 word347_0_340

def word347_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_483 word347_0_342

def word347_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_484 word347_0_344

def word347_0_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 30)

def word347_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_485 word347_0_486

def word347_0_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 58)

def word347_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_487 word347_0_488

def word347_0_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def word347_0_491 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 32)) (some 340) ([56, 10]) (some (56, word347_0_490, 347, 33))

def word347_0_492 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_489 word347_0_491

def word347_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_492 word347_0_4

def word347_0_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 192#64])

def word347_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_493 word347_0_494

def word347_0_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 40)

def word347_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_495 word347_0_496

def word347_0_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 10)

def word347_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_497 word347_0_498

def word347_0_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 56) 36

def word347_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_499 word347_0_500

def word347_0_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 200#64])

def word347_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_501 word347_0_502

def word347_0_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def word347_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_503 word347_0_504

def word347_0_506 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_505 word347_0_498

def word347_0_507 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_506 word347_0_500

def word347_0_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def word347_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_507 word347_0_508

def word347_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 56)

def word347_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_509 word347_0_510

def word347_0_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 22)

def word347_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_511 word347_0_512

def word347_0_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_515 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_513 word347_0_514

def word347_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_278 word347_0_4

def word347_0_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def word347_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_516 word347_0_517

def word347_0_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 30)

def word347_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_518 word347_0_519

def word347_0_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 58)

def word347_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_520 word347_0_521

def word347_0_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def word347_0_524 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 34)) (some 343) ([36, 24]) (some (36, word347_0_523, 347, 35))

def word347_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_522 word347_0_524

def word347_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_525 word347_0_4

def word347_0_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 56)

def word347_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_526 word347_0_527

def word347_0_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def word347_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_528 word347_0_529

def word347_0_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word347_0_532 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 36)) (some 344) ([52, 18]) (some (52, word347_0_531, 347, 37))

def word347_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_530 word347_0_532

def word347_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_533 word347_0_4

def word347_0_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 208#64])

def word347_0_536 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_534 word347_0_535

def word347_0_537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 36)

def word347_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_536 word347_0_537

def word347_0_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 18)

def word347_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_538 word347_0_539

def word347_0_541 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 52) 44

def word347_0_542 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_540 word347_0_541

def word347_0_543 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 216#64])

def word347_0_544 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_542 word347_0_543

def word347_0_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def word347_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_544 word347_0_545

def word347_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_546 word347_0_539

def word347_0_548 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_547 word347_0_541

def word347_0_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def word347_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_548 word347_0_549

def word347_0_551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 52)

def word347_0_552 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_550 word347_0_551

def word347_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_302 word347_0_4

def word347_0_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def word347_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_553 word347_0_554

def word347_0_556 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 36) word347_0_552 word347_0_555

def word347_0_557 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_515 word347_0_556

def word347_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_557 word347_0_4

def word347_0_559 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_558 word347_0_512

def word347_0_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 3#64)

def word347_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_559 word347_0_560

def word347_0_562 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_518 word347_0_486

def word347_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_562 word347_0_488

def word347_0_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 32#64)

def word347_0_565 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_563 word347_0_564

def word347_0_566 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_565 word347_0_564

def word347_0_567 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_566 word347_0_564

def word347_0_568 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 38)) (some 338) ([56, 10, 36]) (some (56, word347_0_490, 347, 39))

def word347_0_569 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_567 word347_0_568

def word347_0_570 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_569 word347_0_4

def word347_0_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 224#64])

def word347_0_572 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_570 word347_0_571

def word347_0_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 32)

def word347_0_574 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_572 word347_0_573

def word347_0_575 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 20)

def word347_0_576 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_574 word347_0_575

def word347_0_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 48)

def word347_0_578 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_576 word347_0_577

def word347_0_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 14)

def word347_0_580 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_578 word347_0_579

def word347_0_581 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_580 word347_0_529

def word347_0_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 56) 18

def word347_0_583 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_581 word347_0_582

def word347_0_584 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_583 word347_0_537

def word347_0_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 56, Flapjack.WordLangExpHOL.const 8#64])
  18

def word347_0_586 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_584 word347_0_585

def word347_0_587 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_586 word347_0_545

def word347_0_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 56, Flapjack.WordLangExpHOL.const 16#64])
  18

def word347_0_589 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_587 word347_0_588

def word347_0_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 52)

def word347_0_591 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_589 word347_0_590

def word347_0_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 56, Flapjack.WordLangExpHOL.const 24#64])
  18

def word347_0_593 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_591 word347_0_592

def word347_0_594 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_593 word347_0_519

def word347_0_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def word347_0_596 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_594 word347_0_595

def word347_0_597 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 40)) (some 343) ([36, 24]) (some (36, word347_0_523, 347, 41))

def word347_0_598 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_596 word347_0_597

def word347_0_599 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_598 word347_0_4

def word347_0_600 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_599 word347_0_527

def word347_0_601 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_600 word347_0_529

def word347_0_602 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 42)) (some 345) ([52, 18]) (some (52, word347_0_531, 347, 43))

def word347_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_601 word347_0_602

def word347_0_604 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_603 word347_0_4

def word347_0_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 256#64])

def word347_0_606 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_604 word347_0_605

def word347_0_607 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_606 word347_0_537

def word347_0_608 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_607 word347_0_539

def word347_0_609 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_608 word347_0_541

def word347_0_610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 264#64])

def word347_0_611 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_609 word347_0_610

def word347_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_611 word347_0_545

def word347_0_613 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_612 word347_0_539

def word347_0_614 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_613 word347_0_541

def word347_0_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 2#64])

def word347_0_616 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_614 word347_0_615

def word347_0_617 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_616 word347_0_551

def word347_0_618 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 36) word347_0_617 word347_0_555

def word347_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_561 word347_0_618

def word347_0_620 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_619 word347_0_4

def word347_0_621 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_620 word347_0_512

def word347_0_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 4#64)

def word347_0_623 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_621 word347_0_622

def word347_0_624 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 44)) (some 343) ([36, 24]) (some (36, word347_0_523, 347, 45))

def word347_0_625 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_522 word347_0_624

def word347_0_626 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_625 word347_0_4

def word347_0_627 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_626 word347_0_527

def word347_0_628 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_627 word347_0_529

def word347_0_629 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 46)) (some 346) ([52, 18]) (some (52, word347_0_531, 347, 47))

def word347_0_630 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_628 word347_0_629

def word347_0_631 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_630 word347_0_4

def word347_0_632 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 272#64])

def word347_0_633 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_631 word347_0_632

def word347_0_634 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_633 word347_0_537

def word347_0_635 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_634 word347_0_539

def word347_0_636 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_635 word347_0_541

def word347_0_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 280#64])

def word347_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_636 word347_0_637

def word347_0_639 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_638 word347_0_545

def word347_0_640 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_639 word347_0_539

def word347_0_641 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_640 word347_0_541

def word347_0_642 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_641 word347_0_549

def word347_0_643 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_642 word347_0_551

def word347_0_644 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 36) word347_0_643 word347_0_555

def word347_0_645 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_623 word347_0_644

def word347_0_646 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_645 word347_0_4

def word347_0_647 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_646 word347_0_486

def word347_0_648 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_647 word347_0_488

def word347_0_649 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_648 word347_0_564

def word347_0_650 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 48)) (some 338) ([56, 10, 36]) (some (56, word347_0_490, 347, 49))

def word347_0_651 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_564 word347_0_650

def word347_0_652 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_649 word347_0_651

def word347_0_653 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_652 word347_0_4

def word347_0_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 288#64])

def word347_0_655 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_653 word347_0_654

def word347_0_656 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_655 word347_0_573

def word347_0_657 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_656 word347_0_575

def word347_0_658 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_657 word347_0_577

def word347_0_659 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_658 word347_0_579

def word347_0_660 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_659 word347_0_529

def word347_0_661 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_660 word347_0_582

def word347_0_662 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_661 word347_0_537

def word347_0_663 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_662 word347_0_585

def word347_0_664 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_663 word347_0_545

def word347_0_665 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_664 word347_0_588

def word347_0_666 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_665 word347_0_590

def word347_0_667 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_666 word347_0_592

def word347_0_668 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_667 word347_0_486

def word347_0_669 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def word347_0_670 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_668 word347_0_669

def word347_0_671 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_670 word347_0_564

def word347_0_672 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 50)) (some 338) ([56, 10, 36]) (some (56, word347_0_490, 347, 51))

def word347_0_673 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_564 word347_0_672

def word347_0_674 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_671 word347_0_673

def word347_0_675 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_674 word347_0_4

def word347_0_676 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 320#64])

def word347_0_677 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_675 word347_0_676

def word347_0_678 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_677 word347_0_573

def word347_0_679 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_678 word347_0_575

def word347_0_680 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_679 word347_0_577

def word347_0_681 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_680 word347_0_579

def word347_0_682 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_681 word347_0_529

def word347_0_683 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_682 word347_0_582

def word347_0_684 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_683 word347_0_537

def word347_0_685 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_684 word347_0_585

def word347_0_686 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_685 word347_0_545

def word347_0_687 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_686 word347_0_588

def word347_0_688 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_687 word347_0_590

def word347_0_689 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_688 word347_0_592

def word347_0_690 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_689 word347_0_486

def word347_0_691 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 2#64])

def word347_0_692 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_690 word347_0_691

def word347_0_693 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_692 word347_0_564

def word347_0_694 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_0_16, 347, 52)) (some 338) ([56, 10, 36]) (some (56, word347_0_490, 347, 53))

def word347_0_695 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_564 word347_0_694

def word347_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_693 word347_0_695

def word347_0_697 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_696 word347_0_4

def word347_0_698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 352#64])

def word347_0_699 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_697 word347_0_698

def word347_0_700 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_699 word347_0_573

def word347_0_701 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_700 word347_0_575

def word347_0_702 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_701 word347_0_577

def word347_0_703 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_702 word347_0_579

def word347_0_704 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_703 word347_0_529

def word347_0_705 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_704 word347_0_582

def word347_0_706 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_705 word347_0_537

def word347_0_707 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_706 word347_0_585

def word347_0_708 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_707 word347_0_545

def word347_0_709 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_708 word347_0_588

def word347_0_710 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_709 word347_0_590

def word347_0_711 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_710 word347_0_592

def word347_0_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 38)

def word347_0_713 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_711 word347_0_712

def word347_0_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [56]

def word347_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word347_0_713 word347_0_714

def pass347_0 : WordLangProgHOL (BitVec 64) :=
word347_0_715
end InitECandidate.Proofs.WordStages.Parallel347
