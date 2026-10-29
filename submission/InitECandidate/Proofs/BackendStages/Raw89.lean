import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function89
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody89_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody89_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody89_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody89_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody89_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody89_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody89_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody89_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody89_8 : StackLang.HolProg 64 :=
.seq rawBody89_6 rawBody89_7

def rawBody89_9 : StackLang.HolProg 64 :=
.seq rawBody89_5 rawBody89_8

def rawBody89_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 35#64)

def rawBody89_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody89_13 : StackLang.HolProg 64 :=
.seq rawBody89_11 rawBody89_12

def rawBody89_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody89_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody89_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody89_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 89 3

def rawBody89_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody89_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody89_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody89_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody89_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody89_24 : StackLang.HolProg 64 :=
.seq rawBody89_22 rawBody89_23

def rawBody89_25 : StackLang.HolProg 64 :=
.seq rawBody89_21 rawBody89_24

def rawBody89_26 : StackLang.HolProg 64 :=
.seq rawBody89_20 rawBody89_25

def rawBody89_27 : StackLang.HolProg 64 :=
.seq rawBody89_19 rawBody89_26

def rawBody89_28 : StackLang.HolProg 64 :=
.seq rawBody89_18 rawBody89_27

def rawBody89_29 : StackLang.HolProg 64 :=
.seq rawBody89_17 rawBody89_28

def rawBody89_30 : StackLang.HolProg 64 :=
.seq rawBody89_16 rawBody89_29

def rawBody89_31 : StackLang.HolProg 64 :=
.seq rawBody89_15 rawBody89_30

def rawBody89_32 : StackLang.HolProg 64 :=
.seq rawBody89_14 rawBody89_31

def rawBody89_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody89_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody89_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody89_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody89_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody89_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody89_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody89_42 : StackLang.HolProg 64 :=
.seq rawBody89_40 rawBody89_41

def rawBody89_43 : StackLang.HolProg 64 :=
.seq rawBody89_39 rawBody89_42

def rawBody89_44 : StackLang.HolProg 64 :=
.seq rawBody89_38 rawBody89_43

def rawBody89_45 : StackLang.HolProg 64 :=
.seq rawBody89_37 rawBody89_44

def rawBody89_46 : StackLang.HolProg 64 :=
.seq rawBody89_36 rawBody89_45

def rawBody89_47 : StackLang.HolProg 64 :=
.seq rawBody89_35 rawBody89_46

def rawBody89_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody89_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody89_50 : StackLang.HolProg 64 :=
.seq rawBody89_48 rawBody89_49

def rawBody89_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody89_52 : StackLang.HolProg 64 :=
.seq rawBody89_50 rawBody89_51

def rawBody89_53 : StackLang.HolProg 64 :=
.call (some (rawBody89_47, 0, 89, 2)) (Sum.inl 84) (some (rawBody89_52, 89, 3))

def rawBody89_54 : StackLang.HolProg 64 :=
.seq rawBody89_34 rawBody89_53

def rawBody89_55 : StackLang.HolProg 64 :=
.seq rawBody89_33 rawBody89_54

def rawBody89_56 : StackLang.HolProg 64 :=
.seq rawBody89_32 rawBody89_55

def rawBody89_57 : StackLang.HolProg 64 :=
.seq rawBody89_13 rawBody89_56

def rawBody89_58 : StackLang.HolProg 64 :=
.seq rawBody89_10 rawBody89_57

def rawBody89_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody89_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody89_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody89_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody89_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody89_66 : StackLang.HolProg 64 :=
.seq rawBody89_64 rawBody89_65

def rawBody89_67 : StackLang.HolProg 64 :=
.seq rawBody89_63 rawBody89_66

def rawBody89_68 : StackLang.HolProg 64 :=
.seq rawBody89_62 rawBody89_67

def rawBody89_69 : StackLang.HolProg 64 :=
.seq rawBody89_61 rawBody89_68

def rawBody89_70 : StackLang.HolProg 64 :=
.seq rawBody89_60 rawBody89_69

def rawBody89_71 : StackLang.HolProg 64 :=
.seq rawBody89_59 rawBody89_70

def rawBody89_72 : StackLang.HolProg 64 :=
.seq rawBody89_58 rawBody89_71

