import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw158
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody158_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody158_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody158_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody158_3 : StackLang.HolProg 64 :=
.seq AllocBody158_1 AllocBody158_2

def AllocBody158_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody158_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody158_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody158_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551544#64))

def AllocBody158_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 200#64)

def AllocBody158_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody158_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody158_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody158_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody158_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody158_15 : StackLang.HolProg 64 :=
.seq AllocBody158_13 AllocBody158_14

def AllocBody158_16 : StackLang.HolProg 64 :=
.seq AllocBody158_12 AllocBody158_15

def AllocBody158_17 : StackLang.HolProg 64 :=
.seq AllocBody158_11 AllocBody158_16

def AllocBody158_18 : StackLang.HolProg 64 :=
.seq AllocBody158_10 AllocBody158_17

def AllocBody158_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 141#64)

def AllocBody158_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody158_22 : StackLang.HolProg 64 :=
.seq AllocBody158_20 AllocBody158_21

def AllocBody158_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody158_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody158_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody158_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 3

def AllocBody158_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody158_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody158_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody158_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody158_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody158_33 : StackLang.HolProg 64 :=
.seq AllocBody158_31 AllocBody158_32

def AllocBody158_34 : StackLang.HolProg 64 :=
.seq AllocBody158_30 AllocBody158_33

def AllocBody158_35 : StackLang.HolProg 64 :=
.seq AllocBody158_29 AllocBody158_34

def AllocBody158_36 : StackLang.HolProg 64 :=
.seq AllocBody158_28 AllocBody158_35

def AllocBody158_37 : StackLang.HolProg 64 :=
.seq AllocBody158_27 AllocBody158_36

def AllocBody158_38 : StackLang.HolProg 64 :=
.seq AllocBody158_26 AllocBody158_37

def AllocBody158_39 : StackLang.HolProg 64 :=
.seq AllocBody158_25 AllocBody158_38

def AllocBody158_40 : StackLang.HolProg 64 :=
.seq AllocBody158_24 AllocBody158_39

def AllocBody158_41 : StackLang.HolProg 64 :=
.seq AllocBody158_23 AllocBody158_40

def AllocBody158_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody158_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody158_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody158_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody158_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody158_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody158_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody158_51 : StackLang.HolProg 64 :=
.seq AllocBody158_49 AllocBody158_50

def AllocBody158_52 : StackLang.HolProg 64 :=
.seq AllocBody158_48 AllocBody158_51

def AllocBody158_53 : StackLang.HolProg 64 :=
.seq AllocBody158_47 AllocBody158_52

def AllocBody158_54 : StackLang.HolProg 64 :=
.seq AllocBody158_46 AllocBody158_53

def AllocBody158_55 : StackLang.HolProg 64 :=
.seq AllocBody158_45 AllocBody158_54

def AllocBody158_56 : StackLang.HolProg 64 :=
.seq AllocBody158_44 AllocBody158_55

def AllocBody158_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody158_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody158_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody158_60 : StackLang.HolProg 64 :=
.seq AllocBody158_58 AllocBody158_59

def AllocBody158_61 : StackLang.HolProg 64 :=
.seq AllocBody158_57 AllocBody158_60

def AllocBody158_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody158_63 : StackLang.HolProg 64 :=
.seq AllocBody158_61 AllocBody158_62

def AllocBody158_64 : StackLang.HolProg 64 :=
.call (some (AllocBody158_56, 0, 158, 2)) (Sum.inl 78) (some (AllocBody158_63, 158, 3))

def AllocBody158_65 : StackLang.HolProg 64 :=
.seq AllocBody158_43 AllocBody158_64

def AllocBody158_66 : StackLang.HolProg 64 :=
.seq AllocBody158_42 AllocBody158_65

def AllocBody158_67 : StackLang.HolProg 64 :=
.seq AllocBody158_41 AllocBody158_66

def AllocBody158_68 : StackLang.HolProg 64 :=
.seq AllocBody158_22 AllocBody158_67

def AllocBody158_69 : StackLang.HolProg 64 :=
.seq AllocBody158_19 AllocBody158_68

def AllocBody158_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody158_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody158_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody158_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody158_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody158_75 : StackLang.HolProg 64 :=
.seq AllocBody158_73 AllocBody158_74

def AllocBody158_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 136#64)))

def AllocBody158_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody158_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody158_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 3

def AllocBody158_81 : StackLang.HolProg 64 :=
.seq AllocBody158_79 AllocBody158_80

def AllocBody158_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody158_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody158_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody158_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody158_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody158_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody158_88 : StackLang.HolProg 64 :=
.seq AllocBody158_86 AllocBody158_87

