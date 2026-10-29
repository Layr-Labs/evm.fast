import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw829
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody829_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody829_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 18#64)

def AllocBody829_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody829_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody829_5 : StackLang.HolProg 64 :=
.seq AllocBody829_3 AllocBody829_4

def AllocBody829_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4121#64)

def AllocBody829_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody829_9 : StackLang.HolProg 64 :=
.seq AllocBody829_7 AllocBody829_8

def AllocBody829_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody829_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody829_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody829_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 829 3

def AllocBody829_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody829_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody829_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody829_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody829_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody829_20 : StackLang.HolProg 64 :=
.seq AllocBody829_18 AllocBody829_19

def AllocBody829_21 : StackLang.HolProg 64 :=
.seq AllocBody829_17 AllocBody829_20

def AllocBody829_22 : StackLang.HolProg 64 :=
.seq AllocBody829_16 AllocBody829_21

def AllocBody829_23 : StackLang.HolProg 64 :=
.seq AllocBody829_15 AllocBody829_22

def AllocBody829_24 : StackLang.HolProg 64 :=
.seq AllocBody829_14 AllocBody829_23

def AllocBody829_25 : StackLang.HolProg 64 :=
.seq AllocBody829_13 AllocBody829_24

def AllocBody829_26 : StackLang.HolProg 64 :=
.seq AllocBody829_12 AllocBody829_25

def AllocBody829_27 : StackLang.HolProg 64 :=
.seq AllocBody829_11 AllocBody829_26

def AllocBody829_28 : StackLang.HolProg 64 :=
.seq AllocBody829_10 AllocBody829_27

def AllocBody829_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody829_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody829_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody829_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody829_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody829_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody829_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody829_38 : StackLang.HolProg 64 :=
.seq AllocBody829_36 AllocBody829_37

def AllocBody829_39 : StackLang.HolProg 64 :=
.seq AllocBody829_35 AllocBody829_38

def AllocBody829_40 : StackLang.HolProg 64 :=
.seq AllocBody829_34 AllocBody829_39

def AllocBody829_41 : StackLang.HolProg 64 :=
.seq AllocBody829_33 AllocBody829_40

def AllocBody829_42 : StackLang.HolProg 64 :=
.seq AllocBody829_32 AllocBody829_41

def AllocBody829_43 : StackLang.HolProg 64 :=
.seq AllocBody829_31 AllocBody829_42

def AllocBody829_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody829_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody829_46 : StackLang.HolProg 64 :=
.seq AllocBody829_44 AllocBody829_45

def AllocBody829_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody829_48 : StackLang.HolProg 64 :=
.seq AllocBody829_46 AllocBody829_47

def AllocBody829_49 : StackLang.HolProg 64 :=
.call (some (AllocBody829_43, 0, 829, 2)) (Sum.inl 80) (some (AllocBody829_48, 829, 3))

def AllocBody829_50 : StackLang.HolProg 64 :=
.seq AllocBody829_30 AllocBody829_49

def AllocBody829_51 : StackLang.HolProg 64 :=
.seq AllocBody829_29 AllocBody829_50

def AllocBody829_52 : StackLang.HolProg 64 :=
.seq AllocBody829_28 AllocBody829_51

def AllocBody829_53 : StackLang.HolProg 64 :=
.seq AllocBody829_9 AllocBody829_52

def AllocBody829_54 : StackLang.HolProg 64 :=
.seq AllocBody829_6 AllocBody829_53

def AllocBody829_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody829_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody829_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody829_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody829_63 : StackLang.HolProg 64 :=
.seq AllocBody829_61 AllocBody829_62

def AllocBody829_64 : StackLang.HolProg 64 :=
.seq AllocBody829_60 AllocBody829_63

def AllocBody829_65 : StackLang.HolProg 64 :=
.seq AllocBody829_59 AllocBody829_64

def AllocBody829_66 : StackLang.HolProg 64 :=
.seq AllocBody829_58 AllocBody829_65

def AllocBody829_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody829_66 AllocBody829_67

def AllocBody829_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18#64)))

def AllocBody829_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody829_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 19#64)))

def AllocBody829_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody829_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody829_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody829_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18#64)

def AllocBody829_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody829_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody829_87 : StackLang.HolProg 64 :=
.seq AllocBody829_85 AllocBody829_86

def AllocBody829_88 : StackLang.HolProg 64 :=
.seq AllocBody829_84 AllocBody829_87

