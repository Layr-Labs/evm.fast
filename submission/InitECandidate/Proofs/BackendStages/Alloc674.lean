import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw674
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody674_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody674_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody674_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody674_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody674_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody674_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody674_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody674_8 : StackLang.HolProg 64 :=
.seq AllocBody674_6 AllocBody674_7

def AllocBody674_9 : StackLang.HolProg 64 :=
.seq AllocBody674_5 AllocBody674_8

def AllocBody674_10 : StackLang.HolProg 64 :=
.seq AllocBody674_4 AllocBody674_9

def AllocBody674_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody674_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody674_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody674_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody674_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody674_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody674_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def AllocBody674_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody674_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def AllocBody674_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def AllocBody674_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody674_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2790#64)

def AllocBody674_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody674_29 : StackLang.HolProg 64 :=
.seq AllocBody674_27 AllocBody674_28

def AllocBody674_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody674_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody674_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody674_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 674 3

def AllocBody674_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody674_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody674_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody674_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody674_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody674_40 : StackLang.HolProg 64 :=
.seq AllocBody674_38 AllocBody674_39

def AllocBody674_41 : StackLang.HolProg 64 :=
.seq AllocBody674_37 AllocBody674_40

def AllocBody674_42 : StackLang.HolProg 64 :=
.seq AllocBody674_36 AllocBody674_41

def AllocBody674_43 : StackLang.HolProg 64 :=
.seq AllocBody674_35 AllocBody674_42

def AllocBody674_44 : StackLang.HolProg 64 :=
.seq AllocBody674_34 AllocBody674_43

def AllocBody674_45 : StackLang.HolProg 64 :=
.seq AllocBody674_33 AllocBody674_44

def AllocBody674_46 : StackLang.HolProg 64 :=
.seq AllocBody674_32 AllocBody674_45

def AllocBody674_47 : StackLang.HolProg 64 :=
.seq AllocBody674_31 AllocBody674_46

def AllocBody674_48 : StackLang.HolProg 64 :=
.seq AllocBody674_30 AllocBody674_47

def AllocBody674_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody674_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody674_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody674_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody674_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody674_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def AllocBody674_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody674_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody674_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody674_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody674_61 : StackLang.HolProg 64 :=
.seq AllocBody674_59 AllocBody674_60

def AllocBody674_62 : StackLang.HolProg 64 :=
.seq AllocBody674_58 AllocBody674_61

def AllocBody674_63 : StackLang.HolProg 64 :=
.seq AllocBody674_57 AllocBody674_62

def AllocBody674_64 : StackLang.HolProg 64 :=
.seq AllocBody674_56 AllocBody674_63

def AllocBody674_65 : StackLang.HolProg 64 :=
.seq AllocBody674_55 AllocBody674_64

def AllocBody674_66 : StackLang.HolProg 64 :=
.seq AllocBody674_54 AllocBody674_65

def AllocBody674_67 : StackLang.HolProg 64 :=
.seq AllocBody674_53 AllocBody674_66

def AllocBody674_68 : StackLang.HolProg 64 :=
.seq AllocBody674_52 AllocBody674_67

def AllocBody674_69 : StackLang.HolProg 64 :=
.seq AllocBody674_51 AllocBody674_68

def AllocBody674_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def AllocBody674_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody674_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody674_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody674_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody674_75 : StackLang.HolProg 64 :=
.seq AllocBody674_73 AllocBody674_74

def AllocBody674_76 : StackLang.HolProg 64 :=
.seq AllocBody674_72 AllocBody674_75

def AllocBody674_77 : StackLang.HolProg 64 :=
.seq AllocBody674_71 AllocBody674_76

def AllocBody674_78 : StackLang.HolProg 64 :=
.seq AllocBody674_70 AllocBody674_77

def AllocBody674_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody674_80 : StackLang.HolProg 64 :=
.seq AllocBody674_78 AllocBody674_79

def AllocBody674_81 : StackLang.HolProg 64 :=
.call (some (AllocBody674_69, 0, 674, 2)) (Sum.inl 660) (some (AllocBody674_80, 674, 3))

def AllocBody674_82 : StackLang.HolProg 64 :=
.seq AllocBody674_50 AllocBody674_81

def AllocBody674_83 : StackLang.HolProg 64 :=
.seq AllocBody674_49 AllocBody674_82

def AllocBody674_84 : StackLang.HolProg 64 :=
.seq AllocBody674_48 AllocBody674_83

def AllocBody674_85 : StackLang.HolProg 64 :=
.seq AllocBody674_29 AllocBody674_84

def AllocBody674_86 : StackLang.HolProg 64 :=
.seq AllocBody674_26 AllocBody674_85

def AllocBody674_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody674_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody674_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody674_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody674_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody674_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody674_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody674_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody674_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def AllocBody674_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def AllocBody674_104 : StackLang.HolProg 64 :=
.seq AllocBody674_102 AllocBody674_103

def AllocBody674_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody674_106 : StackLang.HolProg 64 :=
.seq AllocBody674_104 AllocBody674_105

def AllocBody674_107 : StackLang.HolProg 64 :=
.seq AllocBody674_101 AllocBody674_106

def AllocBody674_108 : StackLang.HolProg 64 :=
.seq AllocBody674_100 AllocBody674_107

def AllocBody674_109 : StackLang.HolProg 64 :=
.seq AllocBody674_99 AllocBody674_108

def AllocBody674_110 : StackLang.HolProg 64 :=
.seq AllocBody674_98 AllocBody674_109

