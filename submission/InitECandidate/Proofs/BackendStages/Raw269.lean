import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function269
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody269_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody269_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody269_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody269_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody269_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody269_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody269_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody269_10 : StackLang.HolProg 64 :=
.seq rawBody269_8 rawBody269_9

def rawBody269_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 655#64)

def rawBody269_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody269_14 : StackLang.HolProg 64 :=
.seq rawBody269_12 rawBody269_13

def rawBody269_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody269_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody269_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody269_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 269 3

def rawBody269_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody269_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody269_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody269_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody269_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody269_25 : StackLang.HolProg 64 :=
.seq rawBody269_23 rawBody269_24

def rawBody269_26 : StackLang.HolProg 64 :=
.seq rawBody269_22 rawBody269_25

def rawBody269_27 : StackLang.HolProg 64 :=
.seq rawBody269_21 rawBody269_26

def rawBody269_28 : StackLang.HolProg 64 :=
.seq rawBody269_20 rawBody269_27

def rawBody269_29 : StackLang.HolProg 64 :=
.seq rawBody269_19 rawBody269_28

def rawBody269_30 : StackLang.HolProg 64 :=
.seq rawBody269_18 rawBody269_29

def rawBody269_31 : StackLang.HolProg 64 :=
.seq rawBody269_17 rawBody269_30

def rawBody269_32 : StackLang.HolProg 64 :=
.seq rawBody269_16 rawBody269_31

def rawBody269_33 : StackLang.HolProg 64 :=
.seq rawBody269_15 rawBody269_32

def rawBody269_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody269_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody269_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody269_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody269_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody269_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody269_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody269_43 : StackLang.HolProg 64 :=
.seq rawBody269_41 rawBody269_42

def rawBody269_44 : StackLang.HolProg 64 :=
.seq rawBody269_40 rawBody269_43

def rawBody269_45 : StackLang.HolProg 64 :=
.seq rawBody269_39 rawBody269_44

def rawBody269_46 : StackLang.HolProg 64 :=
.seq rawBody269_38 rawBody269_45

def rawBody269_47 : StackLang.HolProg 64 :=
.seq rawBody269_37 rawBody269_46

def rawBody269_48 : StackLang.HolProg 64 :=
.seq rawBody269_36 rawBody269_47

def rawBody269_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody269_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody269_51 : StackLang.HolProg 64 :=
.seq rawBody269_49 rawBody269_50

def rawBody269_52 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody269_53 : StackLang.HolProg 64 :=
.seq rawBody269_51 rawBody269_52

def rawBody269_54 : StackLang.HolProg 64 :=
.call (some (rawBody269_48, 0, 269, 2)) (Sum.inl 161) (some (rawBody269_53, 269, 3))

def rawBody269_55 : StackLang.HolProg 64 :=
.seq rawBody269_35 rawBody269_54

def rawBody269_56 : StackLang.HolProg 64 :=
.seq rawBody269_34 rawBody269_55

def rawBody269_57 : StackLang.HolProg 64 :=
.seq rawBody269_33 rawBody269_56

def rawBody269_58 : StackLang.HolProg 64 :=
.seq rawBody269_14 rawBody269_57

def rawBody269_59 : StackLang.HolProg 64 :=
.seq rawBody269_11 rawBody269_58

def rawBody269_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody269_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody269_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody269_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody269_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody269_70 : StackLang.HolProg 64 :=
.seq rawBody269_68 rawBody269_69

def rawBody269_71 : StackLang.HolProg 64 :=
.seq rawBody269_67 rawBody269_70

def rawBody269_72 : StackLang.HolProg 64 :=
.seq rawBody269_66 rawBody269_71

def rawBody269_73 : StackLang.HolProg 64 :=
.seq rawBody269_65 rawBody269_72

def rawBody269_74 : StackLang.HolProg 64 :=
.seq rawBody269_64 rawBody269_73

def rawBody269_75 : StackLang.HolProg 64 :=
.seq rawBody269_63 rawBody269_74

def rawBody269_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody269_75 rawBody269_76

def rawBody269_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody269_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody269_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody269_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody269_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody269_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody269_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody269_94 : StackLang.HolProg 64 :=
.seq rawBody269_92 rawBody269_93

def rawBody269_95 : StackLang.HolProg 64 :=
.seq rawBody269_91 rawBody269_94

def rawBody269_96 : StackLang.HolProg 64 :=
.seq rawBody269_90 rawBody269_95

def rawBody269_97 : StackLang.HolProg 64 :=
.seq rawBody269_89 rawBody269_96

def rawBody269_98 : StackLang.HolProg 64 :=
.seq rawBody269_88 rawBody269_97

def rawBody269_99 : StackLang.HolProg 64 :=
.seq rawBody269_87 rawBody269_98

def rawBody269_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody269_99 rawBody269_100

def rawBody269_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_105 : StackLang.HolProg 64 :=
.seq rawBody269_103 rawBody269_104

def rawBody269_106 : StackLang.HolProg 64 :=
.seq rawBody269_102 rawBody269_105

def rawBody269_107 : StackLang.HolProg 64 :=
.seq rawBody269_101 rawBody269_106

def rawBody269_108 : StackLang.HolProg 64 :=
.seq rawBody269_86 rawBody269_107

def rawBody269_109 : StackLang.HolProg 64 :=
.seq rawBody269_85 rawBody269_108

