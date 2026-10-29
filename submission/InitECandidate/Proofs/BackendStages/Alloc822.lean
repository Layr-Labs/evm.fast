import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw822
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody822_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody822_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody822_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody822_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody822_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody822_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody822_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 96#64))

def AllocBody822_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody822_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def AllocBody822_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody822_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody822_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_17 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody822_18 : StackLang.HolProg 64 :=
.seq AllocBody822_16 AllocBody822_17

def AllocBody822_19 : StackLang.HolProg 64 :=
.seq AllocBody822_15 AllocBody822_18

def AllocBody822_20 : StackLang.HolProg 64 :=
.seq AllocBody822_14 AllocBody822_19

def AllocBody822_21 : StackLang.HolProg 64 :=
.seq AllocBody822_13 AllocBody822_20

def AllocBody822_22 : StackLang.HolProg 64 :=
.seq AllocBody822_12 AllocBody822_21

def AllocBody822_23 : StackLang.HolProg 64 :=
.seq AllocBody822_11 AllocBody822_22

def AllocBody822_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody822_23 AllocBody822_24

def AllocBody822_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody822_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 160#64)

def AllocBody822_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody822_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody822_32 : StackLang.HolProg 64 :=
.seq AllocBody822_30 AllocBody822_31

def AllocBody822_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4093#64)

def AllocBody822_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody822_36 : StackLang.HolProg 64 :=
.seq AllocBody822_34 AllocBody822_35

def AllocBody822_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody822_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody822_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody822_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 822 3

def AllocBody822_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody822_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody822_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody822_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody822_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody822_47 : StackLang.HolProg 64 :=
.seq AllocBody822_45 AllocBody822_46

def AllocBody822_48 : StackLang.HolProg 64 :=
.seq AllocBody822_44 AllocBody822_47

def AllocBody822_49 : StackLang.HolProg 64 :=
.seq AllocBody822_43 AllocBody822_48

def AllocBody822_50 : StackLang.HolProg 64 :=
.seq AllocBody822_42 AllocBody822_49

def AllocBody822_51 : StackLang.HolProg 64 :=
.seq AllocBody822_41 AllocBody822_50

def AllocBody822_52 : StackLang.HolProg 64 :=
.seq AllocBody822_40 AllocBody822_51

def AllocBody822_53 : StackLang.HolProg 64 :=
.seq AllocBody822_39 AllocBody822_52

def AllocBody822_54 : StackLang.HolProg 64 :=
.seq AllocBody822_38 AllocBody822_53

def AllocBody822_55 : StackLang.HolProg 64 :=
.seq AllocBody822_37 AllocBody822_54

def AllocBody822_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody822_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody822_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody822_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody822_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody822_63 : StackLang.HolProg 64 :=
.seq AllocBody822_61 AllocBody822_62

def AllocBody822_64 : StackLang.HolProg 64 :=
.seq AllocBody822_60 AllocBody822_63

def AllocBody822_65 : StackLang.HolProg 64 :=
.seq AllocBody822_59 AllocBody822_64

def AllocBody822_66 : StackLang.HolProg 64 :=
.seq AllocBody822_58 AllocBody822_65

def AllocBody822_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody822_69 : StackLang.HolProg 64 :=
.seq AllocBody822_67 AllocBody822_68

def AllocBody822_70 : StackLang.HolProg 64 :=
.call (some (AllocBody822_66, 0, 822, 2)) (Sum.inl 94) (some (AllocBody822_69, 822, 3))

def AllocBody822_71 : StackLang.HolProg 64 :=
.seq AllocBody822_57 AllocBody822_70

def AllocBody822_72 : StackLang.HolProg 64 :=
.seq AllocBody822_56 AllocBody822_71

def AllocBody822_73 : StackLang.HolProg 64 :=
.seq AllocBody822_55 AllocBody822_72

def AllocBody822_74 : StackLang.HolProg 64 :=
.seq AllocBody822_36 AllocBody822_73

def AllocBody822_75 : StackLang.HolProg 64 :=
.seq AllocBody822_33 AllocBody822_74

def AllocBody822_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody822_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def AllocBody822_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody822_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody822_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody822_86 : StackLang.HolProg 64 :=
.seq AllocBody822_84 AllocBody822_85

