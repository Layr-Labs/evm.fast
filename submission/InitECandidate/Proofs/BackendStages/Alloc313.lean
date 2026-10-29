import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw313
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody313_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 12

def AllocBody313_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody313_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody313_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def AllocBody313_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody313_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody313_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def AllocBody313_8 : StackLang.HolProg 64 :=
.seq AllocBody313_6 AllocBody313_7

def AllocBody313_9 : StackLang.HolProg 64 :=
.seq AllocBody313_5 AllocBody313_8

def AllocBody313_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody313_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody313_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody313_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def AllocBody313_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 10

def AllocBody313_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 8

def AllocBody313_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody313_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody313_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody313_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody313_20 : StackLang.HolProg 64 :=
.seq AllocBody313_18 AllocBody313_19

def AllocBody313_21 : StackLang.HolProg 64 :=
.seq AllocBody313_17 AllocBody313_20

def AllocBody313_22 : StackLang.HolProg 64 :=
.seq AllocBody313_16 AllocBody313_21

def AllocBody313_23 : StackLang.HolProg 64 :=
.seq AllocBody313_15 AllocBody313_22

def AllocBody313_24 : StackLang.HolProg 64 :=
.seq AllocBody313_14 AllocBody313_23

def AllocBody313_25 : StackLang.HolProg 64 :=
.seq AllocBody313_13 AllocBody313_24

def AllocBody313_26 : StackLang.HolProg 64 :=
.seq AllocBody313_12 AllocBody313_25

def AllocBody313_27 : StackLang.HolProg 64 :=
.seq AllocBody313_11 AllocBody313_26

def AllocBody313_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 863#64)

def AllocBody313_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody313_31 : StackLang.HolProg 64 :=
.seq AllocBody313_29 AllocBody313_30

def AllocBody313_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody313_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody313_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody313_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 313 3

def AllocBody313_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody313_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody313_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody313_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody313_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody313_42 : StackLang.HolProg 64 :=
.seq AllocBody313_40 AllocBody313_41

def AllocBody313_43 : StackLang.HolProg 64 :=
.seq AllocBody313_39 AllocBody313_42

def AllocBody313_44 : StackLang.HolProg 64 :=
.seq AllocBody313_38 AllocBody313_43

def AllocBody313_45 : StackLang.HolProg 64 :=
.seq AllocBody313_37 AllocBody313_44

def AllocBody313_46 : StackLang.HolProg 64 :=
.seq AllocBody313_36 AllocBody313_45

def AllocBody313_47 : StackLang.HolProg 64 :=
.seq AllocBody313_35 AllocBody313_46

def AllocBody313_48 : StackLang.HolProg 64 :=
.seq AllocBody313_34 AllocBody313_47

def AllocBody313_49 : StackLang.HolProg 64 :=
.seq AllocBody313_33 AllocBody313_48

def AllocBody313_50 : StackLang.HolProg 64 :=
.seq AllocBody313_32 AllocBody313_49

def AllocBody313_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody313_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody313_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody313_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody313_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody313_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 11

def AllocBody313_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 10

def AllocBody313_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody313_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody313_62 : StackLang.HolProg 64 :=
.seq AllocBody313_60 AllocBody313_61

def AllocBody313_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody313_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody313_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody313_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody313_67 : StackLang.HolProg 64 :=
.seq AllocBody313_65 AllocBody313_66

def AllocBody313_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody313_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody313_70 : StackLang.HolProg 64 :=
.seq AllocBody313_68 AllocBody313_69

def AllocBody313_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody313_72 : StackLang.HolProg 64 :=
.seq AllocBody313_70 AllocBody313_71

def AllocBody313_73 : StackLang.HolProg 64 :=
.seq AllocBody313_67 AllocBody313_72

def AllocBody313_74 : StackLang.HolProg 64 :=
.seq AllocBody313_64 AllocBody313_73

def AllocBody313_75 : StackLang.HolProg 64 :=
.seq AllocBody313_63 AllocBody313_74

def AllocBody313_76 : StackLang.HolProg 64 :=
.seq AllocBody313_62 AllocBody313_75

def AllocBody313_77 : StackLang.HolProg 64 :=
.seq AllocBody313_59 AllocBody313_76

