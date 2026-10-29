import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw289
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody289_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody289_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody289_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody289_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody289_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def AllocBody289_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody289_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody289_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody289_8 : StackLang.HolProg 64 :=
.seq AllocBody289_6 AllocBody289_7

def AllocBody289_9 : StackLang.HolProg 64 :=
.seq AllocBody289_5 AllocBody289_8

def AllocBody289_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 790#64)

def AllocBody289_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody289_13 : StackLang.HolProg 64 :=
.seq AllocBody289_11 AllocBody289_12

def AllocBody289_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody289_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody289_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody289_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 289 3

def AllocBody289_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody289_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody289_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody289_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody289_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody289_24 : StackLang.HolProg 64 :=
.seq AllocBody289_22 AllocBody289_23

def AllocBody289_25 : StackLang.HolProg 64 :=
.seq AllocBody289_21 AllocBody289_24

def AllocBody289_26 : StackLang.HolProg 64 :=
.seq AllocBody289_20 AllocBody289_25

def AllocBody289_27 : StackLang.HolProg 64 :=
.seq AllocBody289_19 AllocBody289_26

def AllocBody289_28 : StackLang.HolProg 64 :=
.seq AllocBody289_18 AllocBody289_27

def AllocBody289_29 : StackLang.HolProg 64 :=
.seq AllocBody289_17 AllocBody289_28

def AllocBody289_30 : StackLang.HolProg 64 :=
.seq AllocBody289_16 AllocBody289_29

def AllocBody289_31 : StackLang.HolProg 64 :=
.seq AllocBody289_15 AllocBody289_30

def AllocBody289_32 : StackLang.HolProg 64 :=
.seq AllocBody289_14 AllocBody289_31

def AllocBody289_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody289_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody289_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody289_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody289_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody289_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody289_41 : StackLang.HolProg 64 :=
.seq AllocBody289_39 AllocBody289_40

def AllocBody289_42 : StackLang.HolProg 64 :=
.seq AllocBody289_38 AllocBody289_41

def AllocBody289_43 : StackLang.HolProg 64 :=
.seq AllocBody289_37 AllocBody289_42

def AllocBody289_44 : StackLang.HolProg 64 :=
.seq AllocBody289_36 AllocBody289_43

def AllocBody289_45 : StackLang.HolProg 64 :=
.seq AllocBody289_35 AllocBody289_44

def AllocBody289_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody289_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody289_48 : StackLang.HolProg 64 :=
.seq AllocBody289_46 AllocBody289_47

def AllocBody289_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody289_50 : StackLang.HolProg 64 :=
.seq AllocBody289_48 AllocBody289_49

def AllocBody289_51 : StackLang.HolProg 64 :=
.call (some (AllocBody289_45, 0, 289, 2)) (Sum.inl 286) (some (AllocBody289_50, 289, 3))

def AllocBody289_52 : StackLang.HolProg 64 :=
.seq AllocBody289_34 AllocBody289_51

def AllocBody289_53 : StackLang.HolProg 64 :=
.seq AllocBody289_33 AllocBody289_52

def AllocBody289_54 : StackLang.HolProg 64 :=
.seq AllocBody289_32 AllocBody289_53

def AllocBody289_55 : StackLang.HolProg 64 :=
.seq AllocBody289_13 AllocBody289_54

def AllocBody289_56 : StackLang.HolProg 64 :=
.seq AllocBody289_10 AllocBody289_55

def AllocBody289_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody289_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_59 : StackLang.HolProg 64 :=
.seq AllocBody289_57 AllocBody289_58

def AllocBody289_60 : StackLang.HolProg 64 :=
.seq AllocBody289_56 AllocBody289_59

def AllocBody289_61 : StackLang.HolProg 64 :=
.seq AllocBody289_9 AllocBody289_60

def AllocBody289_62 : StackLang.HolProg 64 :=
.seq AllocBody289_4 AllocBody289_61

def AllocBody289_63 : StackLang.HolProg 64 :=
.seq AllocBody289_3 AllocBody289_62

def AllocBody289_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody289_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody289_66 : StackLang.HolProg 64 :=
.seq AllocBody289_64 AllocBody289_65

def AllocBody289_67 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody289_63 AllocBody289_66

def AllocBody289_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody289_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody289_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody289_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody289_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody289_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody289_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody289_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody289_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody289_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody289_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody289_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def AllocBody289_85 : StackLang.HolProg 64 :=
.seq AllocBody289_83 AllocBody289_84

def AllocBody289_86 : StackLang.HolProg 64 :=
.seq AllocBody289_82 AllocBody289_85

def AllocBody289_87 : StackLang.HolProg 64 :=
.seq AllocBody289_81 AllocBody289_86

