import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass347_0
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word347_1_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 4)]

def word347_1_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 0#64)

def word347_1_2 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_0 word347_1_1

def word347_1_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def word347_1_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word347_1_5 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_3 word347_1_4

def word347_1_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 1#64)

def word347_1_7 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_5 word347_1_6

def word347_1_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 1#64)

def word347_1_9 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_7 word347_1_8

def word347_1_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 46)]

def word347_1_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 59)

def word347_1_12 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_10 word347_1_11

def word347_1_13 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_9 word347_1_12

def word347_1_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 6#64)

def word347_1_15 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_13 word347_1_14

def word347_1_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word347_1_17 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_15 word347_1_16

def word347_1_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word347_1_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 38) word347_1_17 word347_1_18

def word347_1_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def word347_1_21 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_20 word347_1_4

def word347_1_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 0#64)

def word347_1_23 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_21 word347_1_22

def word347_1_24 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_19 word347_1_23

def word347_1_25 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_2 word347_1_24

def word347_1_26 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_25 word347_1_4

def word347_1_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 2)]

def word347_1_28 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_26 word347_1_27

def word347_1_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 46 (Flapjack.WordLangAddr.addr 46 0#64))

def word347_1_30 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_28 word347_1_29

def word347_1_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 46)]

def word347_1_32 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_30 word347_1_31

def word347_1_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 400#64)

def word347_1_34 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_32 word347_1_33

def word347_1_35 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_34 word347_1_33

def word347_1_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def word347_1_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 2)) (some 68) ([26]) (some (26, word347_1_36, 347, 3))

def word347_1_38 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_35 word347_1_37

def word347_1_39 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_38 word347_1_4

def word347_1_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 38)]

def word347_1_41 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_39 word347_1_40

def word347_1_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 400#64)

def word347_1_43 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_41 word347_1_42

def word347_1_44 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_43 word347_1_42

def word347_1_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def word347_1_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 4)) (some 78) ([54, 8]) (some (54, word347_1_45, 347, 5))

def word347_1_47 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_44 word347_1_46

def word347_1_48 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_47 word347_1_4

def word347_1_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 38)]

def word347_1_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 59 (Flapjack.WordRegImm.imm 384#64)))

def word347_1_51 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_50

def word347_1_52 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_48 word347_1_51

def word347_1_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 2)]

def word347_1_54 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_52 word347_1_53

def word347_1_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 54)]

def word347_1_56 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_54 word347_1_55

def word347_1_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 26)]

def word347_1_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 59 0#64))

def word347_1_59 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_57 word347_1_58

def word347_1_60 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_56 word347_1_59

def word347_1_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 59 (Flapjack.WordRegImm.imm 392#64)))

def word347_1_62 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_61

def word347_1_63 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_60 word347_1_62

def word347_1_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 4)]

def word347_1_65 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_63 word347_1_64

def word347_1_66 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_65 word347_1_55

def word347_1_67 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_66 word347_1_59

def word347_1_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def word347_1_69 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_67 word347_1_68

def word347_1_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 9#64)

def word347_1_71 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_69 word347_1_70

def word347_1_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 12)]

def word347_1_73 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_71 word347_1_72

def word347_1_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 1#64)

def word347_1_75 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_73 word347_1_74

def word347_1_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 1#64)

def word347_1_77 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_76 word347_1_4

def word347_1_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def word347_1_79 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_77 word347_1_78

def word347_1_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 1#64)

def word347_1_81 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_79 word347_1_80

def word347_1_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def word347_1_83 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_81 word347_1_82

def word347_1_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 0#64)

def word347_1_85 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_84 word347_1_4

def word347_1_86 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_85 word347_1_78

def word347_1_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 0#64)

def word347_1_88 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_86 word347_1_87

def word347_1_89 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_88 word347_1_78

def word347_1_90 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 42 (Flapjack.WordRegImm.reg 30) word347_1_83 word347_1_89

def word347_1_91 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_75 word347_1_90

def word347_1_92 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_91 word347_1_4

def word347_1_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 48 4#64)

def word347_1_94 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_92 word347_1_93

def word347_1_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 12)]

def word347_1_96 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_94 word347_1_95

def word347_1_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 48 1#64)

def word347_1_98 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_97 word347_1_4

def word347_1_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def word347_1_100 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_98 word347_1_99

def word347_1_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 1#64)

def word347_1_102 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_100 word347_1_101

def word347_1_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 1#64)

def word347_1_104 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_102 word347_1_103

def word347_1_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 48 0#64)

def word347_1_106 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_105 word347_1_4

def word347_1_107 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_106 word347_1_99

def word347_1_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 0#64)

def word347_1_109 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_107 word347_1_108

def word347_1_110 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_109 word347_1_99

