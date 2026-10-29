import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw777
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody777_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody777_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody777_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody777_3 : StackLang.HolProg 64 :=
.seq AllocBody777_1 AllocBody777_2

def AllocBody777_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3538#64)

def AllocBody777_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody777_7 : StackLang.HolProg 64 :=
.seq AllocBody777_5 AllocBody777_6

def AllocBody777_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody777_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody777_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody777_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 3

def AllocBody777_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody777_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody777_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody777_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody777_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody777_18 : StackLang.HolProg 64 :=
.seq AllocBody777_16 AllocBody777_17

def AllocBody777_19 : StackLang.HolProg 64 :=
.seq AllocBody777_15 AllocBody777_18

def AllocBody777_20 : StackLang.HolProg 64 :=
.seq AllocBody777_14 AllocBody777_19

def AllocBody777_21 : StackLang.HolProg 64 :=
.seq AllocBody777_13 AllocBody777_20

def AllocBody777_22 : StackLang.HolProg 64 :=
.seq AllocBody777_12 AllocBody777_21

def AllocBody777_23 : StackLang.HolProg 64 :=
.seq AllocBody777_11 AllocBody777_22

def AllocBody777_24 : StackLang.HolProg 64 :=
.seq AllocBody777_10 AllocBody777_23

def AllocBody777_25 : StackLang.HolProg 64 :=
.seq AllocBody777_9 AllocBody777_24

def AllocBody777_26 : StackLang.HolProg 64 :=
.seq AllocBody777_8 AllocBody777_25

def AllocBody777_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody777_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody777_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody777_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody777_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody777_34 : StackLang.HolProg 64 :=
.seq AllocBody777_32 AllocBody777_33

def AllocBody777_35 : StackLang.HolProg 64 :=
.seq AllocBody777_31 AllocBody777_34

def AllocBody777_36 : StackLang.HolProg 64 :=
.seq AllocBody777_30 AllocBody777_35

def AllocBody777_37 : StackLang.HolProg 64 :=
.seq AllocBody777_29 AllocBody777_36

def AllocBody777_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody777_40 : StackLang.HolProg 64 :=
.seq AllocBody777_38 AllocBody777_39

def AllocBody777_41 : StackLang.HolProg 64 :=
.call (some (AllocBody777_37, 0, 777, 2)) (Sum.inl 69) (some (AllocBody777_40, 777, 3))

def AllocBody777_42 : StackLang.HolProg 64 :=
.seq AllocBody777_28 AllocBody777_41

def AllocBody777_43 : StackLang.HolProg 64 :=
.seq AllocBody777_27 AllocBody777_42

def AllocBody777_44 : StackLang.HolProg 64 :=
.seq AllocBody777_26 AllocBody777_43

def AllocBody777_45 : StackLang.HolProg 64 :=
.seq AllocBody777_7 AllocBody777_44

def AllocBody777_46 : StackLang.HolProg 64 :=
.seq AllocBody777_4 AllocBody777_45

def AllocBody777_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody777_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 144#64)

def AllocBody777_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody777_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3539#64)

def AllocBody777_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody777_53 : StackLang.HolProg 64 :=
.seq AllocBody777_51 AllocBody777_52

def AllocBody777_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody777_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody777_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody777_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 5

def AllocBody777_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody777_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody777_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody777_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody777_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody777_64 : StackLang.HolProg 64 :=
.seq AllocBody777_62 AllocBody777_63

def AllocBody777_65 : StackLang.HolProg 64 :=
.seq AllocBody777_61 AllocBody777_64

def AllocBody777_66 : StackLang.HolProg 64 :=
.seq AllocBody777_60 AllocBody777_65

def AllocBody777_67 : StackLang.HolProg 64 :=
.seq AllocBody777_59 AllocBody777_66

def AllocBody777_68 : StackLang.HolProg 64 :=
.seq AllocBody777_58 AllocBody777_67

def AllocBody777_69 : StackLang.HolProg 64 :=
.seq AllocBody777_57 AllocBody777_68

def AllocBody777_70 : StackLang.HolProg 64 :=
.seq AllocBody777_56 AllocBody777_69

def AllocBody777_71 : StackLang.HolProg 64 :=
.seq AllocBody777_55 AllocBody777_70

def AllocBody777_72 : StackLang.HolProg 64 :=
.seq AllocBody777_54 AllocBody777_71

def AllocBody777_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody777_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody777_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody777_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody777_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody777_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody777_81 : StackLang.HolProg 64 :=
.seq AllocBody777_79 AllocBody777_80

