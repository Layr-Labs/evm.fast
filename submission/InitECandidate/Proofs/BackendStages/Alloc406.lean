import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw406
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody406_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody406_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody406_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody406_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody406_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody406_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def AllocBody406_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody406_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody406_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody406_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody406_11 : StackLang.HolProg 64 :=
.seq AllocBody406_9 AllocBody406_10

def AllocBody406_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1208#64)

def AllocBody406_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody406_15 : StackLang.HolProg 64 :=
.seq AllocBody406_13 AllocBody406_14

def AllocBody406_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody406_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody406_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody406_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 406 3

def AllocBody406_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody406_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody406_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody406_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody406_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody406_26 : StackLang.HolProg 64 :=
.seq AllocBody406_24 AllocBody406_25

def AllocBody406_27 : StackLang.HolProg 64 :=
.seq AllocBody406_23 AllocBody406_26

def AllocBody406_28 : StackLang.HolProg 64 :=
.seq AllocBody406_22 AllocBody406_27

def AllocBody406_29 : StackLang.HolProg 64 :=
.seq AllocBody406_21 AllocBody406_28

def AllocBody406_30 : StackLang.HolProg 64 :=
.seq AllocBody406_20 AllocBody406_29

def AllocBody406_31 : StackLang.HolProg 64 :=
.seq AllocBody406_19 AllocBody406_30

def AllocBody406_32 : StackLang.HolProg 64 :=
.seq AllocBody406_18 AllocBody406_31

def AllocBody406_33 : StackLang.HolProg 64 :=
.seq AllocBody406_17 AllocBody406_32

def AllocBody406_34 : StackLang.HolProg 64 :=
.seq AllocBody406_16 AllocBody406_33

def AllocBody406_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody406_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody406_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody406_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody406_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody406_42 : StackLang.HolProg 64 :=
.seq AllocBody406_40 AllocBody406_41

def AllocBody406_43 : StackLang.HolProg 64 :=
.seq AllocBody406_39 AllocBody406_42

def AllocBody406_44 : StackLang.HolProg 64 :=
.seq AllocBody406_38 AllocBody406_43

def AllocBody406_45 : StackLang.HolProg 64 :=
.seq AllocBody406_37 AllocBody406_44

def AllocBody406_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody406_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody406_48 : StackLang.HolProg 64 :=
.seq AllocBody406_46 AllocBody406_47

def AllocBody406_49 : StackLang.HolProg 64 :=
.call (some (AllocBody406_45, 0, 406, 2)) (Sum.inl 192) (some (AllocBody406_48, 406, 3))

def AllocBody406_50 : StackLang.HolProg 64 :=
.seq AllocBody406_36 AllocBody406_49

def AllocBody406_51 : StackLang.HolProg 64 :=
.seq AllocBody406_35 AllocBody406_50

def AllocBody406_52 : StackLang.HolProg 64 :=
.seq AllocBody406_34 AllocBody406_51

def AllocBody406_53 : StackLang.HolProg 64 :=
.seq AllocBody406_15 AllocBody406_52

def AllocBody406_54 : StackLang.HolProg 64 :=
.seq AllocBody406_12 AllocBody406_53

def AllocBody406_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody406_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody406_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody406_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody406_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551432#64))

def AllocBody406_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody406_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody406_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1209#64)

def AllocBody406_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody406_65 : StackLang.HolProg 64 :=
.seq AllocBody406_63 AllocBody406_64

def AllocBody406_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody406_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody406_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody406_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 406 5

def AllocBody406_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody406_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody406_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody406_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody406_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody406_76 : StackLang.HolProg 64 :=
.seq AllocBody406_74 AllocBody406_75

def AllocBody406_77 : StackLang.HolProg 64 :=
.seq AllocBody406_73 AllocBody406_76

def AllocBody406_78 : StackLang.HolProg 64 :=
.seq AllocBody406_72 AllocBody406_77

def AllocBody406_79 : StackLang.HolProg 64 :=
.seq AllocBody406_71 AllocBody406_78

def AllocBody406_80 : StackLang.HolProg 64 :=
.seq AllocBody406_70 AllocBody406_79

def AllocBody406_81 : StackLang.HolProg 64 :=
.seq AllocBody406_69 AllocBody406_80

def AllocBody406_82 : StackLang.HolProg 64 :=
.seq AllocBody406_68 AllocBody406_81

def AllocBody406_83 : StackLang.HolProg 64 :=
.seq AllocBody406_67 AllocBody406_82

def AllocBody406_84 : StackLang.HolProg 64 :=
.seq AllocBody406_66 AllocBody406_83

