import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw542
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody542_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody542_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody542_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody542_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1790#64)

def AllocBody542_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody542_7 : StackLang.HolProg 64 :=
.seq AllocBody542_5 AllocBody542_6

def AllocBody542_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody542_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody542_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody542_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 3

def AllocBody542_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody542_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody542_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody542_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody542_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody542_18 : StackLang.HolProg 64 :=
.seq AllocBody542_16 AllocBody542_17

def AllocBody542_19 : StackLang.HolProg 64 :=
.seq AllocBody542_15 AllocBody542_18

def AllocBody542_20 : StackLang.HolProg 64 :=
.seq AllocBody542_14 AllocBody542_19

def AllocBody542_21 : StackLang.HolProg 64 :=
.seq AllocBody542_13 AllocBody542_20

def AllocBody542_22 : StackLang.HolProg 64 :=
.seq AllocBody542_12 AllocBody542_21

def AllocBody542_23 : StackLang.HolProg 64 :=
.seq AllocBody542_11 AllocBody542_22

def AllocBody542_24 : StackLang.HolProg 64 :=
.seq AllocBody542_10 AllocBody542_23

def AllocBody542_25 : StackLang.HolProg 64 :=
.seq AllocBody542_9 AllocBody542_24

def AllocBody542_26 : StackLang.HolProg 64 :=
.seq AllocBody542_8 AllocBody542_25

def AllocBody542_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody542_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody542_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody542_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody542_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_34 : StackLang.HolProg 64 :=
.seq AllocBody542_32 AllocBody542_33

def AllocBody542_35 : StackLang.HolProg 64 :=
.seq AllocBody542_31 AllocBody542_34

def AllocBody542_36 : StackLang.HolProg 64 :=
.seq AllocBody542_30 AllocBody542_35

def AllocBody542_37 : StackLang.HolProg 64 :=
.seq AllocBody542_29 AllocBody542_36

def AllocBody542_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody542_40 : StackLang.HolProg 64 :=
.seq AllocBody542_38 AllocBody542_39

def AllocBody542_41 : StackLang.HolProg 64 :=
.call (some (AllocBody542_37, 0, 542, 2)) (Sum.inl 470) (some (AllocBody542_40, 542, 3))

def AllocBody542_42 : StackLang.HolProg 64 :=
.seq AllocBody542_28 AllocBody542_41

def AllocBody542_43 : StackLang.HolProg 64 :=
.seq AllocBody542_27 AllocBody542_42

def AllocBody542_44 : StackLang.HolProg 64 :=
.seq AllocBody542_26 AllocBody542_43

def AllocBody542_45 : StackLang.HolProg 64 :=
.seq AllocBody542_7 AllocBody542_44

def AllocBody542_46 : StackLang.HolProg 64 :=
.seq AllocBody542_4 AllocBody542_45

def AllocBody542_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody542_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1791#64)

def AllocBody542_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody542_52 : StackLang.HolProg 64 :=
.seq AllocBody542_50 AllocBody542_51

def AllocBody542_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody542_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody542_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody542_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 5

def AllocBody542_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody542_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody542_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody542_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody542_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody542_63 : StackLang.HolProg 64 :=
.seq AllocBody542_61 AllocBody542_62

def AllocBody542_64 : StackLang.HolProg 64 :=
.seq AllocBody542_60 AllocBody542_63

def AllocBody542_65 : StackLang.HolProg 64 :=
.seq AllocBody542_59 AllocBody542_64

def AllocBody542_66 : StackLang.HolProg 64 :=
.seq AllocBody542_58 AllocBody542_65

def AllocBody542_67 : StackLang.HolProg 64 :=
.seq AllocBody542_57 AllocBody542_66

def AllocBody542_68 : StackLang.HolProg 64 :=
.seq AllocBody542_56 AllocBody542_67

def AllocBody542_69 : StackLang.HolProg 64 :=
.seq AllocBody542_55 AllocBody542_68

def AllocBody542_70 : StackLang.HolProg 64 :=
.seq AllocBody542_54 AllocBody542_69

def AllocBody542_71 : StackLang.HolProg 64 :=
.seq AllocBody542_53 AllocBody542_70