def AllocBody777_82 : StackLang.HolProg 64 :=
.seq AllocBody777_78 AllocBody777_81

def AllocBody777_83 : StackLang.HolProg 64 :=
.seq AllocBody777_77 AllocBody777_82

def AllocBody777_84 : StackLang.HolProg 64 :=
.seq AllocBody777_76 AllocBody777_83

def AllocBody777_85 : StackLang.HolProg 64 :=
.seq AllocBody777_75 AllocBody777_84

def AllocBody777_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody777_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody777_88 : StackLang.HolProg 64 :=
.seq AllocBody777_86 AllocBody777_87

def AllocBody777_89 : StackLang.HolProg 64 :=
.call (some (AllocBody777_85, 0, 777, 4)) (Sum.inl 68) (some (AllocBody777_88, 777, 5))

def AllocBody777_90 : StackLang.HolProg 64 :=
.seq AllocBody777_74 AllocBody777_89

def AllocBody777_91 : StackLang.HolProg 64 :=
.seq AllocBody777_73 AllocBody777_90

def AllocBody777_92 : StackLang.HolProg 64 :=
.seq AllocBody777_72 AllocBody777_91

def AllocBody777_93 : StackLang.HolProg 64 :=
.seq AllocBody777_53 AllocBody777_92

def AllocBody777_94 : StackLang.HolProg 64 :=
.seq AllocBody777_50 AllocBody777_93

def AllocBody777_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody777_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody777_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody777_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody777_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody777_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def AllocBody777_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1344#64)))

def AllocBody777_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 4#64)

def AllocBody777_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody777_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3540#64)

def AllocBody777_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody777_107 : StackLang.HolProg 64 :=
.seq AllocBody777_105 AllocBody777_106

def AllocBody777_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody777_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody777_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody777_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 7

def AllocBody777_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody777_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody777_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody777_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody777_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody777_118 : StackLang.HolProg 64 :=
.seq AllocBody777_116 AllocBody777_117

def AllocBody777_119 : StackLang.HolProg 64 :=
.seq AllocBody777_115 AllocBody777_118

def AllocBody777_120 : StackLang.HolProg 64 :=
.seq AllocBody777_114 AllocBody777_119

def AllocBody777_121 : StackLang.HolProg 64 :=
.seq AllocBody777_113 AllocBody777_120

def AllocBody777_122 : StackLang.HolProg 64 :=
.seq AllocBody777_112 AllocBody777_121

def AllocBody777_123 : StackLang.HolProg 64 :=
.seq AllocBody777_111 AllocBody777_122

def AllocBody777_124 : StackLang.HolProg 64 :=
.seq AllocBody777_110 AllocBody777_123

def AllocBody777_125 : StackLang.HolProg 64 :=
.seq AllocBody777_109 AllocBody777_124

def AllocBody777_126 : StackLang.HolProg 64 :=
.seq AllocBody777_108 AllocBody777_125

def AllocBody777_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody777_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody777_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody777_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody777_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody777_134 : StackLang.HolProg 64 :=
.seq AllocBody777_132 AllocBody777_133

def AllocBody777_135 : StackLang.HolProg 64 :=
.seq AllocBody777_131 AllocBody777_134

def AllocBody777_136 : StackLang.HolProg 64 :=
.seq AllocBody777_130 AllocBody777_135

def AllocBody777_137 : StackLang.HolProg 64 :=
.seq AllocBody777_129 AllocBody777_136

def AllocBody777_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody777_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody777_140 : StackLang.HolProg 64 :=
.seq AllocBody777_138 AllocBody777_139

def AllocBody777_141 : StackLang.HolProg 64 :=
.call (some (AllocBody777_137, 0, 777, 6)) (Sum.inl 772) (some (AllocBody777_140, 777, 7))

def AllocBody777_142 : StackLang.HolProg 64 :=
.seq AllocBody777_128 AllocBody777_141

def AllocBody777_143 : StackLang.HolProg 64 :=
.seq AllocBody777_127 AllocBody777_142

def AllocBody777_144 : StackLang.HolProg 64 :=
.seq AllocBody777_126 AllocBody777_143

def AllocBody777_145 : StackLang.HolProg 64 :=
.seq AllocBody777_107 AllocBody777_144

def AllocBody777_146 : StackLang.HolProg 64 :=
.seq AllocBody777_104 AllocBody777_145

def AllocBody777_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody777_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody777_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3541#64)

def AllocBody777_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody777_152 : StackLang.HolProg 64 :=
.seq AllocBody777_150 AllocBody777_151

def AllocBody777_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody777_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody777_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody777_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 9