def AllocBody158_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody158_90 : StackLang.HolProg 64 :=
.seq AllocBody158_88 AllocBody158_89

def AllocBody158_91 : StackLang.HolProg 64 :=
.seq AllocBody158_85 AllocBody158_90

def AllocBody158_92 : StackLang.HolProg 64 :=
.seq AllocBody158_84 AllocBody158_91

def AllocBody158_93 : StackLang.HolProg 64 :=
.seq AllocBody158_83 AllocBody158_92

def AllocBody158_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 142#64)

def AllocBody158_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody158_97 : StackLang.HolProg 64 :=
.seq AllocBody158_95 AllocBody158_96

def AllocBody158_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody158_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody158_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody158_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 5

def AllocBody158_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody158_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody158_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody158_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody158_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody158_108 : StackLang.HolProg 64 :=
.seq AllocBody158_106 AllocBody158_107

def AllocBody158_109 : StackLang.HolProg 64 :=
.seq AllocBody158_105 AllocBody158_108

def AllocBody158_110 : StackLang.HolProg 64 :=
.seq AllocBody158_104 AllocBody158_109

def AllocBody158_111 : StackLang.HolProg 64 :=
.seq AllocBody158_103 AllocBody158_110

def AllocBody158_112 : StackLang.HolProg 64 :=
.seq AllocBody158_102 AllocBody158_111

def AllocBody158_113 : StackLang.HolProg 64 :=
.seq AllocBody158_101 AllocBody158_112

def AllocBody158_114 : StackLang.HolProg 64 :=
.seq AllocBody158_100 AllocBody158_113

def AllocBody158_115 : StackLang.HolProg 64 :=
.seq AllocBody158_99 AllocBody158_114

def AllocBody158_116 : StackLang.HolProg 64 :=
.seq AllocBody158_98 AllocBody158_115

def AllocBody158_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody158_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody158_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody158_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody158_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody158_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody158_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody158_126 : StackLang.HolProg 64 :=
.seq AllocBody158_124 AllocBody158_125

def AllocBody158_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody158_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody158_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody158_130 : StackLang.HolProg 64 :=
.seq AllocBody158_128 AllocBody158_129

def AllocBody158_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody158_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody158_133 : StackLang.HolProg 64 :=
.seq AllocBody158_131 AllocBody158_132

def AllocBody158_134 : StackLang.HolProg 64 :=
.seq AllocBody158_130 AllocBody158_133

def AllocBody158_135 : StackLang.HolProg 64 :=
.seq AllocBody158_127 AllocBody158_134

def AllocBody158_136 : StackLang.HolProg 64 :=
.seq AllocBody158_126 AllocBody158_135

def AllocBody158_137 : StackLang.HolProg 64 :=
.seq AllocBody158_123 AllocBody158_136

def AllocBody158_138 : StackLang.HolProg 64 :=
.seq AllocBody158_122 AllocBody158_137

def AllocBody158_139 : StackLang.HolProg 64 :=
.seq AllocBody158_121 AllocBody158_138

def AllocBody158_140 : StackLang.HolProg 64 :=
.seq AllocBody158_120 AllocBody158_139

def AllocBody158_141 : StackLang.HolProg 64 :=
.seq AllocBody158_119 AllocBody158_140

def AllocBody158_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody158_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody158_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody158_145 : StackLang.HolProg 64 :=
.seq AllocBody158_143 AllocBody158_144

def AllocBody158_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody158_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody158_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody158_149 : StackLang.HolProg 64 :=
.seq AllocBody158_147 AllocBody158_148

def AllocBody158_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody158_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody158_152 : StackLang.HolProg 64 :=
.seq AllocBody158_150 AllocBody158_151

def AllocBody158_153 : StackLang.HolProg 64 :=
.seq AllocBody158_149 AllocBody158_152

def AllocBody158_154 : StackLang.HolProg 64 :=
.seq AllocBody158_146 AllocBody158_153

def AllocBody158_155 : StackLang.HolProg 64 :=
.seq AllocBody158_145 AllocBody158_154

def AllocBody158_156 : StackLang.HolProg 64 :=
.seq AllocBody158_142 AllocBody158_155

def AllocBody158_157 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody158_158 : StackLang.HolProg 64 :=
.seq AllocBody158_156 AllocBody158_157

def AllocBody158_159 : StackLang.HolProg 64 :=
.call (some (AllocBody158_141, 0, 158, 4)) (Sum.inl 157) (some (AllocBody158_158, 158, 5))

def AllocBody158_160 : StackLang.HolProg 64 :=
.seq AllocBody158_118 AllocBody158_159

def AllocBody158_161 : StackLang.HolProg 64 :=
.seq AllocBody158_117 AllocBody158_160