def AllocBody313_78 : StackLang.HolProg 64 :=
.seq AllocBody313_58 AllocBody313_77

def AllocBody313_79 : StackLang.HolProg 64 :=
.seq AllocBody313_57 AllocBody313_78

def AllocBody313_80 : StackLang.HolProg 64 :=
.seq AllocBody313_56 AllocBody313_79

def AllocBody313_81 : StackLang.HolProg 64 :=
.seq AllocBody313_55 AllocBody313_80

def AllocBody313_82 : StackLang.HolProg 64 :=
.seq AllocBody313_54 AllocBody313_81

def AllocBody313_83 : StackLang.HolProg 64 :=
.seq AllocBody313_53 AllocBody313_82

def AllocBody313_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 11

def AllocBody313_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 10

def AllocBody313_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody313_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody313_88 : StackLang.HolProg 64 :=
.seq AllocBody313_86 AllocBody313_87

def AllocBody313_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody313_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody313_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody313_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody313_93 : StackLang.HolProg 64 :=
.seq AllocBody313_91 AllocBody313_92

def AllocBody313_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody313_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody313_96 : StackLang.HolProg 64 :=
.seq AllocBody313_94 AllocBody313_95

def AllocBody313_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody313_98 : StackLang.HolProg 64 :=
.seq AllocBody313_96 AllocBody313_97

def AllocBody313_99 : StackLang.HolProg 64 :=
.seq AllocBody313_93 AllocBody313_98

def AllocBody313_100 : StackLang.HolProg 64 :=
.seq AllocBody313_90 AllocBody313_99

def AllocBody313_101 : StackLang.HolProg 64 :=
.seq AllocBody313_89 AllocBody313_100

def AllocBody313_102 : StackLang.HolProg 64 :=
.seq AllocBody313_88 AllocBody313_101

def AllocBody313_103 : StackLang.HolProg 64 :=
.seq AllocBody313_85 AllocBody313_102

def AllocBody313_104 : StackLang.HolProg 64 :=
.seq AllocBody313_84 AllocBody313_103

def AllocBody313_105 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody313_106 : StackLang.HolProg 64 :=
.seq AllocBody313_104 AllocBody313_105

def AllocBody313_107 : StackLang.HolProg 64 :=
.call (some (AllocBody313_83, 0, 313, 2)) (Sum.inl 79) (some (AllocBody313_106, 313, 3))

def AllocBody313_108 : StackLang.HolProg 64 :=
.seq AllocBody313_52 AllocBody313_107

def AllocBody313_109 : StackLang.HolProg 64 :=
.seq AllocBody313_51 AllocBody313_108

def AllocBody313_110 : StackLang.HolProg 64 :=
.seq AllocBody313_50 AllocBody313_109

def AllocBody313_111 : StackLang.HolProg 64 :=
.seq AllocBody313_31 AllocBody313_110

def AllocBody313_112 : StackLang.HolProg 64 :=
.seq AllocBody313_28 AllocBody313_111

def AllocBody313_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody313_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody313_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody313_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 8

def AllocBody313_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody313_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 10

def AllocBody313_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody313_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def AllocBody313_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 11

def AllocBody313_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody313_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 12

def AllocBody313_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody313_128 : StackLang.HolProg 64 :=
.seq AllocBody313_126 AllocBody313_127

def AllocBody313_129 : StackLang.HolProg 64 :=
.seq AllocBody313_125 AllocBody313_128

def AllocBody313_130 : StackLang.HolProg 64 :=
.seq AllocBody313_124 AllocBody313_129

def AllocBody313_131 : StackLang.HolProg 64 :=
.seq AllocBody313_123 AllocBody313_130

def AllocBody313_132 : StackLang.HolProg 64 :=
.seq AllocBody313_122 AllocBody313_131

def AllocBody313_133 : StackLang.HolProg 64 :=
.seq AllocBody313_121 AllocBody313_132

def AllocBody313_134 : StackLang.HolProg 64 :=
.seq AllocBody313_120 AllocBody313_133

def AllocBody313_135 : StackLang.HolProg 64 :=
.seq AllocBody313_119 AllocBody313_134

def AllocBody313_136 : StackLang.HolProg 64 :=
.seq AllocBody313_118 AllocBody313_135

