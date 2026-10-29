import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw686
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody686_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 13

def AllocBody686_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody686_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1152#64)

def AllocBody686_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 12

def AllocBody686_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 11

def AllocBody686_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 10

def AllocBody686_6 : StackLang.HolProg 64 :=
.seq AllocBody686_4 AllocBody686_5

def AllocBody686_7 : StackLang.HolProg 64 :=
.seq AllocBody686_3 AllocBody686_6

def AllocBody686_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2923#64)

def AllocBody686_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody686_11 : StackLang.HolProg 64 :=
.seq AllocBody686_9 AllocBody686_10

def AllocBody686_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody686_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody686_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody686_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 686 3

def AllocBody686_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody686_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody686_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody686_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody686_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody686_22 : StackLang.HolProg 64 :=
.seq AllocBody686_20 AllocBody686_21

def AllocBody686_23 : StackLang.HolProg 64 :=
.seq AllocBody686_19 AllocBody686_22

def AllocBody686_24 : StackLang.HolProg 64 :=
.seq AllocBody686_18 AllocBody686_23

def AllocBody686_25 : StackLang.HolProg 64 :=
.seq AllocBody686_17 AllocBody686_24

def AllocBody686_26 : StackLang.HolProg 64 :=
.seq AllocBody686_16 AllocBody686_25

def AllocBody686_27 : StackLang.HolProg 64 :=
.seq AllocBody686_15 AllocBody686_26

def AllocBody686_28 : StackLang.HolProg 64 :=
.seq AllocBody686_14 AllocBody686_27

def AllocBody686_29 : StackLang.HolProg 64 :=
.seq AllocBody686_13 AllocBody686_28

def AllocBody686_30 : StackLang.HolProg 64 :=
.seq AllocBody686_12 AllocBody686_29

def AllocBody686_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody686_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody686_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody686_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody686_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 11

def AllocBody686_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody686_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody686_40 : StackLang.HolProg 64 :=
.seq AllocBody686_38 AllocBody686_39

def AllocBody686_41 : StackLang.HolProg 64 :=
.seq AllocBody686_37 AllocBody686_40

def AllocBody686_42 : StackLang.HolProg 64 :=
.seq AllocBody686_36 AllocBody686_41

def AllocBody686_43 : StackLang.HolProg 64 :=
.seq AllocBody686_35 AllocBody686_42

def AllocBody686_44 : StackLang.HolProg 64 :=
.seq AllocBody686_34 AllocBody686_43

def AllocBody686_45 : StackLang.HolProg 64 :=
.seq AllocBody686_33 AllocBody686_44

def AllocBody686_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 11

def AllocBody686_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody686_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody686_49 : StackLang.HolProg 64 :=
.seq AllocBody686_47 AllocBody686_48

def AllocBody686_50 : StackLang.HolProg 64 :=
.seq AllocBody686_46 AllocBody686_49

def AllocBody686_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody686_52 : StackLang.HolProg 64 :=
.seq AllocBody686_50 AllocBody686_51

def AllocBody686_53 : StackLang.HolProg 64 :=
.call (some (AllocBody686_45, 0, 686, 2)) (Sum.inl 78) (some (AllocBody686_52, 686, 3))

def AllocBody686_54 : StackLang.HolProg 64 :=
.seq AllocBody686_32 AllocBody686_53

def AllocBody686_55 : StackLang.HolProg 64 :=
.seq AllocBody686_31 AllocBody686_54

def AllocBody686_56 : StackLang.HolProg 64 :=
.seq AllocBody686_30 AllocBody686_55

def AllocBody686_57 : StackLang.HolProg 64 :=
.seq AllocBody686_11 AllocBody686_56

def AllocBody686_58 : StackLang.HolProg 64 :=
.seq AllocBody686_8 AllocBody686_57

def AllocBody686_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody686_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody686_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody686_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody686_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody686_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody686_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody686_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody686_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 10

def AllocBody686_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody686_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody686_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def AllocBody686_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody686_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody686_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody686_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def AllocBody686_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def AllocBody686_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def AllocBody686_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 9#64)

def AllocBody686_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody686_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody686_90 : StackLang.HolProg 64 :=
.seq AllocBody686_88 AllocBody686_89

def AllocBody686_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody686_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody686_93 : StackLang.HolProg 64 :=
.seq AllocBody686_91 AllocBody686_92

