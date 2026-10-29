import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw148
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody148_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody148_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody148_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody148_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody148_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody148_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def AllocBody148_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody148_7 : StackLang.HolProg 64 :=
.seq AllocBody148_5 AllocBody148_6

def AllocBody148_8 : StackLang.HolProg 64 :=
.seq AllocBody148_4 AllocBody148_7

def AllocBody148_9 : StackLang.HolProg 64 :=
.seq AllocBody148_3 AllocBody148_8

def AllocBody148_10 : StackLang.HolProg 64 :=
.seq AllocBody148_2 AllocBody148_9

def AllocBody148_11 : StackLang.HolProg 64 :=
.seq AllocBody148_1 AllocBody148_10

def AllocBody148_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 124#64)

def AllocBody148_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody148_15 : StackLang.HolProg 64 :=
.seq AllocBody148_13 AllocBody148_14

def AllocBody148_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody148_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody148_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody148_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 148 3

def AllocBody148_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody148_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody148_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody148_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody148_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody148_26 : StackLang.HolProg 64 :=
.seq AllocBody148_24 AllocBody148_25

def AllocBody148_27 : StackLang.HolProg 64 :=
.seq AllocBody148_23 AllocBody148_26

def AllocBody148_28 : StackLang.HolProg 64 :=
.seq AllocBody148_22 AllocBody148_27

def AllocBody148_29 : StackLang.HolProg 64 :=
.seq AllocBody148_21 AllocBody148_28

def AllocBody148_30 : StackLang.HolProg 64 :=
.seq AllocBody148_20 AllocBody148_29

def AllocBody148_31 : StackLang.HolProg 64 :=
.seq AllocBody148_19 AllocBody148_30

def AllocBody148_32 : StackLang.HolProg 64 :=
.seq AllocBody148_18 AllocBody148_31

def AllocBody148_33 : StackLang.HolProg 64 :=
.seq AllocBody148_17 AllocBody148_32

def AllocBody148_34 : StackLang.HolProg 64 :=
.seq AllocBody148_16 AllocBody148_33

def AllocBody148_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody148_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody148_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody148_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody148_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody148_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody148_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody148_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody148_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody148_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody148_47 : StackLang.HolProg 64 :=
.seq AllocBody148_45 AllocBody148_46

def AllocBody148_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody148_49 : StackLang.HolProg 64 :=
.seq AllocBody148_47 AllocBody148_48

def AllocBody148_50 : StackLang.HolProg 64 :=
.seq AllocBody148_44 AllocBody148_49

def AllocBody148_51 : StackLang.HolProg 64 :=
.seq AllocBody148_43 AllocBody148_50

def AllocBody148_52 : StackLang.HolProg 64 :=
.seq AllocBody148_42 AllocBody148_51

def AllocBody148_53 : StackLang.HolProg 64 :=
.seq AllocBody148_41 AllocBody148_52

def AllocBody148_54 : StackLang.HolProg 64 :=
.seq AllocBody148_40 AllocBody148_53

def AllocBody148_55 : StackLang.HolProg 64 :=
.seq AllocBody148_39 AllocBody148_54

def AllocBody148_56 : StackLang.HolProg 64 :=
.seq AllocBody148_38 AllocBody148_55

def AllocBody148_57 : StackLang.HolProg 64 :=
.seq AllocBody148_37 AllocBody148_56

def AllocBody148_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody148_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody148_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody148_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody148_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody148_63 : StackLang.HolProg 64 :=
.seq AllocBody148_61 AllocBody148_62

def AllocBody148_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody148_65 : StackLang.HolProg 64 :=
.seq AllocBody148_63 AllocBody148_64

def AllocBody148_66 : StackLang.HolProg 64 :=
.seq AllocBody148_60 AllocBody148_65

def AllocBody148_67 : StackLang.HolProg 64 :=
.seq AllocBody148_59 AllocBody148_66

def AllocBody148_68 : StackLang.HolProg 64 :=
.seq AllocBody148_58 AllocBody148_67

def AllocBody148_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody148_70 : StackLang.HolProg 64 :=
.seq AllocBody148_68 AllocBody148_69