def AllocBody822_87 : StackLang.HolProg 64 :=
.seq AllocBody822_83 AllocBody822_86

def AllocBody822_88 : StackLang.HolProg 64 :=
.seq AllocBody822_82 AllocBody822_87

def AllocBody822_89 : StackLang.HolProg 64 :=
.seq AllocBody822_81 AllocBody822_88

def AllocBody822_90 : StackLang.HolProg 64 :=
.seq AllocBody822_80 AllocBody822_89

def AllocBody822_91 : StackLang.HolProg 64 :=
.seq AllocBody822_79 AllocBody822_90

def AllocBody822_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody822_91 AllocBody822_92

def AllocBody822_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody822_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody822_98 : StackLang.HolProg 64 :=
.seq AllocBody822_96 AllocBody822_97

def AllocBody822_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4094#64)

def AllocBody822_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody822_102 : StackLang.HolProg 64 :=
.seq AllocBody822_100 AllocBody822_101

def AllocBody822_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody822_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody822_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody822_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 822 5

def AllocBody822_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody822_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody822_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody822_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody822_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody822_113 : StackLang.HolProg 64 :=
.seq AllocBody822_111 AllocBody822_112

def AllocBody822_114 : StackLang.HolProg 64 :=
.seq AllocBody822_110 AllocBody822_113

def AllocBody822_115 : StackLang.HolProg 64 :=
.seq AllocBody822_109 AllocBody822_114

def AllocBody822_116 : StackLang.HolProg 64 :=
.seq AllocBody822_108 AllocBody822_115

def AllocBody822_117 : StackLang.HolProg 64 :=
.seq AllocBody822_107 AllocBody822_116

def AllocBody822_118 : StackLang.HolProg 64 :=
.seq AllocBody822_106 AllocBody822_117

def AllocBody822_119 : StackLang.HolProg 64 :=
.seq AllocBody822_105 AllocBody822_118

def AllocBody822_120 : StackLang.HolProg 64 :=
.seq AllocBody822_104 AllocBody822_119

def AllocBody822_121 : StackLang.HolProg 64 :=
.seq AllocBody822_103 AllocBody822_120

def AllocBody822_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody822_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody822_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody822_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody822_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody822_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody822_130 : StackLang.HolProg 64 :=
.seq AllocBody822_128 AllocBody822_129

def AllocBody822_131 : StackLang.HolProg 64 :=
.seq AllocBody822_127 AllocBody822_130

def AllocBody822_132 : StackLang.HolProg 64 :=
.seq AllocBody822_126 AllocBody822_131

def AllocBody822_133 : StackLang.HolProg 64 :=
.seq AllocBody822_125 AllocBody822_132

def AllocBody822_134 : StackLang.HolProg 64 :=
.seq AllocBody822_124 AllocBody822_133

def AllocBody822_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody822_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody822_137 : StackLang.HolProg 64 :=
.seq AllocBody822_135 AllocBody822_136

def AllocBody822_138 : StackLang.HolProg 64 :=
.call (some (AllocBody822_134, 0, 822, 4)) (Sum.inl 819) (some (AllocBody822_137, 822, 5))

def AllocBody822_139 : StackLang.HolProg 64 :=
.seq AllocBody822_123 AllocBody822_138

def AllocBody822_140 : StackLang.HolProg 64 :=
.seq AllocBody822_122 AllocBody822_139

def AllocBody822_141 : StackLang.HolProg 64 :=
.seq AllocBody822_121 AllocBody822_140

def AllocBody822_142 : StackLang.HolProg 64 :=
.seq AllocBody822_102 AllocBody822_141

def AllocBody822_143 : StackLang.HolProg 64 :=
.seq AllocBody822_99 AllocBody822_142

def AllocBody822_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 12000#64)

def AllocBody822_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody822_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody822_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody822_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody822_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody822_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1000#64)

def AllocBody822_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody822_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4095#64)

def AllocBody822_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody822_157 : StackLang.HolProg 64 :=
.seq AllocBody822_155 AllocBody822_156

def AllocBody822_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody822_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody822_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody822_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 822 7

def AllocBody822_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody822_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody822_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody822_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody822_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody822_168 : StackLang.HolProg 64 :=
.seq AllocBody822_166 AllocBody822_167

