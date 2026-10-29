import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source341
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word341_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def word341_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_0 word341_0_1

def word341_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word341_0_5 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_3 word341_0_4

def word341_0_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_7 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_5 word341_0_6

def word341_0_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_9 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_7 word341_0_8

def word341_0_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 46)

def word341_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_9 word341_0_10

def word341_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 6#64)

def word341_0_13 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_11 word341_0_12

def word341_0_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word341_0_15 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_13 word341_0_14

def word341_0_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word341_0_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 38) word341_0_15 word341_0_16

def word341_0_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_19 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_18 word341_0_4

def word341_0_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_21 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_19 word341_0_20

def word341_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_17 word341_0_21

def word341_0_23 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_2 word341_0_22

def word341_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_23 word341_0_4

def word341_0_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 2)

def word341_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_24 word341_0_25

def word341_0_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 46 (Flapjack.WordLangAddr.addr 46 0#64))

def word341_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_26 word341_0_27

def word341_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 46)

def word341_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_28 word341_0_29

def word341_0_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 400#64)

def word341_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_30 word341_0_31

def word341_0_33 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_32 word341_0_31

def word341_0_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def word341_0_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 2)) (some 68) ([26]) (some (26, word341_0_34, 341, 3))

def word341_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_33 word341_0_35

def word341_0_37 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_36 word341_0_4

def word341_0_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 38)

def word341_0_39 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_37 word341_0_38

def word341_0_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 400#64)

def word341_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_39 word341_0_40

def word341_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_41 word341_0_40

def word341_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def word341_0_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 4)) (some 78) ([54, 8]) (some (54, word341_0_43, 341, 5))

def word341_0_45 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_42 word341_0_44

def word341_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_45 word341_0_4

def word341_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 384#64])

def word341_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_46 word341_0_47

def word341_0_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 2)

def word341_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_48 word341_0_49

def word341_0_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 54)

def word341_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_50 word341_0_51

def word341_0_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 8

def word341_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_52 word341_0_53

def word341_0_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 392#64])

def word341_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_54 word341_0_55

def word341_0_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 4)

def word341_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_56 word341_0_57

def word341_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_58 word341_0_51

def word341_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_59 word341_0_53

def word341_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_60 word341_0_61

def word341_0_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 9#64)

def word341_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_62 word341_0_63

def word341_0_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 12)

def word341_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_64 word341_0_65

def word341_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_66 word341_0_67

def word341_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_69 word341_0_4

def word341_0_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_70 word341_0_71

def word341_0_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_72 word341_0_73

def word341_0_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_74 word341_0_75

def word341_0_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_78 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_77 word341_0_4

def word341_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_78 word341_0_71

def word341_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_81 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_79 word341_0_80

def word341_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_81 word341_0_71

def word341_0_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 42 (Flapjack.WordRegImm.reg 30) word341_0_76 word341_0_82

def word341_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_68 word341_0_83

def word341_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_84 word341_0_4

def word341_0_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 4#64)

def word341_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_85 word341_0_86

def word341_0_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def word341_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_87 word341_0_88

def word341_0_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_91 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_90 word341_0_4

def word341_0_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_91 word341_0_92

def word341_0_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_95 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_93 word341_0_94

def word341_0_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_97 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_95 word341_0_96

def word341_0_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_98 word341_0_4

def word341_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_99 word341_0_92

def word341_0_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_100 word341_0_101

def word341_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_102 word341_0_92

def word341_0_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 48 (Flapjack.WordRegImm.reg 14) word341_0_97 word341_0_103

def word341_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_89 word341_0_104

def word341_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_105 word341_0_4

def word341_0_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 28])

def word341_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_106 word341_0_107

def word341_0_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def word341_0_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def word341_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_109 word341_0_110

def word341_0_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def word341_0_113 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 54, 8, 34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 6)) (some 162) ([16, 42]) (some (16, word341_0_112, 341, 7))

def word341_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_111 word341_0_113

def word341_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_114 word341_0_4

def word341_0_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def word341_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_115 word341_0_116

def word341_0_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 22)

def word341_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_117 word341_0_118

def word341_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_119 word341_0_67

def word341_0_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_70 word341_0_121

def word341_0_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 11#64)

def word341_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_122 word341_0_123