def AllocBody542_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody542_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody542_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody542_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody542_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody542_79 : StackLang.HolProg 64 :=
.seq AllocBody542_77 AllocBody542_78

def AllocBody542_80 : StackLang.HolProg 64 :=
.seq AllocBody542_76 AllocBody542_79

def AllocBody542_81 : StackLang.HolProg 64 :=
.seq AllocBody542_75 AllocBody542_80

def AllocBody542_82 : StackLang.HolProg 64 :=
.seq AllocBody542_74 AllocBody542_81

def AllocBody542_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody542_85 : StackLang.HolProg 64 :=
.seq AllocBody542_83 AllocBody542_84

def AllocBody542_86 : StackLang.HolProg 64 :=
.call (some (AllocBody542_82, 0, 542, 4)) (Sum.inl 540) (some (AllocBody542_85, 542, 5))

def AllocBody542_87 : StackLang.HolProg 64 :=
.seq AllocBody542_73 AllocBody542_86

def AllocBody542_88 : StackLang.HolProg 64 :=
.seq AllocBody542_72 AllocBody542_87

def AllocBody542_89 : StackLang.HolProg 64 :=
.seq AllocBody542_71 AllocBody542_88

def AllocBody542_90 : StackLang.HolProg 64 :=
.seq AllocBody542_52 AllocBody542_89

def AllocBody542_91 : StackLang.HolProg 64 :=
.seq AllocBody542_49 AllocBody542_90

def AllocBody542_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody542_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody542_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1792#64)

def AllocBody542_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody542_97 : StackLang.HolProg 64 :=
.seq AllocBody542_95 AllocBody542_96

def AllocBody542_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody542_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody542_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody542_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 7

def AllocBody542_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody542_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody542_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody542_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody542_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody542_108 : StackLang.HolProg 64 :=
.seq AllocBody542_106 AllocBody542_107

def AllocBody542_109 : StackLang.HolProg 64 :=
.seq AllocBody542_105 AllocBody542_108

def AllocBody542_110 : StackLang.HolProg 64 :=
.seq AllocBody542_104 AllocBody542_109

def AllocBody542_111 : StackLang.HolProg 64 :=
.seq AllocBody542_103 AllocBody542_110

def AllocBody542_112 : StackLang.HolProg 64 :=
.seq AllocBody542_102 AllocBody542_111

def AllocBody542_113 : StackLang.HolProg 64 :=
.seq AllocBody542_101 AllocBody542_112

def AllocBody542_114 : StackLang.HolProg 64 :=
.seq AllocBody542_100 AllocBody542_113

def AllocBody542_115 : StackLang.HolProg 64 :=
.seq AllocBody542_99 AllocBody542_114

def AllocBody542_116 : StackLang.HolProg 64 :=
.seq AllocBody542_98 AllocBody542_115

def AllocBody542_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody542_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody542_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody542_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody542_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody542_124 : StackLang.HolProg 64 :=
.seq AllocBody542_122 AllocBody542_123

def AllocBody542_125 : StackLang.HolProg 64 :=
.seq AllocBody542_121 AllocBody542_124

def AllocBody542_126 : StackLang.HolProg 64 :=
.seq AllocBody542_120 AllocBody542_125

def AllocBody542_127 : StackLang.HolProg 64 :=
.seq AllocBody542_119 AllocBody542_126

def AllocBody542_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody542_130 : StackLang.HolProg 64 :=
.seq AllocBody542_128 AllocBody542_129

def AllocBody542_131 : StackLang.HolProg 64 :=
.call (some (AllocBody542_127, 0, 542, 6)) (Sum.inl 541) (some (AllocBody542_130, 542, 7))

def AllocBody542_132 : StackLang.HolProg 64 :=
.seq AllocBody542_118 AllocBody542_131

def AllocBody542_133 : StackLang.HolProg 64 :=
.seq AllocBody542_117 AllocBody542_132

def AllocBody542_134 : StackLang.HolProg 64 :=
.seq AllocBody542_116 AllocBody542_133

def AllocBody542_135 : StackLang.HolProg 64 :=
.seq AllocBody542_97 AllocBody542_134