def AllocBody822_169 : StackLang.HolProg 64 :=
.seq AllocBody822_165 AllocBody822_168

def AllocBody822_170 : StackLang.HolProg 64 :=
.seq AllocBody822_164 AllocBody822_169

def AllocBody822_171 : StackLang.HolProg 64 :=
.seq AllocBody822_163 AllocBody822_170

def AllocBody822_172 : StackLang.HolProg 64 :=
.seq AllocBody822_162 AllocBody822_171

def AllocBody822_173 : StackLang.HolProg 64 :=
.seq AllocBody822_161 AllocBody822_172

def AllocBody822_174 : StackLang.HolProg 64 :=
.seq AllocBody822_160 AllocBody822_173

def AllocBody822_175 : StackLang.HolProg 64 :=
.seq AllocBody822_159 AllocBody822_174

def AllocBody822_176 : StackLang.HolProg 64 :=
.seq AllocBody822_158 AllocBody822_175

def AllocBody822_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody822_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody822_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody822_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody822_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody822_184 : StackLang.HolProg 64 :=
.seq AllocBody822_182 AllocBody822_183

def AllocBody822_185 : StackLang.HolProg 64 :=
.seq AllocBody822_181 AllocBody822_184

def AllocBody822_186 : StackLang.HolProg 64 :=
.seq AllocBody822_180 AllocBody822_185

def AllocBody822_187 : StackLang.HolProg 64 :=
.seq AllocBody822_179 AllocBody822_186

def AllocBody822_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_189 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody822_190 : StackLang.HolProg 64 :=
.seq AllocBody822_188 AllocBody822_189

def AllocBody822_191 : StackLang.HolProg 64 :=
.call (some (AllocBody822_187, 0, 822, 6)) (Sum.inl 94) (some (AllocBody822_190, 822, 7))

def AllocBody822_192 : StackLang.HolProg 64 :=
.seq AllocBody822_178 AllocBody822_191

def AllocBody822_193 : StackLang.HolProg 64 :=
.seq AllocBody822_177 AllocBody822_192

def AllocBody822_194 : StackLang.HolProg 64 :=
.seq AllocBody822_176 AllocBody822_193

def AllocBody822_195 : StackLang.HolProg 64 :=
.seq AllocBody822_157 AllocBody822_194

def AllocBody822_196 : StackLang.HolProg 64 :=
.seq AllocBody822_154 AllocBody822_195

def AllocBody822_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody822_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4096#64)

def AllocBody822_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody822_202 : StackLang.HolProg 64 :=
.seq AllocBody822_200 AllocBody822_201

def AllocBody822_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody822_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody822_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody822_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 822 9

def AllocBody822_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody822_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody822_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody822_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody822_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody822_213 : StackLang.HolProg 64 :=
.seq AllocBody822_211 AllocBody822_212

def AllocBody822_214 : StackLang.HolProg 64 :=
.seq AllocBody822_210 AllocBody822_213

def AllocBody822_215 : StackLang.HolProg 64 :=
.seq AllocBody822_209 AllocBody822_214

def AllocBody822_216 : StackLang.HolProg 64 :=
.seq AllocBody822_208 AllocBody822_215

def AllocBody822_217 : StackLang.HolProg 64 :=
.seq AllocBody822_207 AllocBody822_216

def AllocBody822_218 : StackLang.HolProg 64 :=
.seq AllocBody822_206 AllocBody822_217

def AllocBody822_219 : StackLang.HolProg 64 :=
.seq AllocBody822_205 AllocBody822_218

def AllocBody822_220 : StackLang.HolProg 64 :=
.seq AllocBody822_204 AllocBody822_219

def AllocBody822_221 : StackLang.HolProg 64 :=
.seq AllocBody822_203 AllocBody822_220

def AllocBody822_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody822_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody822_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody822_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody822_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_229 : StackLang.HolProg 64 :=
.seq AllocBody822_227 AllocBody822_228

def AllocBody822_230 : StackLang.HolProg 64 :=
.seq AllocBody822_226 AllocBody822_229

def AllocBody822_231 : StackLang.HolProg 64 :=
.seq AllocBody822_225 AllocBody822_230

def AllocBody822_232 : StackLang.HolProg 64 :=
.seq AllocBody822_224 AllocBody822_231