def AllocBody158_162 : StackLang.HolProg 64 :=
.seq AllocBody158_116 AllocBody158_161

def AllocBody158_163 : StackLang.HolProg 64 :=
.seq AllocBody158_97 AllocBody158_162

def AllocBody158_164 : StackLang.HolProg 64 :=
.seq AllocBody158_94 AllocBody158_163

def AllocBody158_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody158_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 136#64)))

def AllocBody158_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody158_170 : StackLang.HolProg 64 :=
.seq AllocBody158_168 AllocBody158_169

def AllocBody158_171 : StackLang.HolProg 64 :=
.seq AllocBody158_167 AllocBody158_170

def AllocBody158_172 : StackLang.HolProg 64 :=
.seq AllocBody158_166 AllocBody158_171

def AllocBody158_173 : StackLang.HolProg 64 :=
.seq AllocBody158_165 AllocBody158_172

def AllocBody158_174 : StackLang.HolProg 64 :=
.seq AllocBody158_164 AllocBody158_173

def AllocBody158_175 : StackLang.HolProg 64 :=
.seq AllocBody158_93 AllocBody158_174

def AllocBody158_176 : StackLang.HolProg 64 :=
.seq AllocBody158_82 AllocBody158_175

def AllocBody158_177 : StackLang.HolProg 64 :=
.seq AllocBody158_81 AllocBody158_176

def AllocBody158_178 : StackLang.HolProg 64 :=
.seq AllocBody158_78 AllocBody158_177

def AllocBody158_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody158_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody158_182 : StackLang.HolProg 64 :=
.seq AllocBody158_180 AllocBody158_181

def AllocBody158_183 : StackLang.HolProg 64 :=
.seq AllocBody158_179 AllocBody158_182

def AllocBody158_184 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody158_178 AllocBody158_183

def AllocBody158_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody158_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody158_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody158_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody158_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody158_190 : StackLang.HolProg 64 :=
.seq AllocBody158_188 AllocBody158_189

def AllocBody158_191 : StackLang.HolProg 64 :=
.seq AllocBody158_187 AllocBody158_190

def AllocBody158_192 : StackLang.HolProg 64 :=
.seq AllocBody158_186 AllocBody158_191

def AllocBody158_193 : StackLang.HolProg 64 :=
.seq AllocBody158_185 AllocBody158_192

def AllocBody158_194 : StackLang.HolProg 64 :=
.seq AllocBody158_184 AllocBody158_193

def AllocBody158_195 : StackLang.HolProg 64 :=
.seq AllocBody158_77 AllocBody158_194

def AllocBody158_196 : StackLang.HolProg 64 :=
.seq AllocBody158_76 AllocBody158_195

def AllocBody158_197 : StackLang.HolProg 64 :=
.loop AllocBody158_196

def AllocBody158_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody158_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody158_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody158_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody158_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody158_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def AllocBody158_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 136#64)

def AllocBody158_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody158_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody158_208 : StackLang.HolProg 64 :=
.seq AllocBody158_206 AllocBody158_207

def AllocBody158_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 143#64)

def AllocBody158_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody158_212 : StackLang.HolProg 64 :=
.seq AllocBody158_210 AllocBody158_211

def AllocBody158_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody158_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody158_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody158_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 7

def AllocBody158_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody158_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody158_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody158_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody158_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody158_223 : StackLang.HolProg 64 :=
.seq AllocBody158_221 AllocBody158_222

def AllocBody158_224 : StackLang.HolProg 64 :=
.seq AllocBody158_220 AllocBody158_223

def AllocBody158_225 : StackLang.HolProg 64 :=
.seq AllocBody158_219 AllocBody158_224

def AllocBody158_226 : StackLang.HolProg 64 :=
.seq AllocBody158_218 AllocBody158_225

def AllocBody158_227 : StackLang.HolProg 64 :=
.seq AllocBody158_217 AllocBody158_226

def AllocBody158_228 : StackLang.HolProg 64 :=
.seq AllocBody158_216 AllocBody158_227

def AllocBody158_229 : StackLang.HolProg 64 :=
.seq AllocBody158_215 AllocBody158_228

def AllocBody158_230 : StackLang.HolProg 64 :=
.seq AllocBody158_214 AllocBody158_229

def AllocBody158_231 : StackLang.HolProg 64 :=
.seq AllocBody158_213 AllocBody158_230

def AllocBody158_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody158_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody158_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody158_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody158_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody158_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody158_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody158_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody158_242 : StackLang.HolProg 64 :=
.seq AllocBody158_240 AllocBody158_241

def AllocBody158_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody158_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody158_245 : StackLang.HolProg 64 :=
.seq AllocBody158_243 AllocBody158_244

