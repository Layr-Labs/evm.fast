import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw171
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody171_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody171_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody171_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def AllocBody171_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_7 : StackLang.HolProg 64 :=
.seq AllocBody171_5 AllocBody171_6

def AllocBody171_8 : StackLang.HolProg 64 :=
.seq AllocBody171_4 AllocBody171_7

def AllocBody171_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody171_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_12 : StackLang.HolProg 64 :=
.seq AllocBody171_10 AllocBody171_11

def AllocBody171_13 : StackLang.HolProg 64 :=
.seq AllocBody171_9 AllocBody171_12

def AllocBody171_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody171_8 AllocBody171_13

def AllocBody171_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody171_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody171_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody171_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_23 : StackLang.HolProg 64 :=
.seq AllocBody171_21 AllocBody171_22

def AllocBody171_24 : StackLang.HolProg 64 :=
.seq AllocBody171_20 AllocBody171_23

def AllocBody171_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody171_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_28 : StackLang.HolProg 64 :=
.seq AllocBody171_26 AllocBody171_27

def AllocBody171_29 : StackLang.HolProg 64 :=
.seq AllocBody171_25 AllocBody171_28

def AllocBody171_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody171_24 AllocBody171_29

def AllocBody171_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody171_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 21#64)

def AllocBody171_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody171_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody171_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody171_38 : StackLang.HolProg 64 :=
.seq AllocBody171_36 AllocBody171_37

def AllocBody171_39 : StackLang.HolProg 64 :=
.seq AllocBody171_35 AllocBody171_38

def AllocBody171_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 192#64)

def AllocBody171_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody171_43 : StackLang.HolProg 64 :=
.seq AllocBody171_41 AllocBody171_42

def AllocBody171_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody171_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody171_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody171_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 171 3

def AllocBody171_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody171_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody171_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody171_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody171_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody171_54 : StackLang.HolProg 64 :=
.seq AllocBody171_52 AllocBody171_53

def AllocBody171_55 : StackLang.HolProg 64 :=
.seq AllocBody171_51 AllocBody171_54

def AllocBody171_56 : StackLang.HolProg 64 :=
.seq AllocBody171_50 AllocBody171_55

def AllocBody171_57 : StackLang.HolProg 64 :=
.seq AllocBody171_49 AllocBody171_56

def AllocBody171_58 : StackLang.HolProg 64 :=
.seq AllocBody171_48 AllocBody171_57

def AllocBody171_59 : StackLang.HolProg 64 :=
.seq AllocBody171_47 AllocBody171_58

def AllocBody171_60 : StackLang.HolProg 64 :=
.seq AllocBody171_46 AllocBody171_59

def AllocBody171_61 : StackLang.HolProg 64 :=
.seq AllocBody171_45 AllocBody171_60

def AllocBody171_62 : StackLang.HolProg 64 :=
.seq AllocBody171_44 AllocBody171_61

def AllocBody171_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody171_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody171_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody171_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody171_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody171_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody171_71 : StackLang.HolProg 64 :=
.seq AllocBody171_69 AllocBody171_70

def AllocBody171_72 : StackLang.HolProg 64 :=
.seq AllocBody171_68 AllocBody171_71

def AllocBody171_73 : StackLang.HolProg 64 :=
.seq AllocBody171_67 AllocBody171_72

def AllocBody171_74 : StackLang.HolProg 64 :=
.seq AllocBody171_66 AllocBody171_73

def AllocBody171_75 : StackLang.HolProg 64 :=
.seq AllocBody171_65 AllocBody171_74

def AllocBody171_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody171_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody171_78 : StackLang.HolProg 64 :=
.seq AllocBody171_76 AllocBody171_77

def AllocBody171_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody171_80 : StackLang.HolProg 64 :=
.seq AllocBody171_78 AllocBody171_79

def AllocBody171_81 : StackLang.HolProg 64 :=
.call (some (AllocBody171_75, 0, 171, 2)) (Sum.inl 159) (some (AllocBody171_80, 171, 3))

def AllocBody171_82 : StackLang.HolProg 64 :=
.seq AllocBody171_64 AllocBody171_81

def AllocBody171_83 : StackLang.HolProg 64 :=
.seq AllocBody171_63 AllocBody171_82

def AllocBody171_84 : StackLang.HolProg 64 :=
.seq AllocBody171_62 AllocBody171_83

def AllocBody171_85 : StackLang.HolProg 64 :=
.seq AllocBody171_43 AllocBody171_84

