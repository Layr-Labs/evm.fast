import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function313
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody313_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 12

def rawBody313_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody313_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def rawBody313_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def rawBody313_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody313_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody313_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def rawBody313_8 : StackLang.HolProg 64 :=
.seq rawBody313_6 rawBody313_7

def rawBody313_9 : StackLang.HolProg 64 :=
.seq rawBody313_5 rawBody313_8

def rawBody313_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody313_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody313_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody313_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def rawBody313_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 10

def rawBody313_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 8

def rawBody313_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody313_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def rawBody313_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody313_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody313_20 : StackLang.HolProg 64 :=
.seq rawBody313_18 rawBody313_19

def rawBody313_21 : StackLang.HolProg 64 :=
.seq rawBody313_17 rawBody313_20

def rawBody313_22 : StackLang.HolProg 64 :=
.seq rawBody313_16 rawBody313_21

def rawBody313_23 : StackLang.HolProg 64 :=
.seq rawBody313_15 rawBody313_22

def rawBody313_24 : StackLang.HolProg 64 :=
.seq rawBody313_14 rawBody313_23

def rawBody313_25 : StackLang.HolProg 64 :=
.seq rawBody313_13 rawBody313_24

def rawBody313_26 : StackLang.HolProg 64 :=
.seq rawBody313_12 rawBody313_25

def rawBody313_27 : StackLang.HolProg 64 :=
.seq rawBody313_11 rawBody313_26

def rawBody313_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 863#64)

def rawBody313_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody313_31 : StackLang.HolProg 64 :=
.seq rawBody313_29 rawBody313_30

def rawBody313_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody313_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody313_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody313_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 313 3

def rawBody313_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody313_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody313_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody313_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody313_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody313_42 : StackLang.HolProg 64 :=
.seq rawBody313_40 rawBody313_41

def rawBody313_43 : StackLang.HolProg 64 :=
.seq rawBody313_39 rawBody313_42

def rawBody313_44 : StackLang.HolProg 64 :=
.seq rawBody313_38 rawBody313_43

def rawBody313_45 : StackLang.HolProg 64 :=
.seq rawBody313_37 rawBody313_44

def rawBody313_46 : StackLang.HolProg 64 :=
.seq rawBody313_36 rawBody313_45

def rawBody313_47 : StackLang.HolProg 64 :=
.seq rawBody313_35 rawBody313_46

def rawBody313_48 : StackLang.HolProg 64 :=
.seq rawBody313_34 rawBody313_47

def rawBody313_49 : StackLang.HolProg 64 :=
.seq rawBody313_33 rawBody313_48

def rawBody313_50 : StackLang.HolProg 64 :=
.seq rawBody313_32 rawBody313_49

def rawBody313_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody313_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody313_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody313_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody313_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody313_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 11

def rawBody313_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 10

def rawBody313_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody313_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def rawBody313_62 : StackLang.HolProg 64 :=
.seq rawBody313_60 rawBody313_61

def rawBody313_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody313_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody313_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody313_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody313_67 : StackLang.HolProg 64 :=
.seq rawBody313_65 rawBody313_66

def rawBody313_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody313_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody313_70 : StackLang.HolProg 64 :=
.seq rawBody313_68 rawBody313_69

def rawBody313_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody313_72 : StackLang.HolProg 64 :=
.seq rawBody313_70 rawBody313_71

def rawBody313_73 : StackLang.HolProg 64 :=
.seq rawBody313_67 rawBody313_72

def rawBody313_74 : StackLang.HolProg 64 :=
.seq rawBody313_64 rawBody313_73

def rawBody313_75 : StackLang.HolProg 64 :=
.seq rawBody313_63 rawBody313_74

def rawBody313_76 : StackLang.HolProg 64 :=
.seq rawBody313_62 rawBody313_75

def rawBody313_77 : StackLang.HolProg 64 :=
.seq rawBody313_59 rawBody313_76

