import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw404
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody404_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody404_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody404_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody404_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody404_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody404_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def AllocBody404_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody404_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody404_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody404_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody404_11 : StackLang.HolProg 64 :=
.seq AllocBody404_9 AllocBody404_10

def AllocBody404_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1202#64)

def AllocBody404_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody404_15 : StackLang.HolProg 64 :=
.seq AllocBody404_13 AllocBody404_14

def AllocBody404_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody404_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody404_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody404_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 3

def AllocBody404_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody404_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody404_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody404_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody404_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody404_26 : StackLang.HolProg 64 :=
.seq AllocBody404_24 AllocBody404_25

def AllocBody404_27 : StackLang.HolProg 64 :=
.seq AllocBody404_23 AllocBody404_26

def AllocBody404_28 : StackLang.HolProg 64 :=
.seq AllocBody404_22 AllocBody404_27

def AllocBody404_29 : StackLang.HolProg 64 :=
.seq AllocBody404_21 AllocBody404_28

def AllocBody404_30 : StackLang.HolProg 64 :=
.seq AllocBody404_20 AllocBody404_29

def AllocBody404_31 : StackLang.HolProg 64 :=
.seq AllocBody404_19 AllocBody404_30

def AllocBody404_32 : StackLang.HolProg 64 :=
.seq AllocBody404_18 AllocBody404_31

def AllocBody404_33 : StackLang.HolProg 64 :=
.seq AllocBody404_17 AllocBody404_32

def AllocBody404_34 : StackLang.HolProg 64 :=
.seq AllocBody404_16 AllocBody404_33

def AllocBody404_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody404_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody404_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody404_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody404_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody404_42 : StackLang.HolProg 64 :=
.seq AllocBody404_40 AllocBody404_41

def AllocBody404_43 : StackLang.HolProg 64 :=
.seq AllocBody404_39 AllocBody404_42

def AllocBody404_44 : StackLang.HolProg 64 :=
.seq AllocBody404_38 AllocBody404_43

def AllocBody404_45 : StackLang.HolProg 64 :=
.seq AllocBody404_37 AllocBody404_44

def AllocBody404_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody404_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody404_48 : StackLang.HolProg 64 :=
.seq AllocBody404_46 AllocBody404_47

def AllocBody404_49 : StackLang.HolProg 64 :=
.call (some (AllocBody404_45, 0, 404, 2)) (Sum.inl 192) (some (AllocBody404_48, 404, 3))

def AllocBody404_50 : StackLang.HolProg 64 :=
.seq AllocBody404_36 AllocBody404_49

def AllocBody404_51 : StackLang.HolProg 64 :=
.seq AllocBody404_35 AllocBody404_50

def AllocBody404_52 : StackLang.HolProg 64 :=
.seq AllocBody404_34 AllocBody404_51

def AllocBody404_53 : StackLang.HolProg 64 :=
.seq AllocBody404_15 AllocBody404_52

def AllocBody404_54 : StackLang.HolProg 64 :=
.seq AllocBody404_12 AllocBody404_53

def AllocBody404_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody404_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody404_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody404_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody404_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551440#64))

def AllocBody404_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody404_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody404_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1203#64)

def AllocBody404_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody404_65 : StackLang.HolProg 64 :=
.seq AllocBody404_63 AllocBody404_64

def AllocBody404_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody404_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody404_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody404_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 5

def AllocBody404_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody404_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody404_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody404_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody404_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody404_76 : StackLang.HolProg 64 :=
.seq AllocBody404_74 AllocBody404_75

def AllocBody404_77 : StackLang.HolProg 64 :=
.seq AllocBody404_73 AllocBody404_76

def AllocBody404_78 : StackLang.HolProg 64 :=
.seq AllocBody404_72 AllocBody404_77

def AllocBody404_79 : StackLang.HolProg 64 :=
.seq AllocBody404_71 AllocBody404_78

def AllocBody404_80 : StackLang.HolProg 64 :=
.seq AllocBody404_70 AllocBody404_79

def AllocBody404_81 : StackLang.HolProg 64 :=
.seq AllocBody404_69 AllocBody404_80

def AllocBody404_82 : StackLang.HolProg 64 :=
.seq AllocBody404_68 AllocBody404_81

