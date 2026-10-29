import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw415
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody415_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody415_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody415_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody415_3 : StackLang.HolProg 64 :=
.seq AllocBody415_1 AllocBody415_2

def AllocBody415_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1238#64)

def AllocBody415_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody415_7 : StackLang.HolProg 64 :=
.seq AllocBody415_5 AllocBody415_6

def AllocBody415_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody415_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody415_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody415_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 415 3

def AllocBody415_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody415_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody415_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody415_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody415_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody415_18 : StackLang.HolProg 64 :=
.seq AllocBody415_16 AllocBody415_17

def AllocBody415_19 : StackLang.HolProg 64 :=
.seq AllocBody415_15 AllocBody415_18

def AllocBody415_20 : StackLang.HolProg 64 :=
.seq AllocBody415_14 AllocBody415_19

def AllocBody415_21 : StackLang.HolProg 64 :=
.seq AllocBody415_13 AllocBody415_20

def AllocBody415_22 : StackLang.HolProg 64 :=
.seq AllocBody415_12 AllocBody415_21

def AllocBody415_23 : StackLang.HolProg 64 :=
.seq AllocBody415_11 AllocBody415_22

def AllocBody415_24 : StackLang.HolProg 64 :=
.seq AllocBody415_10 AllocBody415_23

def AllocBody415_25 : StackLang.HolProg 64 :=
.seq AllocBody415_9 AllocBody415_24

def AllocBody415_26 : StackLang.HolProg 64 :=
.seq AllocBody415_8 AllocBody415_25

def AllocBody415_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody415_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody415_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody415_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody415_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody415_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody415_35 : StackLang.HolProg 64 :=
.seq AllocBody415_33 AllocBody415_34

def AllocBody415_36 : StackLang.HolProg 64 :=
.seq AllocBody415_32 AllocBody415_35

def AllocBody415_37 : StackLang.HolProg 64 :=
.seq AllocBody415_31 AllocBody415_36

def AllocBody415_38 : StackLang.HolProg 64 :=
.seq AllocBody415_30 AllocBody415_37

def AllocBody415_39 : StackLang.HolProg 64 :=
.seq AllocBody415_29 AllocBody415_38

def AllocBody415_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody415_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody415_42 : StackLang.HolProg 64 :=
.seq AllocBody415_40 AllocBody415_41

def AllocBody415_43 : StackLang.HolProg 64 :=
.call (some (AllocBody415_39, 0, 415, 2)) (Sum.inl 407) (some (AllocBody415_42, 415, 3))

def AllocBody415_44 : StackLang.HolProg 64 :=
.seq AllocBody415_28 AllocBody415_43

def AllocBody415_45 : StackLang.HolProg 64 :=
.seq AllocBody415_27 AllocBody415_44

def AllocBody415_46 : StackLang.HolProg 64 :=
.seq AllocBody415_26 AllocBody415_45

def AllocBody415_47 : StackLang.HolProg 64 :=
.seq AllocBody415_7 AllocBody415_46

def AllocBody415_48 : StackLang.HolProg 64 :=
.seq AllocBody415_4 AllocBody415_47

def AllocBody415_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody415_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody415_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody415_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody415_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody415_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody415_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody415_58 : StackLang.HolProg 64 :=
.seq AllocBody415_56 AllocBody415_57

def AllocBody415_59 : StackLang.HolProg 64 :=
.seq AllocBody415_55 AllocBody415_58

def AllocBody415_60 : StackLang.HolProg 64 :=
.seq AllocBody415_54 AllocBody415_59

def AllocBody415_61 : StackLang.HolProg 64 :=
.seq AllocBody415_53 AllocBody415_60

def AllocBody415_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_63 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody415_61 AllocBody415_62

def AllocBody415_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody415_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody415_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def AllocBody415_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody415_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody415_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody415_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551480#64))

def AllocBody415_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody415_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody415_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1239#64)

def AllocBody415_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody415_77 : StackLang.HolProg 64 :=
.seq AllocBody415_75 AllocBody415_76