def AllocBody148_71 : StackLang.HolProg 64 :=
.call (some (AllocBody148_57, 0, 148, 2)) (Sum.inl 139) (some (AllocBody148_70, 148, 3))

def AllocBody148_72 : StackLang.HolProg 64 :=
.seq AllocBody148_36 AllocBody148_71

def AllocBody148_73 : StackLang.HolProg 64 :=
.seq AllocBody148_35 AllocBody148_72

def AllocBody148_74 : StackLang.HolProg 64 :=
.seq AllocBody148_34 AllocBody148_73

def AllocBody148_75 : StackLang.HolProg 64 :=
.seq AllocBody148_15 AllocBody148_74

def AllocBody148_76 : StackLang.HolProg 64 :=
.seq AllocBody148_12 AllocBody148_75

def AllocBody148_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody148_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody148_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody148_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody148_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody148_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody148_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody148_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody148_89 : StackLang.HolProg 64 :=
.seq AllocBody148_87 AllocBody148_88

def AllocBody148_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody148_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody148_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody148_93 : StackLang.HolProg 64 :=
.seq AllocBody148_91 AllocBody148_92

def AllocBody148_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody148_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody148_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 6

def AllocBody148_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody148_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody148_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody148_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody148_101 : StackLang.HolProg 64 :=
.seq AllocBody148_99 AllocBody148_100

def AllocBody148_102 : StackLang.HolProg 64 :=
.seq AllocBody148_98 AllocBody148_101

def AllocBody148_103 : StackLang.HolProg 64 :=
.seq AllocBody148_97 AllocBody148_102

def AllocBody148_104 : StackLang.HolProg 64 :=
.seq AllocBody148_96 AllocBody148_103

def AllocBody148_105 : StackLang.HolProg 64 :=
.seq AllocBody148_95 AllocBody148_104

def AllocBody148_106 : StackLang.HolProg 64 :=
.seq AllocBody148_94 AllocBody148_105

def AllocBody148_107 : StackLang.HolProg 64 :=
.seq AllocBody148_93 AllocBody148_106

def AllocBody148_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 125#64)

def AllocBody148_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody148_111 : StackLang.HolProg 64 :=
.seq AllocBody148_109 AllocBody148_110

def AllocBody148_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody148_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody148_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody148_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 148 5

def AllocBody148_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody148_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody148_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody148_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody148_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody148_122 : StackLang.HolProg 64 :=
.seq AllocBody148_120 AllocBody148_121

def AllocBody148_123 : StackLang.HolProg 64 :=
.seq AllocBody148_119 AllocBody148_122

def AllocBody148_124 : StackLang.HolProg 64 :=
.seq AllocBody148_118 AllocBody148_123

def AllocBody148_125 : StackLang.HolProg 64 :=
.seq AllocBody148_117 AllocBody148_124

def AllocBody148_126 : StackLang.HolProg 64 :=
.seq AllocBody148_116 AllocBody148_125

def AllocBody148_127 : StackLang.HolProg 64 :=
.seq AllocBody148_115 AllocBody148_126

def AllocBody148_128 : StackLang.HolProg 64 :=
.seq AllocBody148_114 AllocBody148_127

def AllocBody148_129 : StackLang.HolProg 64 :=
.seq AllocBody148_113 AllocBody148_128

def AllocBody148_130 : StackLang.HolProg 64 :=
.seq AllocBody148_112 AllocBody148_129

def AllocBody148_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody148_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody148_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody148_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody148_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody148_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 9

def AllocBody148_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody148_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody148_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody148_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody148_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody148_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody148_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def AllocBody148_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody148_147 : StackLang.HolProg 64 :=
.seq AllocBody148_145 AllocBody148_146

def AllocBody148_148 : StackLang.HolProg 64 :=
.seq AllocBody148_144 AllocBody148_147

def AllocBody148_149 : StackLang.HolProg 64 :=
.seq AllocBody148_143 AllocBody148_148

def AllocBody148_150 : StackLang.HolProg 64 :=
.seq AllocBody148_142 AllocBody148_149

def AllocBody148_151 : StackLang.HolProg 64 :=
.seq AllocBody148_141 AllocBody148_150

def AllocBody148_152 : StackLang.HolProg 64 :=
.seq AllocBody148_140 AllocBody148_151