def rawBody269_110 : StackLang.HolProg 64 :=
.seq rawBody269_84 rawBody269_109

def rawBody269_111 : StackLang.HolProg 64 :=
.seq rawBody269_83 rawBody269_110

def rawBody269_112 : StackLang.HolProg 64 :=
.seq rawBody269_82 rawBody269_111

def rawBody269_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_115 : StackLang.HolProg 64 :=
.seq rawBody269_113 rawBody269_114

def rawBody269_116 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody269_112 rawBody269_115

def rawBody269_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody269_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 3#64)

def rawBody269_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody269_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody269_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody269_129 : StackLang.HolProg 64 :=
.seq rawBody269_127 rawBody269_128

def rawBody269_130 : StackLang.HolProg 64 :=
.seq rawBody269_126 rawBody269_129

def rawBody269_131 : StackLang.HolProg 64 :=
.seq rawBody269_125 rawBody269_130

def rawBody269_132 : StackLang.HolProg 64 :=
.seq rawBody269_124 rawBody269_131

def rawBody269_133 : StackLang.HolProg 64 :=
.seq rawBody269_123 rawBody269_132

def rawBody269_134 : StackLang.HolProg 64 :=
.seq rawBody269_122 rawBody269_133

def rawBody269_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody269_134 rawBody269_135

def rawBody269_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_140 : StackLang.HolProg 64 :=
.seq rawBody269_138 rawBody269_139

def rawBody269_141 : StackLang.HolProg 64 :=
.seq rawBody269_137 rawBody269_140

def rawBody269_142 : StackLang.HolProg 64 :=
.seq rawBody269_136 rawBody269_141

def rawBody269_143 : StackLang.HolProg 64 :=
.seq rawBody269_121 rawBody269_142

def rawBody269_144 : StackLang.HolProg 64 :=
.seq rawBody269_120 rawBody269_143

def rawBody269_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody269_147 : StackLang.HolProg 64 :=
.seq rawBody269_145 rawBody269_146

def rawBody269_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody269_144 rawBody269_147

def rawBody269_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody269_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody269_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody269_152 : StackLang.HolProg 64 :=
.seq rawBody269_150 rawBody269_151

def rawBody269_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody269_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody269_155 : StackLang.HolProg 64 :=
.seq rawBody269_153 rawBody269_154

def rawBody269_156 : StackLang.HolProg 64 :=
.seq rawBody269_152 rawBody269_155

def rawBody269_157 : StackLang.HolProg 64 :=
.seq rawBody269_149 rawBody269_156

def rawBody269_158 : StackLang.HolProg 64 :=
.seq rawBody269_148 rawBody269_157

def rawBody269_159 : StackLang.HolProg 64 :=
.seq rawBody269_119 rawBody269_158

def rawBody269_160 : StackLang.HolProg 64 :=
.seq rawBody269_118 rawBody269_159

def rawBody269_161 : StackLang.HolProg 64 :=
.seq rawBody269_117 rawBody269_160

def rawBody269_162 : StackLang.HolProg 64 :=
.seq rawBody269_116 rawBody269_161

def rawBody269_163 : StackLang.HolProg 64 :=
.seq rawBody269_81 rawBody269_162

def rawBody269_164 : StackLang.HolProg 64 :=
.seq rawBody269_80 rawBody269_163

def rawBody269_165 : StackLang.HolProg 64 :=
.seq rawBody269_79 rawBody269_164

def rawBody269_166 : StackLang.HolProg 64 :=
.seq rawBody269_78 rawBody269_165

def rawBody269_167 : StackLang.HolProg 64 :=
.seq rawBody269_77 rawBody269_166

def rawBody269_168 : StackLang.HolProg 64 :=
.seq rawBody269_62 rawBody269_167

def rawBody269_169 : StackLang.HolProg 64 :=
.seq rawBody269_61 rawBody269_168

def rawBody269_170 : StackLang.HolProg 64 :=
.seq rawBody269_60 rawBody269_169

def rawBody269_171 : StackLang.HolProg 64 :=
.seq rawBody269_59 rawBody269_170

def rawBody269_172 : StackLang.HolProg 64 :=
.seq rawBody269_10 rawBody269_171

def rawBody269_173 : StackLang.HolProg 64 :=
.seq rawBody269_7 rawBody269_172

def rawBody269_174 : StackLang.HolProg 64 :=
.seq rawBody269_6 rawBody269_173

def rawBody269_175 : StackLang.HolProg 64 :=
.seq rawBody269_5 rawBody269_174

def rawBody269_176 : StackLang.HolProg 64 :=
.seq rawBody269_4 rawBody269_175

def rawBody269_177 : StackLang.HolProg 64 :=
.seq rawBody269_3 rawBody269_176

def rawBody269_178 : StackLang.HolProg 64 :=
.seq rawBody269_2 rawBody269_177

def rawBody269_179 : StackLang.HolProg 64 :=
.seq rawBody269_1 rawBody269_178

def rawBody269_180 : StackLang.HolProg 64 :=
.seq rawBody269_0 rawBody269_179

def raw269 : StackLang.HolProg 64 := rawBody269_180
theorem raw269_eq : StackRawCall.compTop RawInfo.rawInfo (function269 (.list [])).1 = raw269 := by
  kernel_rfl
#print axioms raw269_eq
end InitECandidate.Proofs.BackendStages