def AllocBody415_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody415_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody415_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody415_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 415 5

def AllocBody415_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody415_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody415_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody415_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody415_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody415_88 : StackLang.HolProg 64 :=
.seq AllocBody415_86 AllocBody415_87

def AllocBody415_89 : StackLang.HolProg 64 :=
.seq AllocBody415_85 AllocBody415_88

def AllocBody415_90 : StackLang.HolProg 64 :=
.seq AllocBody415_84 AllocBody415_89

def AllocBody415_91 : StackLang.HolProg 64 :=
.seq AllocBody415_83 AllocBody415_90

def AllocBody415_92 : StackLang.HolProg 64 :=
.seq AllocBody415_82 AllocBody415_91

def AllocBody415_93 : StackLang.HolProg 64 :=
.seq AllocBody415_81 AllocBody415_92

def AllocBody415_94 : StackLang.HolProg 64 :=
.seq AllocBody415_80 AllocBody415_93

def AllocBody415_95 : StackLang.HolProg 64 :=
.seq AllocBody415_79 AllocBody415_94

def AllocBody415_96 : StackLang.HolProg 64 :=
.seq AllocBody415_78 AllocBody415_95

def AllocBody415_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody415_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody415_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody415_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody415_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody415_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody415_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody415_106 : StackLang.HolProg 64 :=
.seq AllocBody415_104 AllocBody415_105

def AllocBody415_107 : StackLang.HolProg 64 :=
.seq AllocBody415_103 AllocBody415_106

def AllocBody415_108 : StackLang.HolProg 64 :=
.seq AllocBody415_102 AllocBody415_107

def AllocBody415_109 : StackLang.HolProg 64 :=
.seq AllocBody415_101 AllocBody415_108

def AllocBody415_110 : StackLang.HolProg 64 :=
.seq AllocBody415_100 AllocBody415_109

def AllocBody415_111 : StackLang.HolProg 64 :=
.seq AllocBody415_99 AllocBody415_110

def AllocBody415_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody415_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody415_114 : StackLang.HolProg 64 :=
.seq AllocBody415_112 AllocBody415_113

def AllocBody415_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody415_116 : StackLang.HolProg 64 :=
.seq AllocBody415_114 AllocBody415_115

def AllocBody415_117 : StackLang.HolProg 64 :=
.call (some (AllocBody415_111, 0, 415, 4)) (Sum.inl 79) (some (AllocBody415_116, 415, 5))

def AllocBody415_118 : StackLang.HolProg 64 :=
.seq AllocBody415_98 AllocBody415_117

def AllocBody415_119 : StackLang.HolProg 64 :=
.seq AllocBody415_97 AllocBody415_118

def AllocBody415_120 : StackLang.HolProg 64 :=
.seq AllocBody415_96 AllocBody415_119

def AllocBody415_121 : StackLang.HolProg 64 :=
.seq AllocBody415_77 AllocBody415_120

def AllocBody415_122 : StackLang.HolProg 64 :=
.seq AllocBody415_74 AllocBody415_121

def AllocBody415_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody415_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody415_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody415_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody415_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody415_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody415_131 : StackLang.HolProg 64 :=
.seq AllocBody415_129 AllocBody415_130

def AllocBody415_132 : StackLang.HolProg 64 :=
.seq AllocBody415_128 AllocBody415_131

def AllocBody415_133 : StackLang.HolProg 64 :=
.seq AllocBody415_127 AllocBody415_132

def AllocBody415_134 : StackLang.HolProg 64 :=
.seq AllocBody415_126 AllocBody415_133

def AllocBody415_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody415_134 AllocBody415_135

def AllocBody415_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody415_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody415_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody415_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody415_141 : StackLang.HolProg 64 :=
.seq AllocBody415_139 AllocBody415_140

def AllocBody415_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1240#64)

def AllocBody415_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody415_145 : StackLang.HolProg 64 :=
.seq AllocBody415_143 AllocBody415_144