def rawBody89_73 : StackLang.HolProg 64 :=
.seq rawBody89_9 rawBody89_72

def rawBody89_74 : StackLang.HolProg 64 :=
.seq rawBody89_4 rawBody89_73

def rawBody89_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody89_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody89_74 rawBody89_75

def rawBody89_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody89_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody89_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody89_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody89_81 : StackLang.HolProg 64 :=
.seq rawBody89_79 rawBody89_80

def rawBody89_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody89_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody89_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody89_85 : StackLang.HolProg 64 :=
.seq rawBody89_83 rawBody89_84

def rawBody89_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 36#64)

def rawBody89_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody89_89 : StackLang.HolProg 64 :=
.seq rawBody89_87 rawBody89_88

def rawBody89_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody89_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody89_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody89_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 89 5

def rawBody89_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody89_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody89_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody89_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody89_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody89_100 : StackLang.HolProg 64 :=
.seq rawBody89_98 rawBody89_99

def rawBody89_101 : StackLang.HolProg 64 :=
.seq rawBody89_97 rawBody89_100

def rawBody89_102 : StackLang.HolProg 64 :=
.seq rawBody89_96 rawBody89_101

def rawBody89_103 : StackLang.HolProg 64 :=
.seq rawBody89_95 rawBody89_102

def rawBody89_104 : StackLang.HolProg 64 :=
.seq rawBody89_94 rawBody89_103

def rawBody89_105 : StackLang.HolProg 64 :=
.seq rawBody89_93 rawBody89_104

def rawBody89_106 : StackLang.HolProg 64 :=
.seq rawBody89_92 rawBody89_105

def rawBody89_107 : StackLang.HolProg 64 :=
.seq rawBody89_91 rawBody89_106

def rawBody89_108 : StackLang.HolProg 64 :=
.seq rawBody89_90 rawBody89_107

def rawBody89_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody89_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody89_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody89_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody89_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody89_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody89_117 : StackLang.HolProg 64 :=
.seq rawBody89_115 rawBody89_116

def rawBody89_118 : StackLang.HolProg 64 :=
.seq rawBody89_114 rawBody89_117

def rawBody89_119 : StackLang.HolProg 64 :=
.seq rawBody89_113 rawBody89_118

def rawBody89_120 : StackLang.HolProg 64 :=
.seq rawBody89_112 rawBody89_119

def rawBody89_121 : StackLang.HolProg 64 :=
.seq rawBody89_111 rawBody89_120

def rawBody89_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody89_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody89_124 : StackLang.HolProg 64 :=
.seq rawBody89_122 rawBody89_123

def rawBody89_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody89_126 : StackLang.HolProg 64 :=
.seq rawBody89_124 rawBody89_125

def rawBody89_127 : StackLang.HolProg 64 :=
.call (some (rawBody89_121, 0, 89, 4)) (Sum.inl 88) (some (rawBody89_126, 89, 5))

def rawBody89_128 : StackLang.HolProg 64 :=
.seq rawBody89_110 rawBody89_127

def rawBody89_129 : StackLang.HolProg 64 :=
.seq rawBody89_109 rawBody89_128

def rawBody89_130 : StackLang.HolProg 64 :=
.seq rawBody89_108 rawBody89_129

def rawBody89_131 : StackLang.HolProg 64 :=
.seq rawBody89_89 rawBody89_130

def rawBody89_132 : StackLang.HolProg 64 :=
.seq rawBody89_86 rawBody89_131

def rawBody89_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody89_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody89_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 37#64)

def rawBody89_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody89_140 : StackLang.HolProg 64 :=
.seq rawBody89_138 rawBody89_139

def rawBody89_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody89_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody89_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody89_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 89 7

def rawBody89_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody89_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody89_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody89_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody89_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody89_151 : StackLang.HolProg 64 :=
.seq rawBody89_149 rawBody89_150

def rawBody89_152 : StackLang.HolProg 64 :=
.seq rawBody89_148 rawBody89_151

def rawBody89_153 : StackLang.HolProg 64 :=
.seq rawBody89_147 rawBody89_152

def rawBody89_154 : StackLang.HolProg 64 :=
.seq rawBody89_146 rawBody89_153

def rawBody89_155 : StackLang.HolProg 64 :=
.seq rawBody89_145 rawBody89_154