def word347_1_111 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 48 (Flapjack.WordRegImm.reg 14) word347_1_104 word347_1_110

def word347_1_112 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_96 word347_1_111

def word347_1_113 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_112 word347_1_4

def word347_1_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 28)]

def word347_1_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(60, 6)]

def word347_1_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 10 59 (Flapjack.WordRegImm.reg 60)))

def word347_1_117 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_115 word347_1_116

def word347_1_118 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_114 word347_1_117

def word347_1_119 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_113 word347_1_118

def word347_1_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 2)]

def word347_1_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 59 (Flapjack.WordRegImm.imm 1#64)))

def word347_1_122 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_120 word347_1_121

def word347_1_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 4)]

def word347_1_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 42 59 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def word347_1_125 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_123 word347_1_124

def word347_1_126 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_122 word347_1_125

def word347_1_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def word347_1_128 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 54, 8, 34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 6)) (some 162) ([16, 42]) (some (16, word347_1_127, 347, 7))

def word347_1_129 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_126 word347_1_128

def word347_1_130 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_129 word347_1_4

def word347_1_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 12)]

def word347_1_132 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_130 word347_1_131

def word347_1_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 22)]

def word347_1_134 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_132 word347_1_133

def word347_1_135 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_134 word347_1_74

def word347_1_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 58 1#64)

def word347_1_137 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_77 word347_1_136

def word347_1_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 11#64)

def word347_1_139 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_137 word347_1_138

def word347_1_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 58 0#64)

def word347_1_141 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_85 word347_1_140

def word347_1_142 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) word347_1_139 word347_1_141

def word347_1_143 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_135 word347_1_142

def word347_1_144 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_143 word347_1_4

def word347_1_145 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_144 word347_1_133

def word347_1_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 2#64)

def word347_1_147 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_145 word347_1_146

def word347_1_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 12#64)

def word347_1_149 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_137 word347_1_148

def word347_1_150 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) word347_1_149 word347_1_141

def word347_1_151 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_147 word347_1_150

def word347_1_152 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_151 word347_1_4

def word347_1_153 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_152 word347_1_133

def word347_1_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 3#64)

def word347_1_155 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_153 word347_1_154

def word347_1_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 14#64)

def word347_1_157 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_137 word347_1_156

def word347_1_158 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) word347_1_157 word347_1_141

def word347_1_159 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_155 word347_1_158

def word347_1_160 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_159 word347_1_4

def word347_1_161 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_160 word347_1_133

def word347_1_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 4#64)

def word347_1_163 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_161 word347_1_162

def word347_1_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 13#64)

def word347_1_165 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_137 word347_1_164

def word347_1_166 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) word347_1_165 word347_1_141

def word347_1_167 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_163 word347_1_166

def word347_1_168 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_167 word347_1_4

def word347_1_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 192#64)

def word347_1_170 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_72 word347_1_169

def word347_1_171 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_170 word347_1_90

def word347_1_172 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_171 word347_1_4

def word347_1_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 48 254#64)

def word347_1_174 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_172 word347_1_173

def word347_1_175 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_174 word347_1_95

def word347_1_176 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_175 word347_1_111

def word347_1_177 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_176 word347_1_4

def word347_1_178 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_177 word347_1_118

def word347_1_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 2#64)

def word347_1_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 16)]

def word347_1_181 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_180 word347_1_11

def word347_1_182 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_179 word347_1_181

def word347_1_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 6#64)

def word347_1_184 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_182 word347_1_183

def word347_1_185 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_184 word347_1_127

def word347_1_186 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) word347_1_18 word347_1_185

def word347_1_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 2)]

def word347_1_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 4)]

def word347_1_189 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_187 word347_1_188

def word347_1_190 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 54, 8, 34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 8)) (some 162) ([16, 42]) (some (16, word347_1_127, 347, 9))

def word347_1_191 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_189 word347_1_190

def word347_1_192 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_191 word347_1_4

def word347_1_193 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_186 word347_1_192

def word347_1_194 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_178 word347_1_193

def word347_1_195 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_194 word347_1_4

def word347_1_196 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) word347_1_168 word347_1_195

def word347_1_197 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_119 word347_1_196

def word347_1_198 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_197 word347_1_4

def word347_1_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 38)]

def word347_1_200 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_198 word347_1_199

def word347_1_201 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_200 word347_1_133

def word347_1_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 42)]

def word347_1_203 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_201 word347_1_202

def word347_1_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 59 0#64))

def word347_1_205 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_180 word347_1_204

def word347_1_206 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_203 word347_1_205

def word347_1_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 26)]

def word347_1_208 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_206 word347_1_207

def word347_1_209 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_208 word347_1_74

def word347_1_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 3#64)

def word347_1_211 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_137 word347_1_210

def word347_1_212 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_211 word347_1_181