def word341_0_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_126 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_78 word341_0_125

def word341_0_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) word341_0_124 word341_0_126

def word341_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_120 word341_0_127

def word341_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_128 word341_0_4

def word341_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_129 word341_0_118

def word341_0_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 2#64)

def word341_0_132 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_130 word341_0_131

def word341_0_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 12#64)

def word341_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_122 word341_0_133

def word341_0_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) word341_0_134 word341_0_126

def word341_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_132 word341_0_135

def word341_0_137 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_136 word341_0_4

def word341_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_137 word341_0_118

def word341_0_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 3#64)

def word341_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_138 word341_0_139

def word341_0_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 14#64)

def word341_0_142 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_122 word341_0_141

def word341_0_143 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) word341_0_142 word341_0_126

def word341_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_140 word341_0_143

def word341_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_144 word341_0_4

def word341_0_146 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_145 word341_0_118

def word341_0_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 4#64)

def word341_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_146 word341_0_147

def word341_0_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 13#64)

def word341_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_122 word341_0_149

def word341_0_151 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) word341_0_150 word341_0_126

def word341_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_148 word341_0_151

def word341_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_152 word341_0_4

def word341_0_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 192#64)

def word341_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_65 word341_0_154

def word341_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_155 word341_0_83

def word341_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_156 word341_0_4

def word341_0_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 254#64)

def word341_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_157 word341_0_158

def word341_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_159 word341_0_88

def word341_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_160 word341_0_104

def word341_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_161 word341_0_4

def word341_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_162 word341_0_107

def word341_0_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 2#64)

def word341_0_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 16)

def word341_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_164 word341_0_165

def word341_0_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 6#64)

def word341_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_166 word341_0_167

def word341_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_168 word341_0_112

def word341_0_170 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) word341_0_16 word341_0_169

def word341_0_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def word341_0_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 4)

def word341_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_171 word341_0_172

def word341_0_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 54, 8, 34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 8)) (some 162) ([16, 42]) (some (16, word341_0_112, 341, 9))

def word341_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_173 word341_0_174

def word341_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_175 word341_0_4

def word341_0_177 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_170 word341_0_176

def word341_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_163 word341_0_177

def word341_0_179 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_178 word341_0_4

def word341_0_180 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) word341_0_153 word341_0_179

def word341_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_108 word341_0_180

def word341_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_181 word341_0_4

def word341_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 0#64])

def word341_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_182 word341_0_183

def word341_0_185 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_184 word341_0_118

def word341_0_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 42)

def word341_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_185 word341_0_186

def word341_0_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 16) 30

def word341_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_187 word341_0_188

def word341_0_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 26)

def word341_0_191 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_189 word341_0_190

def word341_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_191 word341_0_67

def word341_0_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 3#64)

def word341_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_122 word341_0_193

def word341_0_195 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_194 word341_0_165

def word341_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_195 word341_0_167

def word341_0_197 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_196 word341_0_112

def word341_0_198 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.reg 30) word341_0_197 word341_0_16

def word341_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_198 word341_0_126

def word341_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_192 word341_0_199

def word341_0_201 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_200 word341_0_4

def word341_0_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 54)

def word341_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_201 word341_0_202

def word341_0_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 8)

def word341_0_205 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_203 word341_0_204

def word341_0_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word341_0_207 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 10)) (some 169) ([30, 58]) (some (30, word341_0_206, 341, 11))

def word341_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_205 word341_0_207

def word341_0_209 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_208 word341_0_4

def word341_0_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def word341_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_209 word341_0_210

def word341_0_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 42)

def word341_0_213 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_211 word341_0_212

def word341_0_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 50)

def word341_0_215 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_213 word341_0_214

def word341_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_75 word341_0_4

def word341_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_216 word341_0_217

def word341_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 4#64)

def word341_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_218 word341_0_219

def word341_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 58)

def word341_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_220 word341_0_221

def word341_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 6#64)

def word341_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_222 word341_0_223

def word341_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def word341_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_224 word341_0_225

def word341_0_227 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 32) word341_0_226 word341_0_16

def word341_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_71 word341_0_4

def word341_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_228 word341_0_229

def word341_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_227 word341_0_230

def word341_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_215 word341_0_231

def word341_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_232 word341_0_4