def AllocBody822_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_234 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody822_235 : StackLang.HolProg 64 :=
.seq AllocBody822_233 AllocBody822_234

def AllocBody822_236 : StackLang.HolProg 64 :=
.call (some (AllocBody822_232, 0, 822, 8)) (Sum.inl 470) (some (AllocBody822_235, 822, 9))

def AllocBody822_237 : StackLang.HolProg 64 :=
.seq AllocBody822_223 AllocBody822_236

def AllocBody822_238 : StackLang.HolProg 64 :=
.seq AllocBody822_222 AllocBody822_237

def AllocBody822_239 : StackLang.HolProg 64 :=
.seq AllocBody822_221 AllocBody822_238

def AllocBody822_240 : StackLang.HolProg 64 :=
.seq AllocBody822_202 AllocBody822_239

def AllocBody822_241 : StackLang.HolProg 64 :=
.seq AllocBody822_199 AllocBody822_240

def AllocBody822_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody822_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4097#64)

def AllocBody822_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody822_248 : StackLang.HolProg 64 :=
.seq AllocBody822_246 AllocBody822_247

def AllocBody822_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody822_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody822_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody822_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 822 11

def AllocBody822_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody822_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody822_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody822_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody822_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody822_259 : StackLang.HolProg 64 :=
.seq AllocBody822_257 AllocBody822_258

def AllocBody822_260 : StackLang.HolProg 64 :=
.seq AllocBody822_256 AllocBody822_259

def AllocBody822_261 : StackLang.HolProg 64 :=
.seq AllocBody822_255 AllocBody822_260

def AllocBody822_262 : StackLang.HolProg 64 :=
.seq AllocBody822_254 AllocBody822_261

def AllocBody822_263 : StackLang.HolProg 64 :=
.seq AllocBody822_253 AllocBody822_262

def AllocBody822_264 : StackLang.HolProg 64 :=
.seq AllocBody822_252 AllocBody822_263

def AllocBody822_265 : StackLang.HolProg 64 :=
.seq AllocBody822_251 AllocBody822_264

def AllocBody822_266 : StackLang.HolProg 64 :=
.seq AllocBody822_250 AllocBody822_265

def AllocBody822_267 : StackLang.HolProg 64 :=
.seq AllocBody822_249 AllocBody822_266

def AllocBody822_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody822_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody822_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody822_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody822_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody822_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody822_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody822_277 : StackLang.HolProg 64 :=
.seq AllocBody822_275 AllocBody822_276

def AllocBody822_278 : StackLang.HolProg 64 :=
.seq AllocBody822_274 AllocBody822_277

def AllocBody822_279 : StackLang.HolProg 64 :=
.seq AllocBody822_273 AllocBody822_278

def AllocBody822_280 : StackLang.HolProg 64 :=
.seq AllocBody822_272 AllocBody822_279

def AllocBody822_281 : StackLang.HolProg 64 :=
.seq AllocBody822_271 AllocBody822_280

def AllocBody822_282 : StackLang.HolProg 64 :=
.seq AllocBody822_270 AllocBody822_281

def AllocBody822_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody822_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody822_285 : StackLang.HolProg 64 :=
.seq AllocBody822_283 AllocBody822_284

def AllocBody822_286 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody822_287 : StackLang.HolProg 64 :=
.seq AllocBody822_285 AllocBody822_286

def AllocBody822_288 : StackLang.HolProg 64 :=
.call (some (AllocBody822_282, 0, 822, 10)) (Sum.inl 68) (some (AllocBody822_287, 822, 11))

def AllocBody822_289 : StackLang.HolProg 64 :=
.seq AllocBody822_269 AllocBody822_288

def AllocBody822_290 : StackLang.HolProg 64 :=
.seq AllocBody822_268 AllocBody822_289

def AllocBody822_291 : StackLang.HolProg 64 :=
.seq AllocBody822_267 AllocBody822_290

def AllocBody822_292 : StackLang.HolProg 64 :=
.seq AllocBody822_248 AllocBody822_291

def AllocBody822_293 : StackLang.HolProg 64 :=
.seq AllocBody822_245 AllocBody822_292

def AllocBody822_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def AllocBody822_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody822_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4098#64)