def AllocBody686_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 10

def AllocBody686_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 9

def AllocBody686_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 8

def AllocBody686_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody686_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody686_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def AllocBody686_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 2

def AllocBody686_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody686_102 : StackLang.HolProg 64 :=
.seq AllocBody686_100 AllocBody686_101

def AllocBody686_103 : StackLang.HolProg 64 :=
.seq AllocBody686_99 AllocBody686_102

def AllocBody686_104 : StackLang.HolProg 64 :=
.seq AllocBody686_98 AllocBody686_103

def AllocBody686_105 : StackLang.HolProg 64 :=
.seq AllocBody686_97 AllocBody686_104

def AllocBody686_106 : StackLang.HolProg 64 :=
.seq AllocBody686_96 AllocBody686_105

def AllocBody686_107 : StackLang.HolProg 64 :=
.seq AllocBody686_95 AllocBody686_106

def AllocBody686_108 : StackLang.HolProg 64 :=
.seq AllocBody686_94 AllocBody686_107

def AllocBody686_109 : StackLang.HolProg 64 :=
.seq AllocBody686_93 AllocBody686_108

def AllocBody686_110 : StackLang.HolProg 64 :=
.seq AllocBody686_90 AllocBody686_109

def AllocBody686_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2924#64)

def AllocBody686_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody686_114 : StackLang.HolProg 64 :=
.seq AllocBody686_112 AllocBody686_113

def AllocBody686_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody686_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody686_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody686_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 686 5

def AllocBody686_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody686_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody686_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody686_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody686_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody686_125 : StackLang.HolProg 64 :=
.seq AllocBody686_123 AllocBody686_124

def AllocBody686_126 : StackLang.HolProg 64 :=
.seq AllocBody686_122 AllocBody686_125

def AllocBody686_127 : StackLang.HolProg 64 :=
.seq AllocBody686_121 AllocBody686_126

def AllocBody686_128 : StackLang.HolProg 64 :=
.seq AllocBody686_120 AllocBody686_127

def AllocBody686_129 : StackLang.HolProg 64 :=
.seq AllocBody686_119 AllocBody686_128

def AllocBody686_130 : StackLang.HolProg 64 :=
.seq AllocBody686_118 AllocBody686_129

def AllocBody686_131 : StackLang.HolProg 64 :=
.seq AllocBody686_117 AllocBody686_130

def AllocBody686_132 : StackLang.HolProg 64 :=
.seq AllocBody686_116 AllocBody686_131

def AllocBody686_133 : StackLang.HolProg 64 :=
.seq AllocBody686_115 AllocBody686_132

def AllocBody686_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody686_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody686_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody686_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody686_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody686_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody686_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody686_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody686_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody686_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody686_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody686_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody686_148 : StackLang.HolProg 64 :=
.seq AllocBody686_146 AllocBody686_147

def AllocBody686_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody686_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody686_151 : StackLang.HolProg 64 :=
.seq AllocBody686_149 AllocBody686_150

def AllocBody686_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody686_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody686_154 : StackLang.HolProg 64 :=
.seq AllocBody686_152 AllocBody686_153

def AllocBody686_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody686_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody686_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody686_158 : StackLang.HolProg 64 :=
.seq AllocBody686_156 AllocBody686_157

def AllocBody686_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody686_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody686_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody686_162 : StackLang.HolProg 64 :=
.seq AllocBody686_160 AllocBody686_161

def AllocBody686_163 : StackLang.HolProg 64 :=
.seq AllocBody686_159 AllocBody686_162

def AllocBody686_164 : StackLang.HolProg 64 :=
.seq AllocBody686_158 AllocBody686_163

def AllocBody686_165 : StackLang.HolProg 64 :=
.seq AllocBody686_155 AllocBody686_164

def AllocBody686_166 : StackLang.HolProg 64 :=
.seq AllocBody686_154 AllocBody686_165

def AllocBody686_167 : StackLang.HolProg 64 :=
.seq AllocBody686_151 AllocBody686_166

def AllocBody686_168 : StackLang.HolProg 64 :=
.seq AllocBody686_148 AllocBody686_167

def AllocBody686_169 : StackLang.HolProg 64 :=
.seq AllocBody686_145 AllocBody686_168

def AllocBody686_170 : StackLang.HolProg 64 :=
.seq AllocBody686_144 AllocBody686_169