def word347_1_213 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_212 word347_1_183

def word347_1_214 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_213 word347_1_127

def word347_1_215 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.reg 30) word347_1_214 word347_1_18

def word347_1_216 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_215 word347_1_141

def word347_1_217 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_209 word347_1_216

def word347_1_218 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_217 word347_1_4

def word347_1_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 54)]

def word347_1_220 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_218 word347_1_219

def word347_1_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 8)]

def word347_1_222 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_220 word347_1_221

def word347_1_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word347_1_224 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 10)) (some 169) ([30, 58]) (some (30, word347_1_223, 347, 11))

def word347_1_225 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_222 word347_1_224

def word347_1_226 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_225 word347_1_4

def word347_1_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 16)]

def word347_1_228 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_226 word347_1_227

def word347_1_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 42)]

def word347_1_230 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_228 word347_1_229

def word347_1_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 50)]

def word347_1_232 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_230 word347_1_231

def word347_1_233 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_82 word347_1_4

def word347_1_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 1#64)

def word347_1_235 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_233 word347_1_234

def word347_1_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 58 4#64)

def word347_1_237 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_235 word347_1_236

def word347_1_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 58)]

def word347_1_239 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_238 word347_1_11

def word347_1_240 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_237 word347_1_239

def word347_1_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 58 6#64)

def word347_1_242 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_240 word347_1_241

def word347_1_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def word347_1_244 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_242 word347_1_243

def word347_1_245 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 32) word347_1_244 word347_1_18

def word347_1_246 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_78 word347_1_4

def word347_1_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def word347_1_248 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_246 word347_1_247

def word347_1_249 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_245 word347_1_248

def word347_1_250 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_232 word347_1_249

def word347_1_251 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_250 word347_1_4

def word347_1_252 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_251 word347_1_140

def word347_1_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 22)]

def word347_1_254 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_252 word347_1_253

def word347_1_255 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_254 word347_1_105

def word347_1_256 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_234 word347_1_4

def word347_1_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 1#64)

def word347_1_258 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_256 word347_1_257

def word347_1_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 30)]

def word347_1_260 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_258 word347_1_259

def word347_1_261 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_260 word347_1_247

def word347_1_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 48 8#64)

def word347_1_263 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_261 word347_1_262

def word347_1_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 12#64)

def word347_1_265 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_263 word347_1_264

def word347_1_266 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_265 word347_1_264

def word347_1_267 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_266 word347_1_262

def word347_1_268 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_267 word347_1_247

def word347_1_269 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_268 word347_1_264

def word347_1_270 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_269 word347_1_262

def word347_1_271 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_270 word347_1_247

def word347_1_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def word347_1_273 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 12)) (some 339) ([32, 20, 48, 14]) (some (32, word347_1_272, 347, 13))

def word347_1_274 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_271 word347_1_273

def word347_1_275 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_274 word347_1_4

def word347_1_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 32 59 (Flapjack.WordRegImm.imm 8#64)))

def word347_1_277 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_276

def word347_1_278 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_275 word347_1_277

def word347_1_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 6)]

def word347_1_280 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_278 word347_1_279

def word347_1_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 20)]

def word347_1_282 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_280 word347_1_281

def word347_1_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 32)]

def word347_1_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 48 (Flapjack.WordLangAddr.addr 59 0#64))

def word347_1_285 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_283 word347_1_284

def word347_1_286 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_282 word347_1_285

def word347_1_287 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_286 word347_1_136

def word347_1_288 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_247 word347_1_4

def word347_1_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def word347_1_290 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_288 word347_1_289

def word347_1_291 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 48) word347_1_287 word347_1_290

def word347_1_292 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_255 word347_1_291

def word347_1_293 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_292 word347_1_4

def word347_1_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 22)]

def word347_1_295 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_293 word347_1_294

def word347_1_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 4#64)

def word347_1_297 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_295 word347_1_296

def word347_1_298 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_103 word347_1_4

def word347_1_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def word347_1_300 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_298 word347_1_299

def word347_1_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 30)]

def word347_1_302 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_300 word347_1_301

def word347_1_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 58)]

def word347_1_304 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_302 word347_1_303

def word347_1_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 8#64)

def word347_1_306 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_304 word347_1_305

def word347_1_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 12#64)

def word347_1_308 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_306 word347_1_307

def word347_1_309 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_308 word347_1_307

def word347_1_310 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_309 word347_1_305

def word347_1_311 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_310 word347_1_307

def word347_1_312 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_311 word347_1_305

def word347_1_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word347_1_314 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 14)) (some 339) ([40, 28, 56, 10]) (some (40, word347_1_313, 347, 15))

def word347_1_315 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_312 word347_1_314

def word347_1_316 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_315 word347_1_4

def word347_1_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 6)]