def AllocBody822_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody822_301 : StackLang.HolProg 64 :=
.seq AllocBody822_299 AllocBody822_300

def AllocBody822_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody822_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody822_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody822_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 822 13

def AllocBody822_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody822_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody822_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody822_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody822_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody822_312 : StackLang.HolProg 64 :=
.seq AllocBody822_310 AllocBody822_311

def AllocBody822_313 : StackLang.HolProg 64 :=
.seq AllocBody822_309 AllocBody822_312

def AllocBody822_314 : StackLang.HolProg 64 :=
.seq AllocBody822_308 AllocBody822_313

def AllocBody822_315 : StackLang.HolProg 64 :=
.seq AllocBody822_307 AllocBody822_314

def AllocBody822_316 : StackLang.HolProg 64 :=
.seq AllocBody822_306 AllocBody822_315

def AllocBody822_317 : StackLang.HolProg 64 :=
.seq AllocBody822_305 AllocBody822_316

def AllocBody822_318 : StackLang.HolProg 64 :=
.seq AllocBody822_304 AllocBody822_317

def AllocBody822_319 : StackLang.HolProg 64 :=
.seq AllocBody822_303 AllocBody822_318

def AllocBody822_320 : StackLang.HolProg 64 :=
.seq AllocBody822_302 AllocBody822_319

def AllocBody822_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody822_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody822_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody822_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody822_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody822_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody822_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody822_330 : StackLang.HolProg 64 :=
.seq AllocBody822_328 AllocBody822_329

def AllocBody822_331 : StackLang.HolProg 64 :=
.seq AllocBody822_327 AllocBody822_330

def AllocBody822_332 : StackLang.HolProg 64 :=
.seq AllocBody822_326 AllocBody822_331

def AllocBody822_333 : StackLang.HolProg 64 :=
.seq AllocBody822_325 AllocBody822_332

def AllocBody822_334 : StackLang.HolProg 64 :=
.seq AllocBody822_324 AllocBody822_333

def AllocBody822_335 : StackLang.HolProg 64 :=
.seq AllocBody822_323 AllocBody822_334

def AllocBody822_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody822_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody822_338 : StackLang.HolProg 64 :=
.seq AllocBody822_336 AllocBody822_337

def AllocBody822_339 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody822_340 : StackLang.HolProg 64 :=
.seq AllocBody822_338 AllocBody822_339

def AllocBody822_341 : StackLang.HolProg 64 :=
.call (some (AllocBody822_335, 0, 822, 12)) (Sum.inl 811) (some (AllocBody822_340, 822, 13))

def AllocBody822_342 : StackLang.HolProg 64 :=
.seq AllocBody822_322 AllocBody822_341

def AllocBody822_343 : StackLang.HolProg 64 :=
.seq AllocBody822_321 AllocBody822_342

def AllocBody822_344 : StackLang.HolProg 64 :=
.seq AllocBody822_320 AllocBody822_343

def AllocBody822_345 : StackLang.HolProg 64 :=
.seq AllocBody822_301 AllocBody822_344

def AllocBody822_346 : StackLang.HolProg 64 :=
.seq AllocBody822_298 AllocBody822_345

def AllocBody822_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody822_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def AllocBody822_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody822_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody822_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_356 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody822_357 : StackLang.HolProg 64 :=
.seq AllocBody822_355 AllocBody822_356

def AllocBody822_358 : StackLang.HolProg 64 :=
.seq AllocBody822_354 AllocBody822_357

def AllocBody822_359 : StackLang.HolProg 64 :=
.seq AllocBody822_353 AllocBody822_358

def AllocBody822_360 : StackLang.HolProg 64 :=
.seq AllocBody822_352 AllocBody822_359

def AllocBody822_361 : StackLang.HolProg 64 :=
.seq AllocBody822_351 AllocBody822_360

def AllocBody822_362 : StackLang.HolProg 64 :=
.seq AllocBody822_350 AllocBody822_361

def AllocBody822_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_364 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody822_362 AllocBody822_363

def AllocBody822_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody822_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody822_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody822_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody822_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody822_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody822_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody822_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody822_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody822_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody822_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody822_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody822_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody822_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody822_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody822_384 : StackLang.HolProg 64 :=
.seq AllocBody822_382 AllocBody822_383

