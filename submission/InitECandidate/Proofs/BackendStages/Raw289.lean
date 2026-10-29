import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function289
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody289_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody289_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody289_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody289_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody289_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def rawBody289_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody289_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody289_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody289_8 : StackLang.HolProg 64 :=
.seq rawBody289_6 rawBody289_7

def rawBody289_9 : StackLang.HolProg 64 :=
.seq rawBody289_5 rawBody289_8

def rawBody289_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 790#64)

def rawBody289_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody289_13 : StackLang.HolProg 64 :=
.seq rawBody289_11 rawBody289_12

def rawBody289_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody289_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody289_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody289_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 289 3

def rawBody289_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody289_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody289_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody289_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody289_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody289_24 : StackLang.HolProg 64 :=
.seq rawBody289_22 rawBody289_23

def rawBody289_25 : StackLang.HolProg 64 :=
.seq rawBody289_21 rawBody289_24

def rawBody289_26 : StackLang.HolProg 64 :=
.seq rawBody289_20 rawBody289_25

def rawBody289_27 : StackLang.HolProg 64 :=
.seq rawBody289_19 rawBody289_26

def rawBody289_28 : StackLang.HolProg 64 :=
.seq rawBody289_18 rawBody289_27

def rawBody289_29 : StackLang.HolProg 64 :=
.seq rawBody289_17 rawBody289_28

def rawBody289_30 : StackLang.HolProg 64 :=
.seq rawBody289_16 rawBody289_29

def rawBody289_31 : StackLang.HolProg 64 :=
.seq rawBody289_15 rawBody289_30

def rawBody289_32 : StackLang.HolProg 64 :=
.seq rawBody289_14 rawBody289_31

def rawBody289_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody289_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody289_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody289_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody289_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody289_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody289_41 : StackLang.HolProg 64 :=
.seq rawBody289_39 rawBody289_40

def rawBody289_42 : StackLang.HolProg 64 :=
.seq rawBody289_38 rawBody289_41

def rawBody289_43 : StackLang.HolProg 64 :=
.seq rawBody289_37 rawBody289_42

def rawBody289_44 : StackLang.HolProg 64 :=
.seq rawBody289_36 rawBody289_43

def rawBody289_45 : StackLang.HolProg 64 :=
.seq rawBody289_35 rawBody289_44

def rawBody289_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody289_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody289_48 : StackLang.HolProg 64 :=
.seq rawBody289_46 rawBody289_47

def rawBody289_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody289_50 : StackLang.HolProg 64 :=
.seq rawBody289_48 rawBody289_49

def rawBody289_51 : StackLang.HolProg 64 :=
.call (some (rawBody289_45, 0, 289, 2)) (Sum.inl 286) (some (rawBody289_50, 289, 3))

def rawBody289_52 : StackLang.HolProg 64 :=
.seq rawBody289_34 rawBody289_51

def rawBody289_53 : StackLang.HolProg 64 :=
.seq rawBody289_33 rawBody289_52

def rawBody289_54 : StackLang.HolProg 64 :=
.seq rawBody289_32 rawBody289_53

def rawBody289_55 : StackLang.HolProg 64 :=
.seq rawBody289_13 rawBody289_54

def rawBody289_56 : StackLang.HolProg 64 :=
.seq rawBody289_10 rawBody289_55

def rawBody289_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody289_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_59 : StackLang.HolProg 64 :=
.seq rawBody289_57 rawBody289_58

def rawBody289_60 : StackLang.HolProg 64 :=
.seq rawBody289_56 rawBody289_59

def rawBody289_61 : StackLang.HolProg 64 :=
.seq rawBody289_9 rawBody289_60

def rawBody289_62 : StackLang.HolProg 64 :=
.seq rawBody289_4 rawBody289_61

def rawBody289_63 : StackLang.HolProg 64 :=
.seq rawBody289_3 rawBody289_62

def rawBody289_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody289_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody289_66 : StackLang.HolProg 64 :=
.seq rawBody289_64 rawBody289_65

def rawBody289_67 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody289_63 rawBody289_66

def rawBody289_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody289_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody289_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody289_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody289_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody289_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody289_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody289_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody289_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody289_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody289_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody289_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def rawBody289_85 : StackLang.HolProg 64 :=
.seq rawBody289_83 rawBody289_84

def rawBody289_86 : StackLang.HolProg 64 :=
.seq rawBody289_82 rawBody289_85

def rawBody289_87 : StackLang.HolProg 64 :=
.seq rawBody289_81 rawBody289_86