def AllocBody313_137 : StackLang.HolProg 64 :=
.seq AllocBody313_117 AllocBody313_136

def AllocBody313_138 : StackLang.HolProg 64 :=
.seq AllocBody313_116 AllocBody313_137

def AllocBody313_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody313_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody313_141 : StackLang.HolProg 64 :=
.seq AllocBody313_139 AllocBody313_140

def AllocBody313_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody313_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody313_144 : StackLang.HolProg 64 :=
.seq AllocBody313_142 AllocBody313_143

def AllocBody313_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody313_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody313_147 : StackLang.HolProg 64 :=
.seq AllocBody313_145 AllocBody313_146

def AllocBody313_148 : StackLang.HolProg 64 :=
.seq AllocBody313_144 AllocBody313_147

def AllocBody313_149 : StackLang.HolProg 64 :=
.seq AllocBody313_141 AllocBody313_148

def AllocBody313_150 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody313_138 AllocBody313_149

def AllocBody313_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody313_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody313_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 11

def AllocBody313_154 : StackLang.HolProg 64 :=
.seq AllocBody313_152 AllocBody313_153

def AllocBody313_155 : StackLang.HolProg 64 :=
.seq AllocBody313_151 AllocBody313_154

def AllocBody313_156 : StackLang.HolProg 64 :=
.seq AllocBody313_150 AllocBody313_155

def AllocBody313_157 : StackLang.HolProg 64 :=
.seq AllocBody313_115 AllocBody313_156

def AllocBody313_158 : StackLang.HolProg 64 :=
.seq AllocBody313_114 AllocBody313_157

def AllocBody313_159 : StackLang.HolProg 64 :=
.seq AllocBody313_113 AllocBody313_158

def AllocBody313_160 : StackLang.HolProg 64 :=
.seq AllocBody313_112 AllocBody313_159

def AllocBody313_161 : StackLang.HolProg 64 :=
.seq AllocBody313_27 AllocBody313_160

def AllocBody313_162 : StackLang.HolProg 64 :=
.seq AllocBody313_10 AllocBody313_161

def AllocBody313_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody313_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def AllocBody313_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 9

def AllocBody313_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody313_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def AllocBody313_168 : StackLang.HolProg 64 :=
.seq AllocBody313_166 AllocBody313_167

def AllocBody313_169 : StackLang.HolProg 64 :=
.seq AllocBody313_165 AllocBody313_168

def AllocBody313_170 : StackLang.HolProg 64 :=
.seq AllocBody313_164 AllocBody313_169

def AllocBody313_171 : StackLang.HolProg 64 :=
.seq AllocBody313_163 AllocBody313_170

def AllocBody313_172 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody313_162 AllocBody313_171

def AllocBody313_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody313_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody313_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 10

def AllocBody313_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody313_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody313_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody313_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def AllocBody313_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def AllocBody313_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody313_182 : StackLang.HolProg 64 :=
.seq AllocBody313_180 AllocBody313_181

def AllocBody313_183 : StackLang.HolProg 64 :=
.seq AllocBody313_179 AllocBody313_182

def AllocBody313_184 : StackLang.HolProg 64 :=
.seq AllocBody313_178 AllocBody313_183

def AllocBody313_185 : StackLang.HolProg 64 :=
.seq AllocBody313_177 AllocBody313_184

def AllocBody313_186 : StackLang.HolProg 64 :=
.seq AllocBody313_176 AllocBody313_185

def AllocBody313_187 : StackLang.HolProg 64 :=
.seq AllocBody313_175 AllocBody313_186

def AllocBody313_188 : StackLang.HolProg 64 :=
.seq AllocBody313_174 AllocBody313_187

def AllocBody313_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 864#64)

def AllocBody313_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody313_192 : StackLang.HolProg 64 :=
.seq AllocBody313_190 AllocBody313_191

def AllocBody313_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody313_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody313_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody313_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 313 5

def AllocBody313_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody313_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody313_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody313_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody313_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody313_203 : StackLang.HolProg 64 :=
.seq AllocBody313_201 AllocBody313_202

def AllocBody313_204 : StackLang.HolProg 64 :=
.seq AllocBody313_200 AllocBody313_203