def word341_0_234 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_233 word341_0_125

def word341_0_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def word341_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_234 word341_0_235

def word341_0_237 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_236 word341_0_98

def word341_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_217 word341_0_4

def word341_0_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_238 word341_0_239

def word341_0_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 30)

def word341_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_240 word341_0_241

def word341_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_242 word341_0_229

def word341_0_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 8#64)

def word341_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_243 word341_0_244

def word341_0_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 12#64)

def word341_0_247 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_245 word341_0_246

def word341_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_247 word341_0_246

def word341_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_248 word341_0_244

def word341_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_249 word341_0_229

def word341_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_250 word341_0_246

def word341_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_251 word341_0_244

def word341_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_252 word341_0_229

def word341_0_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def word341_0_255 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 12)) (some 333) ([32, 20, 48, 14]) (some (32, word341_0_254, 341, 13))

def word341_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_253 word341_0_255

def word341_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_256 word341_0_4

def word341_0_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 8#64])

def word341_0_259 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_257 word341_0_258

def word341_0_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def word341_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_259 word341_0_260

def word341_0_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 20)

def word341_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_261 word341_0_262

def word341_0_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 32) 48

def word341_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_263 word341_0_264

def word341_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_265 word341_0_121

def word341_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_229 word341_0_4

def word341_0_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_267 word341_0_268

def word341_0_270 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 48) word341_0_266 word341_0_269

def word341_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_237 word341_0_270

def word341_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_271 word341_0_4

def word341_0_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def word341_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_272 word341_0_273

def word341_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 4#64)

def word341_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_274 word341_0_275

def word341_0_277 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_96 word341_0_4

def word341_0_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_277 word341_0_278

def word341_0_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 30)

def word341_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_279 word341_0_280

def word341_0_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 58)

def word341_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_281 word341_0_282

def word341_0_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 8#64)

def word341_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_283 word341_0_284

def word341_0_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 12#64)

def word341_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_285 word341_0_286

def word341_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_287 word341_0_286

def word341_0_289 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_288 word341_0_284

def word341_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_289 word341_0_286

def word341_0_291 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_290 word341_0_284

def word341_0_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word341_0_293 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 14)) (some 333) ([40, 28, 56, 10]) (some (40, word341_0_292, 341, 15))

def word341_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_291 word341_0_293

def word341_0_295 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_294 word341_0_4

def word341_0_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 6)

def word341_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_295 word341_0_296

def word341_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_297 word341_0_229

def word341_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_298 word341_0_98

def word341_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_299 word341_0_268

def word341_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_92 word341_0_4

def word341_0_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_301 word341_0_302

def word341_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_303 word341_0_280

def word341_0_305 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_304 word341_0_282

def word341_0_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 32#64)

def word341_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_305 word341_0_306

def word341_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_307 word341_0_306

def word341_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_308 word341_0_306

def word341_0_310 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 16)) (some 332) ([40, 28, 56]) (some (40, word341_0_292, 341, 17))

def word341_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_309 word341_0_310

def word341_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_311 word341_0_4

def word341_0_313 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 56) word341_0_300 word341_0_312

def word341_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_276 word341_0_313

def word341_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_314 word341_0_4

def word341_0_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 16#64])

def word341_0_317 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_315 word341_0_316

def word341_0_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 32)

def word341_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_317 word341_0_318

def word341_0_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 20)

def word341_0_321 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_319 word341_0_320

def word341_0_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 48)

def word341_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_321 word341_0_322

def word341_0_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 14)

def word341_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_323 word341_0_324

def word341_0_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def word341_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_325 word341_0_326

def word341_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 24

def word341_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_327 word341_0_328

def word341_0_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 56)

def word341_0_331 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_329 word341_0_330

def word341_0_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64])
  24

def word341_0_333 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_331 word341_0_332

def word341_0_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def word341_0_335 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_333 word341_0_334

def word341_0_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 16#64])
  24

def word341_0_337 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_335 word341_0_336

def word341_0_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 36)

def word341_0_339 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_337 word341_0_338

def word341_0_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 24#64])
  24

def word341_0_341 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_339 word341_0_340

def word341_0_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def word341_0_343 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_341 word341_0_342

def word341_0_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 40)

def word341_0_345 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_343 word341_0_344