def word347_1_318 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_316 word347_1_317

def word347_1_319 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_318 word347_1_247

def word347_1_320 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_319 word347_1_105

def word347_1_321 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_320 word347_1_289

def word347_1_322 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_99 word347_1_4

def word347_1_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def word347_1_324 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_322 word347_1_323

def word347_1_325 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_324 word347_1_301

def word347_1_326 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_325 word347_1_303

def word347_1_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 32#64)

def word347_1_328 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_326 word347_1_327

def word347_1_329 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_328 word347_1_327

def word347_1_330 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_329 word347_1_327

def word347_1_331 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 16)) (some 338) ([40, 28, 56]) (some (40, word347_1_313, 347, 17))

def word347_1_332 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_330 word347_1_331

def word347_1_333 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_332 word347_1_4

def word347_1_334 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 56) word347_1_321 word347_1_333

def word347_1_335 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_297 word347_1_334

def word347_1_336 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_335 word347_1_4

def word347_1_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 59 (Flapjack.WordRegImm.imm 16#64)))

def word347_1_338 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_337

def word347_1_339 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_336 word347_1_338

def word347_1_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 32)]

def word347_1_341 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_339 word347_1_340

def word347_1_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 20)]

def word347_1_343 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_341 word347_1_342

def word347_1_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 48)]

def word347_1_345 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_343 word347_1_344

def word347_1_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 14)]

def word347_1_347 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_345 word347_1_346

def word347_1_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 28)]

def word347_1_349 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_347 word347_1_348

def word347_1_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 40)]

def word347_1_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 59 0#64))

def word347_1_352 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_350 word347_1_351

def word347_1_353 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_349 word347_1_352

def word347_1_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 56)]

def word347_1_355 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_353 word347_1_354

def word347_1_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 59 8#64))

def word347_1_357 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_350 word347_1_356

def word347_1_358 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_355 word347_1_357

def word347_1_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 10)]

def word347_1_360 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_358 word347_1_359

def word347_1_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 59 16#64))

def word347_1_362 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_350 word347_1_361

def word347_1_363 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_360 word347_1_362

def word347_1_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 36)]

def word347_1_365 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_363 word347_1_364

def word347_1_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 59 24#64))

def word347_1_367 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_350 word347_1_366

def word347_1_368 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_365 word347_1_367

def word347_1_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 59 (Flapjack.WordRegImm.imm 1#64)))

def word347_1_370 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_238 word347_1_369

def word347_1_371 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_368 word347_1_370

def word347_1_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 40)]

def word347_1_373 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_371 word347_1_372

def word347_1_374 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_373 word347_1_103

def word347_1_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 22)]

def word347_1_376 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_374 word347_1_375

def word347_1_377 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_304 word347_1_108

def word347_1_378 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_377 word347_1_108

def word347_1_379 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_378 word347_1_108

def word347_1_380 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 18)) (some 338) ([40, 28, 56]) (some (40, word347_1_313, 347, 19))

def word347_1_381 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_379 word347_1_380

def word347_1_382 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_381 word347_1_4

def word347_1_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 59 (Flapjack.WordRegImm.imm 48#64)))

def word347_1_384 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_383

def word347_1_385 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_382 word347_1_384

def word347_1_386 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_385 word347_1_340

def word347_1_387 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_386 word347_1_342

def word347_1_388 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_387 word347_1_344

def word347_1_389 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_388 word347_1_346

def word347_1_390 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_389 word347_1_348

def word347_1_391 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_390 word347_1_352

def word347_1_392 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_391 word347_1_354

def word347_1_393 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_392 word347_1_357

def word347_1_394 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_393 word347_1_359

def word347_1_395 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_394 word347_1_362

def word347_1_396 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_395 word347_1_364

def word347_1_397 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_396 word347_1_367

def word347_1_398 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_397 word347_1_370

def word347_1_399 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_398 word347_1_372

def word347_1_400 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_326 word347_1_108

def word347_1_401 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_400 word347_1_108

def word347_1_402 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_401 word347_1_108

def word347_1_403 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 20)) (some 338) ([40, 28, 56]) (some (40, word347_1_313, 347, 21))

def word347_1_404 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_402 word347_1_403

def word347_1_405 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_404 word347_1_4