def rawBody313_78 : StackLang.HolProg 64 :=
.seq rawBody313_58 rawBody313_77

def rawBody313_79 : StackLang.HolProg 64 :=
.seq rawBody313_57 rawBody313_78

def rawBody313_80 : StackLang.HolProg 64 :=
.seq rawBody313_56 rawBody313_79

def rawBody313_81 : StackLang.HolProg 64 :=
.seq rawBody313_55 rawBody313_80

def rawBody313_82 : StackLang.HolProg 64 :=
.seq rawBody313_54 rawBody313_81

def rawBody313_83 : StackLang.HolProg 64 :=
.seq rawBody313_53 rawBody313_82

def rawBody313_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 11

def rawBody313_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 10

def rawBody313_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody313_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def rawBody313_88 : StackLang.HolProg 64 :=
.seq rawBody313_86 rawBody313_87

def rawBody313_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody313_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody313_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody313_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody313_93 : StackLang.HolProg 64 :=
.seq rawBody313_91 rawBody313_92

def rawBody313_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody313_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody313_96 : StackLang.HolProg 64 :=
.seq rawBody313_94 rawBody313_95

def rawBody313_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody313_98 : StackLang.HolProg 64 :=
.seq rawBody313_96 rawBody313_97

def rawBody313_99 : StackLang.HolProg 64 :=
.seq rawBody313_93 rawBody313_98

def rawBody313_100 : StackLang.HolProg 64 :=
.seq rawBody313_90 rawBody313_99

def rawBody313_101 : StackLang.HolProg 64 :=
.seq rawBody313_89 rawBody313_100

def rawBody313_102 : StackLang.HolProg 64 :=
.seq rawBody313_88 rawBody313_101

def rawBody313_103 : StackLang.HolProg 64 :=
.seq rawBody313_85 rawBody313_102

def rawBody313_104 : StackLang.HolProg 64 :=
.seq rawBody313_84 rawBody313_103

def rawBody313_105 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody313_106 : StackLang.HolProg 64 :=
.seq rawBody313_104 rawBody313_105

def rawBody313_107 : StackLang.HolProg 64 :=
.call (some (rawBody313_83, 0, 313, 2)) (Sum.inl 79) (some (rawBody313_106, 313, 3))

def rawBody313_108 : StackLang.HolProg 64 :=
.seq rawBody313_52 rawBody313_107

def rawBody313_109 : StackLang.HolProg 64 :=
.seq rawBody313_51 rawBody313_108

def rawBody313_110 : StackLang.HolProg 64 :=
.seq rawBody313_50 rawBody313_109

def rawBody313_111 : StackLang.HolProg 64 :=
.seq rawBody313_31 rawBody313_110

def rawBody313_112 : StackLang.HolProg 64 :=
.seq rawBody313_28 rawBody313_111

def rawBody313_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody313_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody313_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody313_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 8

def rawBody313_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody313_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 10

def rawBody313_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody313_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def rawBody313_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 11

def rawBody313_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody313_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 12

def rawBody313_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody313_128 : StackLang.HolProg 64 :=
.seq rawBody313_126 rawBody313_127

def rawBody313_129 : StackLang.HolProg 64 :=
.seq rawBody313_125 rawBody313_128

def rawBody313_130 : StackLang.HolProg 64 :=
.seq rawBody313_124 rawBody313_129

def rawBody313_131 : StackLang.HolProg 64 :=
.seq rawBody313_123 rawBody313_130

def rawBody313_132 : StackLang.HolProg 64 :=
.seq rawBody313_122 rawBody313_131

def rawBody313_133 : StackLang.HolProg 64 :=
.seq rawBody313_121 rawBody313_132

def rawBody313_134 : StackLang.HolProg 64 :=
.seq rawBody313_120 rawBody313_133

def rawBody313_135 : StackLang.HolProg 64 :=
.seq rawBody313_119 rawBody313_134

def rawBody313_136 : StackLang.HolProg 64 :=
.seq rawBody313_118 rawBody313_135