def AllocBody289_88 : StackLang.HolProg 64 :=
.seq AllocBody289_80 AllocBody289_87

def AllocBody289_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 791#64)

def AllocBody289_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody289_92 : StackLang.HolProg 64 :=
.seq AllocBody289_90 AllocBody289_91

def AllocBody289_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody289_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody289_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody289_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 289 5

def AllocBody289_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody289_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody289_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody289_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody289_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody289_103 : StackLang.HolProg 64 :=
.seq AllocBody289_101 AllocBody289_102

def AllocBody289_104 : StackLang.HolProg 64 :=
.seq AllocBody289_100 AllocBody289_103

def AllocBody289_105 : StackLang.HolProg 64 :=
.seq AllocBody289_99 AllocBody289_104

def AllocBody289_106 : StackLang.HolProg 64 :=
.seq AllocBody289_98 AllocBody289_105

def AllocBody289_107 : StackLang.HolProg 64 :=
.seq AllocBody289_97 AllocBody289_106

def AllocBody289_108 : StackLang.HolProg 64 :=
.seq AllocBody289_96 AllocBody289_107

def AllocBody289_109 : StackLang.HolProg 64 :=
.seq AllocBody289_95 AllocBody289_108

def AllocBody289_110 : StackLang.HolProg 64 :=
.seq AllocBody289_94 AllocBody289_109

def AllocBody289_111 : StackLang.HolProg 64 :=
.seq AllocBody289_93 AllocBody289_110

def AllocBody289_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody289_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody289_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody289_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody289_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody289_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody289_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody289_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody289_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody289_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody289_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody289_125 : StackLang.HolProg 64 :=
.seq AllocBody289_123 AllocBody289_124

def AllocBody289_126 : StackLang.HolProg 64 :=
.seq AllocBody289_122 AllocBody289_125

def AllocBody289_127 : StackLang.HolProg 64 :=
.seq AllocBody289_121 AllocBody289_126

def AllocBody289_128 : StackLang.HolProg 64 :=
.seq AllocBody289_120 AllocBody289_127

def AllocBody289_129 : StackLang.HolProg 64 :=
.seq AllocBody289_119 AllocBody289_128

def AllocBody289_130 : StackLang.HolProg 64 :=
.seq AllocBody289_118 AllocBody289_129

def AllocBody289_131 : StackLang.HolProg 64 :=
.seq AllocBody289_117 AllocBody289_130

def AllocBody289_132 : StackLang.HolProg 64 :=
.seq AllocBody289_116 AllocBody289_131

def AllocBody289_133 : StackLang.HolProg 64 :=
.seq AllocBody289_115 AllocBody289_132

def AllocBody289_134 : StackLang.HolProg 64 :=
.seq AllocBody289_114 AllocBody289_133

def AllocBody289_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody289_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody289_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody289_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody289_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody289_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody289_141 : StackLang.HolProg 64 :=
.seq AllocBody289_139 AllocBody289_140

def AllocBody289_142 : StackLang.HolProg 64 :=
.seq AllocBody289_138 AllocBody289_141

def AllocBody289_143 : StackLang.HolProg 64 :=
.seq AllocBody289_137 AllocBody289_142

def AllocBody289_144 : StackLang.HolProg 64 :=
.seq AllocBody289_136 AllocBody289_143

def AllocBody289_145 : StackLang.HolProg 64 :=
.seq AllocBody289_135 AllocBody289_144

def AllocBody289_146 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody289_147 : StackLang.HolProg 64 :=
.seq AllocBody289_145 AllocBody289_146

def AllocBody289_148 : StackLang.HolProg 64 :=
.call (some (AllocBody289_134, 0, 289, 4)) (Sum.inl 68) (some (AllocBody289_147, 289, 5))

def AllocBody289_149 : StackLang.HolProg 64 :=
.seq AllocBody289_113 AllocBody289_148

def AllocBody289_150 : StackLang.HolProg 64 :=
.seq AllocBody289_112 AllocBody289_149

def AllocBody289_151 : StackLang.HolProg 64 :=
.seq AllocBody289_111 AllocBody289_150

def AllocBody289_152 : StackLang.HolProg 64 :=
.seq AllocBody289_92 AllocBody289_151

def AllocBody289_153 : StackLang.HolProg 64 :=
.seq AllocBody289_89 AllocBody289_152

def AllocBody289_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody289_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody289_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody289_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody289_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def AllocBody289_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody289_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody289_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_164 : StackLang.HolProg 64 :=
.seq AllocBody289_162 AllocBody289_163

def AllocBody289_165 : StackLang.HolProg 64 :=
.seq AllocBody289_161 AllocBody289_164

def AllocBody289_166 : StackLang.HolProg 64 :=
.seq AllocBody289_160 AllocBody289_165