def AllocBody822_385 : StackLang.HolProg 64 :=
.seq AllocBody822_381 AllocBody822_384

def AllocBody822_386 : StackLang.HolProg 64 :=
.seq AllocBody822_380 AllocBody822_385

def AllocBody822_387 : StackLang.HolProg 64 :=
.seq AllocBody822_379 AllocBody822_386

def AllocBody822_388 : StackLang.HolProg 64 :=
.seq AllocBody822_378 AllocBody822_387

def AllocBody822_389 : StackLang.HolProg 64 :=
.seq AllocBody822_377 AllocBody822_388

def AllocBody822_390 : StackLang.HolProg 64 :=
.seq AllocBody822_376 AllocBody822_389

def AllocBody822_391 : StackLang.HolProg 64 :=
.seq AllocBody822_375 AllocBody822_390

def AllocBody822_392 : StackLang.HolProg 64 :=
.seq AllocBody822_374 AllocBody822_391

def AllocBody822_393 : StackLang.HolProg 64 :=
.seq AllocBody822_373 AllocBody822_392

def AllocBody822_394 : StackLang.HolProg 64 :=
.seq AllocBody822_372 AllocBody822_393

def AllocBody822_395 : StackLang.HolProg 64 :=
.seq AllocBody822_371 AllocBody822_394

def AllocBody822_396 : StackLang.HolProg 64 :=
.seq AllocBody822_370 AllocBody822_395

def AllocBody822_397 : StackLang.HolProg 64 :=
.seq AllocBody822_369 AllocBody822_396

def AllocBody822_398 : StackLang.HolProg 64 :=
.seq AllocBody822_368 AllocBody822_397

def AllocBody822_399 : StackLang.HolProg 64 :=
.seq AllocBody822_367 AllocBody822_398

def AllocBody822_400 : StackLang.HolProg 64 :=
.seq AllocBody822_366 AllocBody822_399

def AllocBody822_401 : StackLang.HolProg 64 :=
.seq AllocBody822_365 AllocBody822_400

def AllocBody822_402 : StackLang.HolProg 64 :=
.seq AllocBody822_364 AllocBody822_401

def AllocBody822_403 : StackLang.HolProg 64 :=
.seq AllocBody822_349 AllocBody822_402

def AllocBody822_404 : StackLang.HolProg 64 :=
.seq AllocBody822_348 AllocBody822_403

def AllocBody822_405 : StackLang.HolProg 64 :=
.seq AllocBody822_347 AllocBody822_404

def AllocBody822_406 : StackLang.HolProg 64 :=
.seq AllocBody822_346 AllocBody822_405

def AllocBody822_407 : StackLang.HolProg 64 :=
.seq AllocBody822_297 AllocBody822_406

def AllocBody822_408 : StackLang.HolProg 64 :=
.seq AllocBody822_296 AllocBody822_407

def AllocBody822_409 : StackLang.HolProg 64 :=
.seq AllocBody822_295 AllocBody822_408

def AllocBody822_410 : StackLang.HolProg 64 :=
.seq AllocBody822_294 AllocBody822_409

def AllocBody822_411 : StackLang.HolProg 64 :=
.seq AllocBody822_293 AllocBody822_410

def AllocBody822_412 : StackLang.HolProg 64 :=
.seq AllocBody822_244 AllocBody822_411

def AllocBody822_413 : StackLang.HolProg 64 :=
.seq AllocBody822_243 AllocBody822_412

def AllocBody822_414 : StackLang.HolProg 64 :=
.seq AllocBody822_242 AllocBody822_413

def AllocBody822_415 : StackLang.HolProg 64 :=
.seq AllocBody822_241 AllocBody822_414

def AllocBody822_416 : StackLang.HolProg 64 :=
.seq AllocBody822_198 AllocBody822_415

def AllocBody822_417 : StackLang.HolProg 64 :=
.seq AllocBody822_197 AllocBody822_416

def AllocBody822_418 : StackLang.HolProg 64 :=
.seq AllocBody822_196 AllocBody822_417

def AllocBody822_419 : StackLang.HolProg 64 :=
.seq AllocBody822_153 AllocBody822_418

def AllocBody822_420 : StackLang.HolProg 64 :=
.seq AllocBody822_152 AllocBody822_419