def AllocBody542_136 : StackLang.HolProg 64 :=
.seq AllocBody542_94 AllocBody542_135

def AllocBody542_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody542_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody542_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody542_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody542_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody542_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody542_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody542_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody542_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody542_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody542_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_150 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody542_151 : StackLang.HolProg 64 :=
.seq AllocBody542_149 AllocBody542_150

def AllocBody542_152 : StackLang.HolProg 64 :=
.seq AllocBody542_148 AllocBody542_151

def AllocBody542_153 : StackLang.HolProg 64 :=
.seq AllocBody542_147 AllocBody542_152

def AllocBody542_154 : StackLang.HolProg 64 :=
.seq AllocBody542_146 AllocBody542_153

def AllocBody542_155 : StackLang.HolProg 64 :=
.seq AllocBody542_145 AllocBody542_154

def AllocBody542_156 : StackLang.HolProg 64 :=
.seq AllocBody542_144 AllocBody542_155

def AllocBody542_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_158 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody542_156 AllocBody542_157

def AllocBody542_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody542_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody542_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody542_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody542_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody542_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody542_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody542_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody542_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody542_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody542_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody542_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1793#64)

def AllocBody542_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody542_179 : StackLang.HolProg 64 :=
.seq AllocBody542_177 AllocBody542_178

def AllocBody542_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody542_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody542_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody542_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 9

def AllocBody542_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody542_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody542_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody542_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody542_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody542_190 : StackLang.HolProg 64 :=
.seq AllocBody542_188 AllocBody542_189

def AllocBody542_191 : StackLang.HolProg 64 :=
.seq AllocBody542_187 AllocBody542_190

def AllocBody542_192 : StackLang.HolProg 64 :=
.seq AllocBody542_186 AllocBody542_191

def AllocBody542_193 : StackLang.HolProg 64 :=
.seq AllocBody542_185 AllocBody542_192

def AllocBody542_194 : StackLang.HolProg 64 :=
.seq AllocBody542_184 AllocBody542_193

def AllocBody542_195 : StackLang.HolProg 64 :=
.seq AllocBody542_183 AllocBody542_194

def AllocBody542_196 : StackLang.HolProg 64 :=
.seq AllocBody542_182 AllocBody542_195

def AllocBody542_197 : StackLang.HolProg 64 :=
.seq AllocBody542_181 AllocBody542_196

def AllocBody542_198 : StackLang.HolProg 64 :=
.seq AllocBody542_180 AllocBody542_197

def AllocBody542_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody542_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody542_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody542_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody542_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_206 : StackLang.HolProg 64 :=
.seq AllocBody542_204 AllocBody542_205

def AllocBody542_207 : StackLang.HolProg 64 :=
.seq AllocBody542_203 AllocBody542_206

def AllocBody542_208 : StackLang.HolProg 64 :=
.seq AllocBody542_202 AllocBody542_207

def AllocBody542_209 : StackLang.HolProg 64 :=
.seq AllocBody542_201 AllocBody542_208

def AllocBody542_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_211 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody542_212 : StackLang.HolProg 64 :=
.seq AllocBody542_210 AllocBody542_211

def AllocBody542_213 : StackLang.HolProg 64 :=
.call (some (AllocBody542_209, 0, 542, 8)) (Sum.inl 476) (some (AllocBody542_212, 542, 9))

def AllocBody542_214 : StackLang.HolProg 64 :=
.seq AllocBody542_200 AllocBody542_213

def AllocBody542_215 : StackLang.HolProg 64 :=
.seq AllocBody542_199 AllocBody542_214

def AllocBody542_216 : StackLang.HolProg 64 :=
.seq AllocBody542_198 AllocBody542_215

def AllocBody542_217 : StackLang.HolProg 64 :=
.seq AllocBody542_179 AllocBody542_216

def AllocBody542_218 : StackLang.HolProg 64 :=
.seq AllocBody542_176 AllocBody542_217

def AllocBody542_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody542_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody542_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1794#64)

def AllocBody542_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody542_225 : StackLang.HolProg 64 :=
.seq AllocBody542_223 AllocBody542_224

