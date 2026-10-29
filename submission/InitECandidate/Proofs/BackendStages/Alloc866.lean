import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw866
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody866_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody866_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody866_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody866_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody866_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody866_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody866_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody866_7 : StackLang.HolProg 64 :=
.seq AllocBody866_5 AllocBody866_6

def AllocBody866_8 : StackLang.HolProg 64 :=
.seq AllocBody866_4 AllocBody866_7

def AllocBody866_9 : StackLang.HolProg 64 :=
.seq AllocBody866_3 AllocBody866_8

def AllocBody866_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4525#64)

def AllocBody866_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody866_13 : StackLang.HolProg 64 :=
.seq AllocBody866_11 AllocBody866_12

def AllocBody866_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody866_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody866_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody866_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 866 3

def AllocBody866_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody866_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody866_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody866_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody866_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody866_24 : StackLang.HolProg 64 :=
.seq AllocBody866_22 AllocBody866_23

def AllocBody866_25 : StackLang.HolProg 64 :=
.seq AllocBody866_21 AllocBody866_24

def AllocBody866_26 : StackLang.HolProg 64 :=
.seq AllocBody866_20 AllocBody866_25

def AllocBody866_27 : StackLang.HolProg 64 :=
.seq AllocBody866_19 AllocBody866_26

def AllocBody866_28 : StackLang.HolProg 64 :=
.seq AllocBody866_18 AllocBody866_27

def AllocBody866_29 : StackLang.HolProg 64 :=
.seq AllocBody866_17 AllocBody866_28

def AllocBody866_30 : StackLang.HolProg 64 :=
.seq AllocBody866_16 AllocBody866_29

def AllocBody866_31 : StackLang.HolProg 64 :=
.seq AllocBody866_15 AllocBody866_30

def AllocBody866_32 : StackLang.HolProg 64 :=
.seq AllocBody866_14 AllocBody866_31

def AllocBody866_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody866_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody866_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody866_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody866_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody866_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody866_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody866_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody866_43 : StackLang.HolProg 64 :=
.seq AllocBody866_41 AllocBody866_42

def AllocBody866_44 : StackLang.HolProg 64 :=
.seq AllocBody866_40 AllocBody866_43

def AllocBody866_45 : StackLang.HolProg 64 :=
.seq AllocBody866_39 AllocBody866_44

def AllocBody866_46 : StackLang.HolProg 64 :=
.seq AllocBody866_38 AllocBody866_45

def AllocBody866_47 : StackLang.HolProg 64 :=
.seq AllocBody866_37 AllocBody866_46

def AllocBody866_48 : StackLang.HolProg 64 :=
.seq AllocBody866_36 AllocBody866_47

def AllocBody866_49 : StackLang.HolProg 64 :=
.seq AllocBody866_35 AllocBody866_48

def AllocBody866_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody866_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody866_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody866_53 : StackLang.HolProg 64 :=
.seq AllocBody866_51 AllocBody866_52

def AllocBody866_54 : StackLang.HolProg 64 :=
.seq AllocBody866_50 AllocBody866_53

def AllocBody866_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody866_56 : StackLang.HolProg 64 :=
.seq AllocBody866_54 AllocBody866_55

def AllocBody866_57 : StackLang.HolProg 64 :=
.call (some (AllocBody866_49, 0, 866, 2)) (Sum.inl 68) (some (AllocBody866_56, 866, 3))

def AllocBody866_58 : StackLang.HolProg 64 :=
.seq AllocBody866_34 AllocBody866_57

def AllocBody866_59 : StackLang.HolProg 64 :=
.seq AllocBody866_33 AllocBody866_58

def AllocBody866_60 : StackLang.HolProg 64 :=
.seq AllocBody866_32 AllocBody866_59

def AllocBody866_61 : StackLang.HolProg 64 :=
.seq AllocBody866_13 AllocBody866_60

def AllocBody866_62 : StackLang.HolProg 64 :=
.seq AllocBody866_10 AllocBody866_61

def AllocBody866_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody866_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody866_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody866_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody866_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody866_70 : StackLang.HolProg 64 :=
.seq AllocBody866_68 AllocBody866_69

def AllocBody866_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4526#64)

def AllocBody866_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody866_74 : StackLang.HolProg 64 :=
.seq AllocBody866_72 AllocBody866_73

def AllocBody866_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody866_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody866_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody866_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 866 5