def AllocBody404_83 : StackLang.HolProg 64 :=
.seq AllocBody404_67 AllocBody404_82

def AllocBody404_84 : StackLang.HolProg 64 :=
.seq AllocBody404_66 AllocBody404_83

def AllocBody404_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody404_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody404_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody404_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody404_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody404_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody404_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody404_94 : StackLang.HolProg 64 :=
.seq AllocBody404_92 AllocBody404_93

def AllocBody404_95 : StackLang.HolProg 64 :=
.seq AllocBody404_91 AllocBody404_94

def AllocBody404_96 : StackLang.HolProg 64 :=
.seq AllocBody404_90 AllocBody404_95

def AllocBody404_97 : StackLang.HolProg 64 :=
.seq AllocBody404_89 AllocBody404_96

def AllocBody404_98 : StackLang.HolProg 64 :=
.seq AllocBody404_88 AllocBody404_97

def AllocBody404_99 : StackLang.HolProg 64 :=
.seq AllocBody404_87 AllocBody404_98

def AllocBody404_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody404_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody404_102 : StackLang.HolProg 64 :=
.seq AllocBody404_100 AllocBody404_101

def AllocBody404_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody404_104 : StackLang.HolProg 64 :=
.seq AllocBody404_102 AllocBody404_103

def AllocBody404_105 : StackLang.HolProg 64 :=
.call (some (AllocBody404_99, 0, 404, 4)) (Sum.inl 186) (some (AllocBody404_104, 404, 5))

def AllocBody404_106 : StackLang.HolProg 64 :=
.seq AllocBody404_86 AllocBody404_105

def AllocBody404_107 : StackLang.HolProg 64 :=
.seq AllocBody404_85 AllocBody404_106

def AllocBody404_108 : StackLang.HolProg 64 :=
.seq AllocBody404_84 AllocBody404_107

def AllocBody404_109 : StackLang.HolProg 64 :=
.seq AllocBody404_65 AllocBody404_108

def AllocBody404_110 : StackLang.HolProg 64 :=
.seq AllocBody404_62 AllocBody404_109

def AllocBody404_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody404_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody404_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody404_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody404_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody404_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody404_118 : StackLang.HolProg 64 :=
.seq AllocBody404_116 AllocBody404_117

def AllocBody404_119 : StackLang.HolProg 64 :=
.seq AllocBody404_115 AllocBody404_118

def AllocBody404_120 : StackLang.HolProg 64 :=
.seq AllocBody404_114 AllocBody404_119

def AllocBody404_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_122 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody404_120 AllocBody404_121

def AllocBody404_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody404_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody404_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody404_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody404_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody404_128 : StackLang.HolProg 64 :=
.seq AllocBody404_126 AllocBody404_127

def AllocBody404_129 : StackLang.HolProg 64 :=
.seq AllocBody404_125 AllocBody404_128

def AllocBody404_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1204#64)

def AllocBody404_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody404_133 : StackLang.HolProg 64 :=
.seq AllocBody404_131 AllocBody404_132

def AllocBody404_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody404_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody404_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody404_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 7

def AllocBody404_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody404_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody404_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody404_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody404_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody404_144 : StackLang.HolProg 64 :=
.seq AllocBody404_142 AllocBody404_143

def AllocBody404_145 : StackLang.HolProg 64 :=
.seq AllocBody404_141 AllocBody404_144

def AllocBody404_146 : StackLang.HolProg 64 :=
.seq AllocBody404_140 AllocBody404_145

def AllocBody404_147 : StackLang.HolProg 64 :=
.seq AllocBody404_139 AllocBody404_146

def AllocBody404_148 : StackLang.HolProg 64 :=
.seq AllocBody404_138 AllocBody404_147

def AllocBody404_149 : StackLang.HolProg 64 :=
.seq AllocBody404_137 AllocBody404_148

def AllocBody404_150 : StackLang.HolProg 64 :=
.seq AllocBody404_136 AllocBody404_149

def AllocBody404_151 : StackLang.HolProg 64 :=
.seq AllocBody404_135 AllocBody404_150

def AllocBody404_152 : StackLang.HolProg 64 :=
.seq AllocBody404_134 AllocBody404_151

