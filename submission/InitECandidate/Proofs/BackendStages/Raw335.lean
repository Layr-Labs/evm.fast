import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function335
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody335_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody335_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody335_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody335_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody335_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody335_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody335_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody335_10 : StackLang.HolProg 64 :=
.seq rawBody335_8 rawBody335_9

def rawBody335_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 969#64)

def rawBody335_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody335_14 : StackLang.HolProg 64 :=
.seq rawBody335_12 rawBody335_13

def rawBody335_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody335_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody335_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody335_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 335 3

def rawBody335_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody335_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody335_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody335_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody335_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody335_25 : StackLang.HolProg 64 :=
.seq rawBody335_23 rawBody335_24

def rawBody335_26 : StackLang.HolProg 64 :=
.seq rawBody335_22 rawBody335_25

def rawBody335_27 : StackLang.HolProg 64 :=
.seq rawBody335_21 rawBody335_26

def rawBody335_28 : StackLang.HolProg 64 :=
.seq rawBody335_20 rawBody335_27

def rawBody335_29 : StackLang.HolProg 64 :=
.seq rawBody335_19 rawBody335_28

def rawBody335_30 : StackLang.HolProg 64 :=
.seq rawBody335_18 rawBody335_29

def rawBody335_31 : StackLang.HolProg 64 :=
.seq rawBody335_17 rawBody335_30

def rawBody335_32 : StackLang.HolProg 64 :=
.seq rawBody335_16 rawBody335_31

def rawBody335_33 : StackLang.HolProg 64 :=
.seq rawBody335_15 rawBody335_32

def rawBody335_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody335_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody335_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody335_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody335_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody335_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody335_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody335_43 : StackLang.HolProg 64 :=
.seq rawBody335_41 rawBody335_42

def rawBody335_44 : StackLang.HolProg 64 :=
.seq rawBody335_40 rawBody335_43

def rawBody335_45 : StackLang.HolProg 64 :=
.seq rawBody335_39 rawBody335_44

def rawBody335_46 : StackLang.HolProg 64 :=
.seq rawBody335_38 rawBody335_45

def rawBody335_47 : StackLang.HolProg 64 :=
.seq rawBody335_37 rawBody335_46

def rawBody335_48 : StackLang.HolProg 64 :=
.seq rawBody335_36 rawBody335_47

def rawBody335_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody335_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody335_51 : StackLang.HolProg 64 :=
.seq rawBody335_49 rawBody335_50

def rawBody335_52 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody335_53 : StackLang.HolProg 64 :=
.seq rawBody335_51 rawBody335_52

def rawBody335_54 : StackLang.HolProg 64 :=
.call (some (rawBody335_48, 0, 335, 2)) (Sum.inl 161) (some (rawBody335_53, 335, 3))

def rawBody335_55 : StackLang.HolProg 64 :=
.seq rawBody335_35 rawBody335_54

def rawBody335_56 : StackLang.HolProg 64 :=
.seq rawBody335_34 rawBody335_55

def rawBody335_57 : StackLang.HolProg 64 :=
.seq rawBody335_33 rawBody335_56

def rawBody335_58 : StackLang.HolProg 64 :=
.seq rawBody335_14 rawBody335_57

def rawBody335_59 : StackLang.HolProg 64 :=
.seq rawBody335_11 rawBody335_58

def rawBody335_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody335_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def rawBody335_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody335_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody335_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody335_70 : StackLang.HolProg 64 :=
.seq rawBody335_68 rawBody335_69

def rawBody335_71 : StackLang.HolProg 64 :=
.seq rawBody335_67 rawBody335_70

def rawBody335_72 : StackLang.HolProg 64 :=
.seq rawBody335_66 rawBody335_71

def rawBody335_73 : StackLang.HolProg 64 :=
.seq rawBody335_65 rawBody335_72

def rawBody335_74 : StackLang.HolProg 64 :=
.seq rawBody335_64 rawBody335_73

def rawBody335_75 : StackLang.HolProg 64 :=
.seq rawBody335_63 rawBody335_74

def rawBody335_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody335_75 rawBody335_76

def rawBody335_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody335_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody335_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody335_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 11#64)

def rawBody335_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody335_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody335_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody335_94 : StackLang.HolProg 64 :=
.seq rawBody335_92 rawBody335_93

def rawBody335_95 : StackLang.HolProg 64 :=
.seq rawBody335_91 rawBody335_94

def rawBody335_96 : StackLang.HolProg 64 :=
.seq rawBody335_90 rawBody335_95

def rawBody335_97 : StackLang.HolProg 64 :=
.seq rawBody335_89 rawBody335_96

def rawBody335_98 : StackLang.HolProg 64 :=
.seq rawBody335_88 rawBody335_97

def rawBody335_99 : StackLang.HolProg 64 :=
.seq rawBody335_87 rawBody335_98

def rawBody335_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody335_99 rawBody335_100

def rawBody335_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_105 : StackLang.HolProg 64 :=
.seq rawBody335_103 rawBody335_104

def rawBody335_106 : StackLang.HolProg 64 :=
.seq rawBody335_102 rawBody335_105

def rawBody335_107 : StackLang.HolProg 64 :=
.seq rawBody335_101 rawBody335_106

def rawBody335_108 : StackLang.HolProg 64 :=
.seq rawBody335_86 rawBody335_107