def AllocBody542_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody542_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody542_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody542_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 11

def AllocBody542_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody542_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody542_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody542_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody542_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody542_236 : StackLang.HolProg 64 :=
.seq AllocBody542_234 AllocBody542_235

def AllocBody542_237 : StackLang.HolProg 64 :=
.seq AllocBody542_233 AllocBody542_236

def AllocBody542_238 : StackLang.HolProg 64 :=
.seq AllocBody542_232 AllocBody542_237

def AllocBody542_239 : StackLang.HolProg 64 :=
.seq AllocBody542_231 AllocBody542_238

def AllocBody542_240 : StackLang.HolProg 64 :=
.seq AllocBody542_230 AllocBody542_239

def AllocBody542_241 : StackLang.HolProg 64 :=
.seq AllocBody542_229 AllocBody542_240

def AllocBody542_242 : StackLang.HolProg 64 :=
.seq AllocBody542_228 AllocBody542_241

def AllocBody542_243 : StackLang.HolProg 64 :=
.seq AllocBody542_227 AllocBody542_242

def AllocBody542_244 : StackLang.HolProg 64 :=
.seq AllocBody542_226 AllocBody542_243

def AllocBody542_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody542_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody542_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody542_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody542_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody542_252 : StackLang.HolProg 64 :=
.seq AllocBody542_250 AllocBody542_251

def AllocBody542_253 : StackLang.HolProg 64 :=
.seq AllocBody542_249 AllocBody542_252

def AllocBody542_254 : StackLang.HolProg 64 :=
.seq AllocBody542_248 AllocBody542_253

def AllocBody542_255 : StackLang.HolProg 64 :=
.seq AllocBody542_247 AllocBody542_254

def AllocBody542_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody542_257 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody542_258 : StackLang.HolProg 64 :=
.seq AllocBody542_256 AllocBody542_257

def AllocBody542_259 : StackLang.HolProg 64 :=
.call (some (AllocBody542_255, 0, 542, 10)) (Sum.inl 490) (some (AllocBody542_258, 542, 11))

def AllocBody542_260 : StackLang.HolProg 64 :=
.seq AllocBody542_246 AllocBody542_259

def AllocBody542_261 : StackLang.HolProg 64 :=
.seq AllocBody542_245 AllocBody542_260

def AllocBody542_262 : StackLang.HolProg 64 :=
.seq AllocBody542_244 AllocBody542_261

def AllocBody542_263 : StackLang.HolProg 64 :=
.seq AllocBody542_225 AllocBody542_262

def AllocBody542_264 : StackLang.HolProg 64 :=
.seq AllocBody542_222 AllocBody542_263

def AllocBody542_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody542_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody542_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody542_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody542_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody542_270 : StackLang.HolProg 64 :=
.seq AllocBody542_268 AllocBody542_269

def AllocBody542_271 : StackLang.HolProg 64 :=
.seq AllocBody542_267 AllocBody542_270

def AllocBody542_272 : StackLang.HolProg 64 :=
.seq AllocBody542_266 AllocBody542_271

def AllocBody542_273 : StackLang.HolProg 64 :=
.seq AllocBody542_265 AllocBody542_272

def AllocBody542_274 : StackLang.HolProg 64 :=
.seq AllocBody542_264 AllocBody542_273

def AllocBody542_275 : StackLang.HolProg 64 :=
.seq AllocBody542_221 AllocBody542_274

def AllocBody542_276 : StackLang.HolProg 64 :=
.seq AllocBody542_220 AllocBody542_275

def AllocBody542_277 : StackLang.HolProg 64 :=
.seq AllocBody542_219 AllocBody542_276

def AllocBody542_278 : StackLang.HolProg 64 :=
.seq AllocBody542_218 AllocBody542_277

def AllocBody542_279 : StackLang.HolProg 64 :=
.seq AllocBody542_175 AllocBody542_278

def AllocBody542_280 : StackLang.HolProg 64 :=
.seq AllocBody542_174 AllocBody542_279

def AllocBody542_281 : StackLang.HolProg 64 :=
.seq AllocBody542_173 AllocBody542_280