def AllocBody158_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody158_247 : StackLang.HolProg 64 :=
.seq AllocBody158_245 AllocBody158_246

def AllocBody158_248 : StackLang.HolProg 64 :=
.seq AllocBody158_242 AllocBody158_247

def AllocBody158_249 : StackLang.HolProg 64 :=
.seq AllocBody158_239 AllocBody158_248

def AllocBody158_250 : StackLang.HolProg 64 :=
.seq AllocBody158_238 AllocBody158_249

def AllocBody158_251 : StackLang.HolProg 64 :=
.seq AllocBody158_237 AllocBody158_250

def AllocBody158_252 : StackLang.HolProg 64 :=
.seq AllocBody158_236 AllocBody158_251

def AllocBody158_253 : StackLang.HolProg 64 :=
.seq AllocBody158_235 AllocBody158_252

def AllocBody158_254 : StackLang.HolProg 64 :=
.seq AllocBody158_234 AllocBody158_253

def AllocBody158_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody158_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody158_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody158_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody158_259 : StackLang.HolProg 64 :=
.seq AllocBody158_257 AllocBody158_258

def AllocBody158_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody158_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody158_262 : StackLang.HolProg 64 :=
.seq AllocBody158_260 AllocBody158_261

def AllocBody158_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody158_264 : StackLang.HolProg 64 :=
.seq AllocBody158_262 AllocBody158_263

def AllocBody158_265 : StackLang.HolProg 64 :=
.seq AllocBody158_259 AllocBody158_264

def AllocBody158_266 : StackLang.HolProg 64 :=
.seq AllocBody158_256 AllocBody158_265

def AllocBody158_267 : StackLang.HolProg 64 :=
.seq AllocBody158_255 AllocBody158_266

def AllocBody158_268 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody158_269 : StackLang.HolProg 64 :=
.seq AllocBody158_267 AllocBody158_268

def AllocBody158_270 : StackLang.HolProg 64 :=
.call (some (AllocBody158_254, 0, 158, 6)) (Sum.inl 78) (some (AllocBody158_269, 158, 7))

def AllocBody158_271 : StackLang.HolProg 64 :=
.seq AllocBody158_233 AllocBody158_270

def AllocBody158_272 : StackLang.HolProg 64 :=
.seq AllocBody158_232 AllocBody158_271

def AllocBody158_273 : StackLang.HolProg 64 :=
.seq AllocBody158_231 AllocBody158_272

def AllocBody158_274 : StackLang.HolProg 64 :=
.seq AllocBody158_212 AllocBody158_273

def AllocBody158_275 : StackLang.HolProg 64 :=
.seq AllocBody158_209 AllocBody158_274

def AllocBody158_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody158_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody158_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody158_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody158_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def AllocBody158_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody158_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody158_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 144#64)

def AllocBody158_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody158_287 : StackLang.HolProg 64 :=
.seq AllocBody158_285 AllocBody158_286

def AllocBody158_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody158_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody158_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody158_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 9

def AllocBody158_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody158_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody158_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody158_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody158_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody158_298 : StackLang.HolProg 64 :=
.seq AllocBody158_296 AllocBody158_297

def AllocBody158_299 : StackLang.HolProg 64 :=
.seq AllocBody158_295 AllocBody158_298

def AllocBody158_300 : StackLang.HolProg 64 :=
.seq AllocBody158_294 AllocBody158_299

def AllocBody158_301 : StackLang.HolProg 64 :=
.seq AllocBody158_293 AllocBody158_300

def AllocBody158_302 : StackLang.HolProg 64 :=
.seq AllocBody158_292 AllocBody158_301

def AllocBody158_303 : StackLang.HolProg 64 :=
.seq AllocBody158_291 AllocBody158_302

def AllocBody158_304 : StackLang.HolProg 64 :=
.seq AllocBody158_290 AllocBody158_303

def AllocBody158_305 : StackLang.HolProg 64 :=
.seq AllocBody158_289 AllocBody158_304

def AllocBody158_306 : StackLang.HolProg 64 :=
.seq AllocBody158_288 AllocBody158_305

def AllocBody158_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody158_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody158_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody158_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody158_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody158_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody158_315 : StackLang.HolProg 64 :=
.seq AllocBody158_313 AllocBody158_314

def AllocBody158_316 : StackLang.HolProg 64 :=
.seq AllocBody158_312 AllocBody158_315

def AllocBody158_317 : StackLang.HolProg 64 :=
.seq AllocBody158_311 AllocBody158_316

def AllocBody158_318 : StackLang.HolProg 64 :=
.seq AllocBody158_310 AllocBody158_317