def word347_1_406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 59 (Flapjack.WordRegImm.imm 80#64)))

def word347_1_407 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_406

def word347_1_408 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_405 word347_1_407

def word347_1_409 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_408 word347_1_340

def word347_1_410 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_409 word347_1_342

def word347_1_411 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_410 word347_1_344

def word347_1_412 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_411 word347_1_346

def word347_1_413 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_412 word347_1_348

def word347_1_414 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_413 word347_1_352

def word347_1_415 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_414 word347_1_354

def word347_1_416 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_415 word347_1_357

def word347_1_417 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_416 word347_1_359

def word347_1_418 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_417 word347_1_362

def word347_1_419 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_418 word347_1_364

def word347_1_420 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_419 word347_1_367

def word347_1_421 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_420 word347_1_301

def word347_1_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 59 (Flapjack.WordRegImm.imm 1#64)))

def word347_1_423 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_238 word347_1_422

def word347_1_424 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_421 word347_1_423

def word347_1_425 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_424 word347_1_108

def word347_1_426 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_425 word347_1_108

def word347_1_427 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_426 word347_1_108

def word347_1_428 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 22)) (some 338) ([40, 28, 56]) (some (40, word347_1_313, 347, 23))

def word347_1_429 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_427 word347_1_428

def word347_1_430 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_429 word347_1_4

def word347_1_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 59 (Flapjack.WordRegImm.imm 112#64)))

def word347_1_432 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_431

def word347_1_433 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_430 word347_1_432

def word347_1_434 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_433 word347_1_340

def word347_1_435 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_434 word347_1_342

def word347_1_436 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_435 word347_1_344

def word347_1_437 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_436 word347_1_346

def word347_1_438 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_437 word347_1_348

def word347_1_439 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_438 word347_1_352

def word347_1_440 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_439 word347_1_354

def word347_1_441 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_440 word347_1_357

def word347_1_442 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_441 word347_1_359

def word347_1_443 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_442 word347_1_362

def word347_1_444 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_443 word347_1_364

def word347_1_445 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_444 word347_1_367

def word347_1_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 59 (Flapjack.WordRegImm.imm 2#64)))

def word347_1_447 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_238 word347_1_446

def word347_1_448 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_445 word347_1_447

def word347_1_449 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_448 word347_1_372

def word347_1_450 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 28 (Flapjack.WordRegImm.reg 56) word347_1_399 word347_1_449

def word347_1_451 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_376 word347_1_450

def word347_1_452 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_451 word347_1_4

def word347_1_453 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_452 word347_1_301

def word347_1_454 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_453 word347_1_303

def word347_1_455 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_454 word347_1_108

def word347_1_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 14#64)

def word347_1_457 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_455 word347_1_456

def word347_1_458 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_457 word347_1_456

def word347_1_459 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_458 word347_1_108

def word347_1_460 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 24)) (some 339) ([40, 28, 56, 10]) (some (40, word347_1_313, 347, 25))

def word347_1_461 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_459 word347_1_460

def word347_1_462 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_461 word347_1_4

def word347_1_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 59 (Flapjack.WordRegImm.imm 144#64)))

def word347_1_464 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_463

def word347_1_465 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_462 word347_1_464

def word347_1_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 6)]

def word347_1_467 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_465 word347_1_466

def word347_1_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 28)]

def word347_1_469 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_467 word347_1_468

def word347_1_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 56 (Flapjack.WordLangAddr.addr 59 0#64))

def word347_1_471 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_350 word347_1_470

def word347_1_472 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_469 word347_1_471

def word347_1_473 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_472 word347_1_370

def word347_1_474 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_473 word347_1_372

def word347_1_475 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_474 word347_1_294

def word347_1_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 3#64)

def word347_1_477 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_475 word347_1_476

def word347_1_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 20#64)

def word347_1_479 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_304 word347_1_478

def word347_1_480 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_479 word347_1_478

def word347_1_481 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_480 word347_1_478

def word347_1_482 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 26)) (some 341) ([40, 28, 56]) (some (40, word347_1_313, 347, 27))

def word347_1_483 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_481 word347_1_482

def word347_1_484 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_483 word347_1_4

def word347_1_485 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 28)) (some 342) ([40, 28]) (some (40, word347_1_313, 347, 29))

def word347_1_486 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_326 word347_1_485

def word347_1_487 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_486 word347_1_4

def word347_1_488 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 28 (Flapjack.WordRegImm.reg 56) word347_1_484 word347_1_487

def word347_1_489 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_477 word347_1_488

def word347_1_490 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_489 word347_1_4

def word347_1_491 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 59 (Flapjack.WordRegImm.imm 152#64)))

def word347_1_492 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_491

def word347_1_493 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_490 word347_1_492

def word347_1_494 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_493 word347_1_466

def word347_1_495 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_494 word347_1_468

def word347_1_496 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_495 word347_1_471

def word347_1_497 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_496 word347_1_370

def word347_1_498 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_497 word347_1_372

def word347_1_499 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_498 word347_1_301

def word347_1_500 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_499 word347_1_303

def word347_1_501 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_500 word347_1_327

def word347_1_502 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_501 word347_1_327

def word347_1_503 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 30)) (some 338) ([40, 28, 56]) (some (40, word347_1_313, 347, 31))

def word347_1_504 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_502 word347_1_503