def rawBody289_88 : StackLang.HolProg 64 :=
.seq rawBody289_80 rawBody289_87

def rawBody289_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 791#64)

def rawBody289_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody289_92 : StackLang.HolProg 64 :=
.seq rawBody289_90 rawBody289_91

def rawBody289_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody289_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody289_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody289_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 289 5

def rawBody289_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody289_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody289_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody289_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody289_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody289_103 : StackLang.HolProg 64 :=
.seq rawBody289_101 rawBody289_102

def rawBody289_104 : StackLang.HolProg 64 :=
.seq rawBody289_100 rawBody289_103

def rawBody289_105 : StackLang.HolProg 64 :=
.seq rawBody289_99 rawBody289_104

def rawBody289_106 : StackLang.HolProg 64 :=
.seq rawBody289_98 rawBody289_105

def rawBody289_107 : StackLang.HolProg 64 :=
.seq rawBody289_97 rawBody289_106

def rawBody289_108 : StackLang.HolProg 64 :=
.seq rawBody289_96 rawBody289_107

def rawBody289_109 : StackLang.HolProg 64 :=
.seq rawBody289_95 rawBody289_108

def rawBody289_110 : StackLang.HolProg 64 :=
.seq rawBody289_94 rawBody289_109

def rawBody289_111 : StackLang.HolProg 64 :=
.seq rawBody289_93 rawBody289_110

def rawBody289_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody289_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody289_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody289_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody289_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody289_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody289_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody289_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody289_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody289_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody289_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody289_125 : StackLang.HolProg 64 :=
.seq rawBody289_123 rawBody289_124

def rawBody289_126 : StackLang.HolProg 64 :=
.seq rawBody289_122 rawBody289_125

def rawBody289_127 : StackLang.HolProg 64 :=
.seq rawBody289_121 rawBody289_126

def rawBody289_128 : StackLang.HolProg 64 :=
.seq rawBody289_120 rawBody289_127

def rawBody289_129 : StackLang.HolProg 64 :=
.seq rawBody289_119 rawBody289_128

def rawBody289_130 : StackLang.HolProg 64 :=
.seq rawBody289_118 rawBody289_129

def rawBody289_131 : StackLang.HolProg 64 :=
.seq rawBody289_117 rawBody289_130

def rawBody289_132 : StackLang.HolProg 64 :=
.seq rawBody289_116 rawBody289_131

def rawBody289_133 : StackLang.HolProg 64 :=
.seq rawBody289_115 rawBody289_132

def rawBody289_134 : StackLang.HolProg 64 :=
.seq rawBody289_114 rawBody289_133

def rawBody289_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody289_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody289_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody289_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody289_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody289_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody289_141 : StackLang.HolProg 64 :=
.seq rawBody289_139 rawBody289_140

def rawBody289_142 : StackLang.HolProg 64 :=
.seq rawBody289_138 rawBody289_141

def rawBody289_143 : StackLang.HolProg 64 :=
.seq rawBody289_137 rawBody289_142

def rawBody289_144 : StackLang.HolProg 64 :=
.seq rawBody289_136 rawBody289_143

def rawBody289_145 : StackLang.HolProg 64 :=
.seq rawBody289_135 rawBody289_144

def rawBody289_146 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody289_147 : StackLang.HolProg 64 :=
.seq rawBody289_145 rawBody289_146

def rawBody289_148 : StackLang.HolProg 64 :=
.call (some (rawBody289_134, 0, 289, 4)) (Sum.inl 68) (some (rawBody289_147, 289, 5))

def rawBody289_149 : StackLang.HolProg 64 :=
.seq rawBody289_113 rawBody289_148

def rawBody289_150 : StackLang.HolProg 64 :=
.seq rawBody289_112 rawBody289_149

def rawBody289_151 : StackLang.HolProg 64 :=
.seq rawBody289_111 rawBody289_150

def rawBody289_152 : StackLang.HolProg 64 :=
.seq rawBody289_92 rawBody289_151

def rawBody289_153 : StackLang.HolProg 64 :=
.seq rawBody289_89 rawBody289_152

def rawBody289_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody289_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody289_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody289_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody289_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def rawBody289_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody289_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def rawBody289_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_164 : StackLang.HolProg 64 :=
.seq rawBody289_162 rawBody289_163

def rawBody289_165 : StackLang.HolProg 64 :=
.seq rawBody289_161 rawBody289_164

def rawBody289_166 : StackLang.HolProg 64 :=
.seq rawBody289_160 rawBody289_165