def AllocBody686_171 : StackLang.HolProg 64 :=
.seq AllocBody686_143 AllocBody686_170

def AllocBody686_172 : StackLang.HolProg 64 :=
.seq AllocBody686_142 AllocBody686_171

def AllocBody686_173 : StackLang.HolProg 64 :=
.seq AllocBody686_141 AllocBody686_172

def AllocBody686_174 : StackLang.HolProg 64 :=
.seq AllocBody686_140 AllocBody686_173

def AllocBody686_175 : StackLang.HolProg 64 :=
.seq AllocBody686_139 AllocBody686_174

def AllocBody686_176 : StackLang.HolProg 64 :=
.seq AllocBody686_138 AllocBody686_175

def AllocBody686_177 : StackLang.HolProg 64 :=
.seq AllocBody686_137 AllocBody686_176

def AllocBody686_178 : StackLang.HolProg 64 :=
.seq AllocBody686_136 AllocBody686_177

def AllocBody686_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody686_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody686_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody686_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody686_183 : StackLang.HolProg 64 :=
.seq AllocBody686_181 AllocBody686_182

def AllocBody686_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody686_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody686_186 : StackLang.HolProg 64 :=
.seq AllocBody686_184 AllocBody686_185

def AllocBody686_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody686_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody686_189 : StackLang.HolProg 64 :=
.seq AllocBody686_187 AllocBody686_188

def AllocBody686_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody686_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody686_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody686_193 : StackLang.HolProg 64 :=
.seq AllocBody686_191 AllocBody686_192

def AllocBody686_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody686_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody686_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody686_197 : StackLang.HolProg 64 :=
.seq AllocBody686_195 AllocBody686_196

def AllocBody686_198 : StackLang.HolProg 64 :=
.seq AllocBody686_194 AllocBody686_197

def AllocBody686_199 : StackLang.HolProg 64 :=
.seq AllocBody686_193 AllocBody686_198

def AllocBody686_200 : StackLang.HolProg 64 :=
.seq AllocBody686_190 AllocBody686_199

def AllocBody686_201 : StackLang.HolProg 64 :=
.seq AllocBody686_189 AllocBody686_200

def AllocBody686_202 : StackLang.HolProg 64 :=
.seq AllocBody686_186 AllocBody686_201

def AllocBody686_203 : StackLang.HolProg 64 :=
.seq AllocBody686_183 AllocBody686_202

def AllocBody686_204 : StackLang.HolProg 64 :=
.seq AllocBody686_180 AllocBody686_203

def AllocBody686_205 : StackLang.HolProg 64 :=
.seq AllocBody686_179 AllocBody686_204

def AllocBody686_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody686_207 : StackLang.HolProg 64 :=
.seq AllocBody686_205 AllocBody686_206

def AllocBody686_208 : StackLang.HolProg 64 :=
.call (some (AllocBody686_178, 0, 686, 4)) (Sum.inl 665) (some (AllocBody686_207, 686, 5))

def AllocBody686_209 : StackLang.HolProg 64 :=
.seq AllocBody686_135 AllocBody686_208

def AllocBody686_210 : StackLang.HolProg 64 :=
.seq AllocBody686_134 AllocBody686_209

def AllocBody686_211 : StackLang.HolProg 64 :=
.seq AllocBody686_133 AllocBody686_210

def AllocBody686_212 : StackLang.HolProg 64 :=
.seq AllocBody686_114 AllocBody686_211

def AllocBody686_213 : StackLang.HolProg 64 :=
.seq AllocBody686_111 AllocBody686_212

def AllocBody686_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody686_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody686_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2925#64)

def AllocBody686_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody686_219 : StackLang.HolProg 64 :=
.seq AllocBody686_217 AllocBody686_218

def AllocBody686_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody686_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody686_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody686_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 686 7

def AllocBody686_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody686_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody686_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody686_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody686_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody686_230 : StackLang.HolProg 64 :=
.seq AllocBody686_228 AllocBody686_229

def AllocBody686_231 : StackLang.HolProg 64 :=
.seq AllocBody686_227 AllocBody686_230

def AllocBody686_232 : StackLang.HolProg 64 :=
.seq AllocBody686_226 AllocBody686_231

def AllocBody686_233 : StackLang.HolProg 64 :=
.seq AllocBody686_225 AllocBody686_232

