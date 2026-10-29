import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function542
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody542_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody542_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody542_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody542_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1790#64)

def rawBody542_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody542_7 : StackLang.HolProg 64 :=
.seq rawBody542_5 rawBody542_6

def rawBody542_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody542_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody542_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody542_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 3

def rawBody542_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody542_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody542_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody542_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody542_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody542_18 : StackLang.HolProg 64 :=
.seq rawBody542_16 rawBody542_17

def rawBody542_19 : StackLang.HolProg 64 :=
.seq rawBody542_15 rawBody542_18

def rawBody542_20 : StackLang.HolProg 64 :=
.seq rawBody542_14 rawBody542_19

def rawBody542_21 : StackLang.HolProg 64 :=
.seq rawBody542_13 rawBody542_20

def rawBody542_22 : StackLang.HolProg 64 :=
.seq rawBody542_12 rawBody542_21

def rawBody542_23 : StackLang.HolProg 64 :=
.seq rawBody542_11 rawBody542_22

def rawBody542_24 : StackLang.HolProg 64 :=
.seq rawBody542_10 rawBody542_23

def rawBody542_25 : StackLang.HolProg 64 :=
.seq rawBody542_9 rawBody542_24

def rawBody542_26 : StackLang.HolProg 64 :=
.seq rawBody542_8 rawBody542_25

def rawBody542_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody542_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody542_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody542_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody542_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_34 : StackLang.HolProg 64 :=
.seq rawBody542_32 rawBody542_33

def rawBody542_35 : StackLang.HolProg 64 :=
.seq rawBody542_31 rawBody542_34

def rawBody542_36 : StackLang.HolProg 64 :=
.seq rawBody542_30 rawBody542_35

def rawBody542_37 : StackLang.HolProg 64 :=
.seq rawBody542_29 rawBody542_36

def rawBody542_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody542_40 : StackLang.HolProg 64 :=
.seq rawBody542_38 rawBody542_39

def rawBody542_41 : StackLang.HolProg 64 :=
.call (some (rawBody542_37, 0, 542, 2)) (Sum.inl 470) (some (rawBody542_40, 542, 3))

def rawBody542_42 : StackLang.HolProg 64 :=
.seq rawBody542_28 rawBody542_41

def rawBody542_43 : StackLang.HolProg 64 :=
.seq rawBody542_27 rawBody542_42

def rawBody542_44 : StackLang.HolProg 64 :=
.seq rawBody542_26 rawBody542_43

def rawBody542_45 : StackLang.HolProg 64 :=
.seq rawBody542_7 rawBody542_44

def rawBody542_46 : StackLang.HolProg 64 :=
.seq rawBody542_4 rawBody542_45

def rawBody542_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody542_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1791#64)

def rawBody542_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody542_52 : StackLang.HolProg 64 :=
.seq rawBody542_50 rawBody542_51

def rawBody542_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody542_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody542_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody542_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 5

def rawBody542_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody542_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody542_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody542_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody542_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody542_63 : StackLang.HolProg 64 :=
.seq rawBody542_61 rawBody542_62

def rawBody542_64 : StackLang.HolProg 64 :=
.seq rawBody542_60 rawBody542_63

def rawBody542_65 : StackLang.HolProg 64 :=
.seq rawBody542_59 rawBody542_64

def rawBody542_66 : StackLang.HolProg 64 :=
.seq rawBody542_58 rawBody542_65

def rawBody542_67 : StackLang.HolProg 64 :=
.seq rawBody542_57 rawBody542_66

def rawBody542_68 : StackLang.HolProg 64 :=
.seq rawBody542_56 rawBody542_67

def rawBody542_69 : StackLang.HolProg 64 :=
.seq rawBody542_55 rawBody542_68

def rawBody542_70 : StackLang.HolProg 64 :=
.seq rawBody542_54 rawBody542_69