def rawBody289_167 : StackLang.HolProg 64 :=
.seq rawBody289_159 rawBody289_166

def rawBody289_168 : StackLang.HolProg 64 :=
.seq rawBody289_158 rawBody289_167

def rawBody289_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody289_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_171 : StackLang.HolProg 64 :=
.seq rawBody289_169 rawBody289_170

def rawBody289_172 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody289_168 rawBody289_171

def rawBody289_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody289_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody289_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody289_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody289_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody289_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody289_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody289_183 : StackLang.HolProg 64 :=
.seq rawBody289_181 rawBody289_182

def rawBody289_184 : StackLang.HolProg 64 :=
.seq rawBody289_180 rawBody289_183

def rawBody289_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 792#64)

def rawBody289_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody289_188 : StackLang.HolProg 64 :=
.seq rawBody289_186 rawBody289_187

def rawBody289_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody289_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody289_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody289_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 289 7

def rawBody289_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody289_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody289_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody289_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody289_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody289_199 : StackLang.HolProg 64 :=
.seq rawBody289_197 rawBody289_198

def rawBody289_200 : StackLang.HolProg 64 :=
.seq rawBody289_196 rawBody289_199

def rawBody289_201 : StackLang.HolProg 64 :=
.seq rawBody289_195 rawBody289_200

def rawBody289_202 : StackLang.HolProg 64 :=
.seq rawBody289_194 rawBody289_201

def rawBody289_203 : StackLang.HolProg 64 :=
.seq rawBody289_193 rawBody289_202

def rawBody289_204 : StackLang.HolProg 64 :=
.seq rawBody289_192 rawBody289_203

def rawBody289_205 : StackLang.HolProg 64 :=
.seq rawBody289_191 rawBody289_204

def rawBody289_206 : StackLang.HolProg 64 :=
.seq rawBody289_190 rawBody289_205

def rawBody289_207 : StackLang.HolProg 64 :=
.seq rawBody289_189 rawBody289_206

def rawBody289_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody289_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody289_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody289_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody289_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody289_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody289_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody289_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody289_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody289_219 : StackLang.HolProg 64 :=
.seq rawBody289_217 rawBody289_218

def rawBody289_220 : StackLang.HolProg 64 :=
.seq rawBody289_216 rawBody289_219

def rawBody289_221 : StackLang.HolProg 64 :=
.seq rawBody289_215 rawBody289_220

def rawBody289_222 : StackLang.HolProg 64 :=
.seq rawBody289_214 rawBody289_221

def rawBody289_223 : StackLang.HolProg 64 :=
.seq rawBody289_213 rawBody289_222

def rawBody289_224 : StackLang.HolProg 64 :=
.seq rawBody289_212 rawBody289_223

def rawBody289_225 : StackLang.HolProg 64 :=
.seq rawBody289_211 rawBody289_224

def rawBody289_226 : StackLang.HolProg 64 :=
.seq rawBody289_210 rawBody289_225

def rawBody289_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody289_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody289_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody289_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody289_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody289_232 : StackLang.HolProg 64 :=
.seq rawBody289_230 rawBody289_231

def rawBody289_233 : StackLang.HolProg 64 :=
.seq rawBody289_229 rawBody289_232

def rawBody289_234 : StackLang.HolProg 64 :=
.seq rawBody289_228 rawBody289_233

def rawBody289_235 : StackLang.HolProg 64 :=
.seq rawBody289_227 rawBody289_234

def rawBody289_236 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody289_237 : StackLang.HolProg 64 :=
.seq rawBody289_235 rawBody289_236

def rawBody289_238 : StackLang.HolProg 64 :=
.call (some (rawBody289_226, 0, 289, 6)) (Sum.inl 288) (some (rawBody289_237, 289, 7))

def rawBody289_239 : StackLang.HolProg 64 :=
.seq rawBody289_209 rawBody289_238

def rawBody289_240 : StackLang.HolProg 64 :=
.seq rawBody289_208 rawBody289_239

def rawBody289_241 : StackLang.HolProg 64 :=
.seq rawBody289_207 rawBody289_240

def rawBody289_242 : StackLang.HolProg 64 :=
.seq rawBody289_188 rawBody289_241

def rawBody289_243 : StackLang.HolProg 64 :=
.seq rawBody289_185 rawBody289_242

def rawBody289_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody289_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody289_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody289_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody289_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody289_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody289_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody289_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody289_253 : StackLang.HolProg 64 :=
.seq rawBody289_251 rawBody289_252