def AllocBody686_234 : StackLang.HolProg 64 :=
.seq AllocBody686_224 AllocBody686_233

def AllocBody686_235 : StackLang.HolProg 64 :=
.seq AllocBody686_223 AllocBody686_234

def AllocBody686_236 : StackLang.HolProg 64 :=
.seq AllocBody686_222 AllocBody686_235

def AllocBody686_237 : StackLang.HolProg 64 :=
.seq AllocBody686_221 AllocBody686_236

def AllocBody686_238 : StackLang.HolProg 64 :=
.seq AllocBody686_220 AllocBody686_237

def AllocBody686_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody686_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody686_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody686_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody686_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody686_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody686_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody686_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 15 12

def AllocBody686_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 11

def AllocBody686_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 10

def AllocBody686_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def AllocBody686_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 8

def AllocBody686_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 7

def AllocBody686_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 6

def AllocBody686_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def AllocBody686_256 : StackLang.HolProg 64 :=
.seq AllocBody686_254 AllocBody686_255

def AllocBody686_257 : StackLang.HolProg 64 :=
.seq AllocBody686_253 AllocBody686_256

def AllocBody686_258 : StackLang.HolProg 64 :=
.seq AllocBody686_252 AllocBody686_257

def AllocBody686_259 : StackLang.HolProg 64 :=
.seq AllocBody686_251 AllocBody686_258

def AllocBody686_260 : StackLang.HolProg 64 :=
.seq AllocBody686_250 AllocBody686_259

def AllocBody686_261 : StackLang.HolProg 64 :=
.seq AllocBody686_249 AllocBody686_260

def AllocBody686_262 : StackLang.HolProg 64 :=
.seq AllocBody686_248 AllocBody686_261

def AllocBody686_263 : StackLang.HolProg 64 :=
.seq AllocBody686_247 AllocBody686_262

def AllocBody686_264 : StackLang.HolProg 64 :=
.seq AllocBody686_246 AllocBody686_263

def AllocBody686_265 : StackLang.HolProg 64 :=
.seq AllocBody686_245 AllocBody686_264

def AllocBody686_266 : StackLang.HolProg 64 :=
.seq AllocBody686_244 AllocBody686_265

def AllocBody686_267 : StackLang.HolProg 64 :=
.seq AllocBody686_243 AllocBody686_266

def AllocBody686_268 : StackLang.HolProg 64 :=
.seq AllocBody686_242 AllocBody686_267

def AllocBody686_269 : StackLang.HolProg 64 :=
.seq AllocBody686_241 AllocBody686_268

def AllocBody686_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 15 12

def AllocBody686_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 11

def AllocBody686_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 10

def AllocBody686_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def AllocBody686_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 8

def AllocBody686_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 7

def AllocBody686_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 6

def AllocBody686_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def AllocBody686_278 : StackLang.HolProg 64 :=
.seq AllocBody686_276 AllocBody686_277

def AllocBody686_279 : StackLang.HolProg 64 :=
.seq AllocBody686_275 AllocBody686_278

def AllocBody686_280 : StackLang.HolProg 64 :=
.seq AllocBody686_274 AllocBody686_279

def AllocBody686_281 : StackLang.HolProg 64 :=
.seq AllocBody686_273 AllocBody686_280

def AllocBody686_282 : StackLang.HolProg 64 :=
.seq AllocBody686_272 AllocBody686_281

def AllocBody686_283 : StackLang.HolProg 64 :=
.seq AllocBody686_271 AllocBody686_282

def AllocBody686_284 : StackLang.HolProg 64 :=
.seq AllocBody686_270 AllocBody686_283

def AllocBody686_285 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody686_286 : StackLang.HolProg 64 :=
.seq AllocBody686_284 AllocBody686_285

def AllocBody686_287 : StackLang.HolProg 64 :=
.call (some (AllocBody686_269, 0, 686, 6)) (Sum.inl 659) (some (AllocBody686_286, 686, 7))

def AllocBody686_288 : StackLang.HolProg 64 :=
.seq AllocBody686_240 AllocBody686_287

def AllocBody686_289 : StackLang.HolProg 64 :=
.seq AllocBody686_239 AllocBody686_288

def AllocBody686_290 : StackLang.HolProg 64 :=
.seq AllocBody686_238 AllocBody686_289

def AllocBody686_291 : StackLang.HolProg 64 :=
.seq AllocBody686_219 AllocBody686_290