def AllocBody404_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody404_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody404_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody404_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody404_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody404_160 : StackLang.HolProg 64 :=
.seq AllocBody404_158 AllocBody404_159

def AllocBody404_161 : StackLang.HolProg 64 :=
.seq AllocBody404_157 AllocBody404_160

def AllocBody404_162 : StackLang.HolProg 64 :=
.seq AllocBody404_156 AllocBody404_161

def AllocBody404_163 : StackLang.HolProg 64 :=
.seq AllocBody404_155 AllocBody404_162

def AllocBody404_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody404_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody404_166 : StackLang.HolProg 64 :=
.seq AllocBody404_164 AllocBody404_165

def AllocBody404_167 : StackLang.HolProg 64 :=
.call (some (AllocBody404_163, 0, 404, 6)) (Sum.inl 396) (some (AllocBody404_166, 404, 7))

def AllocBody404_168 : StackLang.HolProg 64 :=
.seq AllocBody404_154 AllocBody404_167

def AllocBody404_169 : StackLang.HolProg 64 :=
.seq AllocBody404_153 AllocBody404_168

def AllocBody404_170 : StackLang.HolProg 64 :=
.seq AllocBody404_152 AllocBody404_169

def AllocBody404_171 : StackLang.HolProg 64 :=
.seq AllocBody404_133 AllocBody404_170

def AllocBody404_172 : StackLang.HolProg 64 :=
.seq AllocBody404_130 AllocBody404_171

def AllocBody404_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody404_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody404_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1205#64)

def AllocBody404_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody404_178 : StackLang.HolProg 64 :=
.seq AllocBody404_176 AllocBody404_177

def AllocBody404_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody404_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody404_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody404_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 9

def AllocBody404_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody404_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody404_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody404_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody404_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody404_189 : StackLang.HolProg 64 :=
.seq AllocBody404_187 AllocBody404_188

def AllocBody404_190 : StackLang.HolProg 64 :=
.seq AllocBody404_186 AllocBody404_189

def AllocBody404_191 : StackLang.HolProg 64 :=
.seq AllocBody404_185 AllocBody404_190

def AllocBody404_192 : StackLang.HolProg 64 :=
.seq AllocBody404_184 AllocBody404_191

def AllocBody404_193 : StackLang.HolProg 64 :=
.seq AllocBody404_183 AllocBody404_192

def AllocBody404_194 : StackLang.HolProg 64 :=
.seq AllocBody404_182 AllocBody404_193

def AllocBody404_195 : StackLang.HolProg 64 :=
.seq AllocBody404_181 AllocBody404_194

def AllocBody404_196 : StackLang.HolProg 64 :=
.seq AllocBody404_180 AllocBody404_195

def AllocBody404_197 : StackLang.HolProg 64 :=
.seq AllocBody404_179 AllocBody404_196

def AllocBody404_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody404_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody404_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody404_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody404_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody404_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody404_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody404_206 : StackLang.HolProg 64 :=
.seq AllocBody404_204 AllocBody404_205

def AllocBody404_207 : StackLang.HolProg 64 :=
.seq AllocBody404_203 AllocBody404_206

def AllocBody404_208 : StackLang.HolProg 64 :=
.seq AllocBody404_202 AllocBody404_207

def AllocBody404_209 : StackLang.HolProg 64 :=
.seq AllocBody404_201 AllocBody404_208

def AllocBody404_210 : StackLang.HolProg 64 :=
.seq AllocBody404_200 AllocBody404_209

def AllocBody404_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody404_212 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody404_213 : StackLang.HolProg 64 :=
.seq AllocBody404_211 AllocBody404_212

def AllocBody404_214 : StackLang.HolProg 64 :=
.call (some (AllocBody404_210, 0, 404, 8)) (Sum.inl 398) (some (AllocBody404_213, 404, 9))

def AllocBody404_215 : StackLang.HolProg 64 :=
.seq AllocBody404_199 AllocBody404_214

def AllocBody404_216 : StackLang.HolProg 64 :=
.seq AllocBody404_198 AllocBody404_215

def AllocBody404_217 : StackLang.HolProg 64 :=
.seq AllocBody404_197 AllocBody404_216

def AllocBody404_218 : StackLang.HolProg 64 :=
.seq AllocBody404_178 AllocBody404_217