def rawBody313_137 : StackLang.HolProg 64 :=
.seq rawBody313_117 rawBody313_136

def rawBody313_138 : StackLang.HolProg 64 :=
.seq rawBody313_116 rawBody313_137

def rawBody313_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody313_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody313_141 : StackLang.HolProg 64 :=
.seq rawBody313_139 rawBody313_140

def rawBody313_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody313_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody313_144 : StackLang.HolProg 64 :=
.seq rawBody313_142 rawBody313_143

def rawBody313_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def rawBody313_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody313_147 : StackLang.HolProg 64 :=
.seq rawBody313_145 rawBody313_146

def rawBody313_148 : StackLang.HolProg 64 :=
.seq rawBody313_144 rawBody313_147

def rawBody313_149 : StackLang.HolProg 64 :=
.seq rawBody313_141 rawBody313_148

def rawBody313_150 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody313_138 rawBody313_149

def rawBody313_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody313_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody313_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 11

def rawBody313_154 : StackLang.HolProg 64 :=
.seq rawBody313_152 rawBody313_153

def rawBody313_155 : StackLang.HolProg 64 :=
.seq rawBody313_151 rawBody313_154

def rawBody313_156 : StackLang.HolProg 64 :=
.seq rawBody313_150 rawBody313_155

def rawBody313_157 : StackLang.HolProg 64 :=
.seq rawBody313_115 rawBody313_156

def rawBody313_158 : StackLang.HolProg 64 :=
.seq rawBody313_114 rawBody313_157

def rawBody313_159 : StackLang.HolProg 64 :=
.seq rawBody313_113 rawBody313_158

def rawBody313_160 : StackLang.HolProg 64 :=
.seq rawBody313_112 rawBody313_159

def rawBody313_161 : StackLang.HolProg 64 :=
.seq rawBody313_27 rawBody313_160

def rawBody313_162 : StackLang.HolProg 64 :=
.seq rawBody313_10 rawBody313_161

def rawBody313_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody313_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def rawBody313_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 9

def rawBody313_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def rawBody313_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def rawBody313_168 : StackLang.HolProg 64 :=
.seq rawBody313_166 rawBody313_167

def rawBody313_169 : StackLang.HolProg 64 :=
.seq rawBody313_165 rawBody313_168

def rawBody313_170 : StackLang.HolProg 64 :=
.seq rawBody313_164 rawBody313_169

def rawBody313_171 : StackLang.HolProg 64 :=
.seq rawBody313_163 rawBody313_170

def rawBody313_172 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody313_162 rawBody313_171

def rawBody313_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody313_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody313_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 10

def rawBody313_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody313_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody313_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def rawBody313_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def rawBody313_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def rawBody313_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody313_182 : StackLang.HolProg 64 :=
.seq rawBody313_180 rawBody313_181

def rawBody313_183 : StackLang.HolProg 64 :=
.seq rawBody313_179 rawBody313_182

def rawBody313_184 : StackLang.HolProg 64 :=
.seq rawBody313_178 rawBody313_183

def rawBody313_185 : StackLang.HolProg 64 :=
.seq rawBody313_177 rawBody313_184

def rawBody313_186 : StackLang.HolProg 64 :=
.seq rawBody313_176 rawBody313_185

def rawBody313_187 : StackLang.HolProg 64 :=
.seq rawBody313_175 rawBody313_186

def rawBody313_188 : StackLang.HolProg 64 :=
.seq rawBody313_174 rawBody313_187

def rawBody313_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 864#64)

def rawBody313_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody313_192 : StackLang.HolProg 64 :=
.seq rawBody313_190 rawBody313_191

def rawBody313_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody313_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody313_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody313_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 313 5

def rawBody313_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody313_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody313_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody313_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody313_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody313_203 : StackLang.HolProg 64 :=
.seq rawBody313_201 rawBody313_202

def rawBody313_204 : StackLang.HolProg 64 :=
.seq rawBody313_200 rawBody313_203