def AllocBody686_292 : StackLang.HolProg 64 :=
.seq AllocBody686_216 AllocBody686_291

def AllocBody686_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody686_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody686_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody686_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody686_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody686_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_300 : StackLang.HolProg 64 :=
.seq AllocBody686_298 AllocBody686_299

def AllocBody686_301 : StackLang.HolProg 64 :=
.seq AllocBody686_297 AllocBody686_300

def AllocBody686_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody686_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_304 : StackLang.HolProg 64 :=
.seq AllocBody686_302 AllocBody686_303

def AllocBody686_305 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody686_301 AllocBody686_304

def AllocBody686_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody686_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody686_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody686_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody686_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_312 : StackLang.HolProg 64 :=
.seq AllocBody686_310 AllocBody686_311

def AllocBody686_313 : StackLang.HolProg 64 :=
.seq AllocBody686_309 AllocBody686_312

def AllocBody686_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody686_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_316 : StackLang.HolProg 64 :=
.seq AllocBody686_314 AllocBody686_315

def AllocBody686_317 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody686_313 AllocBody686_316

def AllocBody686_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody686_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 384#64)

def AllocBody686_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody686_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody686_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def AllocBody686_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody686_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody686_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody686_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody686_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def AllocBody686_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody686_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody686_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody686_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody686_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody686_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody686_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody686_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody686_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody686_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 15 12

def AllocBody686_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 13 11

def AllocBody686_354 : StackLang.HolProg 64 :=
.seq AllocBody686_352 AllocBody686_353

def AllocBody686_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody686_356 : StackLang.HolProg 64 :=
.seq AllocBody686_354 AllocBody686_355

def AllocBody686_357 : StackLang.HolProg 64 :=
.seq AllocBody686_351 AllocBody686_356

def AllocBody686_358 : StackLang.HolProg 64 :=
.seq AllocBody686_350 AllocBody686_357

def AllocBody686_359 : StackLang.HolProg 64 :=
.seq AllocBody686_349 AllocBody686_358

def AllocBody686_360 : StackLang.HolProg 64 :=
.seq AllocBody686_348 AllocBody686_359

def AllocBody686_361 : StackLang.HolProg 64 :=
.seq AllocBody686_347 AllocBody686_360

def AllocBody686_362 : StackLang.HolProg 64 :=
.seq AllocBody686_346 AllocBody686_361

def AllocBody686_363 : StackLang.HolProg 64 :=
.seq AllocBody686_345 AllocBody686_362

def AllocBody686_364 : StackLang.HolProg 64 :=
.seq AllocBody686_344 AllocBody686_363

def AllocBody686_365 : StackLang.HolProg 64 :=
.seq AllocBody686_343 AllocBody686_364

def AllocBody686_366 : StackLang.HolProg 64 :=
.seq AllocBody686_342 AllocBody686_365

def AllocBody686_367 : StackLang.HolProg 64 :=
.seq AllocBody686_341 AllocBody686_366

def AllocBody686_368 : StackLang.HolProg 64 :=
.seq AllocBody686_340 AllocBody686_367

def AllocBody686_369 : StackLang.HolProg 64 :=
.seq AllocBody686_339 AllocBody686_368

def AllocBody686_370 : StackLang.HolProg 64 :=
.seq AllocBody686_338 AllocBody686_369

def AllocBody686_371 : StackLang.HolProg 64 :=
.seq AllocBody686_337 AllocBody686_370

def AllocBody686_372 : StackLang.HolProg 64 :=
.seq AllocBody686_336 AllocBody686_371

def AllocBody686_373 : StackLang.HolProg 64 :=
.seq AllocBody686_335 AllocBody686_372

def AllocBody686_374 : StackLang.HolProg 64 :=
.seq AllocBody686_334 AllocBody686_373

def AllocBody686_375 : StackLang.HolProg 64 :=
.seq AllocBody686_333 AllocBody686_374

def AllocBody686_376 : StackLang.HolProg 64 :=
.seq AllocBody686_332 AllocBody686_375

def AllocBody686_377 : StackLang.HolProg 64 :=
.seq AllocBody686_331 AllocBody686_376

def AllocBody686_378 : StackLang.HolProg 64 :=
.seq AllocBody686_330 AllocBody686_377

def AllocBody686_379 : StackLang.HolProg 64 :=
.seq AllocBody686_329 AllocBody686_378