def AllocBody313_205 : StackLang.HolProg 64 :=
.seq AllocBody313_199 AllocBody313_204

def AllocBody313_206 : StackLang.HolProg 64 :=
.seq AllocBody313_198 AllocBody313_205

def AllocBody313_207 : StackLang.HolProg 64 :=
.seq AllocBody313_197 AllocBody313_206

def AllocBody313_208 : StackLang.HolProg 64 :=
.seq AllocBody313_196 AllocBody313_207

def AllocBody313_209 : StackLang.HolProg 64 :=
.seq AllocBody313_195 AllocBody313_208

def AllocBody313_210 : StackLang.HolProg 64 :=
.seq AllocBody313_194 AllocBody313_209

def AllocBody313_211 : StackLang.HolProg 64 :=
.seq AllocBody313_193 AllocBody313_210

def AllocBody313_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody313_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody313_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody313_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody313_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody313_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody313_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def AllocBody313_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody313_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody313_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody313_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody313_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody313_226 : StackLang.HolProg 64 :=
.seq AllocBody313_224 AllocBody313_225

def AllocBody313_227 : StackLang.HolProg 64 :=
.seq AllocBody313_223 AllocBody313_226

def AllocBody313_228 : StackLang.HolProg 64 :=
.seq AllocBody313_222 AllocBody313_227

def AllocBody313_229 : StackLang.HolProg 64 :=
.seq AllocBody313_221 AllocBody313_228

def AllocBody313_230 : StackLang.HolProg 64 :=
.seq AllocBody313_220 AllocBody313_229

def AllocBody313_231 : StackLang.HolProg 64 :=
.seq AllocBody313_219 AllocBody313_230

def AllocBody313_232 : StackLang.HolProg 64 :=
.seq AllocBody313_218 AllocBody313_231

def AllocBody313_233 : StackLang.HolProg 64 :=
.seq AllocBody313_217 AllocBody313_232

def AllocBody313_234 : StackLang.HolProg 64 :=
.seq AllocBody313_216 AllocBody313_233

def AllocBody313_235 : StackLang.HolProg 64 :=
.seq AllocBody313_215 AllocBody313_234

def AllocBody313_236 : StackLang.HolProg 64 :=
.seq AllocBody313_214 AllocBody313_235

def AllocBody313_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody313_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def AllocBody313_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody313_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody313_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody313_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody313_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody313_244 : StackLang.HolProg 64 :=
.seq AllocBody313_242 AllocBody313_243

def AllocBody313_245 : StackLang.HolProg 64 :=
.seq AllocBody313_241 AllocBody313_244

def AllocBody313_246 : StackLang.HolProg 64 :=
.seq AllocBody313_240 AllocBody313_245

def AllocBody313_247 : StackLang.HolProg 64 :=
.seq AllocBody313_239 AllocBody313_246

def AllocBody313_248 : StackLang.HolProg 64 :=
.seq AllocBody313_238 AllocBody313_247

def AllocBody313_249 : StackLang.HolProg 64 :=
.seq AllocBody313_237 AllocBody313_248

def AllocBody313_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody313_251 : StackLang.HolProg 64 :=
.seq AllocBody313_249 AllocBody313_250

def AllocBody313_252 : StackLang.HolProg 64 :=
.call (some (AllocBody313_236, 0, 313, 4)) (Sum.inl 291) (some (AllocBody313_251, 313, 5))

def AllocBody313_253 : StackLang.HolProg 64 :=
.seq AllocBody313_213 AllocBody313_252

def AllocBody313_254 : StackLang.HolProg 64 :=
.seq AllocBody313_212 AllocBody313_253

def AllocBody313_255 : StackLang.HolProg 64 :=
.seq AllocBody313_211 AllocBody313_254

def AllocBody313_256 : StackLang.HolProg 64 :=
.seq AllocBody313_192 AllocBody313_255

def AllocBody313_257 : StackLang.HolProg 64 :=
.seq AllocBody313_189 AllocBody313_256

def AllocBody313_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody313_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody313_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody313_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 48#64))

def AllocBody313_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 56#64))

def AllocBody313_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody313_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody313_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 10

def AllocBody313_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 9