def word341_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_345 word341_0_96

def word341_0_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 22)

def word341_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_346 word341_0_347

def word341_0_349 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_283 word341_0_101

def word341_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_349 word341_0_101

def word341_0_351 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_350 word341_0_101

def word341_0_352 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 18)) (some 332) ([40, 28, 56]) (some (40, word341_0_292, 341, 19))

def word341_0_353 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_351 word341_0_352

def word341_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_353 word341_0_4

def word341_0_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 48#64])

def word341_0_356 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_354 word341_0_355

def word341_0_357 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_356 word341_0_318

def word341_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_357 word341_0_320

def word341_0_359 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_358 word341_0_322

def word341_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_359 word341_0_324

def word341_0_361 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_360 word341_0_326

def word341_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_361 word341_0_328

def word341_0_363 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_362 word341_0_330

def word341_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_363 word341_0_332

def word341_0_365 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_364 word341_0_334

def word341_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_365 word341_0_336

def word341_0_367 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_366 word341_0_338

def word341_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_367 word341_0_340

def word341_0_369 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_368 word341_0_342

def word341_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_369 word341_0_344

def word341_0_371 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_305 word341_0_101

def word341_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_371 word341_0_101

def word341_0_373 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_372 word341_0_101

def word341_0_374 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 20)) (some 332) ([40, 28, 56]) (some (40, word341_0_292, 341, 21))

def word341_0_375 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_373 word341_0_374

def word341_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_375 word341_0_4

def word341_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 80#64])

def word341_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_376 word341_0_377

def word341_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_378 word341_0_318

def word341_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_379 word341_0_320

def word341_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_380 word341_0_322

def word341_0_382 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_381 word341_0_324

def word341_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_382 word341_0_326

def word341_0_384 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_383 word341_0_328

def word341_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_384 word341_0_330

def word341_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_385 word341_0_332

def word341_0_387 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_386 word341_0_334

def word341_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_387 word341_0_336

def word341_0_389 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_388 word341_0_338

def word341_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_389 word341_0_340

def word341_0_391 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_390 word341_0_280

def word341_0_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def word341_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_391 word341_0_392

def word341_0_394 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_393 word341_0_101

def word341_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_394 word341_0_101

def word341_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_395 word341_0_101

def word341_0_397 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 22)) (some 332) ([40, 28, 56]) (some (40, word341_0_292, 341, 23))

def word341_0_398 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_396 word341_0_397

def word341_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_398 word341_0_4

def word341_0_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 112#64])

def word341_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_399 word341_0_400

def word341_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_401 word341_0_318

def word341_0_403 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_402 word341_0_320

def word341_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_403 word341_0_322

def word341_0_405 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_404 word341_0_324

def word341_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_405 word341_0_326

def word341_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_406 word341_0_328

def word341_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_407 word341_0_330

def word341_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_408 word341_0_332

def word341_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_409 word341_0_334

def word341_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_410 word341_0_336

def word341_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_411 word341_0_338

def word341_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_412 word341_0_340

def word341_0_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 2#64])

def word341_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_413 word341_0_414

def word341_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_415 word341_0_344

def word341_0_417 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 28 (Flapjack.WordRegImm.reg 56) word341_0_370 word341_0_416

def word341_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_348 word341_0_417

def word341_0_419 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_418 word341_0_4

def word341_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_419 word341_0_280

def word341_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_420 word341_0_282

def word341_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_421 word341_0_101

def word341_0_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 14#64)

def word341_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_422 word341_0_423

def word341_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_424 word341_0_423

def word341_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_425 word341_0_101

def word341_0_427 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 24)) (some 333) ([40, 28, 56, 10]) (some (40, word341_0_292, 341, 25))

def word341_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_426 word341_0_427

def word341_0_429 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_428 word341_0_4

def word341_0_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 144#64])

def word341_0_431 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_429 word341_0_430

def word341_0_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def word341_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_431 word341_0_432

def word341_0_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 28)

def word341_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_433 word341_0_434

def word341_0_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 56

def word341_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_435 word341_0_436

def word341_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_437 word341_0_342

def word341_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_438 word341_0_344

def word341_0_440 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_439 word341_0_273

def word341_0_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 3#64)

def word341_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_440 word341_0_441

def word341_0_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 20#64)