def AllocBody158_319 : StackLang.HolProg 64 :=
.seq AllocBody158_309 AllocBody158_318

def AllocBody158_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody158_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody158_322 : StackLang.HolProg 64 :=
.seq AllocBody158_320 AllocBody158_321

def AllocBody158_323 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody158_324 : StackLang.HolProg 64 :=
.seq AllocBody158_322 AllocBody158_323

def AllocBody158_325 : StackLang.HolProg 64 :=
.call (some (AllocBody158_319, 0, 158, 8)) (Sum.inl 77) (some (AllocBody158_324, 158, 9))

def AllocBody158_326 : StackLang.HolProg 64 :=
.seq AllocBody158_308 AllocBody158_325

def AllocBody158_327 : StackLang.HolProg 64 :=
.seq AllocBody158_307 AllocBody158_326

def AllocBody158_328 : StackLang.HolProg 64 :=
.seq AllocBody158_306 AllocBody158_327

def AllocBody158_329 : StackLang.HolProg 64 :=
.seq AllocBody158_287 AllocBody158_328

def AllocBody158_330 : StackLang.HolProg 64 :=
.seq AllocBody158_284 AllocBody158_329

def AllocBody158_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody158_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody158_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody158_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody158_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def AllocBody158_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody158_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody158_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody158_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def AllocBody158_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 135#64)))

def AllocBody158_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody158_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody158_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody158_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def AllocBody158_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody158_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody158_351 : StackLang.HolProg 64 :=
.seq AllocBody158_349 AllocBody158_350

def AllocBody158_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 145#64)

def AllocBody158_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody158_355 : StackLang.HolProg 64 :=
.seq AllocBody158_353 AllocBody158_354

def AllocBody158_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody158_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody158_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody158_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 11

def AllocBody158_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody158_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody158_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody158_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody158_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody158_366 : StackLang.HolProg 64 :=
.seq AllocBody158_364 AllocBody158_365

def AllocBody158_367 : StackLang.HolProg 64 :=
.seq AllocBody158_363 AllocBody158_366

def AllocBody158_368 : StackLang.HolProg 64 :=
.seq AllocBody158_362 AllocBody158_367

def AllocBody158_369 : StackLang.HolProg 64 :=
.seq AllocBody158_361 AllocBody158_368

def AllocBody158_370 : StackLang.HolProg 64 :=
.seq AllocBody158_360 AllocBody158_369

def AllocBody158_371 : StackLang.HolProg 64 :=
.seq AllocBody158_359 AllocBody158_370

def AllocBody158_372 : StackLang.HolProg 64 :=
.seq AllocBody158_358 AllocBody158_371

def AllocBody158_373 : StackLang.HolProg 64 :=
.seq AllocBody158_357 AllocBody158_372

def AllocBody158_374 : StackLang.HolProg 64 :=
.seq AllocBody158_356 AllocBody158_373

def AllocBody158_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody158_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody158_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody158_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody158_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody158_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody158_383 : StackLang.HolProg 64 :=
.seq AllocBody158_381 AllocBody158_382

def AllocBody158_384 : StackLang.HolProg 64 :=
.seq AllocBody158_380 AllocBody158_383

def AllocBody158_385 : StackLang.HolProg 64 :=
.seq AllocBody158_379 AllocBody158_384

def AllocBody158_386 : StackLang.HolProg 64 :=
.seq AllocBody158_378 AllocBody158_385

def AllocBody158_387 : StackLang.HolProg 64 :=
.seq AllocBody158_377 AllocBody158_386

def AllocBody158_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody158_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody158_390 : StackLang.HolProg 64 :=
.seq AllocBody158_388 AllocBody158_389

def AllocBody158_391 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody158_392 : StackLang.HolProg 64 :=
.seq AllocBody158_390 AllocBody158_391

def AllocBody158_393 : StackLang.HolProg 64 :=
.call (some (AllocBody158_387, 0, 158, 10)) (Sum.inl 157) (some (AllocBody158_392, 158, 11))

def AllocBody158_394 : StackLang.HolProg 64 :=
.seq AllocBody158_376 AllocBody158_393

def AllocBody158_395 : StackLang.HolProg 64 :=
.seq AllocBody158_375 AllocBody158_394

def AllocBody158_396 : StackLang.HolProg 64 :=
.seq AllocBody158_374 AllocBody158_395

def AllocBody158_397 : StackLang.HolProg 64 :=
.seq AllocBody158_355 AllocBody158_396

def AllocBody158_398 : StackLang.HolProg 64 :=
.seq AllocBody158_352 AllocBody158_397