def rawBody289_254 : StackLang.HolProg 64 :=
.seq rawBody289_250 rawBody289_253

def rawBody289_255 : StackLang.HolProg 64 :=
.seq rawBody289_249 rawBody289_254

def rawBody289_256 : StackLang.HolProg 64 :=
.seq rawBody289_248 rawBody289_255

def rawBody289_257 : StackLang.HolProg 64 :=
.seq rawBody289_247 rawBody289_256

def rawBody289_258 : StackLang.HolProg 64 :=
.seq rawBody289_246 rawBody289_257

def rawBody289_259 : StackLang.HolProg 64 :=
.seq rawBody289_245 rawBody289_258

def rawBody289_260 : StackLang.HolProg 64 :=
.seq rawBody289_244 rawBody289_259

def rawBody289_261 : StackLang.HolProg 64 :=
.seq rawBody289_243 rawBody289_260

def rawBody289_262 : StackLang.HolProg 64 :=
.seq rawBody289_184 rawBody289_261

def rawBody289_263 : StackLang.HolProg 64 :=
.seq rawBody289_179 rawBody289_262

def rawBody289_264 : StackLang.HolProg 64 :=
.seq rawBody289_178 rawBody289_263

def rawBody289_265 : StackLang.HolProg 64 :=
.seq rawBody289_177 rawBody289_264

def rawBody289_266 : StackLang.HolProg 64 :=
.seq rawBody289_176 rawBody289_265

def rawBody289_267 : StackLang.HolProg 64 :=
.seq rawBody289_175 rawBody289_266

def rawBody289_268 : StackLang.HolProg 64 :=
.seq rawBody289_174 rawBody289_267

def rawBody289_269 : StackLang.HolProg 64 :=
.seq rawBody289_173 rawBody289_268

def rawBody289_270 : StackLang.HolProg 64 :=
.seq rawBody289_172 rawBody289_269

def rawBody289_271 : StackLang.HolProg 64 :=
.seq rawBody289_157 rawBody289_270

def rawBody289_272 : StackLang.HolProg 64 :=
.seq rawBody289_156 rawBody289_271

def rawBody289_273 : StackLang.HolProg 64 :=
.seq rawBody289_155 rawBody289_272

def rawBody289_274 : StackLang.HolProg 64 :=
.seq rawBody289_154 rawBody289_273

def rawBody289_275 : StackLang.HolProg 64 :=
.seq rawBody289_153 rawBody289_274

def rawBody289_276 : StackLang.HolProg 64 :=
.seq rawBody289_88 rawBody289_275

def rawBody289_277 : StackLang.HolProg 64 :=
.seq rawBody289_79 rawBody289_276

def rawBody289_278 : StackLang.HolProg 64 :=
.seq rawBody289_78 rawBody289_277

def rawBody289_279 : StackLang.HolProg 64 :=
.seq rawBody289_77 rawBody289_278

def rawBody289_280 : StackLang.HolProg 64 :=
.seq rawBody289_76 rawBody289_279

def rawBody289_281 : StackLang.HolProg 64 :=
.seq rawBody289_75 rawBody289_280

def rawBody289_282 : StackLang.HolProg 64 :=
.seq rawBody289_74 rawBody289_281

def rawBody289_283 : StackLang.HolProg 64 :=
.seq rawBody289_73 rawBody289_282

def rawBody289_284 : StackLang.HolProg 64 :=
.seq rawBody289_72 rawBody289_283

def rawBody289_285 : StackLang.HolProg 64 :=
.seq rawBody289_71 rawBody289_284

def rawBody289_286 : StackLang.HolProg 64 :=
.seq rawBody289_70 rawBody289_285

def rawBody289_287 : StackLang.HolProg 64 :=
.seq rawBody289_69 rawBody289_286

def rawBody289_288 : StackLang.HolProg 64 :=
.seq rawBody289_68 rawBody289_287

def rawBody289_289 : StackLang.HolProg 64 :=
.seq rawBody289_67 rawBody289_288

def rawBody289_290 : StackLang.HolProg 64 :=
.seq rawBody289_2 rawBody289_289

def rawBody289_291 : StackLang.HolProg 64 :=
.seq rawBody289_1 rawBody289_290

def rawBody289_292 : StackLang.HolProg 64 :=
.seq rawBody289_0 rawBody289_291

def raw289 : StackLang.HolProg 64 := rawBody289_292
theorem raw289_eq : StackRawCall.compTop RawInfo.rawInfo (function289 (.list [])).1 = raw289 := by
  kernel_rfl
#print axioms raw289_eq
end InitECandidate.Proofs.BackendStages