def rawBody542_71 : StackLang.HolProg 64 :=
.seq rawBody542_53 rawBody542_70

def rawBody542_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody542_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody542_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody542_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody542_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody542_79 : StackLang.HolProg 64 :=
.seq rawBody542_77 rawBody542_78

def rawBody542_80 : StackLang.HolProg 64 :=
.seq rawBody542_76 rawBody542_79

def rawBody542_81 : StackLang.HolProg 64 :=
.seq rawBody542_75 rawBody542_80

def rawBody542_82 : StackLang.HolProg 64 :=
.seq rawBody542_74 rawBody542_81

def rawBody542_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody542_85 : StackLang.HolProg 64 :=
.seq rawBody542_83 rawBody542_84

def rawBody542_86 : StackLang.HolProg 64 :=
.call (some (rawBody542_82, 0, 542, 4)) (Sum.inl 540) (some (rawBody542_85, 542, 5))

def rawBody542_87 : StackLang.HolProg 64 :=
.seq rawBody542_73 rawBody542_86

def rawBody542_88 : StackLang.HolProg 64 :=
.seq rawBody542_72 rawBody542_87

def rawBody542_89 : StackLang.HolProg 64 :=
.seq rawBody542_71 rawBody542_88

def rawBody542_90 : StackLang.HolProg 64 :=
.seq rawBody542_52 rawBody542_89

def rawBody542_91 : StackLang.HolProg 64 :=
.seq rawBody542_49 rawBody542_90

def rawBody542_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody542_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody542_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1792#64)

def rawBody542_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody542_97 : StackLang.HolProg 64 :=
.seq rawBody542_95 rawBody542_96

def rawBody542_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody542_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody542_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody542_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 7

def rawBody542_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody542_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody542_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody542_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody542_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody542_108 : StackLang.HolProg 64 :=
.seq rawBody542_106 rawBody542_107

def rawBody542_109 : StackLang.HolProg 64 :=
.seq rawBody542_105 rawBody542_108

def rawBody542_110 : StackLang.HolProg 64 :=
.seq rawBody542_104 rawBody542_109

def rawBody542_111 : StackLang.HolProg 64 :=
.seq rawBody542_103 rawBody542_110

def rawBody542_112 : StackLang.HolProg 64 :=
.seq rawBody542_102 rawBody542_111

def rawBody542_113 : StackLang.HolProg 64 :=
.seq rawBody542_101 rawBody542_112

def rawBody542_114 : StackLang.HolProg 64 :=
.seq rawBody542_100 rawBody542_113

def rawBody542_115 : StackLang.HolProg 64 :=
.seq rawBody542_99 rawBody542_114

def rawBody542_116 : StackLang.HolProg 64 :=
.seq rawBody542_98 rawBody542_115

def rawBody542_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody542_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody542_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody542_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody542_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody542_124 : StackLang.HolProg 64 :=
.seq rawBody542_122 rawBody542_123

def rawBody542_125 : StackLang.HolProg 64 :=
.seq rawBody542_121 rawBody542_124

def rawBody542_126 : StackLang.HolProg 64 :=
.seq rawBody542_120 rawBody542_125

def rawBody542_127 : StackLang.HolProg 64 :=
.seq rawBody542_119 rawBody542_126

def rawBody542_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody542_130 : StackLang.HolProg 64 :=
.seq rawBody542_128 rawBody542_129

def rawBody542_131 : StackLang.HolProg 64 :=
.call (some (rawBody542_127, 0, 542, 6)) (Sum.inl 541) (some (rawBody542_130, 542, 7))

def rawBody542_132 : StackLang.HolProg 64 :=
.seq rawBody542_118 rawBody542_131

def rawBody542_133 : StackLang.HolProg 64 :=
.seq rawBody542_117 rawBody542_132

def rawBody542_134 : StackLang.HolProg 64 :=
.seq rawBody542_116 rawBody542_133

def rawBody542_135 : StackLang.HolProg 64 :=
.seq rawBody542_97 rawBody542_134