def AllocBody777_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody777_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody777_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody777_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody777_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody777_163 : StackLang.HolProg 64 :=
.seq AllocBody777_161 AllocBody777_162

def AllocBody777_164 : StackLang.HolProg 64 :=
.seq AllocBody777_160 AllocBody777_163

def AllocBody777_165 : StackLang.HolProg 64 :=
.seq AllocBody777_159 AllocBody777_164

def AllocBody777_166 : StackLang.HolProg 64 :=
.seq AllocBody777_158 AllocBody777_165

def AllocBody777_167 : StackLang.HolProg 64 :=
.seq AllocBody777_157 AllocBody777_166

def AllocBody777_168 : StackLang.HolProg 64 :=
.seq AllocBody777_156 AllocBody777_167

def AllocBody777_169 : StackLang.HolProg 64 :=
.seq AllocBody777_155 AllocBody777_168

def AllocBody777_170 : StackLang.HolProg 64 :=
.seq AllocBody777_154 AllocBody777_169

def AllocBody777_171 : StackLang.HolProg 64 :=
.seq AllocBody777_153 AllocBody777_170

def AllocBody777_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody777_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody777_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody777_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody777_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody777_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody777_180 : StackLang.HolProg 64 :=
.seq AllocBody777_178 AllocBody777_179

def AllocBody777_181 : StackLang.HolProg 64 :=
.seq AllocBody777_177 AllocBody777_180

def AllocBody777_182 : StackLang.HolProg 64 :=
.seq AllocBody777_176 AllocBody777_181

def AllocBody777_183 : StackLang.HolProg 64 :=
.seq AllocBody777_175 AllocBody777_182

def AllocBody777_184 : StackLang.HolProg 64 :=
.seq AllocBody777_174 AllocBody777_183

def AllocBody777_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody777_186 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody777_187 : StackLang.HolProg 64 :=
.seq AllocBody777_185 AllocBody777_186

def AllocBody777_188 : StackLang.HolProg 64 :=
.call (some (AllocBody777_184, 0, 777, 8)) (Sum.inl 767) (some (AllocBody777_187, 777, 9))

def AllocBody777_189 : StackLang.HolProg 64 :=
.seq AllocBody777_173 AllocBody777_188

def AllocBody777_190 : StackLang.HolProg 64 :=
.seq AllocBody777_172 AllocBody777_189

def AllocBody777_191 : StackLang.HolProg 64 :=
.seq AllocBody777_171 AllocBody777_190

def AllocBody777_192 : StackLang.HolProg 64 :=
.seq AllocBody777_152 AllocBody777_191

def AllocBody777_193 : StackLang.HolProg 64 :=
.seq AllocBody777_149 AllocBody777_192

def AllocBody777_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody777_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody777_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody777_197 : StackLang.HolProg 64 :=
.seq AllocBody777_195 AllocBody777_196

def AllocBody777_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3542#64)

def AllocBody777_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody777_201 : StackLang.HolProg 64 :=
.seq AllocBody777_199 AllocBody777_200

def AllocBody777_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody777_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody777_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody777_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 11

def AllocBody777_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody777_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody777_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody777_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody777_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody777_212 : StackLang.HolProg 64 :=
.seq AllocBody777_210 AllocBody777_211

def AllocBody777_213 : StackLang.HolProg 64 :=
.seq AllocBody777_209 AllocBody777_212

def AllocBody777_214 : StackLang.HolProg 64 :=
.seq AllocBody777_208 AllocBody777_213

def AllocBody777_215 : StackLang.HolProg 64 :=
.seq AllocBody777_207 AllocBody777_214

def AllocBody777_216 : StackLang.HolProg 64 :=
.seq AllocBody777_206 AllocBody777_215

def AllocBody777_217 : StackLang.HolProg 64 :=
.seq AllocBody777_205 AllocBody777_216

def AllocBody777_218 : StackLang.HolProg 64 :=
.seq AllocBody777_204 AllocBody777_217

def AllocBody777_219 : StackLang.HolProg 64 :=
.seq AllocBody777_203 AllocBody777_218

def AllocBody777_220 : StackLang.HolProg 64 :=
.seq AllocBody777_202 AllocBody777_219

def AllocBody777_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody777_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody777_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody777_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody777_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody777_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody777_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody777_229 : StackLang.HolProg 64 :=
.seq AllocBody777_227 AllocBody777_228

def AllocBody777_230 : StackLang.HolProg 64 :=
.seq AllocBody777_226 AllocBody777_229

def AllocBody777_231 : StackLang.HolProg 64 :=
.seq AllocBody777_225 AllocBody777_230