def rawBody313_205 : StackLang.HolProg 64 :=
.seq rawBody313_199 rawBody313_204

def rawBody313_206 : StackLang.HolProg 64 :=
.seq rawBody313_198 rawBody313_205

def rawBody313_207 : StackLang.HolProg 64 :=
.seq rawBody313_197 rawBody313_206

def rawBody313_208 : StackLang.HolProg 64 :=
.seq rawBody313_196 rawBody313_207

def rawBody313_209 : StackLang.HolProg 64 :=
.seq rawBody313_195 rawBody313_208

def rawBody313_210 : StackLang.HolProg 64 :=
.seq rawBody313_194 rawBody313_209

def rawBody313_211 : StackLang.HolProg 64 :=
.seq rawBody313_193 rawBody313_210

def rawBody313_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody313_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody313_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody313_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody313_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody313_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def rawBody313_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def rawBody313_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def rawBody313_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody313_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody313_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def rawBody313_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody313_226 : StackLang.HolProg 64 :=
.seq rawBody313_224 rawBody313_225

def rawBody313_227 : StackLang.HolProg 64 :=
.seq rawBody313_223 rawBody313_226

def rawBody313_228 : StackLang.HolProg 64 :=
.seq rawBody313_222 rawBody313_227

def rawBody313_229 : StackLang.HolProg 64 :=
.seq rawBody313_221 rawBody313_228

def rawBody313_230 : StackLang.HolProg 64 :=
.seq rawBody313_220 rawBody313_229

def rawBody313_231 : StackLang.HolProg 64 :=
.seq rawBody313_219 rawBody313_230

def rawBody313_232 : StackLang.HolProg 64 :=
.seq rawBody313_218 rawBody313_231

def rawBody313_233 : StackLang.HolProg 64 :=
.seq rawBody313_217 rawBody313_232

def rawBody313_234 : StackLang.HolProg 64 :=
.seq rawBody313_216 rawBody313_233

def rawBody313_235 : StackLang.HolProg 64 :=
.seq rawBody313_215 rawBody313_234

def rawBody313_236 : StackLang.HolProg 64 :=
.seq rawBody313_214 rawBody313_235

def rawBody313_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def rawBody313_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def rawBody313_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def rawBody313_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody313_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody313_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def rawBody313_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody313_244 : StackLang.HolProg 64 :=
.seq rawBody313_242 rawBody313_243

def rawBody313_245 : StackLang.HolProg 64 :=
.seq rawBody313_241 rawBody313_244

def rawBody313_246 : StackLang.HolProg 64 :=
.seq rawBody313_240 rawBody313_245

def rawBody313_247 : StackLang.HolProg 64 :=
.seq rawBody313_239 rawBody313_246

def rawBody313_248 : StackLang.HolProg 64 :=
.seq rawBody313_238 rawBody313_247

def rawBody313_249 : StackLang.HolProg 64 :=
.seq rawBody313_237 rawBody313_248

def rawBody313_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody313_251 : StackLang.HolProg 64 :=
.seq rawBody313_249 rawBody313_250

def rawBody313_252 : StackLang.HolProg 64 :=
.call (some (rawBody313_236, 0, 313, 4)) (Sum.inl 291) (some (rawBody313_251, 313, 5))

def rawBody313_253 : StackLang.HolProg 64 :=
.seq rawBody313_213 rawBody313_252

def rawBody313_254 : StackLang.HolProg 64 :=
.seq rawBody313_212 rawBody313_253

def rawBody313_255 : StackLang.HolProg 64 :=
.seq rawBody313_211 rawBody313_254

def rawBody313_256 : StackLang.HolProg 64 :=
.seq rawBody313_192 rawBody313_255

def rawBody313_257 : StackLang.HolProg 64 :=
.seq rawBody313_189 rawBody313_256

def rawBody313_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody313_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody313_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody313_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 48#64))

def rawBody313_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 56#64))

def rawBody313_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody313_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody313_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 10

def rawBody313_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 9