def rawBody542_136 : StackLang.HolProg 64 :=
.seq rawBody542_94 rawBody542_135

def rawBody542_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody542_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody542_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody542_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody542_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody542_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody542_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody542_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody542_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody542_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody542_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_150 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody542_151 : StackLang.HolProg 64 :=
.seq rawBody542_149 rawBody542_150

def rawBody542_152 : StackLang.HolProg 64 :=
.seq rawBody542_148 rawBody542_151

def rawBody542_153 : StackLang.HolProg 64 :=
.seq rawBody542_147 rawBody542_152

def rawBody542_154 : StackLang.HolProg 64 :=
.seq rawBody542_146 rawBody542_153

def rawBody542_155 : StackLang.HolProg 64 :=
.seq rawBody542_145 rawBody542_154

def rawBody542_156 : StackLang.HolProg 64 :=
.seq rawBody542_144 rawBody542_155

def rawBody542_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_158 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody542_156 rawBody542_157

def rawBody542_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody542_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody542_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody542_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody542_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody542_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody542_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody542_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody542_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody542_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody542_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody542_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1793#64)

def rawBody542_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody542_179 : StackLang.HolProg 64 :=
.seq rawBody542_177 rawBody542_178

def rawBody542_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody542_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody542_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody542_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 9

def rawBody542_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody542_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody542_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody542_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody542_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody542_190 : StackLang.HolProg 64 :=
.seq rawBody542_188 rawBody542_189

def rawBody542_191 : StackLang.HolProg 64 :=
.seq rawBody542_187 rawBody542_190

def rawBody542_192 : StackLang.HolProg 64 :=
.seq rawBody542_186 rawBody542_191

def rawBody542_193 : StackLang.HolProg 64 :=
.seq rawBody542_185 rawBody542_192

def rawBody542_194 : StackLang.HolProg 64 :=
.seq rawBody542_184 rawBody542_193

def rawBody542_195 : StackLang.HolProg 64 :=
.seq rawBody542_183 rawBody542_194

def rawBody542_196 : StackLang.HolProg 64 :=
.seq rawBody542_182 rawBody542_195

def rawBody542_197 : StackLang.HolProg 64 :=
.seq rawBody542_181 rawBody542_196

def rawBody542_198 : StackLang.HolProg 64 :=
.seq rawBody542_180 rawBody542_197

def rawBody542_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody542_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody542_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody542_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody542_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_206 : StackLang.HolProg 64 :=
.seq rawBody542_204 rawBody542_205

def rawBody542_207 : StackLang.HolProg 64 :=
.seq rawBody542_203 rawBody542_206

def rawBody542_208 : StackLang.HolProg 64 :=
.seq rawBody542_202 rawBody542_207

def rawBody542_209 : StackLang.HolProg 64 :=
.seq rawBody542_201 rawBody542_208

def rawBody542_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_211 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody542_212 : StackLang.HolProg 64 :=
.seq rawBody542_210 rawBody542_211

def rawBody542_213 : StackLang.HolProg 64 :=
.call (some (rawBody542_209, 0, 542, 8)) (Sum.inl 476) (some (rawBody542_212, 542, 9))

def rawBody542_214 : StackLang.HolProg 64 :=
.seq rawBody542_200 rawBody542_213

def rawBody542_215 : StackLang.HolProg 64 :=
.seq rawBody542_199 rawBody542_214

def rawBody542_216 : StackLang.HolProg 64 :=
.seq rawBody542_198 rawBody542_215

def rawBody542_217 : StackLang.HolProg 64 :=
.seq rawBody542_179 rawBody542_216

def rawBody542_218 : StackLang.HolProg 64 :=
.seq rawBody542_176 rawBody542_217

def rawBody542_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody542_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody542_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1794#64)

def rawBody542_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody542_225 : StackLang.HolProg 64 :=
.seq rawBody542_223 rawBody542_224