def AllocBody415_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody415_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody415_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody415_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 415 7

def AllocBody415_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody415_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody415_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody415_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody415_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody415_156 : StackLang.HolProg 64 :=
.seq AllocBody415_154 AllocBody415_155

def AllocBody415_157 : StackLang.HolProg 64 :=
.seq AllocBody415_153 AllocBody415_156

def AllocBody415_158 : StackLang.HolProg 64 :=
.seq AllocBody415_152 AllocBody415_157

def AllocBody415_159 : StackLang.HolProg 64 :=
.seq AllocBody415_151 AllocBody415_158

def AllocBody415_160 : StackLang.HolProg 64 :=
.seq AllocBody415_150 AllocBody415_159

def AllocBody415_161 : StackLang.HolProg 64 :=
.seq AllocBody415_149 AllocBody415_160

def AllocBody415_162 : StackLang.HolProg 64 :=
.seq AllocBody415_148 AllocBody415_161

def AllocBody415_163 : StackLang.HolProg 64 :=
.seq AllocBody415_147 AllocBody415_162

def AllocBody415_164 : StackLang.HolProg 64 :=
.seq AllocBody415_146 AllocBody415_163

def AllocBody415_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody415_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody415_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody415_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody415_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody415_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody415_173 : StackLang.HolProg 64 :=
.seq AllocBody415_171 AllocBody415_172

def AllocBody415_174 : StackLang.HolProg 64 :=
.seq AllocBody415_170 AllocBody415_173

def AllocBody415_175 : StackLang.HolProg 64 :=
.seq AllocBody415_169 AllocBody415_174

def AllocBody415_176 : StackLang.HolProg 64 :=
.seq AllocBody415_168 AllocBody415_175

def AllocBody415_177 : StackLang.HolProg 64 :=
.seq AllocBody415_167 AllocBody415_176

def AllocBody415_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody415_179 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody415_180 : StackLang.HolProg 64 :=
.seq AllocBody415_178 AllocBody415_179

def AllocBody415_181 : StackLang.HolProg 64 :=
.call (some (AllocBody415_177, 0, 415, 6)) (Sum.inl 414) (some (AllocBody415_180, 415, 7))

def AllocBody415_182 : StackLang.HolProg 64 :=
.seq AllocBody415_166 AllocBody415_181

def AllocBody415_183 : StackLang.HolProg 64 :=
.seq AllocBody415_165 AllocBody415_182

def AllocBody415_184 : StackLang.HolProg 64 :=
.seq AllocBody415_164 AllocBody415_183

def AllocBody415_185 : StackLang.HolProg 64 :=
.seq AllocBody415_145 AllocBody415_184

def AllocBody415_186 : StackLang.HolProg 64 :=
.seq AllocBody415_142 AllocBody415_185

def AllocBody415_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody415_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody415_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody415_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody415_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody415_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody415_195 : StackLang.HolProg 64 :=
.seq AllocBody415_193 AllocBody415_194

def AllocBody415_196 : StackLang.HolProg 64 :=
.seq AllocBody415_192 AllocBody415_195

def AllocBody415_197 : StackLang.HolProg 64 :=
.seq AllocBody415_191 AllocBody415_196

def AllocBody415_198 : StackLang.HolProg 64 :=
.seq AllocBody415_190 AllocBody415_197

def AllocBody415_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody415_198 AllocBody415_199

def AllocBody415_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody415_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody415_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody415_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody415_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody415_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody415_207 : StackLang.HolProg 64 :=
.seq AllocBody415_205 AllocBody415_206

def AllocBody415_208 : StackLang.HolProg 64 :=
.seq AllocBody415_204 AllocBody415_207

def AllocBody415_209 : StackLang.HolProg 64 :=
.seq AllocBody415_203 AllocBody415_208

def AllocBody415_210 : StackLang.HolProg 64 :=
.seq AllocBody415_202 AllocBody415_209

