import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw331
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody331_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody331_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody331_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody331_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody331_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody331_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody331_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody331_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody331_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551488#64))

def AllocBody331_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody331_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody331_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 937#64)

def AllocBody331_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody331_16 : StackLang.HolProg 64 :=
.seq AllocBody331_14 AllocBody331_15

def AllocBody331_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody331_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody331_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody331_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 331 3

def AllocBody331_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody331_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody331_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody331_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody331_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody331_27 : StackLang.HolProg 64 :=
.seq AllocBody331_25 AllocBody331_26

def AllocBody331_28 : StackLang.HolProg 64 :=
.seq AllocBody331_24 AllocBody331_27

def AllocBody331_29 : StackLang.HolProg 64 :=
.seq AllocBody331_23 AllocBody331_28

def AllocBody331_30 : StackLang.HolProg 64 :=
.seq AllocBody331_22 AllocBody331_29

def AllocBody331_31 : StackLang.HolProg 64 :=
.seq AllocBody331_21 AllocBody331_30

def AllocBody331_32 : StackLang.HolProg 64 :=
.seq AllocBody331_20 AllocBody331_31

def AllocBody331_33 : StackLang.HolProg 64 :=
.seq AllocBody331_19 AllocBody331_32

def AllocBody331_34 : StackLang.HolProg 64 :=
.seq AllocBody331_18 AllocBody331_33

def AllocBody331_35 : StackLang.HolProg 64 :=
.seq AllocBody331_17 AllocBody331_34

def AllocBody331_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody331_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody331_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody331_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody331_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody331_43 : StackLang.HolProg 64 :=
.seq AllocBody331_41 AllocBody331_42

def AllocBody331_44 : StackLang.HolProg 64 :=
.seq AllocBody331_40 AllocBody331_43

def AllocBody331_45 : StackLang.HolProg 64 :=
.seq AllocBody331_39 AllocBody331_44

def AllocBody331_46 : StackLang.HolProg 64 :=
.seq AllocBody331_38 AllocBody331_45

def AllocBody331_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody331_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody331_49 : StackLang.HolProg 64 :=
.seq AllocBody331_47 AllocBody331_48

def AllocBody331_50 : StackLang.HolProg 64 :=
.call (some (AllocBody331_46, 0, 331, 2)) (Sum.inl 77) (some (AllocBody331_49, 331, 3))

def AllocBody331_51 : StackLang.HolProg 64 :=
.seq AllocBody331_37 AllocBody331_50

def AllocBody331_52 : StackLang.HolProg 64 :=
.seq AllocBody331_36 AllocBody331_51

def AllocBody331_53 : StackLang.HolProg 64 :=
.seq AllocBody331_35 AllocBody331_52

def AllocBody331_54 : StackLang.HolProg 64 :=
.seq AllocBody331_16 AllocBody331_53

def AllocBody331_55 : StackLang.HolProg 64 :=
.seq AllocBody331_13 AllocBody331_54

def AllocBody331_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody331_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody331_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody331_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody331_61 : StackLang.HolProg 64 :=
.seq AllocBody331_59 AllocBody331_60

def AllocBody331_62 : StackLang.HolProg 64 :=
.seq AllocBody331_58 AllocBody331_61

def AllocBody331_63 : StackLang.HolProg 64 :=
.seq AllocBody331_57 AllocBody331_62

def AllocBody331_64 : StackLang.HolProg 64 :=
.seq AllocBody331_56 AllocBody331_63

def AllocBody331_65 : StackLang.HolProg 64 :=
.seq AllocBody331_55 AllocBody331_64

def AllocBody331_66 : StackLang.HolProg 64 :=
.seq AllocBody331_12 AllocBody331_65

def AllocBody331_67 : StackLang.HolProg 64 :=
.seq AllocBody331_11 AllocBody331_66

def AllocBody331_68 : StackLang.HolProg 64 :=
.seq AllocBody331_10 AllocBody331_67

def AllocBody331_69 : StackLang.HolProg 64 :=
.seq AllocBody331_9 AllocBody331_68

def AllocBody331_70 : StackLang.HolProg 64 :=
.seq AllocBody331_8 AllocBody331_69

def AllocBody331_71 : StackLang.HolProg 64 :=
.seq AllocBody331_7 AllocBody331_70

def AllocBody331_72 : StackLang.HolProg 64 :=
.seq AllocBody331_6 AllocBody331_71