def AllocBody313_273 : StackLang.HolProg 64 :=
.seq AllocBody313_271 AllocBody313_272

def AllocBody313_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 865#64)

def AllocBody313_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody313_277 : StackLang.HolProg 64 :=
.seq AllocBody313_275 AllocBody313_276

def AllocBody313_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody313_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody313_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody313_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 313 7

def AllocBody313_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody313_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody313_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody313_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody313_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody313_288 : StackLang.HolProg 64 :=
.seq AllocBody313_286 AllocBody313_287

def AllocBody313_289 : StackLang.HolProg 64 :=
.seq AllocBody313_285 AllocBody313_288

def AllocBody313_290 : StackLang.HolProg 64 :=
.seq AllocBody313_284 AllocBody313_289

def AllocBody313_291 : StackLang.HolProg 64 :=
.seq AllocBody313_283 AllocBody313_290

def AllocBody313_292 : StackLang.HolProg 64 :=
.seq AllocBody313_282 AllocBody313_291

def AllocBody313_293 : StackLang.HolProg 64 :=
.seq AllocBody313_281 AllocBody313_292

def AllocBody313_294 : StackLang.HolProg 64 :=
.seq AllocBody313_280 AllocBody313_293

def AllocBody313_295 : StackLang.HolProg 64 :=
.seq AllocBody313_279 AllocBody313_294

def AllocBody313_296 : StackLang.HolProg 64 :=
.seq AllocBody313_278 AllocBody313_295

def AllocBody313_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody313_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody313_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody313_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody313_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody313_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody313_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 10

def AllocBody313_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody313_307 : StackLang.HolProg 64 :=
.seq AllocBody313_305 AllocBody313_306

def AllocBody313_308 : StackLang.HolProg 64 :=
.seq AllocBody313_304 AllocBody313_307

def AllocBody313_309 : StackLang.HolProg 64 :=
.seq AllocBody313_303 AllocBody313_308

def AllocBody313_310 : StackLang.HolProg 64 :=
.seq AllocBody313_302 AllocBody313_309

def AllocBody313_311 : StackLang.HolProg 64 :=
.seq AllocBody313_301 AllocBody313_310

def AllocBody313_312 : StackLang.HolProg 64 :=
.seq AllocBody313_300 AllocBody313_311

def AllocBody313_313 : StackLang.HolProg 64 :=
.seq AllocBody313_299 AllocBody313_312

def AllocBody313_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody313_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 10

def AllocBody313_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody313_317 : StackLang.HolProg 64 :=
.seq AllocBody313_315 AllocBody313_316

def AllocBody313_318 : StackLang.HolProg 64 :=
.seq AllocBody313_314 AllocBody313_317

def AllocBody313_319 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody313_320 : StackLang.HolProg 64 :=
.seq AllocBody313_318 AllocBody313_319

def AllocBody313_321 : StackLang.HolProg 64 :=
.call (some (AllocBody313_313, 0, 313, 6)) (Sum.inl 312) (some (AllocBody313_320, 313, 7))

def AllocBody313_322 : StackLang.HolProg 64 :=
.seq AllocBody313_298 AllocBody313_321

def AllocBody313_323 : StackLang.HolProg 64 :=
.seq AllocBody313_297 AllocBody313_322

def AllocBody313_324 : StackLang.HolProg 64 :=
.seq AllocBody313_296 AllocBody313_323

def AllocBody313_325 : StackLang.HolProg 64 :=
.seq AllocBody313_277 AllocBody313_324

def AllocBody313_326 : StackLang.HolProg 64 :=
.seq AllocBody313_274 AllocBody313_325

def AllocBody313_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody313_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody313_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody313_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody313_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody313_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 297

def AllocBody313_335 : StackLang.HolProg 64 :=
.seq AllocBody313_333 AllocBody313_334

def AllocBody313_336 : StackLang.HolProg 64 :=
.seq AllocBody313_332 AllocBody313_335

def AllocBody313_337 : StackLang.HolProg 64 :=
.seq AllocBody313_331 AllocBody313_336

def AllocBody313_338 : StackLang.HolProg 64 :=
.seq AllocBody313_330 AllocBody313_337

def AllocBody313_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody313_340 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody313_338 AllocBody313_339