def AllocBody866_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody866_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody866_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody866_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody866_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody866_85 : StackLang.HolProg 64 :=
.seq AllocBody866_83 AllocBody866_84

def AllocBody866_86 : StackLang.HolProg 64 :=
.seq AllocBody866_82 AllocBody866_85

def AllocBody866_87 : StackLang.HolProg 64 :=
.seq AllocBody866_81 AllocBody866_86

def AllocBody866_88 : StackLang.HolProg 64 :=
.seq AllocBody866_80 AllocBody866_87

def AllocBody866_89 : StackLang.HolProg 64 :=
.seq AllocBody866_79 AllocBody866_88

def AllocBody866_90 : StackLang.HolProg 64 :=
.seq AllocBody866_78 AllocBody866_89

def AllocBody866_91 : StackLang.HolProg 64 :=
.seq AllocBody866_77 AllocBody866_90

def AllocBody866_92 : StackLang.HolProg 64 :=
.seq AllocBody866_76 AllocBody866_91

def AllocBody866_93 : StackLang.HolProg 64 :=
.seq AllocBody866_75 AllocBody866_92

def AllocBody866_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody866_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody866_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody866_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody866_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody866_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody866_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody866_103 : StackLang.HolProg 64 :=
.seq AllocBody866_101 AllocBody866_102

def AllocBody866_104 : StackLang.HolProg 64 :=
.seq AllocBody866_100 AllocBody866_103

def AllocBody866_105 : StackLang.HolProg 64 :=
.seq AllocBody866_99 AllocBody866_104

def AllocBody866_106 : StackLang.HolProg 64 :=
.seq AllocBody866_98 AllocBody866_105

def AllocBody866_107 : StackLang.HolProg 64 :=
.seq AllocBody866_97 AllocBody866_106

def AllocBody866_108 : StackLang.HolProg 64 :=
.seq AllocBody866_96 AllocBody866_107

def AllocBody866_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody866_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody866_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody866_112 : StackLang.HolProg 64 :=
.seq AllocBody866_110 AllocBody866_111

def AllocBody866_113 : StackLang.HolProg 64 :=
.seq AllocBody866_109 AllocBody866_112

def AllocBody866_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody866_115 : StackLang.HolProg 64 :=
.seq AllocBody866_113 AllocBody866_114

def AllocBody866_116 : StackLang.HolProg 64 :=
.call (some (AllocBody866_108, 0, 866, 4)) (Sum.inl 77) (some (AllocBody866_115, 866, 5))

def AllocBody866_117 : StackLang.HolProg 64 :=
.seq AllocBody866_95 AllocBody866_116

def AllocBody866_118 : StackLang.HolProg 64 :=
.seq AllocBody866_94 AllocBody866_117

def AllocBody866_119 : StackLang.HolProg 64 :=
.seq AllocBody866_93 AllocBody866_118

def AllocBody866_120 : StackLang.HolProg 64 :=
.seq AllocBody866_74 AllocBody866_119

def AllocBody866_121 : StackLang.HolProg 64 :=
.seq AllocBody866_71 AllocBody866_120

def AllocBody866_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody866_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody866_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody866_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody866_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551200#64))

def AllocBody866_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def AllocBody866_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody866_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 56#64))

def AllocBody866_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody866_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody866_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551200#64))

def AllocBody866_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 56#64))

def AllocBody866_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody866_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody866_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody866_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody866_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551200#64))

def AllocBody866_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody866_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody866_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody866_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody866_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody866_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody866_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody866_155 : StackLang.HolProg 64 :=
.seq AllocBody866_153 AllocBody866_154

def AllocBody866_156 : StackLang.HolProg 64 :=
.seq AllocBody866_152 AllocBody866_155

def AllocBody866_157 : StackLang.HolProg 64 :=
.seq AllocBody866_151 AllocBody866_156

def AllocBody866_158 : StackLang.HolProg 64 :=
.seq AllocBody866_150 AllocBody866_157

def AllocBody866_159 : StackLang.HolProg 64 :=
.seq AllocBody866_149 AllocBody866_158

def AllocBody866_160 : StackLang.HolProg 64 :=
.seq AllocBody866_148 AllocBody866_159

def AllocBody866_161 : StackLang.HolProg 64 :=
.seq AllocBody866_147 AllocBody866_160

def AllocBody866_162 : StackLang.HolProg 64 :=
.seq AllocBody866_146 AllocBody866_161