def word341_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_283 word341_0_443

def word341_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_444 word341_0_443

def word341_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_445 word341_0_443

def word341_0_447 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 26)) (some 335) ([40, 28, 56]) (some (40, word341_0_292, 341, 27))

def word341_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_446 word341_0_447

def word341_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_448 word341_0_4

def word341_0_450 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 28)) (some 336) ([40, 28]) (some (40, word341_0_292, 341, 29))

def word341_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_305 word341_0_450

def word341_0_452 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_451 word341_0_4

def word341_0_453 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 28 (Flapjack.WordRegImm.reg 56) word341_0_449 word341_0_452

def word341_0_454 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_442 word341_0_453

def word341_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_454 word341_0_4

def word341_0_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 152#64])

def word341_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_455 word341_0_456

def word341_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_457 word341_0_432

def word341_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_458 word341_0_434

def word341_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_459 word341_0_436

def word341_0_461 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_460 word341_0_342

def word341_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_461 word341_0_344

def word341_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_462 word341_0_280

def word341_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_463 word341_0_282

def word341_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_464 word341_0_306

def word341_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_465 word341_0_306

def word341_0_467 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 30)) (some 332) ([40, 28, 56]) (some (40, word341_0_292, 341, 31))

def word341_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_466 word341_0_467

def word341_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_468 word341_0_4

def word341_0_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 160#64])

def word341_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_469 word341_0_470

def word341_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_471 word341_0_318

def word341_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_472 word341_0_320

def word341_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_473 word341_0_322

def word341_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_474 word341_0_324

def word341_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_475 word341_0_326

def word341_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_476 word341_0_328

def word341_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_477 word341_0_330

def word341_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_478 word341_0_332

def word341_0_480 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_479 word341_0_334

def word341_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_480 word341_0_336

def word341_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_481 word341_0_338

def word341_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_482 word341_0_340

def word341_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_483 word341_0_342

def word341_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_484 word341_0_344

def word341_0_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 30)

def word341_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_485 word341_0_486

def word341_0_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 58)

def word341_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_487 word341_0_488

def word341_0_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def word341_0_491 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 32)) (some 334) ([56, 10]) (some (56, word341_0_490, 341, 33))

def word341_0_492 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_489 word341_0_491

def word341_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_492 word341_0_4

def word341_0_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 192#64])

def word341_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_493 word341_0_494

def word341_0_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 40)

def word341_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_495 word341_0_496

def word341_0_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 10)

def word341_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_497 word341_0_498

def word341_0_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 56) 36

def word341_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_499 word341_0_500

def word341_0_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 200#64])

def word341_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_501 word341_0_502

def word341_0_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def word341_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_503 word341_0_504

def word341_0_506 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_505 word341_0_498

def word341_0_507 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_506 word341_0_500

def word341_0_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def word341_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_507 word341_0_508

def word341_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 56)

def word341_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_509 word341_0_510

def word341_0_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 22)

def word341_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_511 word341_0_512

def word341_0_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_515 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_513 word341_0_514

def word341_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_278 word341_0_4

def word341_0_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def word341_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_516 word341_0_517

def word341_0_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 30)

def word341_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_518 word341_0_519

def word341_0_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 58)

def word341_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_520 word341_0_521

def word341_0_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def word341_0_524 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 34)) (some 337) ([36, 24]) (some (36, word341_0_523, 341, 35))

def word341_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_522 word341_0_524

def word341_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_525 word341_0_4

def word341_0_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 56)

def word341_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_526 word341_0_527

def word341_0_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def word341_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_528 word341_0_529

def word341_0_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word341_0_532 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 36)) (some 338) ([52, 18]) (some (52, word341_0_531, 341, 37))

def word341_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_530 word341_0_532

def word341_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_533 word341_0_4

def word341_0_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 208#64])

def word341_0_536 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_534 word341_0_535

def word341_0_537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 36)

def word341_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_536 word341_0_537

def word341_0_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 18)

def word341_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_538 word341_0_539

def word341_0_541 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 52) 44

def word341_0_542 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_540 word341_0_541

def word341_0_543 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 216#64])

def word341_0_544 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_542 word341_0_543

def word341_0_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def word341_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_544 word341_0_545

def word341_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_546 word341_0_539