def AllocBody158_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody158_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody158_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody158_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody158_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody158_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody158_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody158_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody158_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody158_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody158_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody158_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def AllocBody158_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody158_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody158_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody158_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody158_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody158_427 : StackLang.HolProg 64 :=
.seq AllocBody158_425 AllocBody158_426

def AllocBody158_428 : StackLang.HolProg 64 :=
.seq AllocBody158_424 AllocBody158_427

def AllocBody158_429 : StackLang.HolProg 64 :=
.seq AllocBody158_423 AllocBody158_428

def AllocBody158_430 : StackLang.HolProg 64 :=
.seq AllocBody158_422 AllocBody158_429

def AllocBody158_431 : StackLang.HolProg 64 :=
.seq AllocBody158_421 AllocBody158_430

def AllocBody158_432 : StackLang.HolProg 64 :=
.seq AllocBody158_420 AllocBody158_431

def AllocBody158_433 : StackLang.HolProg 64 :=
.seq AllocBody158_419 AllocBody158_432

def AllocBody158_434 : StackLang.HolProg 64 :=
.seq AllocBody158_418 AllocBody158_433

def AllocBody158_435 : StackLang.HolProg 64 :=
.seq AllocBody158_417 AllocBody158_434

def AllocBody158_436 : StackLang.HolProg 64 :=
.seq AllocBody158_416 AllocBody158_435

def AllocBody158_437 : StackLang.HolProg 64 :=
.seq AllocBody158_415 AllocBody158_436

def AllocBody158_438 : StackLang.HolProg 64 :=
.seq AllocBody158_414 AllocBody158_437

def AllocBody158_439 : StackLang.HolProg 64 :=
.seq AllocBody158_413 AllocBody158_438

def AllocBody158_440 : StackLang.HolProg 64 :=
.seq AllocBody158_412 AllocBody158_439

def AllocBody158_441 : StackLang.HolProg 64 :=
.seq AllocBody158_411 AllocBody158_440

def AllocBody158_442 : StackLang.HolProg 64 :=
.seq AllocBody158_410 AllocBody158_441

def AllocBody158_443 : StackLang.HolProg 64 :=
.seq AllocBody158_409 AllocBody158_442

def AllocBody158_444 : StackLang.HolProg 64 :=
.seq AllocBody158_408 AllocBody158_443

def AllocBody158_445 : StackLang.HolProg 64 :=
.seq AllocBody158_407 AllocBody158_444

def AllocBody158_446 : StackLang.HolProg 64 :=
.seq AllocBody158_406 AllocBody158_445

def AllocBody158_447 : StackLang.HolProg 64 :=
.seq AllocBody158_405 AllocBody158_446

def AllocBody158_448 : StackLang.HolProg 64 :=
.seq AllocBody158_404 AllocBody158_447

def AllocBody158_449 : StackLang.HolProg 64 :=
.seq AllocBody158_403 AllocBody158_448

def AllocBody158_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody158_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody158_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 146#64)

def AllocBody158_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody158_457 : StackLang.HolProg 64 :=
.seq AllocBody158_455 AllocBody158_456

def AllocBody158_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody158_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody158_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody158_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 13

def AllocBody158_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody158_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody158_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody158_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody158_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody158_468 : StackLang.HolProg 64 :=
.seq AllocBody158_466 AllocBody158_467

def AllocBody158_469 : StackLang.HolProg 64 :=
.seq AllocBody158_465 AllocBody158_468

def AllocBody158_470 : StackLang.HolProg 64 :=
.seq AllocBody158_464 AllocBody158_469

def AllocBody158_471 : StackLang.HolProg 64 :=
.seq AllocBody158_463 AllocBody158_470

def AllocBody158_472 : StackLang.HolProg 64 :=
.seq AllocBody158_462 AllocBody158_471

def AllocBody158_473 : StackLang.HolProg 64 :=
.seq AllocBody158_461 AllocBody158_472

def AllocBody158_474 : StackLang.HolProg 64 :=
.seq AllocBody158_460 AllocBody158_473

def AllocBody158_475 : StackLang.HolProg 64 :=
.seq AllocBody158_459 AllocBody158_474

def AllocBody158_476 : StackLang.HolProg 64 :=
.seq AllocBody158_458 AllocBody158_475

def AllocBody158_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody158_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody158_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody158_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody158_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody158_484 : StackLang.HolProg 64 :=
.seq AllocBody158_482 AllocBody158_483

def AllocBody158_485 : StackLang.HolProg 64 :=
.seq AllocBody158_481 AllocBody158_484

def AllocBody158_486 : StackLang.HolProg 64 :=
.seq AllocBody158_480 AllocBody158_485

def AllocBody158_487 : StackLang.HolProg 64 :=
.seq AllocBody158_479 AllocBody158_486