def word347_1_505 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_504 word347_1_4

def word347_1_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 59 (Flapjack.WordRegImm.imm 160#64)))

def word347_1_507 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_506

def word347_1_508 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_505 word347_1_507

def word347_1_509 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_508 word347_1_340

def word347_1_510 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_509 word347_1_342

def word347_1_511 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_510 word347_1_344

def word347_1_512 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_511 word347_1_346

def word347_1_513 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_512 word347_1_348

def word347_1_514 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_513 word347_1_352

def word347_1_515 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_514 word347_1_354

def word347_1_516 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_515 word347_1_357

def word347_1_517 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_516 word347_1_359

def word347_1_518 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_517 word347_1_362

def word347_1_519 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_518 word347_1_364

def word347_1_520 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_519 word347_1_367

def word347_1_521 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_520 word347_1_370

def word347_1_522 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_521 word347_1_372

def word347_1_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 30)]

def word347_1_524 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_522 word347_1_523

def word347_1_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 58)]

def word347_1_526 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_524 word347_1_525

def word347_1_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def word347_1_528 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 32)) (some 340) ([56, 10]) (some (56, word347_1_527, 347, 33))

def word347_1_529 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_526 word347_1_528

def word347_1_530 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_529 word347_1_4

def word347_1_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 56 59 (Flapjack.WordRegImm.imm 192#64)))

def word347_1_532 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_531

def word347_1_533 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_530 word347_1_532

def word347_1_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 40)]

def word347_1_535 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_533 word347_1_534

def word347_1_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 10)]

def word347_1_537 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_535 word347_1_536

def word347_1_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 56)]

def word347_1_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 36 (Flapjack.WordLangAddr.addr 59 0#64))

def word347_1_540 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_538 word347_1_539

def word347_1_541 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_537 word347_1_540

def word347_1_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 56 59 (Flapjack.WordRegImm.imm 200#64)))

def word347_1_543 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_542

def word347_1_544 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_541 word347_1_543

def word347_1_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 28)]

def word347_1_546 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_544 word347_1_545

def word347_1_547 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_546 word347_1_536

def word347_1_548 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_547 word347_1_540

def word347_1_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 56 59 (Flapjack.WordRegImm.imm 1#64)))

def word347_1_550 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_238 word347_1_549

def word347_1_551 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_548 word347_1_550

def word347_1_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 56)]

def word347_1_553 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_551 word347_1_552

def word347_1_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 22)]

def word347_1_555 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_553 word347_1_554

def word347_1_556 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 0#64)

def word347_1_557 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_555 word347_1_556

def word347_1_558 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_299 word347_1_4

def word347_1_559 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1#64)

def word347_1_560 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_558 word347_1_559

def word347_1_561 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 30)]

def word347_1_562 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_560 word347_1_561

def word347_1_563 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 58)]

def word347_1_564 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_562 word347_1_563

def word347_1_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def word347_1_566 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 34)) (some 343) ([36, 24]) (some (36, word347_1_565, 347, 35))

def word347_1_567 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_564 word347_1_566

def word347_1_568 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_567 word347_1_4

def word347_1_569 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 56)]

def word347_1_570 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_568 word347_1_569

def word347_1_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 10)]

def word347_1_572 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_570 word347_1_571

def word347_1_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word347_1_574 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 36)) (some 344) ([52, 18]) (some (52, word347_1_573, 347, 37))

def word347_1_575 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_572 word347_1_574

def word347_1_576 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_575 word347_1_4

def word347_1_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 52 59 (Flapjack.WordRegImm.imm 208#64)))

def word347_1_578 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_577

def word347_1_579 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_576 word347_1_578

def word347_1_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 36)]

def word347_1_581 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_579 word347_1_580

def word347_1_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 18)]

def word347_1_583 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_581 word347_1_582

def word347_1_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 52)]

def word347_1_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 44 (Flapjack.WordLangAddr.addr 59 0#64))

def word347_1_586 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_584 word347_1_585

def word347_1_587 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_583 word347_1_586

def word347_1_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 52 59 (Flapjack.WordRegImm.imm 216#64)))

def word347_1_589 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_588

def word347_1_590 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_587 word347_1_589

def word347_1_591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 24)]

def word347_1_592 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_590 word347_1_591

def word347_1_593 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_592 word347_1_582

def word347_1_594 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_593 word347_1_586

def word347_1_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 52 59 (Flapjack.WordRegImm.imm 1#64)))

def word347_1_596 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_238 word347_1_595

def word347_1_597 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_594 word347_1_596

def word347_1_598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 52)]

def word347_1_599 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_597 word347_1_598

def word347_1_600 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_323 word347_1_4

def word347_1_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def word347_1_602 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_600 word347_1_601

def word347_1_603 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 36) word347_1_599 word347_1_602