def rawBody313_273 : StackLang.HolProg 64 :=
.seq rawBody313_271 rawBody313_272

def rawBody313_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 865#64)

def rawBody313_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody313_277 : StackLang.HolProg 64 :=
.seq rawBody313_275 rawBody313_276

def rawBody313_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody313_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody313_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody313_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 313 7

def rawBody313_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody313_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody313_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody313_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody313_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody313_288 : StackLang.HolProg 64 :=
.seq rawBody313_286 rawBody313_287

def rawBody313_289 : StackLang.HolProg 64 :=
.seq rawBody313_285 rawBody313_288

def rawBody313_290 : StackLang.HolProg 64 :=
.seq rawBody313_284 rawBody313_289

def rawBody313_291 : StackLang.HolProg 64 :=
.seq rawBody313_283 rawBody313_290

def rawBody313_292 : StackLang.HolProg 64 :=
.seq rawBody313_282 rawBody313_291

def rawBody313_293 : StackLang.HolProg 64 :=
.seq rawBody313_281 rawBody313_292

def rawBody313_294 : StackLang.HolProg 64 :=
.seq rawBody313_280 rawBody313_293

def rawBody313_295 : StackLang.HolProg 64 :=
.seq rawBody313_279 rawBody313_294

def rawBody313_296 : StackLang.HolProg 64 :=
.seq rawBody313_278 rawBody313_295

def rawBody313_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody313_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody313_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody313_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody313_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody313_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody313_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 10

def rawBody313_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def rawBody313_307 : StackLang.HolProg 64 :=
.seq rawBody313_305 rawBody313_306

def rawBody313_308 : StackLang.HolProg 64 :=
.seq rawBody313_304 rawBody313_307

def rawBody313_309 : StackLang.HolProg 64 :=
.seq rawBody313_303 rawBody313_308

def rawBody313_310 : StackLang.HolProg 64 :=
.seq rawBody313_302 rawBody313_309

def rawBody313_311 : StackLang.HolProg 64 :=
.seq rawBody313_301 rawBody313_310

def rawBody313_312 : StackLang.HolProg 64 :=
.seq rawBody313_300 rawBody313_311

def rawBody313_313 : StackLang.HolProg 64 :=
.seq rawBody313_299 rawBody313_312

def rawBody313_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody313_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 10

def rawBody313_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def rawBody313_317 : StackLang.HolProg 64 :=
.seq rawBody313_315 rawBody313_316

def rawBody313_318 : StackLang.HolProg 64 :=
.seq rawBody313_314 rawBody313_317

def rawBody313_319 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody313_320 : StackLang.HolProg 64 :=
.seq rawBody313_318 rawBody313_319

def rawBody313_321 : StackLang.HolProg 64 :=
.call (some (rawBody313_313, 0, 313, 6)) (Sum.inl 312) (some (rawBody313_320, 313, 7))

def rawBody313_322 : StackLang.HolProg 64 :=
.seq rawBody313_298 rawBody313_321

def rawBody313_323 : StackLang.HolProg 64 :=
.seq rawBody313_297 rawBody313_322

def rawBody313_324 : StackLang.HolProg 64 :=
.seq rawBody313_296 rawBody313_323

def rawBody313_325 : StackLang.HolProg 64 :=
.seq rawBody313_277 rawBody313_324

def rawBody313_326 : StackLang.HolProg 64 :=
.seq rawBody313_274 rawBody313_325

def rawBody313_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody313_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody313_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody313_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody313_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody313_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 297

def rawBody313_335 : StackLang.HolProg 64 :=
.seq rawBody313_333 rawBody313_334

def rawBody313_336 : StackLang.HolProg 64 :=
.seq rawBody313_332 rawBody313_335

def rawBody313_337 : StackLang.HolProg 64 :=
.seq rawBody313_331 rawBody313_336

def rawBody313_338 : StackLang.HolProg 64 :=
.seq rawBody313_330 rawBody313_337

def rawBody313_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody313_340 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody313_338 rawBody313_339

