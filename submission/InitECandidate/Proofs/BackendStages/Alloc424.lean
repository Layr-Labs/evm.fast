import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw424
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody424_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody424_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody424_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody424_3 : StackLang.HolProg 64 :=
.seq AllocBody424_1 AllocBody424_2

def AllocBody424_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1264#64)

def AllocBody424_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody424_7 : StackLang.HolProg 64 :=
.seq AllocBody424_5 AllocBody424_6

def AllocBody424_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody424_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody424_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody424_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 424 3

def AllocBody424_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody424_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody424_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody424_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody424_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody424_18 : StackLang.HolProg 64 :=
.seq AllocBody424_16 AllocBody424_17

def AllocBody424_19 : StackLang.HolProg 64 :=
.seq AllocBody424_15 AllocBody424_18

def AllocBody424_20 : StackLang.HolProg 64 :=
.seq AllocBody424_14 AllocBody424_19

def AllocBody424_21 : StackLang.HolProg 64 :=
.seq AllocBody424_13 AllocBody424_20

def AllocBody424_22 : StackLang.HolProg 64 :=
.seq AllocBody424_12 AllocBody424_21

def AllocBody424_23 : StackLang.HolProg 64 :=
.seq AllocBody424_11 AllocBody424_22

def AllocBody424_24 : StackLang.HolProg 64 :=
.seq AllocBody424_10 AllocBody424_23

def AllocBody424_25 : StackLang.HolProg 64 :=
.seq AllocBody424_9 AllocBody424_24

def AllocBody424_26 : StackLang.HolProg 64 :=
.seq AllocBody424_8 AllocBody424_25

def AllocBody424_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody424_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody424_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody424_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody424_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody424_34 : StackLang.HolProg 64 :=
.seq AllocBody424_32 AllocBody424_33

def AllocBody424_35 : StackLang.HolProg 64 :=
.seq AllocBody424_31 AllocBody424_34

def AllocBody424_36 : StackLang.HolProg 64 :=
.seq AllocBody424_30 AllocBody424_35

def AllocBody424_37 : StackLang.HolProg 64 :=
.seq AllocBody424_29 AllocBody424_36

def AllocBody424_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody424_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody424_40 : StackLang.HolProg 64 :=
.seq AllocBody424_38 AllocBody424_39

def AllocBody424_41 : StackLang.HolProg 64 :=
.call (some (AllocBody424_37, 0, 424, 2)) (Sum.inl 421) (some (AllocBody424_40, 424, 3))

def AllocBody424_42 : StackLang.HolProg 64 :=
.seq AllocBody424_28 AllocBody424_41

def AllocBody424_43 : StackLang.HolProg 64 :=
.seq AllocBody424_27 AllocBody424_42

def AllocBody424_44 : StackLang.HolProg 64 :=
.seq AllocBody424_26 AllocBody424_43

def AllocBody424_45 : StackLang.HolProg 64 :=
.seq AllocBody424_7 AllocBody424_44

def AllocBody424_46 : StackLang.HolProg 64 :=
.seq AllocBody424_4 AllocBody424_45

def AllocBody424_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody424_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody424_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody424_50 : StackLang.HolProg 64 :=
.seq AllocBody424_48 AllocBody424_49

def AllocBody424_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1265#64)

def AllocBody424_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody424_54 : StackLang.HolProg 64 :=
.seq AllocBody424_52 AllocBody424_53

def AllocBody424_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody424_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody424_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody424_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 424 5

def AllocBody424_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody424_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody424_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody424_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody424_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody424_65 : StackLang.HolProg 64 :=
.seq AllocBody424_63 AllocBody424_64

def AllocBody424_66 : StackLang.HolProg 64 :=
.seq AllocBody424_62 AllocBody424_65

def AllocBody424_67 : StackLang.HolProg 64 :=
.seq AllocBody424_61 AllocBody424_66