def AllocBody331_73 : StackLang.HolProg 64 :=
.seq AllocBody331_5 AllocBody331_72

def AllocBody331_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody331_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody331_76 : StackLang.HolProg 64 :=
.seq AllocBody331_74 AllocBody331_75

def AllocBody331_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody331_73 AllocBody331_76

def AllocBody331_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody331_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody331_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody331_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 938#64)

def AllocBody331_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody331_84 : StackLang.HolProg 64 :=
.seq AllocBody331_82 AllocBody331_83

def AllocBody331_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody331_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody331_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody331_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 331 5

def AllocBody331_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody331_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody331_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody331_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody331_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody331_95 : StackLang.HolProg 64 :=
.seq AllocBody331_93 AllocBody331_94

def AllocBody331_96 : StackLang.HolProg 64 :=
.seq AllocBody331_92 AllocBody331_95

def AllocBody331_97 : StackLang.HolProg 64 :=
.seq AllocBody331_91 AllocBody331_96

def AllocBody331_98 : StackLang.HolProg 64 :=
.seq AllocBody331_90 AllocBody331_97

def AllocBody331_99 : StackLang.HolProg 64 :=
.seq AllocBody331_89 AllocBody331_98

def AllocBody331_100 : StackLang.HolProg 64 :=
.seq AllocBody331_88 AllocBody331_99

def AllocBody331_101 : StackLang.HolProg 64 :=
.seq AllocBody331_87 AllocBody331_100

def AllocBody331_102 : StackLang.HolProg 64 :=
.seq AllocBody331_86 AllocBody331_101

def AllocBody331_103 : StackLang.HolProg 64 :=
.seq AllocBody331_85 AllocBody331_102

def AllocBody331_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody331_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody331_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody331_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody331_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody331_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody331_112 : StackLang.HolProg 64 :=
.seq AllocBody331_110 AllocBody331_111

def AllocBody331_113 : StackLang.HolProg 64 :=
.seq AllocBody331_109 AllocBody331_112

def AllocBody331_114 : StackLang.HolProg 64 :=
.seq AllocBody331_108 AllocBody331_113

def AllocBody331_115 : StackLang.HolProg 64 :=
.seq AllocBody331_107 AllocBody331_114

def AllocBody331_116 : StackLang.HolProg 64 :=
.seq AllocBody331_106 AllocBody331_115

def AllocBody331_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody331_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody331_119 : StackLang.HolProg 64 :=
.seq AllocBody331_117 AllocBody331_118

def AllocBody331_120 : StackLang.HolProg 64 :=
.call (some (AllocBody331_116, 0, 331, 4)) (Sum.inl 330) (some (AllocBody331_119, 331, 5))

def AllocBody331_121 : StackLang.HolProg 64 :=
.seq AllocBody331_105 AllocBody331_120

def AllocBody331_122 : StackLang.HolProg 64 :=
.seq AllocBody331_104 AllocBody331_121

def AllocBody331_123 : StackLang.HolProg 64 :=
.seq AllocBody331_103 AllocBody331_122

def AllocBody331_124 : StackLang.HolProg 64 :=
.seq AllocBody331_84 AllocBody331_123

def AllocBody331_125 : StackLang.HolProg 64 :=
.seq AllocBody331_81 AllocBody331_124

def AllocBody331_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody331_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody331_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody331_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 939#64)

def AllocBody331_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody331_133 : StackLang.HolProg 64 :=
.seq AllocBody331_131 AllocBody331_132

def AllocBody331_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody331_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody331_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody331_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 331 7

def AllocBody331_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody331_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody331_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody331_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody331_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody331_144 : StackLang.HolProg 64 :=
.seq AllocBody331_142 AllocBody331_143

def AllocBody331_145 : StackLang.HolProg 64 :=
.seq AllocBody331_141 AllocBody331_144

def AllocBody331_146 : StackLang.HolProg 64 :=
.seq AllocBody331_140 AllocBody331_145

def AllocBody331_147 : StackLang.HolProg 64 :=
.seq AllocBody331_139 AllocBody331_146

def AllocBody331_148 : StackLang.HolProg 64 :=
.seq AllocBody331_138 AllocBody331_147

def AllocBody331_149 : StackLang.HolProg 64 :=
.seq AllocBody331_137 AllocBody331_148