def word341_0_548 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_547 word341_0_541

def word341_0_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def word341_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_548 word341_0_549

def word341_0_551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 52)

def word341_0_552 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_550 word341_0_551

def word341_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_302 word341_0_4

def word341_0_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def word341_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_553 word341_0_554

def word341_0_556 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 36) word341_0_552 word341_0_555

def word341_0_557 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_515 word341_0_556

def word341_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_557 word341_0_4

def word341_0_559 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_558 word341_0_512

def word341_0_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 3#64)

def word341_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_559 word341_0_560

def word341_0_562 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_518 word341_0_486

def word341_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_562 word341_0_488

def word341_0_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 32#64)

def word341_0_565 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_563 word341_0_564

def word341_0_566 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_565 word341_0_564

def word341_0_567 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_566 word341_0_564

def word341_0_568 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 38)) (some 332) ([56, 10, 36]) (some (56, word341_0_490, 341, 39))

def word341_0_569 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_567 word341_0_568

def word341_0_570 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_569 word341_0_4

def word341_0_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 224#64])

def word341_0_572 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_570 word341_0_571

def word341_0_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 32)

def word341_0_574 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_572 word341_0_573

def word341_0_575 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 20)

def word341_0_576 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_574 word341_0_575

def word341_0_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 48)

def word341_0_578 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_576 word341_0_577

def word341_0_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 14)

def word341_0_580 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_578 word341_0_579

def word341_0_581 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_580 word341_0_529

def word341_0_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 56) 18

def word341_0_583 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_581 word341_0_582

def word341_0_584 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_583 word341_0_537

def word341_0_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 56, Flapjack.WordLangExpHOL.const 8#64])
  18

def word341_0_586 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_584 word341_0_585

def word341_0_587 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_586 word341_0_545

def word341_0_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 56, Flapjack.WordLangExpHOL.const 16#64])
  18

def word341_0_589 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_587 word341_0_588

def word341_0_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 52)

def word341_0_591 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_589 word341_0_590

def word341_0_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 56, Flapjack.WordLangExpHOL.const 24#64])
  18

def word341_0_593 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_591 word341_0_592

def word341_0_594 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_593 word341_0_519

def word341_0_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def word341_0_596 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_594 word341_0_595

def word341_0_597 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 40)) (some 337) ([36, 24]) (some (36, word341_0_523, 341, 41))

def word341_0_598 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_596 word341_0_597

def word341_0_599 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_598 word341_0_4

def word341_0_600 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_599 word341_0_527

def word341_0_601 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_600 word341_0_529

def word341_0_602 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 42)) (some 339) ([52, 18]) (some (52, word341_0_531, 341, 43))

def word341_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_601 word341_0_602

def word341_0_604 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_603 word341_0_4

def word341_0_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 256#64])

def word341_0_606 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_604 word341_0_605

def word341_0_607 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_606 word341_0_537

def word341_0_608 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_607 word341_0_539

def word341_0_609 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_608 word341_0_541

def word341_0_610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 264#64])

def word341_0_611 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_609 word341_0_610

def word341_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_611 word341_0_545

def word341_0_613 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_612 word341_0_539

def word341_0_614 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_613 word341_0_541

def word341_0_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 2#64])

def word341_0_616 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_614 word341_0_615

def word341_0_617 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_616 word341_0_551

def word341_0_618 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 36) word341_0_617 word341_0_555

def word341_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_561 word341_0_618

def word341_0_620 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_619 word341_0_4

def word341_0_621 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_620 word341_0_512

def word341_0_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 4#64)

def word341_0_623 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_621 word341_0_622

def word341_0_624 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 44)) (some 337) ([36, 24]) (some (36, word341_0_523, 341, 45))

def word341_0_625 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_522 word341_0_624

def word341_0_626 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_625 word341_0_4

def word341_0_627 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_626 word341_0_527

def word341_0_628 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_627 word341_0_529

def word341_0_629 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 46)) (some 340) ([52, 18]) (some (52, word341_0_531, 341, 47))

def word341_0_630 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_628 word341_0_629

def word341_0_631 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_630 word341_0_4

def word341_0_632 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 272#64])

def word341_0_633 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_631 word341_0_632

def word341_0_634 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_633 word341_0_537

def word341_0_635 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_634 word341_0_539