def AllocBody822_421 : StackLang.HolProg 64 :=
.seq AllocBody822_151 AllocBody822_420

def AllocBody822_422 : StackLang.HolProg 64 :=
.seq AllocBody822_150 AllocBody822_421

def AllocBody822_423 : StackLang.HolProg 64 :=
.seq AllocBody822_149 AllocBody822_422

def AllocBody822_424 : StackLang.HolProg 64 :=
.seq AllocBody822_148 AllocBody822_423

def AllocBody822_425 : StackLang.HolProg 64 :=
.seq AllocBody822_147 AllocBody822_424

def AllocBody822_426 : StackLang.HolProg 64 :=
.seq AllocBody822_146 AllocBody822_425

def AllocBody822_427 : StackLang.HolProg 64 :=
.seq AllocBody822_145 AllocBody822_426

def AllocBody822_428 : StackLang.HolProg 64 :=
.seq AllocBody822_144 AllocBody822_427

def AllocBody822_429 : StackLang.HolProg 64 :=
.seq AllocBody822_143 AllocBody822_428

def AllocBody822_430 : StackLang.HolProg 64 :=
.seq AllocBody822_98 AllocBody822_429

def AllocBody822_431 : StackLang.HolProg 64 :=
.seq AllocBody822_95 AllocBody822_430

def AllocBody822_432 : StackLang.HolProg 64 :=
.seq AllocBody822_94 AllocBody822_431

def AllocBody822_433 : StackLang.HolProg 64 :=
.seq AllocBody822_93 AllocBody822_432

def AllocBody822_434 : StackLang.HolProg 64 :=
.seq AllocBody822_78 AllocBody822_433

def AllocBody822_435 : StackLang.HolProg 64 :=
.seq AllocBody822_77 AllocBody822_434

def AllocBody822_436 : StackLang.HolProg 64 :=
.seq AllocBody822_76 AllocBody822_435

def AllocBody822_437 : StackLang.HolProg 64 :=
.seq AllocBody822_75 AllocBody822_436

def AllocBody822_438 : StackLang.HolProg 64 :=
.seq AllocBody822_32 AllocBody822_437

def AllocBody822_439 : StackLang.HolProg 64 :=
.seq AllocBody822_29 AllocBody822_438

def AllocBody822_440 : StackLang.HolProg 64 :=
.seq AllocBody822_28 AllocBody822_439

def AllocBody822_441 : StackLang.HolProg 64 :=
.seq AllocBody822_27 AllocBody822_440

def AllocBody822_442 : StackLang.HolProg 64 :=
.seq AllocBody822_26 AllocBody822_441

def AllocBody822_443 : StackLang.HolProg 64 :=
.seq AllocBody822_25 AllocBody822_442

def AllocBody822_444 : StackLang.HolProg 64 :=
.seq AllocBody822_10 AllocBody822_443

def AllocBody822_445 : StackLang.HolProg 64 :=
.seq AllocBody822_9 AllocBody822_444

def AllocBody822_446 : StackLang.HolProg 64 :=
.seq AllocBody822_8 AllocBody822_445

def AllocBody822_447 : StackLang.HolProg 64 :=
.seq AllocBody822_7 AllocBody822_446

def AllocBody822_448 : StackLang.HolProg 64 :=
.seq AllocBody822_6 AllocBody822_447

def AllocBody822_449 : StackLang.HolProg 64 :=
.seq AllocBody822_5 AllocBody822_448

def AllocBody822_450 : StackLang.HolProg 64 :=
.seq AllocBody822_4 AllocBody822_449

def AllocBody822_451 : StackLang.HolProg 64 :=
.seq AllocBody822_3 AllocBody822_450

def AllocBody822_452 : StackLang.HolProg 64 :=
.seq AllocBody822_2 AllocBody822_451

def AllocBody822_453 : StackLang.HolProg 64 :=
.seq AllocBody822_1 AllocBody822_452

def AllocBody822_454 : StackLang.HolProg 64 :=
.seq AllocBody822_0 AllocBody822_453

def Alloc822 : Nat × StackLang.HolProg 64 := (822, AllocBody822_454)
theorem Alloc822_eq : StackAlloc.progComp (822, raw822) = Alloc822 := by
  kernel_rfl
#print axioms Alloc822_eq
end InitECandidate.Proofs.BackendStages