def rawBody89_156 : StackLang.HolProg 64 :=
.seq rawBody89_144 rawBody89_155

def rawBody89_157 : StackLang.HolProg 64 :=
.seq rawBody89_143 rawBody89_156

def rawBody89_158 : StackLang.HolProg 64 :=
.seq rawBody89_142 rawBody89_157

def rawBody89_159 : StackLang.HolProg 64 :=
.seq rawBody89_141 rawBody89_158

def rawBody89_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody89_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody89_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody89_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody89_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody89_167 : StackLang.HolProg 64 :=
.seq rawBody89_165 rawBody89_166

def rawBody89_168 : StackLang.HolProg 64 :=
.seq rawBody89_164 rawBody89_167

def rawBody89_169 : StackLang.HolProg 64 :=
.seq rawBody89_163 rawBody89_168

def rawBody89_170 : StackLang.HolProg 64 :=
.seq rawBody89_162 rawBody89_169

def rawBody89_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody89_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody89_173 : StackLang.HolProg 64 :=
.seq rawBody89_171 rawBody89_172

def rawBody89_174 : StackLang.HolProg 64 :=
.call (some (rawBody89_170, 0, 89, 6)) (Sum.inl 88) (some (rawBody89_173, 89, 7))

def rawBody89_175 : StackLang.HolProg 64 :=
.seq rawBody89_161 rawBody89_174

def rawBody89_176 : StackLang.HolProg 64 :=
.seq rawBody89_160 rawBody89_175

def rawBody89_177 : StackLang.HolProg 64 :=
.seq rawBody89_159 rawBody89_176

def rawBody89_178 : StackLang.HolProg 64 :=
.seq rawBody89_140 rawBody89_177

def rawBody89_179 : StackLang.HolProg 64 :=
.seq rawBody89_137 rawBody89_178

def rawBody89_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody89_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody89_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody89_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody89_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody89_185 : StackLang.HolProg 64 :=
.seq rawBody89_183 rawBody89_184

def rawBody89_186 : StackLang.HolProg 64 :=
.seq rawBody89_182 rawBody89_185

def rawBody89_187 : StackLang.HolProg 64 :=
.seq rawBody89_181 rawBody89_186

def rawBody89_188 : StackLang.HolProg 64 :=
.seq rawBody89_180 rawBody89_187

def rawBody89_189 : StackLang.HolProg 64 :=
.seq rawBody89_179 rawBody89_188

def rawBody89_190 : StackLang.HolProg 64 :=
.seq rawBody89_136 rawBody89_189

def rawBody89_191 : StackLang.HolProg 64 :=
.seq rawBody89_135 rawBody89_190

def rawBody89_192 : StackLang.HolProg 64 :=
.seq rawBody89_134 rawBody89_191

def rawBody89_193 : StackLang.HolProg 64 :=
.seq rawBody89_133 rawBody89_192

def rawBody89_194 : StackLang.HolProg 64 :=
.seq rawBody89_132 rawBody89_193

def rawBody89_195 : StackLang.HolProg 64 :=
.seq rawBody89_85 rawBody89_194

def rawBody89_196 : StackLang.HolProg 64 :=
.seq rawBody89_82 rawBody89_195

def rawBody89_197 : StackLang.HolProg 64 :=
.seq rawBody89_81 rawBody89_196

def rawBody89_198 : StackLang.HolProg 64 :=
.seq rawBody89_78 rawBody89_197

def rawBody89_199 : StackLang.HolProg 64 :=
.seq rawBody89_77 rawBody89_198

def rawBody89_200 : StackLang.HolProg 64 :=
.seq rawBody89_76 rawBody89_199

def rawBody89_201 : StackLang.HolProg 64 :=
.seq rawBody89_3 rawBody89_200

def rawBody89_202 : StackLang.HolProg 64 :=
.seq rawBody89_2 rawBody89_201

def rawBody89_203 : StackLang.HolProg 64 :=
.seq rawBody89_1 rawBody89_202

def rawBody89_204 : StackLang.HolProg 64 :=
.seq rawBody89_0 rawBody89_203

def raw89 : StackLang.HolProg 64 := rawBody89_204
theorem raw89_eq : StackRawCall.compTop RawInfo.rawInfo (function89 (.list [])).1 = raw89 := by
  kernel_rfl
#print axioms raw89_eq
end InitECandidate.Proofs.BackendStages