def AllocBody148_153 : StackLang.HolProg 64 :=
.seq AllocBody148_139 AllocBody148_152

def AllocBody148_154 : StackLang.HolProg 64 :=
.seq AllocBody148_138 AllocBody148_153

def AllocBody148_155 : StackLang.HolProg 64 :=
.seq AllocBody148_137 AllocBody148_154

def AllocBody148_156 : StackLang.HolProg 64 :=
.seq AllocBody148_136 AllocBody148_155

def AllocBody148_157 : StackLang.HolProg 64 :=
.seq AllocBody148_135 AllocBody148_156

def AllocBody148_158 : StackLang.HolProg 64 :=
.seq AllocBody148_134 AllocBody148_157

def AllocBody148_159 : StackLang.HolProg 64 :=
.seq AllocBody148_133 AllocBody148_158

def AllocBody148_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 9

def AllocBody148_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody148_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody148_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody148_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody148_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody148_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody148_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def AllocBody148_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody148_169 : StackLang.HolProg 64 :=
.seq AllocBody148_167 AllocBody148_168

def AllocBody148_170 : StackLang.HolProg 64 :=
.seq AllocBody148_166 AllocBody148_169

def AllocBody148_171 : StackLang.HolProg 64 :=
.seq AllocBody148_165 AllocBody148_170

def AllocBody148_172 : StackLang.HolProg 64 :=
.seq AllocBody148_164 AllocBody148_171

def AllocBody148_173 : StackLang.HolProg 64 :=
.seq AllocBody148_163 AllocBody148_172

def AllocBody148_174 : StackLang.HolProg 64 :=
.seq AllocBody148_162 AllocBody148_173

def AllocBody148_175 : StackLang.HolProg 64 :=
.seq AllocBody148_161 AllocBody148_174

def AllocBody148_176 : StackLang.HolProg 64 :=
.seq AllocBody148_160 AllocBody148_175

def AllocBody148_177 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody148_178 : StackLang.HolProg 64 :=
.seq AllocBody148_176 AllocBody148_177

def AllocBody148_179 : StackLang.HolProg 64 :=
.call (some (AllocBody148_159, 0, 148, 4)) (Sum.inl 103) (some (AllocBody148_178, 148, 5))

def AllocBody148_180 : StackLang.HolProg 64 :=
.seq AllocBody148_132 AllocBody148_179

def AllocBody148_181 : StackLang.HolProg 64 :=
.seq AllocBody148_131 AllocBody148_180

def AllocBody148_182 : StackLang.HolProg 64 :=
.seq AllocBody148_130 AllocBody148_181

def AllocBody148_183 : StackLang.HolProg 64 :=
.seq AllocBody148_111 AllocBody148_182

def AllocBody148_184 : StackLang.HolProg 64 :=
.seq AllocBody148_108 AllocBody148_183

def AllocBody148_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody148_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody148_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody148_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody148_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody148_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def AllocBody148_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def AllocBody148_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody148_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 9

def AllocBody148_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def AllocBody148_199 : StackLang.HolProg 64 :=
.seq AllocBody148_197 AllocBody148_198

def AllocBody148_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody148_201 : StackLang.HolProg 64 :=
.seq AllocBody148_199 AllocBody148_200

def AllocBody148_202 : StackLang.HolProg 64 :=
.seq AllocBody148_196 AllocBody148_201

def AllocBody148_203 : StackLang.HolProg 64 :=
.seq AllocBody148_195 AllocBody148_202

def AllocBody148_204 : StackLang.HolProg 64 :=
.seq AllocBody148_194 AllocBody148_203

def AllocBody148_205 : StackLang.HolProg 64 :=
.seq AllocBody148_193 AllocBody148_204

def AllocBody148_206 : StackLang.HolProg 64 :=
.seq AllocBody148_192 AllocBody148_205

def AllocBody148_207 : StackLang.HolProg 64 :=
.seq AllocBody148_191 AllocBody148_206

def AllocBody148_208 : StackLang.HolProg 64 :=
.seq AllocBody148_190 AllocBody148_207

def AllocBody148_209 : StackLang.HolProg 64 :=
.seq AllocBody148_189 AllocBody148_208