def AllocBody289_167 : StackLang.HolProg 64 :=
.seq AllocBody289_159 AllocBody289_166

def AllocBody289_168 : StackLang.HolProg 64 :=
.seq AllocBody289_158 AllocBody289_167

def AllocBody289_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody289_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_171 : StackLang.HolProg 64 :=
.seq AllocBody289_169 AllocBody289_170

def AllocBody289_172 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody289_168 AllocBody289_171

def AllocBody289_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody289_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody289_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody289_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody289_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody289_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody289_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody289_183 : StackLang.HolProg 64 :=
.seq AllocBody289_181 AllocBody289_182

def AllocBody289_184 : StackLang.HolProg 64 :=
.seq AllocBody289_180 AllocBody289_183

def AllocBody289_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 792#64)

def AllocBody289_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody289_188 : StackLang.HolProg 64 :=
.seq AllocBody289_186 AllocBody289_187

def AllocBody289_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody289_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody289_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody289_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 289 7

def AllocBody289_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody289_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody289_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody289_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody289_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody289_199 : StackLang.HolProg 64 :=
.seq AllocBody289_197 AllocBody289_198

def AllocBody289_200 : StackLang.HolProg 64 :=
.seq AllocBody289_196 AllocBody289_199

def AllocBody289_201 : StackLang.HolProg 64 :=
.seq AllocBody289_195 AllocBody289_200

def AllocBody289_202 : StackLang.HolProg 64 :=
.seq AllocBody289_194 AllocBody289_201

def AllocBody289_203 : StackLang.HolProg 64 :=
.seq AllocBody289_193 AllocBody289_202

def AllocBody289_204 : StackLang.HolProg 64 :=
.seq AllocBody289_192 AllocBody289_203

def AllocBody289_205 : StackLang.HolProg 64 :=
.seq AllocBody289_191 AllocBody289_204

def AllocBody289_206 : StackLang.HolProg 64 :=
.seq AllocBody289_190 AllocBody289_205

def AllocBody289_207 : StackLang.HolProg 64 :=
.seq AllocBody289_189 AllocBody289_206

def AllocBody289_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody289_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody289_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody289_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody289_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody289_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody289_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody289_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody289_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody289_219 : StackLang.HolProg 64 :=
.seq AllocBody289_217 AllocBody289_218

def AllocBody289_220 : StackLang.HolProg 64 :=
.seq AllocBody289_216 AllocBody289_219

def AllocBody289_221 : StackLang.HolProg 64 :=
.seq AllocBody289_215 AllocBody289_220

def AllocBody289_222 : StackLang.HolProg 64 :=
.seq AllocBody289_214 AllocBody289_221

def AllocBody289_223 : StackLang.HolProg 64 :=
.seq AllocBody289_213 AllocBody289_222

def AllocBody289_224 : StackLang.HolProg 64 :=
.seq AllocBody289_212 AllocBody289_223

def AllocBody289_225 : StackLang.HolProg 64 :=
.seq AllocBody289_211 AllocBody289_224

def AllocBody289_226 : StackLang.HolProg 64 :=
.seq AllocBody289_210 AllocBody289_225

def AllocBody289_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody289_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody289_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody289_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody289_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody289_232 : StackLang.HolProg 64 :=
.seq AllocBody289_230 AllocBody289_231

def AllocBody289_233 : StackLang.HolProg 64 :=
.seq AllocBody289_229 AllocBody289_232

def AllocBody289_234 : StackLang.HolProg 64 :=
.seq AllocBody289_228 AllocBody289_233

def AllocBody289_235 : StackLang.HolProg 64 :=
.seq AllocBody289_227 AllocBody289_234

def AllocBody289_236 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody289_237 : StackLang.HolProg 64 :=
.seq AllocBody289_235 AllocBody289_236

def AllocBody289_238 : StackLang.HolProg 64 :=
.call (some (AllocBody289_226, 0, 289, 6)) (Sum.inl 288) (some (AllocBody289_237, 289, 7))

def AllocBody289_239 : StackLang.HolProg 64 :=
.seq AllocBody289_209 AllocBody289_238

def AllocBody289_240 : StackLang.HolProg 64 :=
.seq AllocBody289_208 AllocBody289_239

def AllocBody289_241 : StackLang.HolProg 64 :=
.seq AllocBody289_207 AllocBody289_240

def AllocBody289_242 : StackLang.HolProg 64 :=
.seq AllocBody289_188 AllocBody289_241

def AllocBody289_243 : StackLang.HolProg 64 :=
.seq AllocBody289_185 AllocBody289_242

def AllocBody289_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody289_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody289_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody289_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody289_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody289_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody289_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody289_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody289_253 : StackLang.HolProg 64 :=
.seq AllocBody289_251 AllocBody289_252