def AllocBody829_89 : StackLang.HolProg 64 :=
.seq AllocBody829_83 AllocBody829_88

def AllocBody829_90 : StackLang.HolProg 64 :=
.seq AllocBody829_82 AllocBody829_89

def AllocBody829_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody829_90 AllocBody829_91

def AllocBody829_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody829_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody829_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody829_99 : StackLang.HolProg 64 :=
.seq AllocBody829_97 AllocBody829_98

def AllocBody829_100 : StackLang.HolProg 64 :=
.seq AllocBody829_96 AllocBody829_99

def AllocBody829_101 : StackLang.HolProg 64 :=
.seq AllocBody829_95 AllocBody829_100

def AllocBody829_102 : StackLang.HolProg 64 :=
.seq AllocBody829_94 AllocBody829_101

def AllocBody829_103 : StackLang.HolProg 64 :=
.seq AllocBody829_93 AllocBody829_102

def AllocBody829_104 : StackLang.HolProg 64 :=
.seq AllocBody829_92 AllocBody829_103

def AllocBody829_105 : StackLang.HolProg 64 :=
.seq AllocBody829_81 AllocBody829_104

def AllocBody829_106 : StackLang.HolProg 64 :=
.seq AllocBody829_80 AllocBody829_105

def AllocBody829_107 : StackLang.HolProg 64 :=
.seq AllocBody829_79 AllocBody829_106

def AllocBody829_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody829_109 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody829_107 AllocBody829_108

def AllocBody829_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody829_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody829_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody829_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody829_119 : StackLang.HolProg 64 :=
.seq AllocBody829_117 AllocBody829_118

def AllocBody829_120 : StackLang.HolProg 64 :=
.seq AllocBody829_116 AllocBody829_119

def AllocBody829_121 : StackLang.HolProg 64 :=
.seq AllocBody829_115 AllocBody829_120

def AllocBody829_122 : StackLang.HolProg 64 :=
.seq AllocBody829_114 AllocBody829_121

def AllocBody829_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody829_122 AllocBody829_123

def AllocBody829_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody829_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody829_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_132 : StackLang.HolProg 64 :=
.seq AllocBody829_130 AllocBody829_131

def AllocBody829_133 : StackLang.HolProg 64 :=
.seq AllocBody829_129 AllocBody829_132

def AllocBody829_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody829_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_137 : StackLang.HolProg 64 :=
.seq AllocBody829_135 AllocBody829_136

def AllocBody829_138 : StackLang.HolProg 64 :=
.seq AllocBody829_134 AllocBody829_137

def AllocBody829_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody829_133 AllocBody829_138

def AllocBody829_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 17#64)

def AllocBody829_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody829_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_146 : StackLang.HolProg 64 :=
.seq AllocBody829_144 AllocBody829_145

def AllocBody829_147 : StackLang.HolProg 64 :=
.seq AllocBody829_143 AllocBody829_146

def AllocBody829_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody829_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_151 : StackLang.HolProg 64 :=
.seq AllocBody829_149 AllocBody829_150

def AllocBody829_152 : StackLang.HolProg 64 :=
.seq AllocBody829_148 AllocBody829_151

def AllocBody829_153 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody829_147 AllocBody829_152

def AllocBody829_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody829_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody829_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody829_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody829_160 : StackLang.HolProg 64 :=
.seq AllocBody829_158 AllocBody829_159

def AllocBody829_161 : StackLang.HolProg 64 :=
.seq AllocBody829_157 AllocBody829_160

def AllocBody829_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_163 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody829_161 AllocBody829_162

def AllocBody829_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody829_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody829_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody829_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody829_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody829_169 : StackLang.HolProg 64 :=
.seq AllocBody829_167 AllocBody829_168

def AllocBody829_170 : StackLang.HolProg 64 :=
.seq AllocBody829_166 AllocBody829_169

def AllocBody829_171 : StackLang.HolProg 64 :=
.seq AllocBody829_165 AllocBody829_170

def AllocBody829_172 : StackLang.HolProg 64 :=
.seq AllocBody829_164 AllocBody829_171

def AllocBody829_173 : StackLang.HolProg 64 :=
.seq AllocBody829_163 AllocBody829_172

def AllocBody829_174 : StackLang.HolProg 64 :=
.seq AllocBody829_156 AllocBody829_173

def AllocBody829_175 : StackLang.HolProg 64 :=
.seq AllocBody829_155 AllocBody829_174