def AllocBody171_86 : StackLang.HolProg 64 :=
.seq AllocBody171_40 AllocBody171_85

def AllocBody171_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_89 : StackLang.HolProg 64 :=
.seq AllocBody171_87 AllocBody171_88

def AllocBody171_90 : StackLang.HolProg 64 :=
.seq AllocBody171_86 AllocBody171_89

def AllocBody171_91 : StackLang.HolProg 64 :=
.seq AllocBody171_39 AllocBody171_90

def AllocBody171_92 : StackLang.HolProg 64 :=
.seq AllocBody171_34 AllocBody171_91

def AllocBody171_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody171_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody171_92 AllocBody171_93

def AllocBody171_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody171_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody171_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_101 : StackLang.HolProg 64 :=
.seq AllocBody171_99 AllocBody171_100

def AllocBody171_102 : StackLang.HolProg 64 :=
.seq AllocBody171_98 AllocBody171_101

def AllocBody171_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody171_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_106 : StackLang.HolProg 64 :=
.seq AllocBody171_104 AllocBody171_105

def AllocBody171_107 : StackLang.HolProg 64 :=
.seq AllocBody171_103 AllocBody171_106

def AllocBody171_108 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody171_102 AllocBody171_107

def AllocBody171_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody171_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_114 : StackLang.HolProg 64 :=
.seq AllocBody171_112 AllocBody171_113

def AllocBody171_115 : StackLang.HolProg 64 :=
.seq AllocBody171_111 AllocBody171_114

def AllocBody171_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody171_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_119 : StackLang.HolProg 64 :=
.seq AllocBody171_117 AllocBody171_118

def AllocBody171_120 : StackLang.HolProg 64 :=
.seq AllocBody171_116 AllocBody171_119

def AllocBody171_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody171_115 AllocBody171_120

def AllocBody171_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody171_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 22#64)

def AllocBody171_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 193#64)

def AllocBody171_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody171_130 : StackLang.HolProg 64 :=
.seq AllocBody171_128 AllocBody171_129

def AllocBody171_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody171_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody171_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody171_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 171 5

def AllocBody171_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody171_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody171_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody171_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody171_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody171_141 : StackLang.HolProg 64 :=
.seq AllocBody171_139 AllocBody171_140

def AllocBody171_142 : StackLang.HolProg 64 :=
.seq AllocBody171_138 AllocBody171_141

def AllocBody171_143 : StackLang.HolProg 64 :=
.seq AllocBody171_137 AllocBody171_142

def AllocBody171_144 : StackLang.HolProg 64 :=
.seq AllocBody171_136 AllocBody171_143

def AllocBody171_145 : StackLang.HolProg 64 :=
.seq AllocBody171_135 AllocBody171_144

def AllocBody171_146 : StackLang.HolProg 64 :=
.seq AllocBody171_134 AllocBody171_145

def AllocBody171_147 : StackLang.HolProg 64 :=
.seq AllocBody171_133 AllocBody171_146

def AllocBody171_148 : StackLang.HolProg 64 :=
.seq AllocBody171_132 AllocBody171_147

def AllocBody171_149 : StackLang.HolProg 64 :=
.seq AllocBody171_131 AllocBody171_148

def AllocBody171_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody171_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody171_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody171_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody171_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody171_157 : StackLang.HolProg 64 :=
.seq AllocBody171_155 AllocBody171_156

def AllocBody171_158 : StackLang.HolProg 64 :=
.seq AllocBody171_154 AllocBody171_157

def AllocBody171_159 : StackLang.HolProg 64 :=
.seq AllocBody171_153 AllocBody171_158

def AllocBody171_160 : StackLang.HolProg 64 :=
.seq AllocBody171_152 AllocBody171_159

def AllocBody171_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody171_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody171_163 : StackLang.HolProg 64 :=
.seq AllocBody171_161 AllocBody171_162

def AllocBody171_164 : StackLang.HolProg 64 :=
.call (some (AllocBody171_160, 0, 171, 4)) (Sum.inl 159) (some (AllocBody171_163, 171, 5))

def AllocBody171_165 : StackLang.HolProg 64 :=
.seq AllocBody171_151 AllocBody171_164

def AllocBody171_166 : StackLang.HolProg 64 :=
.seq AllocBody171_150 AllocBody171_165

def AllocBody171_167 : StackLang.HolProg 64 :=
.seq AllocBody171_149 AllocBody171_166

def AllocBody171_168 : StackLang.HolProg 64 :=
.seq AllocBody171_130 AllocBody171_167