def word347_1_604 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_557 word347_1_603

def word347_1_605 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_604 word347_1_4

def word347_1_606 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_605 word347_1_554

def word347_1_607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 3#64)

def word347_1_608 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_606 word347_1_607

def word347_1_609 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_560 word347_1_523

def word347_1_610 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_609 word347_1_525

def word347_1_611 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 32#64)

def word347_1_612 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_610 word347_1_611

def word347_1_613 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_612 word347_1_611

def word347_1_614 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_613 word347_1_611

def word347_1_615 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 38)) (some 338) ([56, 10, 36]) (some (56, word347_1_527, 347, 39))

def word347_1_616 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_614 word347_1_615

def word347_1_617 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_616 word347_1_4

def word347_1_618 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 56 59 (Flapjack.WordRegImm.imm 224#64)))

def word347_1_619 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_618

def word347_1_620 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_617 word347_1_619

def word347_1_621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 32)]

def word347_1_622 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_620 word347_1_621

def word347_1_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 20)]

def word347_1_624 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_622 word347_1_623

def word347_1_625 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 48)]

def word347_1_626 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_624 word347_1_625

def word347_1_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 14)]

def word347_1_628 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_626 word347_1_627

def word347_1_629 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_628 word347_1_571

def word347_1_630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 59 0#64))

def word347_1_631 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_538 word347_1_630

def word347_1_632 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_629 word347_1_631

def word347_1_633 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_632 word347_1_580

def word347_1_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 59 8#64))

def word347_1_635 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_538 word347_1_634

def word347_1_636 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_633 word347_1_635

def word347_1_637 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_636 word347_1_591

def word347_1_638 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 59 16#64))

def word347_1_639 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_538 word347_1_638

def word347_1_640 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_637 word347_1_639

def word347_1_641 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 52)]

def word347_1_642 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_640 word347_1_641

def word347_1_643 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 59 24#64))

def word347_1_644 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_538 word347_1_643

def word347_1_645 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_642 word347_1_644

def word347_1_646 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_645 word347_1_561

def word347_1_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24 59 (Flapjack.WordRegImm.imm 1#64)))

def word347_1_648 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_238 word347_1_647

def word347_1_649 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_646 word347_1_648

def word347_1_650 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 40)) (some 343) ([36, 24]) (some (36, word347_1_565, 347, 41))

def word347_1_651 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_649 word347_1_650

def word347_1_652 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_651 word347_1_4

def word347_1_653 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_652 word347_1_569

def word347_1_654 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_653 word347_1_571

def word347_1_655 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 42)) (some 345) ([52, 18]) (some (52, word347_1_573, 347, 43))

def word347_1_656 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_654 word347_1_655

def word347_1_657 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_656 word347_1_4

def word347_1_658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 52 59 (Flapjack.WordRegImm.imm 256#64)))

def word347_1_659 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_658

def word347_1_660 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_657 word347_1_659

def word347_1_661 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_660 word347_1_580

def word347_1_662 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_661 word347_1_582

def word347_1_663 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_662 word347_1_586

def word347_1_664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 52 59 (Flapjack.WordRegImm.imm 264#64)))

def word347_1_665 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_664

def word347_1_666 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_663 word347_1_665

def word347_1_667 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_666 word347_1_591

def word347_1_668 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_667 word347_1_582

def word347_1_669 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_668 word347_1_586

def word347_1_670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 52 59 (Flapjack.WordRegImm.imm 2#64)))

def word347_1_671 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_238 word347_1_670

def word347_1_672 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_669 word347_1_671

def word347_1_673 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_672 word347_1_598

def word347_1_674 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 36) word347_1_673 word347_1_602

def word347_1_675 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_608 word347_1_674

def word347_1_676 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_675 word347_1_4

def word347_1_677 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_676 word347_1_554

def word347_1_678 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 4#64)

def word347_1_679 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_677 word347_1_678

def word347_1_680 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 44)) (some 343) ([36, 24]) (some (36, word347_1_565, 347, 45))

def word347_1_681 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_564 word347_1_680

def word347_1_682 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_681 word347_1_4

def word347_1_683 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_682 word347_1_569

def word347_1_684 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_683 word347_1_571

def word347_1_685 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 46)) (some 346) ([52, 18]) (some (52, word347_1_573, 347, 47))

def word347_1_686 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_684 word347_1_685

def word347_1_687 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_686 word347_1_4