def rawBody542_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody542_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody542_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody542_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 11

def rawBody542_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody542_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody542_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody542_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody542_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody542_236 : StackLang.HolProg 64 :=
.seq rawBody542_234 rawBody542_235

def rawBody542_237 : StackLang.HolProg 64 :=
.seq rawBody542_233 rawBody542_236

def rawBody542_238 : StackLang.HolProg 64 :=
.seq rawBody542_232 rawBody542_237

def rawBody542_239 : StackLang.HolProg 64 :=
.seq rawBody542_231 rawBody542_238

def rawBody542_240 : StackLang.HolProg 64 :=
.seq rawBody542_230 rawBody542_239

def rawBody542_241 : StackLang.HolProg 64 :=
.seq rawBody542_229 rawBody542_240

def rawBody542_242 : StackLang.HolProg 64 :=
.seq rawBody542_228 rawBody542_241

def rawBody542_243 : StackLang.HolProg 64 :=
.seq rawBody542_227 rawBody542_242

def rawBody542_244 : StackLang.HolProg 64 :=
.seq rawBody542_226 rawBody542_243

def rawBody542_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody542_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody542_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody542_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody542_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody542_252 : StackLang.HolProg 64 :=
.seq rawBody542_250 rawBody542_251

def rawBody542_253 : StackLang.HolProg 64 :=
.seq rawBody542_249 rawBody542_252

def rawBody542_254 : StackLang.HolProg 64 :=
.seq rawBody542_248 rawBody542_253

def rawBody542_255 : StackLang.HolProg 64 :=
.seq rawBody542_247 rawBody542_254

def rawBody542_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody542_257 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody542_258 : StackLang.HolProg 64 :=
.seq rawBody542_256 rawBody542_257

def rawBody542_259 : StackLang.HolProg 64 :=
.call (some (rawBody542_255, 0, 542, 10)) (Sum.inl 490) (some (rawBody542_258, 542, 11))

def rawBody542_260 : StackLang.HolProg 64 :=
.seq rawBody542_246 rawBody542_259

def rawBody542_261 : StackLang.HolProg 64 :=
.seq rawBody542_245 rawBody542_260

def rawBody542_262 : StackLang.HolProg 64 :=
.seq rawBody542_244 rawBody542_261

def rawBody542_263 : StackLang.HolProg 64 :=
.seq rawBody542_225 rawBody542_262

def rawBody542_264 : StackLang.HolProg 64 :=
.seq rawBody542_222 rawBody542_263

def rawBody542_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody542_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody542_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody542_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody542_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody542_270 : StackLang.HolProg 64 :=
.seq rawBody542_268 rawBody542_269

def rawBody542_271 : StackLang.HolProg 64 :=
.seq rawBody542_267 rawBody542_270

def rawBody542_272 : StackLang.HolProg 64 :=
.seq rawBody542_266 rawBody542_271

def rawBody542_273 : StackLang.HolProg 64 :=
.seq rawBody542_265 rawBody542_272

def rawBody542_274 : StackLang.HolProg 64 :=
.seq rawBody542_264 rawBody542_273

def rawBody542_275 : StackLang.HolProg 64 :=
.seq rawBody542_221 rawBody542_274

def rawBody542_276 : StackLang.HolProg 64 :=
.seq rawBody542_220 rawBody542_275

def rawBody542_277 : StackLang.HolProg 64 :=
.seq rawBody542_219 rawBody542_276

def rawBody542_278 : StackLang.HolProg 64 :=
.seq rawBody542_218 rawBody542_277

def rawBody542_279 : StackLang.HolProg 64 :=
.seq rawBody542_175 rawBody542_278

def rawBody542_280 : StackLang.HolProg 64 :=
.seq rawBody542_174 rawBody542_279

def rawBody542_281 : StackLang.HolProg 64 :=
.seq rawBody542_173 rawBody542_280