def AllocBody158_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody158_489 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody158_490 : StackLang.HolProg 64 :=
.seq AllocBody158_488 AllocBody158_489

def AllocBody158_491 : StackLang.HolProg 64 :=
.call (some (AllocBody158_487, 0, 158, 12)) (Sum.inl 77) (some (AllocBody158_490, 158, 13))

def AllocBody158_492 : StackLang.HolProg 64 :=
.seq AllocBody158_478 AllocBody158_491

def AllocBody158_493 : StackLang.HolProg 64 :=
.seq AllocBody158_477 AllocBody158_492

def AllocBody158_494 : StackLang.HolProg 64 :=
.seq AllocBody158_476 AllocBody158_493

def AllocBody158_495 : StackLang.HolProg 64 :=
.seq AllocBody158_457 AllocBody158_494

def AllocBody158_496 : StackLang.HolProg 64 :=
.seq AllocBody158_454 AllocBody158_495

def AllocBody158_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody158_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_499 : StackLang.HolProg 64 :=
.seq AllocBody158_497 AllocBody158_498

def AllocBody158_500 : StackLang.HolProg 64 :=
.seq AllocBody158_496 AllocBody158_499

def AllocBody158_501 : StackLang.HolProg 64 :=
.seq AllocBody158_453 AllocBody158_500

def AllocBody158_502 : StackLang.HolProg 64 :=
.seq AllocBody158_452 AllocBody158_501

def AllocBody158_503 : StackLang.HolProg 64 :=
.seq AllocBody158_451 AllocBody158_502

def AllocBody158_504 : StackLang.HolProg 64 :=
.seq AllocBody158_450 AllocBody158_503

def AllocBody158_505 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody158_449 AllocBody158_504

def AllocBody158_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody158_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody158_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody158_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody158_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody158_511 : StackLang.HolProg 64 :=
.seq AllocBody158_509 AllocBody158_510

def AllocBody158_512 : StackLang.HolProg 64 :=
.seq AllocBody158_508 AllocBody158_511

def AllocBody158_513 : StackLang.HolProg 64 :=
.seq AllocBody158_507 AllocBody158_512

def AllocBody158_514 : StackLang.HolProg 64 :=
.seq AllocBody158_506 AllocBody158_513

def AllocBody158_515 : StackLang.HolProg 64 :=
.seq AllocBody158_505 AllocBody158_514

def AllocBody158_516 : StackLang.HolProg 64 :=
.seq AllocBody158_402 AllocBody158_515

def AllocBody158_517 : StackLang.HolProg 64 :=
.seq AllocBody158_401 AllocBody158_516

def AllocBody158_518 : StackLang.HolProg 64 :=
.seq AllocBody158_400 AllocBody158_517

def AllocBody158_519 : StackLang.HolProg 64 :=
.seq AllocBody158_399 AllocBody158_518

def AllocBody158_520 : StackLang.HolProg 64 :=
.seq AllocBody158_398 AllocBody158_519

def AllocBody158_521 : StackLang.HolProg 64 :=
.seq AllocBody158_351 AllocBody158_520

def AllocBody158_522 : StackLang.HolProg 64 :=
.seq AllocBody158_348 AllocBody158_521

def AllocBody158_523 : StackLang.HolProg 64 :=
.seq AllocBody158_347 AllocBody158_522

def AllocBody158_524 : StackLang.HolProg 64 :=
.seq AllocBody158_346 AllocBody158_523

def AllocBody158_525 : StackLang.HolProg 64 :=
.seq AllocBody158_345 AllocBody158_524

def AllocBody158_526 : StackLang.HolProg 64 :=
.seq AllocBody158_344 AllocBody158_525

def AllocBody158_527 : StackLang.HolProg 64 :=
.seq AllocBody158_343 AllocBody158_526

def AllocBody158_528 : StackLang.HolProg 64 :=
.seq AllocBody158_342 AllocBody158_527

def AllocBody158_529 : StackLang.HolProg 64 :=
.seq AllocBody158_341 AllocBody158_528

def AllocBody158_530 : StackLang.HolProg 64 :=
.seq AllocBody158_340 AllocBody158_529

def AllocBody158_531 : StackLang.HolProg 64 :=
.seq AllocBody158_339 AllocBody158_530

def AllocBody158_532 : StackLang.HolProg 64 :=
.seq AllocBody158_338 AllocBody158_531

def AllocBody158_533 : StackLang.HolProg 64 :=
.seq AllocBody158_337 AllocBody158_532

def AllocBody158_534 : StackLang.HolProg 64 :=
.seq AllocBody158_336 AllocBody158_533

def AllocBody158_535 : StackLang.HolProg 64 :=
.seq AllocBody158_335 AllocBody158_534