def AllocBody171_169 : StackLang.HolProg 64 :=
.seq AllocBody171_127 AllocBody171_168

def AllocBody171_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_172 : StackLang.HolProg 64 :=
.seq AllocBody171_170 AllocBody171_171

def AllocBody171_173 : StackLang.HolProg 64 :=
.seq AllocBody171_169 AllocBody171_172

def AllocBody171_174 : StackLang.HolProg 64 :=
.seq AllocBody171_126 AllocBody171_173

def AllocBody171_175 : StackLang.HolProg 64 :=
.seq AllocBody171_125 AllocBody171_174

def AllocBody171_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody171_177 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody171_175 AllocBody171_176

def AllocBody171_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody171_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody171_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody171_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody171_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody171_183 : StackLang.HolProg 64 :=
.seq AllocBody171_181 AllocBody171_182

def AllocBody171_184 : StackLang.HolProg 64 :=
.seq AllocBody171_180 AllocBody171_183

def AllocBody171_185 : StackLang.HolProg 64 :=
.seq AllocBody171_179 AllocBody171_184

def AllocBody171_186 : StackLang.HolProg 64 :=
.seq AllocBody171_178 AllocBody171_185

def AllocBody171_187 : StackLang.HolProg 64 :=
.seq AllocBody171_177 AllocBody171_186

def AllocBody171_188 : StackLang.HolProg 64 :=
.seq AllocBody171_124 AllocBody171_187

def AllocBody171_189 : StackLang.HolProg 64 :=
.seq AllocBody171_123 AllocBody171_188

def AllocBody171_190 : StackLang.HolProg 64 :=
.seq AllocBody171_122 AllocBody171_189

def AllocBody171_191 : StackLang.HolProg 64 :=
.seq AllocBody171_121 AllocBody171_190

def AllocBody171_192 : StackLang.HolProg 64 :=
.seq AllocBody171_110 AllocBody171_191

def AllocBody171_193 : StackLang.HolProg 64 :=
.seq AllocBody171_109 AllocBody171_192

def AllocBody171_194 : StackLang.HolProg 64 :=
.seq AllocBody171_108 AllocBody171_193

def AllocBody171_195 : StackLang.HolProg 64 :=
.seq AllocBody171_97 AllocBody171_194

def AllocBody171_196 : StackLang.HolProg 64 :=
.seq AllocBody171_96 AllocBody171_195

def AllocBody171_197 : StackLang.HolProg 64 :=
.seq AllocBody171_95 AllocBody171_196

def AllocBody171_198 : StackLang.HolProg 64 :=
.seq AllocBody171_94 AllocBody171_197

def AllocBody171_199 : StackLang.HolProg 64 :=
.seq AllocBody171_33 AllocBody171_198

def AllocBody171_200 : StackLang.HolProg 64 :=
.seq AllocBody171_32 AllocBody171_199

def AllocBody171_201 : StackLang.HolProg 64 :=
.seq AllocBody171_31 AllocBody171_200

def AllocBody171_202 : StackLang.HolProg 64 :=
.seq AllocBody171_30 AllocBody171_201

def AllocBody171_203 : StackLang.HolProg 64 :=
.seq AllocBody171_19 AllocBody171_202

def AllocBody171_204 : StackLang.HolProg 64 :=
.seq AllocBody171_18 AllocBody171_203

def AllocBody171_205 : StackLang.HolProg 64 :=
.seq AllocBody171_17 AllocBody171_204

def AllocBody171_206 : StackLang.HolProg 64 :=
.seq AllocBody171_16 AllocBody171_205

def AllocBody171_207 : StackLang.HolProg 64 :=
.seq AllocBody171_15 AllocBody171_206

def AllocBody171_208 : StackLang.HolProg 64 :=
.seq AllocBody171_14 AllocBody171_207

def AllocBody171_209 : StackLang.HolProg 64 :=
.seq AllocBody171_3 AllocBody171_208

def AllocBody171_210 : StackLang.HolProg 64 :=
.seq AllocBody171_2 AllocBody171_209

def AllocBody171_211 : StackLang.HolProg 64 :=
.seq AllocBody171_1 AllocBody171_210

def AllocBody171_212 : StackLang.HolProg 64 :=
.seq AllocBody171_0 AllocBody171_211

def Alloc171 : Nat × StackLang.HolProg 64 := (171, AllocBody171_212)
theorem Alloc171_eq : StackAlloc.progComp (171, raw171) = Alloc171 := by
  kernel_rfl
#print axioms Alloc171_eq
end InitECandidate.Proofs.BackendStages