def word347_1_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 52 59 (Flapjack.WordRegImm.imm 272#64)))

def word347_1_689 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_688

def word347_1_690 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_687 word347_1_689

def word347_1_691 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_690 word347_1_580

def word347_1_692 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_691 word347_1_582

def word347_1_693 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_692 word347_1_586

def word347_1_694 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 52 59 (Flapjack.WordRegImm.imm 280#64)))

def word347_1_695 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_694

def word347_1_696 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_693 word347_1_695

def word347_1_697 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_696 word347_1_591

def word347_1_698 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_697 word347_1_582

def word347_1_699 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_698 word347_1_586

def word347_1_700 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_699 word347_1_596

def word347_1_701 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_700 word347_1_598

def word347_1_702 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 36) word347_1_701 word347_1_602

def word347_1_703 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_679 word347_1_702

def word347_1_704 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_703 word347_1_4

def word347_1_705 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_704 word347_1_523

def word347_1_706 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_705 word347_1_525

def word347_1_707 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_706 word347_1_611

def word347_1_708 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 48)) (some 338) ([56, 10, 36]) (some (56, word347_1_527, 347, 49))

def word347_1_709 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_611 word347_1_708

def word347_1_710 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_707 word347_1_709

def word347_1_711 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_710 word347_1_4

def word347_1_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 56 59 (Flapjack.WordRegImm.imm 288#64)))

def word347_1_713 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_712

def word347_1_714 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_711 word347_1_713

def word347_1_715 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_714 word347_1_621

def word347_1_716 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_715 word347_1_623

def word347_1_717 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_716 word347_1_625

def word347_1_718 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_717 word347_1_627

def word347_1_719 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_718 word347_1_571

def word347_1_720 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_719 word347_1_631

def word347_1_721 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_720 word347_1_580

def word347_1_722 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_721 word347_1_635

def word347_1_723 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_722 word347_1_591

def word347_1_724 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_723 word347_1_639

def word347_1_725 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_724 word347_1_641

def word347_1_726 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_725 word347_1_644

def word347_1_727 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_726 word347_1_523

def word347_1_728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 59 (Flapjack.WordRegImm.imm 1#64)))

def word347_1_729 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_238 word347_1_728

def word347_1_730 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_727 word347_1_729

def word347_1_731 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_730 word347_1_611

def word347_1_732 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 50)) (some 338) ([56, 10, 36]) (some (56, word347_1_527, 347, 51))

def word347_1_733 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_611 word347_1_732

def word347_1_734 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_731 word347_1_733

def word347_1_735 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_734 word347_1_4

def word347_1_736 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 56 59 (Flapjack.WordRegImm.imm 320#64)))

def word347_1_737 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_736

def word347_1_738 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_735 word347_1_737

def word347_1_739 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_738 word347_1_621

def word347_1_740 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_739 word347_1_623

def word347_1_741 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_740 word347_1_625

def word347_1_742 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_741 word347_1_627

def word347_1_743 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_742 word347_1_571

def word347_1_744 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_743 word347_1_631

def word347_1_745 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_744 word347_1_580

def word347_1_746 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_745 word347_1_635

def word347_1_747 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_746 word347_1_591

def word347_1_748 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_747 word347_1_639

def word347_1_749 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_748 word347_1_641

def word347_1_750 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_749 word347_1_644

def word347_1_751 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_750 word347_1_523

def word347_1_752 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 59 (Flapjack.WordRegImm.imm 2#64)))

def word347_1_753 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_238 word347_1_752

def word347_1_754 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_751 word347_1_753

def word347_1_755 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_754 word347_1_611

def word347_1_756 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20, 48, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_1_18, 347, 52)) (some 338) ([56, 10, 36]) (some (56, word347_1_527, 347, 53))

def word347_1_757 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_611 word347_1_756

def word347_1_758 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_755 word347_1_757

def word347_1_759 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_758 word347_1_4

def word347_1_760 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 56 59 (Flapjack.WordRegImm.imm 352#64)))

def word347_1_761 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_49 word347_1_760

def word347_1_762 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_759 word347_1_761

def word347_1_763 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_762 word347_1_621

def word347_1_764 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_763 word347_1_623

def word347_1_765 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_764 word347_1_625

def word347_1_766 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_765 word347_1_627

def word347_1_767 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_766 word347_1_571

def word347_1_768 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_767 word347_1_631

def word347_1_769 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_768 word347_1_580

def word347_1_770 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_769 word347_1_635

def word347_1_771 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_770 word347_1_591

def word347_1_772 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_771 word347_1_639

def word347_1_773 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_772 word347_1_641

def word347_1_774 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_773 word347_1_644

def word347_1_775 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 38)]

def word347_1_776 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_774 word347_1_775

def word347_1_777 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [56]

def word347_1_778 : WordLangProgHOL (BitVec 64) :=
.seq word347_1_776 word347_1_777

def pass347_1 : WordLangProgHOL (BitVec 64) :=
word347_1_778
theorem pass347_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass347_0) + 1) (pass347_0) = pass347_1 := by
  kernel_rfl
#print axioms pass347_1_eq
end InitECandidate.Proofs.WordStages