def AllocBody158_536 : StackLang.HolProg 64 :=
.seq AllocBody158_334 AllocBody158_535

def AllocBody158_537 : StackLang.HolProg 64 :=
.seq AllocBody158_333 AllocBody158_536

def AllocBody158_538 : StackLang.HolProg 64 :=
.seq AllocBody158_332 AllocBody158_537

def AllocBody158_539 : StackLang.HolProg 64 :=
.seq AllocBody158_331 AllocBody158_538

def AllocBody158_540 : StackLang.HolProg 64 :=
.seq AllocBody158_330 AllocBody158_539

def AllocBody158_541 : StackLang.HolProg 64 :=
.seq AllocBody158_283 AllocBody158_540

def AllocBody158_542 : StackLang.HolProg 64 :=
.seq AllocBody158_282 AllocBody158_541

def AllocBody158_543 : StackLang.HolProg 64 :=
.seq AllocBody158_281 AllocBody158_542

def AllocBody158_544 : StackLang.HolProg 64 :=
.seq AllocBody158_280 AllocBody158_543

def AllocBody158_545 : StackLang.HolProg 64 :=
.seq AllocBody158_279 AllocBody158_544

def AllocBody158_546 : StackLang.HolProg 64 :=
.seq AllocBody158_278 AllocBody158_545

def AllocBody158_547 : StackLang.HolProg 64 :=
.seq AllocBody158_277 AllocBody158_546

def AllocBody158_548 : StackLang.HolProg 64 :=
.seq AllocBody158_276 AllocBody158_547

def AllocBody158_549 : StackLang.HolProg 64 :=
.seq AllocBody158_275 AllocBody158_548

def AllocBody158_550 : StackLang.HolProg 64 :=
.seq AllocBody158_208 AllocBody158_549

def AllocBody158_551 : StackLang.HolProg 64 :=
.seq AllocBody158_205 AllocBody158_550

def AllocBody158_552 : StackLang.HolProg 64 :=
.seq AllocBody158_204 AllocBody158_551

def AllocBody158_553 : StackLang.HolProg 64 :=
.seq AllocBody158_203 AllocBody158_552

def AllocBody158_554 : StackLang.HolProg 64 :=
.seq AllocBody158_202 AllocBody158_553

def AllocBody158_555 : StackLang.HolProg 64 :=
.seq AllocBody158_201 AllocBody158_554

def AllocBody158_556 : StackLang.HolProg 64 :=
.seq AllocBody158_200 AllocBody158_555

def AllocBody158_557 : StackLang.HolProg 64 :=
.seq AllocBody158_199 AllocBody158_556

def AllocBody158_558 : StackLang.HolProg 64 :=
.seq AllocBody158_198 AllocBody158_557

def AllocBody158_559 : StackLang.HolProg 64 :=
.seq AllocBody158_197 AllocBody158_558

def AllocBody158_560 : StackLang.HolProg 64 :=
.seq AllocBody158_75 AllocBody158_559

def AllocBody158_561 : StackLang.HolProg 64 :=
.seq AllocBody158_72 AllocBody158_560

def AllocBody158_562 : StackLang.HolProg 64 :=
.seq AllocBody158_71 AllocBody158_561

def AllocBody158_563 : StackLang.HolProg 64 :=
.seq AllocBody158_70 AllocBody158_562

def AllocBody158_564 : StackLang.HolProg 64 :=
.seq AllocBody158_69 AllocBody158_563

def AllocBody158_565 : StackLang.HolProg 64 :=
.seq AllocBody158_18 AllocBody158_564

def AllocBody158_566 : StackLang.HolProg 64 :=
.seq AllocBody158_9 AllocBody158_565

def AllocBody158_567 : StackLang.HolProg 64 :=
.seq AllocBody158_8 AllocBody158_566

def AllocBody158_568 : StackLang.HolProg 64 :=
.seq AllocBody158_7 AllocBody158_567

def AllocBody158_569 : StackLang.HolProg 64 :=
.seq AllocBody158_6 AllocBody158_568

def AllocBody158_570 : StackLang.HolProg 64 :=
.seq AllocBody158_5 AllocBody158_569

def AllocBody158_571 : StackLang.HolProg 64 :=
.seq AllocBody158_4 AllocBody158_570

def AllocBody158_572 : StackLang.HolProg 64 :=
.seq AllocBody158_3 AllocBody158_571

def AllocBody158_573 : StackLang.HolProg 64 :=
.seq AllocBody158_0 AllocBody158_572

def Alloc158 : Nat × StackLang.HolProg 64 := (158, AllocBody158_573)
theorem Alloc158_eq : StackAlloc.progComp (158, raw158) = Alloc158 := by
  kernel_rfl
#print axioms Alloc158_eq
end InitECandidate.Proofs.BackendStages