def rawBody335_109 : StackLang.HolProg 64 :=
.seq rawBody335_85 rawBody335_108

def rawBody335_110 : StackLang.HolProg 64 :=
.seq rawBody335_84 rawBody335_109

def rawBody335_111 : StackLang.HolProg 64 :=
.seq rawBody335_83 rawBody335_110

def rawBody335_112 : StackLang.HolProg 64 :=
.seq rawBody335_82 rawBody335_111

def rawBody335_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_115 : StackLang.HolProg 64 :=
.seq rawBody335_113 rawBody335_114

def rawBody335_116 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody335_112 rawBody335_115

def rawBody335_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody335_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 12#64)

def rawBody335_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody335_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody335_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody335_129 : StackLang.HolProg 64 :=
.seq rawBody335_127 rawBody335_128

def rawBody335_130 : StackLang.HolProg 64 :=
.seq rawBody335_126 rawBody335_129

def rawBody335_131 : StackLang.HolProg 64 :=
.seq rawBody335_125 rawBody335_130

def rawBody335_132 : StackLang.HolProg 64 :=
.seq rawBody335_124 rawBody335_131

def rawBody335_133 : StackLang.HolProg 64 :=
.seq rawBody335_123 rawBody335_132

def rawBody335_134 : StackLang.HolProg 64 :=
.seq rawBody335_122 rawBody335_133

def rawBody335_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody335_134 rawBody335_135

def rawBody335_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_140 : StackLang.HolProg 64 :=
.seq rawBody335_138 rawBody335_139

def rawBody335_141 : StackLang.HolProg 64 :=
.seq rawBody335_137 rawBody335_140

def rawBody335_142 : StackLang.HolProg 64 :=
.seq rawBody335_136 rawBody335_141

def rawBody335_143 : StackLang.HolProg 64 :=
.seq rawBody335_121 rawBody335_142

def rawBody335_144 : StackLang.HolProg 64 :=
.seq rawBody335_120 rawBody335_143

def rawBody335_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody335_147 : StackLang.HolProg 64 :=
.seq rawBody335_145 rawBody335_146

def rawBody335_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody335_144 rawBody335_147

def rawBody335_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody335_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody335_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody335_152 : StackLang.HolProg 64 :=
.seq rawBody335_150 rawBody335_151

def rawBody335_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody335_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody335_155 : StackLang.HolProg 64 :=
.seq rawBody335_153 rawBody335_154

def rawBody335_156 : StackLang.HolProg 64 :=
.seq rawBody335_152 rawBody335_155

def rawBody335_157 : StackLang.HolProg 64 :=
.seq rawBody335_149 rawBody335_156

def rawBody335_158 : StackLang.HolProg 64 :=
.seq rawBody335_148 rawBody335_157

def rawBody335_159 : StackLang.HolProg 64 :=
.seq rawBody335_119 rawBody335_158

def rawBody335_160 : StackLang.HolProg 64 :=
.seq rawBody335_118 rawBody335_159

def rawBody335_161 : StackLang.HolProg 64 :=
.seq rawBody335_117 rawBody335_160

def rawBody335_162 : StackLang.HolProg 64 :=
.seq rawBody335_116 rawBody335_161

def rawBody335_163 : StackLang.HolProg 64 :=
.seq rawBody335_81 rawBody335_162

def rawBody335_164 : StackLang.HolProg 64 :=
.seq rawBody335_80 rawBody335_163

def rawBody335_165 : StackLang.HolProg 64 :=
.seq rawBody335_79 rawBody335_164

def rawBody335_166 : StackLang.HolProg 64 :=
.seq rawBody335_78 rawBody335_165

def rawBody335_167 : StackLang.HolProg 64 :=
.seq rawBody335_77 rawBody335_166

def rawBody335_168 : StackLang.HolProg 64 :=
.seq rawBody335_62 rawBody335_167

def rawBody335_169 : StackLang.HolProg 64 :=
.seq rawBody335_61 rawBody335_168

def rawBody335_170 : StackLang.HolProg 64 :=
.seq rawBody335_60 rawBody335_169

def rawBody335_171 : StackLang.HolProg 64 :=
.seq rawBody335_59 rawBody335_170

def rawBody335_172 : StackLang.HolProg 64 :=
.seq rawBody335_10 rawBody335_171

def rawBody335_173 : StackLang.HolProg 64 :=
.seq rawBody335_7 rawBody335_172

def rawBody335_174 : StackLang.HolProg 64 :=
.seq rawBody335_6 rawBody335_173

def rawBody335_175 : StackLang.HolProg 64 :=
.seq rawBody335_5 rawBody335_174

def rawBody335_176 : StackLang.HolProg 64 :=
.seq rawBody335_4 rawBody335_175

def rawBody335_177 : StackLang.HolProg 64 :=
.seq rawBody335_3 rawBody335_176

def rawBody335_178 : StackLang.HolProg 64 :=
.seq rawBody335_2 rawBody335_177

def rawBody335_179 : StackLang.HolProg 64 :=
.seq rawBody335_1 rawBody335_178

def rawBody335_180 : StackLang.HolProg 64 :=
.seq rawBody335_0 rawBody335_179

def raw335 : StackLang.HolProg 64 := rawBody335_180
theorem raw335_eq : StackRawCall.compTop RawInfo.rawInfo (function335 (.list [])).1 = raw335 := by
  kernel_rfl
#print axioms raw335_eq
end InitECandidate.Proofs.BackendStages