def AllocBody674_111 : StackLang.HolProg 64 :=
.seq AllocBody674_97 AllocBody674_110

def AllocBody674_112 : StackLang.HolProg 64 :=
.seq AllocBody674_96 AllocBody674_111

def AllocBody674_113 : StackLang.HolProg 64 :=
.seq AllocBody674_95 AllocBody674_112

def AllocBody674_114 : StackLang.HolProg 64 :=
.seq AllocBody674_94 AllocBody674_113

def AllocBody674_115 : StackLang.HolProg 64 :=
.seq AllocBody674_93 AllocBody674_114

def AllocBody674_116 : StackLang.HolProg 64 :=
.seq AllocBody674_92 AllocBody674_115

def AllocBody674_117 : StackLang.HolProg 64 :=
.seq AllocBody674_91 AllocBody674_116

def AllocBody674_118 : StackLang.HolProg 64 :=
.seq AllocBody674_90 AllocBody674_117

def AllocBody674_119 : StackLang.HolProg 64 :=
.seq AllocBody674_89 AllocBody674_118

def AllocBody674_120 : StackLang.HolProg 64 :=
.seq AllocBody674_88 AllocBody674_119

def AllocBody674_121 : StackLang.HolProg 64 :=
.seq AllocBody674_87 AllocBody674_120

def AllocBody674_122 : StackLang.HolProg 64 :=
.seq AllocBody674_86 AllocBody674_121

def AllocBody674_123 : StackLang.HolProg 64 :=
.seq AllocBody674_25 AllocBody674_122

def AllocBody674_124 : StackLang.HolProg 64 :=
.seq AllocBody674_24 AllocBody674_123

def AllocBody674_125 : StackLang.HolProg 64 :=
.seq AllocBody674_23 AllocBody674_124

def AllocBody674_126 : StackLang.HolProg 64 :=
.seq AllocBody674_22 AllocBody674_125

def AllocBody674_127 : StackLang.HolProg 64 :=
.seq AllocBody674_21 AllocBody674_126

def AllocBody674_128 : StackLang.HolProg 64 :=
.seq AllocBody674_20 AllocBody674_127

def AllocBody674_129 : StackLang.HolProg 64 :=
.seq AllocBody674_19 AllocBody674_128

def AllocBody674_130 : StackLang.HolProg 64 :=
.seq AllocBody674_18 AllocBody674_129

def AllocBody674_131 : StackLang.HolProg 64 :=
.seq AllocBody674_17 AllocBody674_130

def AllocBody674_132 : StackLang.HolProg 64 :=
.seq AllocBody674_16 AllocBody674_131

def AllocBody674_133 : StackLang.HolProg 64 :=
.seq AllocBody674_15 AllocBody674_132

def AllocBody674_134 : StackLang.HolProg 64 :=
.seq AllocBody674_14 AllocBody674_133

def AllocBody674_135 : StackLang.HolProg 64 :=
.seq AllocBody674_13 AllocBody674_134

def AllocBody674_136 : StackLang.HolProg 64 :=
.seq AllocBody674_12 AllocBody674_135

def AllocBody674_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody674_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody674_139 : StackLang.HolProg 64 :=
.seq AllocBody674_137 AllocBody674_138

def AllocBody674_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody674_136 AllocBody674_139

def AllocBody674_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody674_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody674_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody674_144 : StackLang.HolProg 64 :=
.seq AllocBody674_142 AllocBody674_143

def AllocBody674_145 : StackLang.HolProg 64 :=
.seq AllocBody674_141 AllocBody674_144

def AllocBody674_146 : StackLang.HolProg 64 :=
.seq AllocBody674_140 AllocBody674_145

def AllocBody674_147 : StackLang.HolProg 64 :=
.seq AllocBody674_11 AllocBody674_146

def AllocBody674_148 : StackLang.HolProg 64 :=
.loop AllocBody674_147

def AllocBody674_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody674_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody674_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody674_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody674_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody674_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody674_155 : StackLang.HolProg 64 :=
.seq AllocBody674_153 AllocBody674_154

def AllocBody674_156 : StackLang.HolProg 64 :=
.seq AllocBody674_152 AllocBody674_155

def AllocBody674_157 : StackLang.HolProg 64 :=
.seq AllocBody674_151 AllocBody674_156

def AllocBody674_158 : StackLang.HolProg 64 :=
.seq AllocBody674_150 AllocBody674_157

def AllocBody674_159 : StackLang.HolProg 64 :=
.seq AllocBody674_149 AllocBody674_158

def AllocBody674_160 : StackLang.HolProg 64 :=
.seq AllocBody674_148 AllocBody674_159

def AllocBody674_161 : StackLang.HolProg 64 :=
.seq AllocBody674_10 AllocBody674_160

def AllocBody674_162 : StackLang.HolProg 64 :=
.seq AllocBody674_3 AllocBody674_161

def AllocBody674_163 : StackLang.HolProg 64 :=
.seq AllocBody674_2 AllocBody674_162

def AllocBody674_164 : StackLang.HolProg 64 :=
.seq AllocBody674_1 AllocBody674_163

def AllocBody674_165 : StackLang.HolProg 64 :=
.seq AllocBody674_0 AllocBody674_164

def Alloc674 : Nat × StackLang.HolProg 64 := (674, AllocBody674_165)
theorem Alloc674_eq : StackAlloc.progComp (674, raw674) = Alloc674 := by
  kernel_rfl
#print axioms Alloc674_eq
end InitECandidate.Proofs.BackendStages