def AllocBody686_380 : StackLang.HolProg 64 :=
.seq AllocBody686_328 AllocBody686_379

def AllocBody686_381 : StackLang.HolProg 64 :=
.seq AllocBody686_327 AllocBody686_380

def AllocBody686_382 : StackLang.HolProg 64 :=
.seq AllocBody686_326 AllocBody686_381

def AllocBody686_383 : StackLang.HolProg 64 :=
.seq AllocBody686_325 AllocBody686_382

def AllocBody686_384 : StackLang.HolProg 64 :=
.seq AllocBody686_324 AllocBody686_383

def AllocBody686_385 : StackLang.HolProg 64 :=
.seq AllocBody686_323 AllocBody686_384

def AllocBody686_386 : StackLang.HolProg 64 :=
.seq AllocBody686_322 AllocBody686_385

def AllocBody686_387 : StackLang.HolProg 64 :=
.seq AllocBody686_321 AllocBody686_386

def AllocBody686_388 : StackLang.HolProg 64 :=
.seq AllocBody686_320 AllocBody686_387

def AllocBody686_389 : StackLang.HolProg 64 :=
.seq AllocBody686_319 AllocBody686_388

def AllocBody686_390 : StackLang.HolProg 64 :=
.seq AllocBody686_318 AllocBody686_389

def AllocBody686_391 : StackLang.HolProg 64 :=
.seq AllocBody686_317 AllocBody686_390

def AllocBody686_392 : StackLang.HolProg 64 :=
.seq AllocBody686_308 AllocBody686_391

def AllocBody686_393 : StackLang.HolProg 64 :=
.seq AllocBody686_307 AllocBody686_392

def AllocBody686_394 : StackLang.HolProg 64 :=
.seq AllocBody686_306 AllocBody686_393

def AllocBody686_395 : StackLang.HolProg 64 :=
.seq AllocBody686_305 AllocBody686_394

def AllocBody686_396 : StackLang.HolProg 64 :=
.seq AllocBody686_296 AllocBody686_395

def AllocBody686_397 : StackLang.HolProg 64 :=
.seq AllocBody686_295 AllocBody686_396

def AllocBody686_398 : StackLang.HolProg 64 :=
.seq AllocBody686_294 AllocBody686_397

def AllocBody686_399 : StackLang.HolProg 64 :=
.seq AllocBody686_293 AllocBody686_398

def AllocBody686_400 : StackLang.HolProg 64 :=
.seq AllocBody686_292 AllocBody686_399

def AllocBody686_401 : StackLang.HolProg 64 :=
.seq AllocBody686_215 AllocBody686_400

def AllocBody686_402 : StackLang.HolProg 64 :=
.seq AllocBody686_214 AllocBody686_401

def AllocBody686_403 : StackLang.HolProg 64 :=
.seq AllocBody686_213 AllocBody686_402

def AllocBody686_404 : StackLang.HolProg 64 :=
.seq AllocBody686_110 AllocBody686_403

def AllocBody686_405 : StackLang.HolProg 64 :=
.seq AllocBody686_87 AllocBody686_404

def AllocBody686_406 : StackLang.HolProg 64 :=
.seq AllocBody686_86 AllocBody686_405

def AllocBody686_407 : StackLang.HolProg 64 :=
.seq AllocBody686_85 AllocBody686_406

def AllocBody686_408 : StackLang.HolProg 64 :=
.seq AllocBody686_84 AllocBody686_407

def AllocBody686_409 : StackLang.HolProg 64 :=
.seq AllocBody686_83 AllocBody686_408

def AllocBody686_410 : StackLang.HolProg 64 :=
.seq AllocBody686_82 AllocBody686_409

def AllocBody686_411 : StackLang.HolProg 64 :=
.seq AllocBody686_81 AllocBody686_410

def AllocBody686_412 : StackLang.HolProg 64 :=
.seq AllocBody686_80 AllocBody686_411

def AllocBody686_413 : StackLang.HolProg 64 :=
.seq AllocBody686_79 AllocBody686_412

def AllocBody686_414 : StackLang.HolProg 64 :=
.seq AllocBody686_78 AllocBody686_413

def AllocBody686_415 : StackLang.HolProg 64 :=
.seq AllocBody686_77 AllocBody686_414

def AllocBody686_416 : StackLang.HolProg 64 :=
.seq AllocBody686_76 AllocBody686_415