def AllocBody313_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody313_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody313_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody313_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 12

def AllocBody313_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody313_346 : StackLang.HolProg 64 :=
.seq AllocBody313_344 AllocBody313_345

def AllocBody313_347 : StackLang.HolProg 64 :=
.seq AllocBody313_343 AllocBody313_346

def AllocBody313_348 : StackLang.HolProg 64 :=
.seq AllocBody313_342 AllocBody313_347

def AllocBody313_349 : StackLang.HolProg 64 :=
.seq AllocBody313_341 AllocBody313_348

def AllocBody313_350 : StackLang.HolProg 64 :=
.seq AllocBody313_340 AllocBody313_349

def AllocBody313_351 : StackLang.HolProg 64 :=
.seq AllocBody313_329 AllocBody313_350

def AllocBody313_352 : StackLang.HolProg 64 :=
.seq AllocBody313_328 AllocBody313_351

def AllocBody313_353 : StackLang.HolProg 64 :=
.seq AllocBody313_327 AllocBody313_352

def AllocBody313_354 : StackLang.HolProg 64 :=
.seq AllocBody313_326 AllocBody313_353

def AllocBody313_355 : StackLang.HolProg 64 :=
.seq AllocBody313_273 AllocBody313_354

def AllocBody313_356 : StackLang.HolProg 64 :=
.seq AllocBody313_270 AllocBody313_355

def AllocBody313_357 : StackLang.HolProg 64 :=
.seq AllocBody313_269 AllocBody313_356

def AllocBody313_358 : StackLang.HolProg 64 :=
.seq AllocBody313_268 AllocBody313_357

def AllocBody313_359 : StackLang.HolProg 64 :=
.seq AllocBody313_267 AllocBody313_358

def AllocBody313_360 : StackLang.HolProg 64 :=
.seq AllocBody313_266 AllocBody313_359

def AllocBody313_361 : StackLang.HolProg 64 :=
.seq AllocBody313_265 AllocBody313_360

def AllocBody313_362 : StackLang.HolProg 64 :=
.seq AllocBody313_264 AllocBody313_361

def AllocBody313_363 : StackLang.HolProg 64 :=
.seq AllocBody313_263 AllocBody313_362

def AllocBody313_364 : StackLang.HolProg 64 :=
.seq AllocBody313_262 AllocBody313_363

def AllocBody313_365 : StackLang.HolProg 64 :=
.seq AllocBody313_261 AllocBody313_364

def AllocBody313_366 : StackLang.HolProg 64 :=
.seq AllocBody313_260 AllocBody313_365

def AllocBody313_367 : StackLang.HolProg 64 :=
.seq AllocBody313_259 AllocBody313_366

def AllocBody313_368 : StackLang.HolProg 64 :=
.seq AllocBody313_258 AllocBody313_367

def AllocBody313_369 : StackLang.HolProg 64 :=
.seq AllocBody313_257 AllocBody313_368

def AllocBody313_370 : StackLang.HolProg 64 :=
.seq AllocBody313_188 AllocBody313_369

def AllocBody313_371 : StackLang.HolProg 64 :=
.seq AllocBody313_173 AllocBody313_370

def AllocBody313_372 : StackLang.HolProg 64 :=
.seq AllocBody313_172 AllocBody313_371

def AllocBody313_373 : StackLang.HolProg 64 :=
.seq AllocBody313_9 AllocBody313_372

def AllocBody313_374 : StackLang.HolProg 64 :=
.seq AllocBody313_4 AllocBody313_373

def AllocBody313_375 : StackLang.HolProg 64 :=
.seq AllocBody313_3 AllocBody313_374

def AllocBody313_376 : StackLang.HolProg 64 :=
.seq AllocBody313_2 AllocBody313_375

def AllocBody313_377 : StackLang.HolProg 64 :=
.seq AllocBody313_1 AllocBody313_376

def AllocBody313_378 : StackLang.HolProg 64 :=
.seq AllocBody313_0 AllocBody313_377

def Alloc313 : Nat × StackLang.HolProg 64 := (313, AllocBody313_378)
theorem Alloc313_eq : StackAlloc.progComp (313, raw313) = Alloc313 := by
  kernel_rfl
#print axioms Alloc313_eq
end InitECandidate.Proofs.BackendStages