def AllocBody406_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody406_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody406_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody406_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody406_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody406_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody406_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody406_94 : StackLang.HolProg 64 :=
.seq AllocBody406_92 AllocBody406_93

def AllocBody406_95 : StackLang.HolProg 64 :=
.seq AllocBody406_91 AllocBody406_94

def AllocBody406_96 : StackLang.HolProg 64 :=
.seq AllocBody406_90 AllocBody406_95

def AllocBody406_97 : StackLang.HolProg 64 :=
.seq AllocBody406_89 AllocBody406_96

def AllocBody406_98 : StackLang.HolProg 64 :=
.seq AllocBody406_88 AllocBody406_97

def AllocBody406_99 : StackLang.HolProg 64 :=
.seq AllocBody406_87 AllocBody406_98

def AllocBody406_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody406_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody406_102 : StackLang.HolProg 64 :=
.seq AllocBody406_100 AllocBody406_101

def AllocBody406_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody406_104 : StackLang.HolProg 64 :=
.seq AllocBody406_102 AllocBody406_103

def AllocBody406_105 : StackLang.HolProg 64 :=
.call (some (AllocBody406_99, 0, 406, 4)) (Sum.inl 186) (some (AllocBody406_104, 406, 5))

def AllocBody406_106 : StackLang.HolProg 64 :=
.seq AllocBody406_86 AllocBody406_105

def AllocBody406_107 : StackLang.HolProg 64 :=
.seq AllocBody406_85 AllocBody406_106

def AllocBody406_108 : StackLang.HolProg 64 :=
.seq AllocBody406_84 AllocBody406_107

def AllocBody406_109 : StackLang.HolProg 64 :=
.seq AllocBody406_65 AllocBody406_108

def AllocBody406_110 : StackLang.HolProg 64 :=
.seq AllocBody406_62 AllocBody406_109

def AllocBody406_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody406_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody406_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody406_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody406_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody406_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody406_118 : StackLang.HolProg 64 :=
.seq AllocBody406_116 AllocBody406_117

def AllocBody406_119 : StackLang.HolProg 64 :=
.seq AllocBody406_115 AllocBody406_118

def AllocBody406_120 : StackLang.HolProg 64 :=
.seq AllocBody406_114 AllocBody406_119

def AllocBody406_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_122 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody406_120 AllocBody406_121

def AllocBody406_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody406_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody406_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody406_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody406_127 : StackLang.HolProg 64 :=
.seq AllocBody406_125 AllocBody406_126

def AllocBody406_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1210#64)

def AllocBody406_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody406_131 : StackLang.HolProg 64 :=
.seq AllocBody406_129 AllocBody406_130

def AllocBody406_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody406_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody406_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody406_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 406 7

def AllocBody406_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody406_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody406_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody406_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody406_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody406_142 : StackLang.HolProg 64 :=
.seq AllocBody406_140 AllocBody406_141

def AllocBody406_143 : StackLang.HolProg 64 :=
.seq AllocBody406_139 AllocBody406_142

def AllocBody406_144 : StackLang.HolProg 64 :=
.seq AllocBody406_138 AllocBody406_143

def AllocBody406_145 : StackLang.HolProg 64 :=
.seq AllocBody406_137 AllocBody406_144

def AllocBody406_146 : StackLang.HolProg 64 :=
.seq AllocBody406_136 AllocBody406_145

def AllocBody406_147 : StackLang.HolProg 64 :=
.seq AllocBody406_135 AllocBody406_146

def AllocBody406_148 : StackLang.HolProg 64 :=
.seq AllocBody406_134 AllocBody406_147

def AllocBody406_149 : StackLang.HolProg 64 :=
.seq AllocBody406_133 AllocBody406_148

def AllocBody406_150 : StackLang.HolProg 64 :=
.seq AllocBody406_132 AllocBody406_149

def AllocBody406_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody406_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody406_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody406_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody406_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody406_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody406_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody406_159 : StackLang.HolProg 64 :=
.seq AllocBody406_157 AllocBody406_158

def AllocBody406_160 : StackLang.HolProg 64 :=
.seq AllocBody406_156 AllocBody406_159

def AllocBody406_161 : StackLang.HolProg 64 :=
.seq AllocBody406_155 AllocBody406_160

def AllocBody406_162 : StackLang.HolProg 64 :=
.seq AllocBody406_154 AllocBody406_161

def AllocBody406_163 : StackLang.HolProg 64 :=
.seq AllocBody406_153 AllocBody406_162

def AllocBody406_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody406_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody406_166 : StackLang.HolProg 64 :=
.seq AllocBody406_164 AllocBody406_165