def AllocBody777_232 : StackLang.HolProg 64 :=
.seq AllocBody777_224 AllocBody777_231

def AllocBody777_233 : StackLang.HolProg 64 :=
.seq AllocBody777_223 AllocBody777_232

def AllocBody777_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody777_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody777_236 : StackLang.HolProg 64 :=
.seq AllocBody777_234 AllocBody777_235

def AllocBody777_237 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody777_238 : StackLang.HolProg 64 :=
.seq AllocBody777_236 AllocBody777_237

def AllocBody777_239 : StackLang.HolProg 64 :=
.call (some (AllocBody777_233, 0, 777, 10)) (Sum.inl 70) (some (AllocBody777_238, 777, 11))

def AllocBody777_240 : StackLang.HolProg 64 :=
.seq AllocBody777_222 AllocBody777_239

def AllocBody777_241 : StackLang.HolProg 64 :=
.seq AllocBody777_221 AllocBody777_240

def AllocBody777_242 : StackLang.HolProg 64 :=
.seq AllocBody777_220 AllocBody777_241

def AllocBody777_243 : StackLang.HolProg 64 :=
.seq AllocBody777_201 AllocBody777_242

def AllocBody777_244 : StackLang.HolProg 64 :=
.seq AllocBody777_198 AllocBody777_243

def AllocBody777_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody777_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody777_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody777_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody777_249 : StackLang.HolProg 64 :=
.seq AllocBody777_247 AllocBody777_248

def AllocBody777_250 : StackLang.HolProg 64 :=
.seq AllocBody777_246 AllocBody777_249

def AllocBody777_251 : StackLang.HolProg 64 :=
.seq AllocBody777_245 AllocBody777_250

def AllocBody777_252 : StackLang.HolProg 64 :=
.seq AllocBody777_244 AllocBody777_251

def AllocBody777_253 : StackLang.HolProg 64 :=
.seq AllocBody777_197 AllocBody777_252

def AllocBody777_254 : StackLang.HolProg 64 :=
.seq AllocBody777_194 AllocBody777_253

def AllocBody777_255 : StackLang.HolProg 64 :=
.seq AllocBody777_193 AllocBody777_254

def AllocBody777_256 : StackLang.HolProg 64 :=
.seq AllocBody777_148 AllocBody777_255

def AllocBody777_257 : StackLang.HolProg 64 :=
.seq AllocBody777_147 AllocBody777_256

def AllocBody777_258 : StackLang.HolProg 64 :=
.seq AllocBody777_146 AllocBody777_257

def AllocBody777_259 : StackLang.HolProg 64 :=
.seq AllocBody777_103 AllocBody777_258

def AllocBody777_260 : StackLang.HolProg 64 :=
.seq AllocBody777_102 AllocBody777_259

def AllocBody777_261 : StackLang.HolProg 64 :=
.seq AllocBody777_101 AllocBody777_260

def AllocBody777_262 : StackLang.HolProg 64 :=
.seq AllocBody777_100 AllocBody777_261

def AllocBody777_263 : StackLang.HolProg 64 :=
.seq AllocBody777_99 AllocBody777_262

def AllocBody777_264 : StackLang.HolProg 64 :=
.seq AllocBody777_98 AllocBody777_263

def AllocBody777_265 : StackLang.HolProg 64 :=
.seq AllocBody777_97 AllocBody777_264

def AllocBody777_266 : StackLang.HolProg 64 :=
.seq AllocBody777_96 AllocBody777_265

def AllocBody777_267 : StackLang.HolProg 64 :=
.seq AllocBody777_95 AllocBody777_266

def AllocBody777_268 : StackLang.HolProg 64 :=
.seq AllocBody777_94 AllocBody777_267

def AllocBody777_269 : StackLang.HolProg 64 :=
.seq AllocBody777_49 AllocBody777_268

def AllocBody777_270 : StackLang.HolProg 64 :=
.seq AllocBody777_48 AllocBody777_269

def AllocBody777_271 : StackLang.HolProg 64 :=
.seq AllocBody777_47 AllocBody777_270

def AllocBody777_272 : StackLang.HolProg 64 :=
.seq AllocBody777_46 AllocBody777_271

def AllocBody777_273 : StackLang.HolProg 64 :=
.seq AllocBody777_3 AllocBody777_272

def AllocBody777_274 : StackLang.HolProg 64 :=
.seq AllocBody777_0 AllocBody777_273

def Alloc777 : Nat × StackLang.HolProg 64 := (777, AllocBody777_274)
theorem Alloc777_eq : StackAlloc.progComp (777, raw777) = Alloc777 := by
  kernel_rfl
#print axioms Alloc777_eq
end InitECandidate.Proofs.BackendStages