def AllocBody415_211 : StackLang.HolProg 64 :=
.seq AllocBody415_201 AllocBody415_210

def AllocBody415_212 : StackLang.HolProg 64 :=
.seq AllocBody415_200 AllocBody415_211

def AllocBody415_213 : StackLang.HolProg 64 :=
.seq AllocBody415_189 AllocBody415_212

def AllocBody415_214 : StackLang.HolProg 64 :=
.seq AllocBody415_188 AllocBody415_213

def AllocBody415_215 : StackLang.HolProg 64 :=
.seq AllocBody415_187 AllocBody415_214

def AllocBody415_216 : StackLang.HolProg 64 :=
.seq AllocBody415_186 AllocBody415_215

def AllocBody415_217 : StackLang.HolProg 64 :=
.seq AllocBody415_141 AllocBody415_216

def AllocBody415_218 : StackLang.HolProg 64 :=
.seq AllocBody415_138 AllocBody415_217

def AllocBody415_219 : StackLang.HolProg 64 :=
.seq AllocBody415_137 AllocBody415_218

def AllocBody415_220 : StackLang.HolProg 64 :=
.seq AllocBody415_136 AllocBody415_219

def AllocBody415_221 : StackLang.HolProg 64 :=
.seq AllocBody415_125 AllocBody415_220

def AllocBody415_222 : StackLang.HolProg 64 :=
.seq AllocBody415_124 AllocBody415_221

def AllocBody415_223 : StackLang.HolProg 64 :=
.seq AllocBody415_123 AllocBody415_222

def AllocBody415_224 : StackLang.HolProg 64 :=
.seq AllocBody415_122 AllocBody415_223

def AllocBody415_225 : StackLang.HolProg 64 :=
.seq AllocBody415_73 AllocBody415_224

def AllocBody415_226 : StackLang.HolProg 64 :=
.seq AllocBody415_72 AllocBody415_225

def AllocBody415_227 : StackLang.HolProg 64 :=
.seq AllocBody415_71 AllocBody415_226

def AllocBody415_228 : StackLang.HolProg 64 :=
.seq AllocBody415_70 AllocBody415_227

def AllocBody415_229 : StackLang.HolProg 64 :=
.seq AllocBody415_69 AllocBody415_228

def AllocBody415_230 : StackLang.HolProg 64 :=
.seq AllocBody415_68 AllocBody415_229

def AllocBody415_231 : StackLang.HolProg 64 :=
.seq AllocBody415_67 AllocBody415_230

def AllocBody415_232 : StackLang.HolProg 64 :=
.seq AllocBody415_66 AllocBody415_231

def AllocBody415_233 : StackLang.HolProg 64 :=
.seq AllocBody415_65 AllocBody415_232

def AllocBody415_234 : StackLang.HolProg 64 :=
.seq AllocBody415_64 AllocBody415_233

def AllocBody415_235 : StackLang.HolProg 64 :=
.seq AllocBody415_63 AllocBody415_234

def AllocBody415_236 : StackLang.HolProg 64 :=
.seq AllocBody415_52 AllocBody415_235

def AllocBody415_237 : StackLang.HolProg 64 :=
.seq AllocBody415_51 AllocBody415_236

def AllocBody415_238 : StackLang.HolProg 64 :=
.seq AllocBody415_50 AllocBody415_237

def AllocBody415_239 : StackLang.HolProg 64 :=
.seq AllocBody415_49 AllocBody415_238

def AllocBody415_240 : StackLang.HolProg 64 :=
.seq AllocBody415_48 AllocBody415_239

def AllocBody415_241 : StackLang.HolProg 64 :=
.seq AllocBody415_3 AllocBody415_240

def AllocBody415_242 : StackLang.HolProg 64 :=
.seq AllocBody415_0 AllocBody415_241

def Alloc415 : Nat × StackLang.HolProg 64 := (415, AllocBody415_242)
theorem Alloc415_eq : StackAlloc.progComp (415, raw415) = Alloc415 := by
  kernel_rfl
#print axioms Alloc415_eq
end InitECandidate.Proofs.BackendStages