def AllocBody424_68 : StackLang.HolProg 64 :=
.seq AllocBody424_60 AllocBody424_67

def AllocBody424_69 : StackLang.HolProg 64 :=
.seq AllocBody424_59 AllocBody424_68

def AllocBody424_70 : StackLang.HolProg 64 :=
.seq AllocBody424_58 AllocBody424_69

def AllocBody424_71 : StackLang.HolProg 64 :=
.seq AllocBody424_57 AllocBody424_70

def AllocBody424_72 : StackLang.HolProg 64 :=
.seq AllocBody424_56 AllocBody424_71

def AllocBody424_73 : StackLang.HolProg 64 :=
.seq AllocBody424_55 AllocBody424_72

def AllocBody424_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody424_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody424_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody424_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody424_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody424_81 : StackLang.HolProg 64 :=
.seq AllocBody424_79 AllocBody424_80

def AllocBody424_82 : StackLang.HolProg 64 :=
.seq AllocBody424_78 AllocBody424_81

def AllocBody424_83 : StackLang.HolProg 64 :=
.seq AllocBody424_77 AllocBody424_82

def AllocBody424_84 : StackLang.HolProg 64 :=
.seq AllocBody424_76 AllocBody424_83

def AllocBody424_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody424_87 : StackLang.HolProg 64 :=
.seq AllocBody424_85 AllocBody424_86

def AllocBody424_88 : StackLang.HolProg 64 :=
.call (some (AllocBody424_84, 0, 424, 4)) (Sum.inl 407) (some (AllocBody424_87, 424, 5))

def AllocBody424_89 : StackLang.HolProg 64 :=
.seq AllocBody424_75 AllocBody424_88

def AllocBody424_90 : StackLang.HolProg 64 :=
.seq AllocBody424_74 AllocBody424_89

def AllocBody424_91 : StackLang.HolProg 64 :=
.seq AllocBody424_73 AllocBody424_90

def AllocBody424_92 : StackLang.HolProg 64 :=
.seq AllocBody424_54 AllocBody424_91

def AllocBody424_93 : StackLang.HolProg 64 :=
.seq AllocBody424_51 AllocBody424_92

def AllocBody424_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody424_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody424_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1266#64)

def AllocBody424_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody424_99 : StackLang.HolProg 64 :=
.seq AllocBody424_97 AllocBody424_98

def AllocBody424_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody424_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody424_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody424_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 424 7

def AllocBody424_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody424_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody424_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody424_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody424_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody424_110 : StackLang.HolProg 64 :=
.seq AllocBody424_108 AllocBody424_109

def AllocBody424_111 : StackLang.HolProg 64 :=
.seq AllocBody424_107 AllocBody424_110

def AllocBody424_112 : StackLang.HolProg 64 :=
.seq AllocBody424_106 AllocBody424_111

def AllocBody424_113 : StackLang.HolProg 64 :=
.seq AllocBody424_105 AllocBody424_112

def AllocBody424_114 : StackLang.HolProg 64 :=
.seq AllocBody424_104 AllocBody424_113

def AllocBody424_115 : StackLang.HolProg 64 :=
.seq AllocBody424_103 AllocBody424_114

def AllocBody424_116 : StackLang.HolProg 64 :=
.seq AllocBody424_102 AllocBody424_115

def AllocBody424_117 : StackLang.HolProg 64 :=
.seq AllocBody424_101 AllocBody424_116

def AllocBody424_118 : StackLang.HolProg 64 :=
.seq AllocBody424_100 AllocBody424_117

def AllocBody424_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody424_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody424_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody424_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody424_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody424_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody424_127 : StackLang.HolProg 64 :=
.seq AllocBody424_125 AllocBody424_126

def AllocBody424_128 : StackLang.HolProg 64 :=
.seq AllocBody424_124 AllocBody424_127

def AllocBody424_129 : StackLang.HolProg 64 :=
.seq AllocBody424_123 AllocBody424_128