def AllocBody406_167 : StackLang.HolProg 64 :=
.call (some (AllocBody406_163, 0, 406, 6)) (Sum.inl 404) (some (AllocBody406_166, 406, 7))

def AllocBody406_168 : StackLang.HolProg 64 :=
.seq AllocBody406_152 AllocBody406_167

def AllocBody406_169 : StackLang.HolProg 64 :=
.seq AllocBody406_151 AllocBody406_168

def AllocBody406_170 : StackLang.HolProg 64 :=
.seq AllocBody406_150 AllocBody406_169

def AllocBody406_171 : StackLang.HolProg 64 :=
.seq AllocBody406_131 AllocBody406_170

def AllocBody406_172 : StackLang.HolProg 64 :=
.seq AllocBody406_128 AllocBody406_171

def AllocBody406_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody406_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody406_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody406_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody406_177 : StackLang.HolProg 64 :=
.seq AllocBody406_175 AllocBody406_176

def AllocBody406_178 : StackLang.HolProg 64 :=
.seq AllocBody406_174 AllocBody406_177

def AllocBody406_179 : StackLang.HolProg 64 :=
.seq AllocBody406_173 AllocBody406_178

def AllocBody406_180 : StackLang.HolProg 64 :=
.seq AllocBody406_172 AllocBody406_179

def AllocBody406_181 : StackLang.HolProg 64 :=
.seq AllocBody406_127 AllocBody406_180

def AllocBody406_182 : StackLang.HolProg 64 :=
.seq AllocBody406_124 AllocBody406_181

def AllocBody406_183 : StackLang.HolProg 64 :=
.seq AllocBody406_123 AllocBody406_182

def AllocBody406_184 : StackLang.HolProg 64 :=
.seq AllocBody406_122 AllocBody406_183

def AllocBody406_185 : StackLang.HolProg 64 :=
.seq AllocBody406_113 AllocBody406_184

def AllocBody406_186 : StackLang.HolProg 64 :=
.seq AllocBody406_112 AllocBody406_185

def AllocBody406_187 : StackLang.HolProg 64 :=
.seq AllocBody406_111 AllocBody406_186

def AllocBody406_188 : StackLang.HolProg 64 :=
.seq AllocBody406_110 AllocBody406_187

def AllocBody406_189 : StackLang.HolProg 64 :=
.seq AllocBody406_61 AllocBody406_188

def AllocBody406_190 : StackLang.HolProg 64 :=
.seq AllocBody406_60 AllocBody406_189

def AllocBody406_191 : StackLang.HolProg 64 :=
.seq AllocBody406_59 AllocBody406_190

def AllocBody406_192 : StackLang.HolProg 64 :=
.seq AllocBody406_58 AllocBody406_191

def AllocBody406_193 : StackLang.HolProg 64 :=
.seq AllocBody406_57 AllocBody406_192

def AllocBody406_194 : StackLang.HolProg 64 :=
.seq AllocBody406_56 AllocBody406_193

def AllocBody406_195 : StackLang.HolProg 64 :=
.seq AllocBody406_55 AllocBody406_194

def AllocBody406_196 : StackLang.HolProg 64 :=
.seq AllocBody406_54 AllocBody406_195

def AllocBody406_197 : StackLang.HolProg 64 :=
.seq AllocBody406_11 AllocBody406_196

def AllocBody406_198 : StackLang.HolProg 64 :=
.seq AllocBody406_8 AllocBody406_197

def AllocBody406_199 : StackLang.HolProg 64 :=
.seq AllocBody406_7 AllocBody406_198

def AllocBody406_200 : StackLang.HolProg 64 :=
.seq AllocBody406_6 AllocBody406_199

def AllocBody406_201 : StackLang.HolProg 64 :=
.seq AllocBody406_5 AllocBody406_200

def AllocBody406_202 : StackLang.HolProg 64 :=
.seq AllocBody406_4 AllocBody406_201

def AllocBody406_203 : StackLang.HolProg 64 :=
.seq AllocBody406_3 AllocBody406_202

def AllocBody406_204 : StackLang.HolProg 64 :=
.seq AllocBody406_2 AllocBody406_203

def AllocBody406_205 : StackLang.HolProg 64 :=
.seq AllocBody406_1 AllocBody406_204

def AllocBody406_206 : StackLang.HolProg 64 :=
.seq AllocBody406_0 AllocBody406_205

def Alloc406 : Nat × StackLang.HolProg 64 := (406, AllocBody406_206)
theorem Alloc406_eq : StackAlloc.progComp (406, raw406) = Alloc406 := by
  kernel_rfl
#print axioms Alloc406_eq
end InitECandidate.Proofs.BackendStages