def AllocBody866_163 : StackLang.HolProg 64 :=
.seq AllocBody866_145 AllocBody866_162

def AllocBody866_164 : StackLang.HolProg 64 :=
.seq AllocBody866_144 AllocBody866_163

def AllocBody866_165 : StackLang.HolProg 64 :=
.seq AllocBody866_143 AllocBody866_164

def AllocBody866_166 : StackLang.HolProg 64 :=
.seq AllocBody866_142 AllocBody866_165

def AllocBody866_167 : StackLang.HolProg 64 :=
.seq AllocBody866_141 AllocBody866_166

def AllocBody866_168 : StackLang.HolProg 64 :=
.seq AllocBody866_140 AllocBody866_167

def AllocBody866_169 : StackLang.HolProg 64 :=
.seq AllocBody866_139 AllocBody866_168

def AllocBody866_170 : StackLang.HolProg 64 :=
.seq AllocBody866_138 AllocBody866_169

def AllocBody866_171 : StackLang.HolProg 64 :=
.seq AllocBody866_137 AllocBody866_170

def AllocBody866_172 : StackLang.HolProg 64 :=
.seq AllocBody866_136 AllocBody866_171

def AllocBody866_173 : StackLang.HolProg 64 :=
.seq AllocBody866_135 AllocBody866_172

def AllocBody866_174 : StackLang.HolProg 64 :=
.seq AllocBody866_134 AllocBody866_173

def AllocBody866_175 : StackLang.HolProg 64 :=
.seq AllocBody866_133 AllocBody866_174

def AllocBody866_176 : StackLang.HolProg 64 :=
.seq AllocBody866_132 AllocBody866_175

def AllocBody866_177 : StackLang.HolProg 64 :=
.seq AllocBody866_131 AllocBody866_176

def AllocBody866_178 : StackLang.HolProg 64 :=
.seq AllocBody866_130 AllocBody866_177

def AllocBody866_179 : StackLang.HolProg 64 :=
.seq AllocBody866_129 AllocBody866_178

def AllocBody866_180 : StackLang.HolProg 64 :=
.seq AllocBody866_128 AllocBody866_179

def AllocBody866_181 : StackLang.HolProg 64 :=
.seq AllocBody866_127 AllocBody866_180

def AllocBody866_182 : StackLang.HolProg 64 :=
.seq AllocBody866_126 AllocBody866_181

def AllocBody866_183 : StackLang.HolProg 64 :=
.seq AllocBody866_125 AllocBody866_182

def AllocBody866_184 : StackLang.HolProg 64 :=
.seq AllocBody866_124 AllocBody866_183

def AllocBody866_185 : StackLang.HolProg 64 :=
.seq AllocBody866_123 AllocBody866_184

def AllocBody866_186 : StackLang.HolProg 64 :=
.seq AllocBody866_122 AllocBody866_185

def AllocBody866_187 : StackLang.HolProg 64 :=
.seq AllocBody866_121 AllocBody866_186

def AllocBody866_188 : StackLang.HolProg 64 :=
.seq AllocBody866_70 AllocBody866_187

def AllocBody866_189 : StackLang.HolProg 64 :=
.seq AllocBody866_67 AllocBody866_188

def AllocBody866_190 : StackLang.HolProg 64 :=
.seq AllocBody866_66 AllocBody866_189

def AllocBody866_191 : StackLang.HolProg 64 :=
.seq AllocBody866_65 AllocBody866_190

def AllocBody866_192 : StackLang.HolProg 64 :=
.seq AllocBody866_64 AllocBody866_191

def AllocBody866_193 : StackLang.HolProg 64 :=
.seq AllocBody866_63 AllocBody866_192

def AllocBody866_194 : StackLang.HolProg 64 :=
.seq AllocBody866_62 AllocBody866_193

def AllocBody866_195 : StackLang.HolProg 64 :=
.seq AllocBody866_9 AllocBody866_194

def AllocBody866_196 : StackLang.HolProg 64 :=
.seq AllocBody866_2 AllocBody866_195

def AllocBody866_197 : StackLang.HolProg 64 :=
.seq AllocBody866_1 AllocBody866_196

def AllocBody866_198 : StackLang.HolProg 64 :=
.seq AllocBody866_0 AllocBody866_197

def Alloc866 : Nat × StackLang.HolProg 64 := (866, AllocBody866_198)
theorem Alloc866_eq : StackAlloc.progComp (866, raw866) = Alloc866 := by
  kernel_rfl
#print axioms Alloc866_eq
end InitECandidate.Proofs.BackendStages