def AllocBody289_254 : StackLang.HolProg 64 :=
.seq AllocBody289_250 AllocBody289_253

def AllocBody289_255 : StackLang.HolProg 64 :=
.seq AllocBody289_249 AllocBody289_254

def AllocBody289_256 : StackLang.HolProg 64 :=
.seq AllocBody289_248 AllocBody289_255

def AllocBody289_257 : StackLang.HolProg 64 :=
.seq AllocBody289_247 AllocBody289_256

def AllocBody289_258 : StackLang.HolProg 64 :=
.seq AllocBody289_246 AllocBody289_257

def AllocBody289_259 : StackLang.HolProg 64 :=
.seq AllocBody289_245 AllocBody289_258

def AllocBody289_260 : StackLang.HolProg 64 :=
.seq AllocBody289_244 AllocBody289_259

def AllocBody289_261 : StackLang.HolProg 64 :=
.seq AllocBody289_243 AllocBody289_260

def AllocBody289_262 : StackLang.HolProg 64 :=
.seq AllocBody289_184 AllocBody289_261

def AllocBody289_263 : StackLang.HolProg 64 :=
.seq AllocBody289_179 AllocBody289_262

def AllocBody289_264 : StackLang.HolProg 64 :=
.seq AllocBody289_178 AllocBody289_263

def AllocBody289_265 : StackLang.HolProg 64 :=
.seq AllocBody289_177 AllocBody289_264

def AllocBody289_266 : StackLang.HolProg 64 :=
.seq AllocBody289_176 AllocBody289_265

def AllocBody289_267 : StackLang.HolProg 64 :=
.seq AllocBody289_175 AllocBody289_266

def AllocBody289_268 : StackLang.HolProg 64 :=
.seq AllocBody289_174 AllocBody289_267

def AllocBody289_269 : StackLang.HolProg 64 :=
.seq AllocBody289_173 AllocBody289_268

def AllocBody289_270 : StackLang.HolProg 64 :=
.seq AllocBody289_172 AllocBody289_269

def AllocBody289_271 : StackLang.HolProg 64 :=
.seq AllocBody289_157 AllocBody289_270

def AllocBody289_272 : StackLang.HolProg 64 :=
.seq AllocBody289_156 AllocBody289_271

def AllocBody289_273 : StackLang.HolProg 64 :=
.seq AllocBody289_155 AllocBody289_272

def AllocBody289_274 : StackLang.HolProg 64 :=
.seq AllocBody289_154 AllocBody289_273

def AllocBody289_275 : StackLang.HolProg 64 :=
.seq AllocBody289_153 AllocBody289_274

def AllocBody289_276 : StackLang.HolProg 64 :=
.seq AllocBody289_88 AllocBody289_275

def AllocBody289_277 : StackLang.HolProg 64 :=
.seq AllocBody289_79 AllocBody289_276

def AllocBody289_278 : StackLang.HolProg 64 :=
.seq AllocBody289_78 AllocBody289_277

def AllocBody289_279 : StackLang.HolProg 64 :=
.seq AllocBody289_77 AllocBody289_278

def AllocBody289_280 : StackLang.HolProg 64 :=
.seq AllocBody289_76 AllocBody289_279

def AllocBody289_281 : StackLang.HolProg 64 :=
.seq AllocBody289_75 AllocBody289_280

def AllocBody289_282 : StackLang.HolProg 64 :=
.seq AllocBody289_74 AllocBody289_281

def AllocBody289_283 : StackLang.HolProg 64 :=
.seq AllocBody289_73 AllocBody289_282

def AllocBody289_284 : StackLang.HolProg 64 :=
.seq AllocBody289_72 AllocBody289_283

def AllocBody289_285 : StackLang.HolProg 64 :=
.seq AllocBody289_71 AllocBody289_284

def AllocBody289_286 : StackLang.HolProg 64 :=
.seq AllocBody289_70 AllocBody289_285

def AllocBody289_287 : StackLang.HolProg 64 :=
.seq AllocBody289_69 AllocBody289_286

def AllocBody289_288 : StackLang.HolProg 64 :=
.seq AllocBody289_68 AllocBody289_287

def AllocBody289_289 : StackLang.HolProg 64 :=
.seq AllocBody289_67 AllocBody289_288

def AllocBody289_290 : StackLang.HolProg 64 :=
.seq AllocBody289_2 AllocBody289_289

def AllocBody289_291 : StackLang.HolProg 64 :=
.seq AllocBody289_1 AllocBody289_290

def AllocBody289_292 : StackLang.HolProg 64 :=
.seq AllocBody289_0 AllocBody289_291

def Alloc289 : Nat × StackLang.HolProg 64 := (289, AllocBody289_292)
theorem Alloc289_eq : StackAlloc.progComp (289, raw289) = Alloc289 := by
  kernel_rfl
#print axioms Alloc289_eq
end InitECandidate.Proofs.BackendStages