def word341_0_636 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_635 word341_0_541

def word341_0_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 280#64])

def word341_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_636 word341_0_637

def word341_0_639 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_638 word341_0_545

def word341_0_640 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_639 word341_0_539

def word341_0_641 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_640 word341_0_541

def word341_0_642 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_641 word341_0_549

def word341_0_643 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_642 word341_0_551

def word341_0_644 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 36) word341_0_643 word341_0_555

def word341_0_645 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_623 word341_0_644

def word341_0_646 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_645 word341_0_4

def word341_0_647 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_646 word341_0_486

def word341_0_648 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_647 word341_0_488

def word341_0_649 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_648 word341_0_564

def word341_0_650 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 48)) (some 332) ([56, 10, 36]) (some (56, word341_0_490, 341, 49))

def word341_0_651 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_564 word341_0_650

def word341_0_652 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_649 word341_0_651

def word341_0_653 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_652 word341_0_4

def word341_0_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 288#64])

def word341_0_655 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_653 word341_0_654

def word341_0_656 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_655 word341_0_573

def word341_0_657 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_656 word341_0_575

def word341_0_658 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_657 word341_0_577

def word341_0_659 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_658 word341_0_579

def word341_0_660 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_659 word341_0_529

def word341_0_661 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_660 word341_0_582

def word341_0_662 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_661 word341_0_537

def word341_0_663 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_662 word341_0_585

def word341_0_664 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_663 word341_0_545

def word341_0_665 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_664 word341_0_588

def word341_0_666 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_665 word341_0_590

def word341_0_667 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_666 word341_0_592

def word341_0_668 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_667 word341_0_486

def word341_0_669 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def word341_0_670 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_668 word341_0_669

def word341_0_671 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_670 word341_0_564

def word341_0_672 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 50)) (some 332) ([56, 10, 36]) (some (56, word341_0_490, 341, 51))

def word341_0_673 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_564 word341_0_672

def word341_0_674 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_671 word341_0_673

def word341_0_675 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_674 word341_0_4

def word341_0_676 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 320#64])

def word341_0_677 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_675 word341_0_676

def word341_0_678 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_677 word341_0_573

def word341_0_679 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_678 word341_0_575

def word341_0_680 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_679 word341_0_577

def word341_0_681 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_680 word341_0_579

def word341_0_682 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_681 word341_0_529

def word341_0_683 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_682 word341_0_582

def word341_0_684 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_683 word341_0_537

def word341_0_685 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_684 word341_0_585

def word341_0_686 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_685 word341_0_545

def word341_0_687 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_686 word341_0_588

def word341_0_688 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_687 word341_0_590

def word341_0_689 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_688 word341_0_592

def word341_0_690 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_689 word341_0_486

def word341_0_691 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 2#64])

def word341_0_692 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_690 word341_0_691

def word341_0_693 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_692 word341_0_564

def word341_0_694 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word341_0_16, 341, 52)) (some 332) ([56, 10, 36]) (some (56, word341_0_490, 341, 53))

def word341_0_695 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_564 word341_0_694

def word341_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_693 word341_0_695

def word341_0_697 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_696 word341_0_4

def word341_0_698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 352#64])

def word341_0_699 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_697 word341_0_698

def word341_0_700 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_699 word341_0_573

def word341_0_701 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_700 word341_0_575

def word341_0_702 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_701 word341_0_577

def word341_0_703 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_702 word341_0_579

def word341_0_704 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_703 word341_0_529

def word341_0_705 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_704 word341_0_582

def word341_0_706 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_705 word341_0_537

def word341_0_707 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_706 word341_0_585

def word341_0_708 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_707 word341_0_545

def word341_0_709 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_708 word341_0_588

def word341_0_710 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_709 word341_0_590

def word341_0_711 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_710 word341_0_592

def word341_0_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 38)

def word341_0_713 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_711 word341_0_712

def word341_0_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [56]

def word341_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word341_0_713 word341_0_714

def pass341_0 : WordLangProgHOL (BitVec 64) :=
word341_0_715
theorem pass341_0_eq : WordSimp.compileExp (source341.2.2) = pass341_0 := by
  kernel_rfl
#print axioms pass341_0_eq
end InitECandidate.Proofs.WordStages