def rawBody313_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody313_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody313_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody313_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 12

def rawBody313_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody313_346 : StackLang.HolProg 64 :=
.seq rawBody313_344 rawBody313_345

def rawBody313_347 : StackLang.HolProg 64 :=
.seq rawBody313_343 rawBody313_346

def rawBody313_348 : StackLang.HolProg 64 :=
.seq rawBody313_342 rawBody313_347

def rawBody313_349 : StackLang.HolProg 64 :=
.seq rawBody313_341 rawBody313_348

def rawBody313_350 : StackLang.HolProg 64 :=
.seq rawBody313_340 rawBody313_349

def rawBody313_351 : StackLang.HolProg 64 :=
.seq rawBody313_329 rawBody313_350

def rawBody313_352 : StackLang.HolProg 64 :=
.seq rawBody313_328 rawBody313_351

def rawBody313_353 : StackLang.HolProg 64 :=
.seq rawBody313_327 rawBody313_352

def rawBody313_354 : StackLang.HolProg 64 :=
.seq rawBody313_326 rawBody313_353

def rawBody313_355 : StackLang.HolProg 64 :=
.seq rawBody313_273 rawBody313_354

def rawBody313_356 : StackLang.HolProg 64 :=
.seq rawBody313_270 rawBody313_355

def rawBody313_357 : StackLang.HolProg 64 :=
.seq rawBody313_269 rawBody313_356

def rawBody313_358 : StackLang.HolProg 64 :=
.seq rawBody313_268 rawBody313_357

def rawBody313_359 : StackLang.HolProg 64 :=
.seq rawBody313_267 rawBody313_358

def rawBody313_360 : StackLang.HolProg 64 :=
.seq rawBody313_266 rawBody313_359

def rawBody313_361 : StackLang.HolProg 64 :=
.seq rawBody313_265 rawBody313_360

def rawBody313_362 : StackLang.HolProg 64 :=
.seq rawBody313_264 rawBody313_361

def rawBody313_363 : StackLang.HolProg 64 :=
.seq rawBody313_263 rawBody313_362

def rawBody313_364 : StackLang.HolProg 64 :=
.seq rawBody313_262 rawBody313_363

def rawBody313_365 : StackLang.HolProg 64 :=
.seq rawBody313_261 rawBody313_364

def rawBody313_366 : StackLang.HolProg 64 :=
.seq rawBody313_260 rawBody313_365

def rawBody313_367 : StackLang.HolProg 64 :=
.seq rawBody313_259 rawBody313_366

def rawBody313_368 : StackLang.HolProg 64 :=
.seq rawBody313_258 rawBody313_367

def rawBody313_369 : StackLang.HolProg 64 :=
.seq rawBody313_257 rawBody313_368

def rawBody313_370 : StackLang.HolProg 64 :=
.seq rawBody313_188 rawBody313_369

def rawBody313_371 : StackLang.HolProg 64 :=
.seq rawBody313_173 rawBody313_370

def rawBody313_372 : StackLang.HolProg 64 :=
.seq rawBody313_172 rawBody313_371

def rawBody313_373 : StackLang.HolProg 64 :=
.seq rawBody313_9 rawBody313_372

def rawBody313_374 : StackLang.HolProg 64 :=
.seq rawBody313_4 rawBody313_373

def rawBody313_375 : StackLang.HolProg 64 :=
.seq rawBody313_3 rawBody313_374

def rawBody313_376 : StackLang.HolProg 64 :=
.seq rawBody313_2 rawBody313_375

def rawBody313_377 : StackLang.HolProg 64 :=
.seq rawBody313_1 rawBody313_376

def rawBody313_378 : StackLang.HolProg 64 :=
.seq rawBody313_0 rawBody313_377

def raw313 : StackLang.HolProg 64 := rawBody313_378
theorem raw313_eq : StackRawCall.compTop RawInfo.rawInfo (function313 (.list [])).1 = raw313 := by
  kernel_rfl
#print axioms raw313_eq
end InitECandidate.Proofs.BackendStages