def rawBody542_282 : StackLang.HolProg 64 :=
.seq rawBody542_172 rawBody542_281

def rawBody542_283 : StackLang.HolProg 64 :=
.seq rawBody542_171 rawBody542_282

def rawBody542_284 : StackLang.HolProg 64 :=
.seq rawBody542_170 rawBody542_283

def rawBody542_285 : StackLang.HolProg 64 :=
.seq rawBody542_169 rawBody542_284

def rawBody542_286 : StackLang.HolProg 64 :=
.seq rawBody542_168 rawBody542_285

def rawBody542_287 : StackLang.HolProg 64 :=
.seq rawBody542_167 rawBody542_286

def rawBody542_288 : StackLang.HolProg 64 :=
.seq rawBody542_166 rawBody542_287

def rawBody542_289 : StackLang.HolProg 64 :=
.seq rawBody542_165 rawBody542_288

def rawBody542_290 : StackLang.HolProg 64 :=
.seq rawBody542_164 rawBody542_289

def rawBody542_291 : StackLang.HolProg 64 :=
.seq rawBody542_163 rawBody542_290

def rawBody542_292 : StackLang.HolProg 64 :=
.seq rawBody542_162 rawBody542_291

def rawBody542_293 : StackLang.HolProg 64 :=
.seq rawBody542_161 rawBody542_292

def rawBody542_294 : StackLang.HolProg 64 :=
.seq rawBody542_160 rawBody542_293

def rawBody542_295 : StackLang.HolProg 64 :=
.seq rawBody542_159 rawBody542_294

def rawBody542_296 : StackLang.HolProg 64 :=
.seq rawBody542_158 rawBody542_295

def rawBody542_297 : StackLang.HolProg 64 :=
.seq rawBody542_143 rawBody542_296

def rawBody542_298 : StackLang.HolProg 64 :=
.seq rawBody542_142 rawBody542_297

def rawBody542_299 : StackLang.HolProg 64 :=
.seq rawBody542_141 rawBody542_298

def rawBody542_300 : StackLang.HolProg 64 :=
.seq rawBody542_140 rawBody542_299

def rawBody542_301 : StackLang.HolProg 64 :=
.seq rawBody542_139 rawBody542_300

def rawBody542_302 : StackLang.HolProg 64 :=
.seq rawBody542_138 rawBody542_301

def rawBody542_303 : StackLang.HolProg 64 :=
.seq rawBody542_137 rawBody542_302

def rawBody542_304 : StackLang.HolProg 64 :=
.seq rawBody542_136 rawBody542_303

def rawBody542_305 : StackLang.HolProg 64 :=
.seq rawBody542_93 rawBody542_304

def rawBody542_306 : StackLang.HolProg 64 :=
.seq rawBody542_92 rawBody542_305

def rawBody542_307 : StackLang.HolProg 64 :=
.seq rawBody542_91 rawBody542_306

def rawBody542_308 : StackLang.HolProg 64 :=
.seq rawBody542_48 rawBody542_307

def rawBody542_309 : StackLang.HolProg 64 :=
.seq rawBody542_47 rawBody542_308

def rawBody542_310 : StackLang.HolProg 64 :=
.seq rawBody542_46 rawBody542_309

def rawBody542_311 : StackLang.HolProg 64 :=
.seq rawBody542_3 rawBody542_310

def rawBody542_312 : StackLang.HolProg 64 :=
.seq rawBody542_2 rawBody542_311

def rawBody542_313 : StackLang.HolProg 64 :=
.seq rawBody542_1 rawBody542_312

def rawBody542_314 : StackLang.HolProg 64 :=
.seq rawBody542_0 rawBody542_313

def raw542 : StackLang.HolProg 64 := rawBody542_314
theorem raw542_eq : StackRawCall.compTop RawInfo.rawInfo (function542 (.list [])).1 = raw542 := by
  kernel_rfl
#print axioms raw542_eq
end InitECandidate.Proofs.BackendStages