def AllocBody404_219 : StackLang.HolProg 64 :=
.seq AllocBody404_175 AllocBody404_218

def AllocBody404_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody404_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody404_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody404_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody404_224 : StackLang.HolProg 64 :=
.seq AllocBody404_222 AllocBody404_223

def AllocBody404_225 : StackLang.HolProg 64 :=
.seq AllocBody404_221 AllocBody404_224

def AllocBody404_226 : StackLang.HolProg 64 :=
.seq AllocBody404_220 AllocBody404_225

def AllocBody404_227 : StackLang.HolProg 64 :=
.seq AllocBody404_219 AllocBody404_226

def AllocBody404_228 : StackLang.HolProg 64 :=
.seq AllocBody404_174 AllocBody404_227

def AllocBody404_229 : StackLang.HolProg 64 :=
.seq AllocBody404_173 AllocBody404_228

def AllocBody404_230 : StackLang.HolProg 64 :=
.seq AllocBody404_172 AllocBody404_229

def AllocBody404_231 : StackLang.HolProg 64 :=
.seq AllocBody404_129 AllocBody404_230

def AllocBody404_232 : StackLang.HolProg 64 :=
.seq AllocBody404_124 AllocBody404_231

def AllocBody404_233 : StackLang.HolProg 64 :=
.seq AllocBody404_123 AllocBody404_232

def AllocBody404_234 : StackLang.HolProg 64 :=
.seq AllocBody404_122 AllocBody404_233

def AllocBody404_235 : StackLang.HolProg 64 :=
.seq AllocBody404_113 AllocBody404_234

def AllocBody404_236 : StackLang.HolProg 64 :=
.seq AllocBody404_112 AllocBody404_235

def AllocBody404_237 : StackLang.HolProg 64 :=
.seq AllocBody404_111 AllocBody404_236

def AllocBody404_238 : StackLang.HolProg 64 :=
.seq AllocBody404_110 AllocBody404_237

def AllocBody404_239 : StackLang.HolProg 64 :=
.seq AllocBody404_61 AllocBody404_238

def AllocBody404_240 : StackLang.HolProg 64 :=
.seq AllocBody404_60 AllocBody404_239

def AllocBody404_241 : StackLang.HolProg 64 :=
.seq AllocBody404_59 AllocBody404_240

def AllocBody404_242 : StackLang.HolProg 64 :=
.seq AllocBody404_58 AllocBody404_241

def AllocBody404_243 : StackLang.HolProg 64 :=
.seq AllocBody404_57 AllocBody404_242

def AllocBody404_244 : StackLang.HolProg 64 :=
.seq AllocBody404_56 AllocBody404_243

def AllocBody404_245 : StackLang.HolProg 64 :=
.seq AllocBody404_55 AllocBody404_244

def AllocBody404_246 : StackLang.HolProg 64 :=
.seq AllocBody404_54 AllocBody404_245

def AllocBody404_247 : StackLang.HolProg 64 :=
.seq AllocBody404_11 AllocBody404_246

def AllocBody404_248 : StackLang.HolProg 64 :=
.seq AllocBody404_8 AllocBody404_247

def AllocBody404_249 : StackLang.HolProg 64 :=
.seq AllocBody404_7 AllocBody404_248

def AllocBody404_250 : StackLang.HolProg 64 :=
.seq AllocBody404_6 AllocBody404_249

def AllocBody404_251 : StackLang.HolProg 64 :=
.seq AllocBody404_5 AllocBody404_250

def AllocBody404_252 : StackLang.HolProg 64 :=
.seq AllocBody404_4 AllocBody404_251

def AllocBody404_253 : StackLang.HolProg 64 :=
.seq AllocBody404_3 AllocBody404_252

def AllocBody404_254 : StackLang.HolProg 64 :=
.seq AllocBody404_2 AllocBody404_253

def AllocBody404_255 : StackLang.HolProg 64 :=
.seq AllocBody404_1 AllocBody404_254

def AllocBody404_256 : StackLang.HolProg 64 :=
.seq AllocBody404_0 AllocBody404_255

def Alloc404 : Nat × StackLang.HolProg 64 := (404, AllocBody404_256)
theorem Alloc404_eq : StackAlloc.progComp (404, raw404) = Alloc404 := by
  kernel_rfl
#print axioms Alloc404_eq
end InitECandidate.Proofs.BackendStages