def AllocBody148_210 : StackLang.HolProg 64 :=
.seq AllocBody148_188 AllocBody148_209

def AllocBody148_211 : StackLang.HolProg 64 :=
.seq AllocBody148_187 AllocBody148_210

def AllocBody148_212 : StackLang.HolProg 64 :=
.seq AllocBody148_186 AllocBody148_211

def AllocBody148_213 : StackLang.HolProg 64 :=
.seq AllocBody148_185 AllocBody148_212

def AllocBody148_214 : StackLang.HolProg 64 :=
.seq AllocBody148_184 AllocBody148_213

def AllocBody148_215 : StackLang.HolProg 64 :=
.seq AllocBody148_107 AllocBody148_214

def AllocBody148_216 : StackLang.HolProg 64 :=
.seq AllocBody148_90 AllocBody148_215

def AllocBody148_217 : StackLang.HolProg 64 :=
.seq AllocBody148_89 AllocBody148_216

def AllocBody148_218 : StackLang.HolProg 64 :=
.seq AllocBody148_86 AllocBody148_217

def AllocBody148_219 : StackLang.HolProg 64 :=
.seq AllocBody148_85 AllocBody148_218

def AllocBody148_220 : StackLang.HolProg 64 :=
.seq AllocBody148_84 AllocBody148_219

def AllocBody148_221 : StackLang.HolProg 64 :=
.seq AllocBody148_83 AllocBody148_220

def AllocBody148_222 : StackLang.HolProg 64 :=
.seq AllocBody148_82 AllocBody148_221

def AllocBody148_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody148_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody148_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody148_226 : StackLang.HolProg 64 :=
.seq AllocBody148_224 AllocBody148_225

def AllocBody148_227 : StackLang.HolProg 64 :=
.seq AllocBody148_223 AllocBody148_226

def AllocBody148_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody148_222 AllocBody148_227

def AllocBody148_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody148_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 9

def AllocBody148_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody148_232 : StackLang.HolProg 64 :=
.seq AllocBody148_230 AllocBody148_231

def AllocBody148_233 : StackLang.HolProg 64 :=
.seq AllocBody148_229 AllocBody148_232

def AllocBody148_234 : StackLang.HolProg 64 :=
.seq AllocBody148_228 AllocBody148_233

def AllocBody148_235 : StackLang.HolProg 64 :=
.seq AllocBody148_81 AllocBody148_234

def AllocBody148_236 : StackLang.HolProg 64 :=
.loop AllocBody148_235

def AllocBody148_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody148_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody148_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody148_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody148_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody148_242 : StackLang.HolProg 64 :=
.seq AllocBody148_240 AllocBody148_241

def AllocBody148_243 : StackLang.HolProg 64 :=
.seq AllocBody148_239 AllocBody148_242

def AllocBody148_244 : StackLang.HolProg 64 :=
.seq AllocBody148_238 AllocBody148_243

def AllocBody148_245 : StackLang.HolProg 64 :=
.seq AllocBody148_237 AllocBody148_244

def AllocBody148_246 : StackLang.HolProg 64 :=
.seq AllocBody148_236 AllocBody148_245

def AllocBody148_247 : StackLang.HolProg 64 :=
.seq AllocBody148_80 AllocBody148_246

def AllocBody148_248 : StackLang.HolProg 64 :=
.seq AllocBody148_79 AllocBody148_247

def AllocBody148_249 : StackLang.HolProg 64 :=
.seq AllocBody148_78 AllocBody148_248

def AllocBody148_250 : StackLang.HolProg 64 :=
.seq AllocBody148_77 AllocBody148_249

def AllocBody148_251 : StackLang.HolProg 64 :=
.seq AllocBody148_76 AllocBody148_250

def AllocBody148_252 : StackLang.HolProg 64 :=
.seq AllocBody148_11 AllocBody148_251

def AllocBody148_253 : StackLang.HolProg 64 :=
.seq AllocBody148_0 AllocBody148_252

def Alloc148 : Nat × StackLang.HolProg 64 := (148, AllocBody148_253)
theorem Alloc148_eq : StackAlloc.progComp (148, raw148) = Alloc148 := by
  kernel_rfl
#print axioms Alloc148_eq
end InitECandidate.Proofs.BackendStages