def AllocBody542_282 : StackLang.HolProg 64 :=
.seq AllocBody542_172 AllocBody542_281

def AllocBody542_283 : StackLang.HolProg 64 :=
.seq AllocBody542_171 AllocBody542_282

def AllocBody542_284 : StackLang.HolProg 64 :=
.seq AllocBody542_170 AllocBody542_283

def AllocBody542_285 : StackLang.HolProg 64 :=
.seq AllocBody542_169 AllocBody542_284

def AllocBody542_286 : StackLang.HolProg 64 :=
.seq AllocBody542_168 AllocBody542_285

def AllocBody542_287 : StackLang.HolProg 64 :=
.seq AllocBody542_167 AllocBody542_286

def AllocBody542_288 : StackLang.HolProg 64 :=
.seq AllocBody542_166 AllocBody542_287

def AllocBody542_289 : StackLang.HolProg 64 :=
.seq AllocBody542_165 AllocBody542_288

def AllocBody542_290 : StackLang.HolProg 64 :=
.seq AllocBody542_164 AllocBody542_289

def AllocBody542_291 : StackLang.HolProg 64 :=
.seq AllocBody542_163 AllocBody542_290

def AllocBody542_292 : StackLang.HolProg 64 :=
.seq AllocBody542_162 AllocBody542_291

def AllocBody542_293 : StackLang.HolProg 64 :=
.seq AllocBody542_161 AllocBody542_292

def AllocBody542_294 : StackLang.HolProg 64 :=
.seq AllocBody542_160 AllocBody542_293

def AllocBody542_295 : StackLang.HolProg 64 :=
.seq AllocBody542_159 AllocBody542_294

def AllocBody542_296 : StackLang.HolProg 64 :=
.seq AllocBody542_158 AllocBody542_295

def AllocBody542_297 : StackLang.HolProg 64 :=
.seq AllocBody542_143 AllocBody542_296

def AllocBody542_298 : StackLang.HolProg 64 :=
.seq AllocBody542_142 AllocBody542_297

def AllocBody542_299 : StackLang.HolProg 64 :=
.seq AllocBody542_141 AllocBody542_298

def AllocBody542_300 : StackLang.HolProg 64 :=
.seq AllocBody542_140 AllocBody542_299

def AllocBody542_301 : StackLang.HolProg 64 :=
.seq AllocBody542_139 AllocBody542_300

def AllocBody542_302 : StackLang.HolProg 64 :=
.seq AllocBody542_138 AllocBody542_301

def AllocBody542_303 : StackLang.HolProg 64 :=
.seq AllocBody542_137 AllocBody542_302

def AllocBody542_304 : StackLang.HolProg 64 :=
.seq AllocBody542_136 AllocBody542_303

def AllocBody542_305 : StackLang.HolProg 64 :=
.seq AllocBody542_93 AllocBody542_304

def AllocBody542_306 : StackLang.HolProg 64 :=
.seq AllocBody542_92 AllocBody542_305

def AllocBody542_307 : StackLang.HolProg 64 :=
.seq AllocBody542_91 AllocBody542_306

def AllocBody542_308 : StackLang.HolProg 64 :=
.seq AllocBody542_48 AllocBody542_307

def AllocBody542_309 : StackLang.HolProg 64 :=
.seq AllocBody542_47 AllocBody542_308

def AllocBody542_310 : StackLang.HolProg 64 :=
.seq AllocBody542_46 AllocBody542_309

def AllocBody542_311 : StackLang.HolProg 64 :=
.seq AllocBody542_3 AllocBody542_310

def AllocBody542_312 : StackLang.HolProg 64 :=
.seq AllocBody542_2 AllocBody542_311

def AllocBody542_313 : StackLang.HolProg 64 :=
.seq AllocBody542_1 AllocBody542_312

def AllocBody542_314 : StackLang.HolProg 64 :=
.seq AllocBody542_0 AllocBody542_313

def Alloc542 : Nat × StackLang.HolProg 64 := (542, AllocBody542_314)
theorem Alloc542_eq : StackAlloc.progComp (542, raw542) = Alloc542 := by
  kernel_rfl
#print axioms Alloc542_eq
end InitECandidate.Proofs.BackendStages