def AllocBody424_130 : StackLang.HolProg 64 :=
.seq AllocBody424_122 AllocBody424_129

def AllocBody424_131 : StackLang.HolProg 64 :=
.seq AllocBody424_121 AllocBody424_130

def AllocBody424_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody424_133 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody424_134 : StackLang.HolProg 64 :=
.seq AllocBody424_132 AllocBody424_133

def AllocBody424_135 : StackLang.HolProg 64 :=
.call (some (AllocBody424_131, 0, 424, 6)) (Sum.inl 395) (some (AllocBody424_134, 424, 7))

def AllocBody424_136 : StackLang.HolProg 64 :=
.seq AllocBody424_120 AllocBody424_135

def AllocBody424_137 : StackLang.HolProg 64 :=
.seq AllocBody424_119 AllocBody424_136

def AllocBody424_138 : StackLang.HolProg 64 :=
.seq AllocBody424_118 AllocBody424_137

def AllocBody424_139 : StackLang.HolProg 64 :=
.seq AllocBody424_99 AllocBody424_138

def AllocBody424_140 : StackLang.HolProg 64 :=
.seq AllocBody424_96 AllocBody424_139

def AllocBody424_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody424_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody424_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody424_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody424_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody424_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody424_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody424_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551480#64))

def AllocBody424_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody424_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody424_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1267#64)

def AllocBody424_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody424_158 : StackLang.HolProg 64 :=
.seq AllocBody424_156 AllocBody424_157

def AllocBody424_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody424_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody424_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody424_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 424 9

def AllocBody424_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody424_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody424_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody424_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody424_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody424_169 : StackLang.HolProg 64 :=
.seq AllocBody424_167 AllocBody424_168

def AllocBody424_170 : StackLang.HolProg 64 :=
.seq AllocBody424_166 AllocBody424_169

def AllocBody424_171 : StackLang.HolProg 64 :=
.seq AllocBody424_165 AllocBody424_170

def AllocBody424_172 : StackLang.HolProg 64 :=
.seq AllocBody424_164 AllocBody424_171

def AllocBody424_173 : StackLang.HolProg 64 :=
.seq AllocBody424_163 AllocBody424_172

def AllocBody424_174 : StackLang.HolProg 64 :=
.seq AllocBody424_162 AllocBody424_173

def AllocBody424_175 : StackLang.HolProg 64 :=
.seq AllocBody424_161 AllocBody424_174

def AllocBody424_176 : StackLang.HolProg 64 :=
.seq AllocBody424_160 AllocBody424_175

def AllocBody424_177 : StackLang.HolProg 64 :=
.seq AllocBody424_159 AllocBody424_176

def AllocBody424_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody424_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody424_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody424_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody424_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody424_185 : StackLang.HolProg 64 :=
.seq AllocBody424_183 AllocBody424_184

def AllocBody424_186 : StackLang.HolProg 64 :=
.seq AllocBody424_182 AllocBody424_185

def AllocBody424_187 : StackLang.HolProg 64 :=
.seq AllocBody424_181 AllocBody424_186

def AllocBody424_188 : StackLang.HolProg 64 :=
.seq AllocBody424_180 AllocBody424_187

def AllocBody424_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody424_190 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody424_191 : StackLang.HolProg 64 :=
.seq AllocBody424_189 AllocBody424_190

def AllocBody424_192 : StackLang.HolProg 64 :=
.call (some (AllocBody424_188, 0, 424, 8)) (Sum.inl 423) (some (AllocBody424_191, 424, 9))

def AllocBody424_193 : StackLang.HolProg 64 :=
.seq AllocBody424_179 AllocBody424_192

def AllocBody424_194 : StackLang.HolProg 64 :=
.seq AllocBody424_178 AllocBody424_193

def AllocBody424_195 : StackLang.HolProg 64 :=
.seq AllocBody424_177 AllocBody424_194