def AllocBody331_150 : StackLang.HolProg 64 :=
.seq AllocBody331_136 AllocBody331_149

def AllocBody331_151 : StackLang.HolProg 64 :=
.seq AllocBody331_135 AllocBody331_150

def AllocBody331_152 : StackLang.HolProg 64 :=
.seq AllocBody331_134 AllocBody331_151

def AllocBody331_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody331_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody331_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody331_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody331_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody331_160 : StackLang.HolProg 64 :=
.seq AllocBody331_158 AllocBody331_159

def AllocBody331_161 : StackLang.HolProg 64 :=
.seq AllocBody331_157 AllocBody331_160

def AllocBody331_162 : StackLang.HolProg 64 :=
.seq AllocBody331_156 AllocBody331_161

def AllocBody331_163 : StackLang.HolProg 64 :=
.seq AllocBody331_155 AllocBody331_162

def AllocBody331_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody331_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody331_166 : StackLang.HolProg 64 :=
.seq AllocBody331_164 AllocBody331_165

def AllocBody331_167 : StackLang.HolProg 64 :=
.call (some (AllocBody331_163, 0, 331, 6)) (Sum.inl 77) (some (AllocBody331_166, 331, 7))

def AllocBody331_168 : StackLang.HolProg 64 :=
.seq AllocBody331_154 AllocBody331_167

def AllocBody331_169 : StackLang.HolProg 64 :=
.seq AllocBody331_153 AllocBody331_168

def AllocBody331_170 : StackLang.HolProg 64 :=
.seq AllocBody331_152 AllocBody331_169

def AllocBody331_171 : StackLang.HolProg 64 :=
.seq AllocBody331_133 AllocBody331_170

def AllocBody331_172 : StackLang.HolProg 64 :=
.seq AllocBody331_130 AllocBody331_171

def AllocBody331_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody331_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody331_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody331_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody331_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody331_178 : StackLang.HolProg 64 :=
.seq AllocBody331_176 AllocBody331_177

def AllocBody331_179 : StackLang.HolProg 64 :=
.seq AllocBody331_175 AllocBody331_178

def AllocBody331_180 : StackLang.HolProg 64 :=
.seq AllocBody331_174 AllocBody331_179

def AllocBody331_181 : StackLang.HolProg 64 :=
.seq AllocBody331_173 AllocBody331_180

def AllocBody331_182 : StackLang.HolProg 64 :=
.seq AllocBody331_172 AllocBody331_181

def AllocBody331_183 : StackLang.HolProg 64 :=
.seq AllocBody331_129 AllocBody331_182

def AllocBody331_184 : StackLang.HolProg 64 :=
.seq AllocBody331_128 AllocBody331_183

def AllocBody331_185 : StackLang.HolProg 64 :=
.seq AllocBody331_127 AllocBody331_184

def AllocBody331_186 : StackLang.HolProg 64 :=
.seq AllocBody331_126 AllocBody331_185

def AllocBody331_187 : StackLang.HolProg 64 :=
.seq AllocBody331_125 AllocBody331_186

def AllocBody331_188 : StackLang.HolProg 64 :=
.seq AllocBody331_80 AllocBody331_187

def AllocBody331_189 : StackLang.HolProg 64 :=
.seq AllocBody331_79 AllocBody331_188

def AllocBody331_190 : StackLang.HolProg 64 :=
.seq AllocBody331_78 AllocBody331_189

def AllocBody331_191 : StackLang.HolProg 64 :=
.seq AllocBody331_77 AllocBody331_190

def AllocBody331_192 : StackLang.HolProg 64 :=
.seq AllocBody331_4 AllocBody331_191

def AllocBody331_193 : StackLang.HolProg 64 :=
.seq AllocBody331_3 AllocBody331_192

def AllocBody331_194 : StackLang.HolProg 64 :=
.seq AllocBody331_2 AllocBody331_193

def AllocBody331_195 : StackLang.HolProg 64 :=
.seq AllocBody331_1 AllocBody331_194

def AllocBody331_196 : StackLang.HolProg 64 :=
.seq AllocBody331_0 AllocBody331_195

def Alloc331 : Nat × StackLang.HolProg 64 := (331, AllocBody331_196)
theorem Alloc331_eq : StackAlloc.progComp (331, raw331) = Alloc331 := by
  kernel_rfl
#print axioms Alloc331_eq
end InitECandidate.Proofs.BackendStages