def AllocBody686_417 : StackLang.HolProg 64 :=
.seq AllocBody686_75 AllocBody686_416

def AllocBody686_418 : StackLang.HolProg 64 :=
.seq AllocBody686_74 AllocBody686_417

def AllocBody686_419 : StackLang.HolProg 64 :=
.seq AllocBody686_73 AllocBody686_418

def AllocBody686_420 : StackLang.HolProg 64 :=
.seq AllocBody686_72 AllocBody686_419

def AllocBody686_421 : StackLang.HolProg 64 :=
.seq AllocBody686_71 AllocBody686_420

def AllocBody686_422 : StackLang.HolProg 64 :=
.seq AllocBody686_70 AllocBody686_421

def AllocBody686_423 : StackLang.HolProg 64 :=
.seq AllocBody686_69 AllocBody686_422

def AllocBody686_424 : StackLang.HolProg 64 :=
.seq AllocBody686_68 AllocBody686_423

def AllocBody686_425 : StackLang.HolProg 64 :=
.seq AllocBody686_67 AllocBody686_424

def AllocBody686_426 : StackLang.HolProg 64 :=
.seq AllocBody686_66 AllocBody686_425

def AllocBody686_427 : StackLang.HolProg 64 :=
.seq AllocBody686_65 AllocBody686_426

def AllocBody686_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody686_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody686_430 : StackLang.HolProg 64 :=
.seq AllocBody686_428 AllocBody686_429

def AllocBody686_431 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody686_427 AllocBody686_430

def AllocBody686_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody686_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 12

def AllocBody686_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 11

def AllocBody686_435 : StackLang.HolProg 64 :=
.seq AllocBody686_433 AllocBody686_434

def AllocBody686_436 : StackLang.HolProg 64 :=
.seq AllocBody686_432 AllocBody686_435

def AllocBody686_437 : StackLang.HolProg 64 :=
.seq AllocBody686_431 AllocBody686_436

def AllocBody686_438 : StackLang.HolProg 64 :=
.seq AllocBody686_64 AllocBody686_437

def AllocBody686_439 : StackLang.HolProg 64 :=
.seq AllocBody686_63 AllocBody686_438

def AllocBody686_440 : StackLang.HolProg 64 :=
.loop AllocBody686_439

def AllocBody686_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody686_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody686_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody686_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 12

def AllocBody686_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 13

def AllocBody686_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody686_447 : StackLang.HolProg 64 :=
.seq AllocBody686_445 AllocBody686_446

def AllocBody686_448 : StackLang.HolProg 64 :=
.seq AllocBody686_444 AllocBody686_447

def AllocBody686_449 : StackLang.HolProg 64 :=
.seq AllocBody686_443 AllocBody686_448

def AllocBody686_450 : StackLang.HolProg 64 :=
.seq AllocBody686_442 AllocBody686_449

def AllocBody686_451 : StackLang.HolProg 64 :=
.seq AllocBody686_441 AllocBody686_450

def AllocBody686_452 : StackLang.HolProg 64 :=
.seq AllocBody686_440 AllocBody686_451

def AllocBody686_453 : StackLang.HolProg 64 :=
.seq AllocBody686_62 AllocBody686_452

def AllocBody686_454 : StackLang.HolProg 64 :=
.seq AllocBody686_61 AllocBody686_453

def AllocBody686_455 : StackLang.HolProg 64 :=
.seq AllocBody686_60 AllocBody686_454

def AllocBody686_456 : StackLang.HolProg 64 :=
.seq AllocBody686_59 AllocBody686_455

def AllocBody686_457 : StackLang.HolProg 64 :=
.seq AllocBody686_58 AllocBody686_456

def AllocBody686_458 : StackLang.HolProg 64 :=
.seq AllocBody686_7 AllocBody686_457

def AllocBody686_459 : StackLang.HolProg 64 :=
.seq AllocBody686_2 AllocBody686_458

def AllocBody686_460 : StackLang.HolProg 64 :=
.seq AllocBody686_1 AllocBody686_459

def AllocBody686_461 : StackLang.HolProg 64 :=
.seq AllocBody686_0 AllocBody686_460

def Alloc686 : Nat × StackLang.HolProg 64 := (686, AllocBody686_461)
theorem Alloc686_eq : StackAlloc.progComp (686, raw686) = Alloc686 := by
  kernel_rfl
#print axioms Alloc686_eq
end InitECandidate.Proofs.BackendStages