def AllocBody829_176 : StackLang.HolProg 64 :=
.seq AllocBody829_154 AllocBody829_175

def AllocBody829_177 : StackLang.HolProg 64 :=
.seq AllocBody829_153 AllocBody829_176

def AllocBody829_178 : StackLang.HolProg 64 :=
.seq AllocBody829_142 AllocBody829_177

def AllocBody829_179 : StackLang.HolProg 64 :=
.seq AllocBody829_141 AllocBody829_178

def AllocBody829_180 : StackLang.HolProg 64 :=
.seq AllocBody829_140 AllocBody829_179

def AllocBody829_181 : StackLang.HolProg 64 :=
.seq AllocBody829_139 AllocBody829_180

def AllocBody829_182 : StackLang.HolProg 64 :=
.seq AllocBody829_128 AllocBody829_181

def AllocBody829_183 : StackLang.HolProg 64 :=
.seq AllocBody829_127 AllocBody829_182

def AllocBody829_184 : StackLang.HolProg 64 :=
.seq AllocBody829_126 AllocBody829_183

def AllocBody829_185 : StackLang.HolProg 64 :=
.seq AllocBody829_125 AllocBody829_184

def AllocBody829_186 : StackLang.HolProg 64 :=
.seq AllocBody829_124 AllocBody829_185

def AllocBody829_187 : StackLang.HolProg 64 :=
.seq AllocBody829_113 AllocBody829_186

def AllocBody829_188 : StackLang.HolProg 64 :=
.seq AllocBody829_112 AllocBody829_187

def AllocBody829_189 : StackLang.HolProg 64 :=
.seq AllocBody829_111 AllocBody829_188

def AllocBody829_190 : StackLang.HolProg 64 :=
.seq AllocBody829_110 AllocBody829_189

def AllocBody829_191 : StackLang.HolProg 64 :=
.seq AllocBody829_109 AllocBody829_190

def AllocBody829_192 : StackLang.HolProg 64 :=
.seq AllocBody829_78 AllocBody829_191

def AllocBody829_193 : StackLang.HolProg 64 :=
.seq AllocBody829_77 AllocBody829_192

def AllocBody829_194 : StackLang.HolProg 64 :=
.seq AllocBody829_76 AllocBody829_193

def AllocBody829_195 : StackLang.HolProg 64 :=
.seq AllocBody829_75 AllocBody829_194

def AllocBody829_196 : StackLang.HolProg 64 :=
.seq AllocBody829_74 AllocBody829_195

def AllocBody829_197 : StackLang.HolProg 64 :=
.seq AllocBody829_73 AllocBody829_196

def AllocBody829_198 : StackLang.HolProg 64 :=
.seq AllocBody829_72 AllocBody829_197

def AllocBody829_199 : StackLang.HolProg 64 :=
.seq AllocBody829_71 AllocBody829_198

def AllocBody829_200 : StackLang.HolProg 64 :=
.seq AllocBody829_70 AllocBody829_199

def AllocBody829_201 : StackLang.HolProg 64 :=
.seq AllocBody829_69 AllocBody829_200

def AllocBody829_202 : StackLang.HolProg 64 :=
.seq AllocBody829_68 AllocBody829_201

def AllocBody829_203 : StackLang.HolProg 64 :=
.seq AllocBody829_57 AllocBody829_202

def AllocBody829_204 : StackLang.HolProg 64 :=
.seq AllocBody829_56 AllocBody829_203

def AllocBody829_205 : StackLang.HolProg 64 :=
.seq AllocBody829_55 AllocBody829_204

def AllocBody829_206 : StackLang.HolProg 64 :=
.seq AllocBody829_54 AllocBody829_205

def AllocBody829_207 : StackLang.HolProg 64 :=
.seq AllocBody829_5 AllocBody829_206

def AllocBody829_208 : StackLang.HolProg 64 :=
.seq AllocBody829_2 AllocBody829_207

def AllocBody829_209 : StackLang.HolProg 64 :=
.seq AllocBody829_1 AllocBody829_208

def AllocBody829_210 : StackLang.HolProg 64 :=
.seq AllocBody829_0 AllocBody829_209

def Alloc829 : Nat × StackLang.HolProg 64 := (829, AllocBody829_210)
theorem Alloc829_eq : StackAlloc.progComp (829, raw829) = Alloc829 := by
  kernel_rfl
#print axioms Alloc829_eq
end InitECandidate.Proofs.BackendStages