def AllocBody424_196 : StackLang.HolProg 64 :=
.seq AllocBody424_158 AllocBody424_195

def AllocBody424_197 : StackLang.HolProg 64 :=
.seq AllocBody424_155 AllocBody424_196

def AllocBody424_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody424_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody424_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody424_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody424_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody424_203 : StackLang.HolProg 64 :=
.seq AllocBody424_201 AllocBody424_202

def AllocBody424_204 : StackLang.HolProg 64 :=
.seq AllocBody424_200 AllocBody424_203

def AllocBody424_205 : StackLang.HolProg 64 :=
.seq AllocBody424_199 AllocBody424_204

def AllocBody424_206 : StackLang.HolProg 64 :=
.seq AllocBody424_198 AllocBody424_205

def AllocBody424_207 : StackLang.HolProg 64 :=
.seq AllocBody424_197 AllocBody424_206

def AllocBody424_208 : StackLang.HolProg 64 :=
.seq AllocBody424_154 AllocBody424_207

def AllocBody424_209 : StackLang.HolProg 64 :=
.seq AllocBody424_153 AllocBody424_208

def AllocBody424_210 : StackLang.HolProg 64 :=
.seq AllocBody424_152 AllocBody424_209

def AllocBody424_211 : StackLang.HolProg 64 :=
.seq AllocBody424_151 AllocBody424_210

def AllocBody424_212 : StackLang.HolProg 64 :=
.seq AllocBody424_150 AllocBody424_211

def AllocBody424_213 : StackLang.HolProg 64 :=
.seq AllocBody424_149 AllocBody424_212

def AllocBody424_214 : StackLang.HolProg 64 :=
.seq AllocBody424_148 AllocBody424_213

def AllocBody424_215 : StackLang.HolProg 64 :=
.seq AllocBody424_147 AllocBody424_214

def AllocBody424_216 : StackLang.HolProg 64 :=
.seq AllocBody424_146 AllocBody424_215

def AllocBody424_217 : StackLang.HolProg 64 :=
.seq AllocBody424_145 AllocBody424_216

def AllocBody424_218 : StackLang.HolProg 64 :=
.seq AllocBody424_144 AllocBody424_217

def AllocBody424_219 : StackLang.HolProg 64 :=
.seq AllocBody424_143 AllocBody424_218

def AllocBody424_220 : StackLang.HolProg 64 :=
.seq AllocBody424_142 AllocBody424_219

def AllocBody424_221 : StackLang.HolProg 64 :=
.seq AllocBody424_141 AllocBody424_220

def AllocBody424_222 : StackLang.HolProg 64 :=
.seq AllocBody424_140 AllocBody424_221

def AllocBody424_223 : StackLang.HolProg 64 :=
.seq AllocBody424_95 AllocBody424_222

def AllocBody424_224 : StackLang.HolProg 64 :=
.seq AllocBody424_94 AllocBody424_223

def AllocBody424_225 : StackLang.HolProg 64 :=
.seq AllocBody424_93 AllocBody424_224

def AllocBody424_226 : StackLang.HolProg 64 :=
.seq AllocBody424_50 AllocBody424_225

def AllocBody424_227 : StackLang.HolProg 64 :=
.seq AllocBody424_47 AllocBody424_226

def AllocBody424_228 : StackLang.HolProg 64 :=
.seq AllocBody424_46 AllocBody424_227

def AllocBody424_229 : StackLang.HolProg 64 :=
.seq AllocBody424_3 AllocBody424_228

def AllocBody424_230 : StackLang.HolProg 64 :=
.seq AllocBody424_0 AllocBody424_229

def Alloc424 : Nat × StackLang.HolProg 64 := (424, AllocBody424_230)
theorem Alloc424_eq : StackAlloc.progComp (424, raw424) = Alloc424 := by
  kernel_rfl
#print axioms Alloc424_eq
end InitECandidate.Proofs.BackendStages
