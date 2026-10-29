import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw605
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody605_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody605_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody605_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody605_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody605_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody605_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody605_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody605_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 152#64))

def AllocBody605_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody605_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody605_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody605_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody605_15 : StackLang.HolProg 64 :=
.seq AllocBody605_13 AllocBody605_14

def AllocBody605_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2315#64)

def AllocBody605_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody605_19 : StackLang.HolProg 64 :=
.seq AllocBody605_17 AllocBody605_18

def AllocBody605_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody605_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody605_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody605_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 605 3

def AllocBody605_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody605_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody605_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody605_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody605_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody605_30 : StackLang.HolProg 64 :=
.seq AllocBody605_28 AllocBody605_29

def AllocBody605_31 : StackLang.HolProg 64 :=
.seq AllocBody605_27 AllocBody605_30

def AllocBody605_32 : StackLang.HolProg 64 :=
.seq AllocBody605_26 AllocBody605_31

def AllocBody605_33 : StackLang.HolProg 64 :=
.seq AllocBody605_25 AllocBody605_32

def AllocBody605_34 : StackLang.HolProg 64 :=
.seq AllocBody605_24 AllocBody605_33

def AllocBody605_35 : StackLang.HolProg 64 :=
.seq AllocBody605_23 AllocBody605_34

def AllocBody605_36 : StackLang.HolProg 64 :=
.seq AllocBody605_22 AllocBody605_35

def AllocBody605_37 : StackLang.HolProg 64 :=
.seq AllocBody605_21 AllocBody605_36

def AllocBody605_38 : StackLang.HolProg 64 :=
.seq AllocBody605_20 AllocBody605_37

def AllocBody605_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody605_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody605_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody605_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody605_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_46 : StackLang.HolProg 64 :=
.seq AllocBody605_44 AllocBody605_45

def AllocBody605_47 : StackLang.HolProg 64 :=
.seq AllocBody605_43 AllocBody605_46

def AllocBody605_48 : StackLang.HolProg 64 :=
.seq AllocBody605_42 AllocBody605_47

def AllocBody605_49 : StackLang.HolProg 64 :=
.seq AllocBody605_41 AllocBody605_48

def AllocBody605_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody605_52 : StackLang.HolProg 64 :=
.seq AllocBody605_50 AllocBody605_51

def AllocBody605_53 : StackLang.HolProg 64 :=
.call (some (AllocBody605_49, 0, 605, 2)) (Sum.inl 593) (some (AllocBody605_52, 605, 3))

def AllocBody605_54 : StackLang.HolProg 64 :=
.seq AllocBody605_40 AllocBody605_53

def AllocBody605_55 : StackLang.HolProg 64 :=
.seq AllocBody605_39 AllocBody605_54

def AllocBody605_56 : StackLang.HolProg 64 :=
.seq AllocBody605_38 AllocBody605_55

def AllocBody605_57 : StackLang.HolProg 64 :=
.seq AllocBody605_19 AllocBody605_56

def AllocBody605_58 : StackLang.HolProg 64 :=
.seq AllocBody605_16 AllocBody605_57

def AllocBody605_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody605_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody605_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody605_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody605_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody605_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2316#64)

def AllocBody605_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody605_68 : StackLang.HolProg 64 :=
.seq AllocBody605_66 AllocBody605_67

def AllocBody605_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody605_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody605_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody605_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 605 5

def AllocBody605_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody605_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody605_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody605_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody605_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody605_79 : StackLang.HolProg 64 :=
.seq AllocBody605_77 AllocBody605_78

def AllocBody605_80 : StackLang.HolProg 64 :=
.seq AllocBody605_76 AllocBody605_79

def AllocBody605_81 : StackLang.HolProg 64 :=
.seq AllocBody605_75 AllocBody605_80

def AllocBody605_82 : StackLang.HolProg 64 :=
.seq AllocBody605_74 AllocBody605_81

def AllocBody605_83 : StackLang.HolProg 64 :=
.seq AllocBody605_73 AllocBody605_82

def AllocBody605_84 : StackLang.HolProg 64 :=
.seq AllocBody605_72 AllocBody605_83

def AllocBody605_85 : StackLang.HolProg 64 :=
.seq AllocBody605_71 AllocBody605_84

def AllocBody605_86 : StackLang.HolProg 64 :=
.seq AllocBody605_70 AllocBody605_85

def AllocBody605_87 : StackLang.HolProg 64 :=
.seq AllocBody605_69 AllocBody605_86

def AllocBody605_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody605_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody605_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody605_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody605_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody605_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody605_96 : StackLang.HolProg 64 :=
.seq AllocBody605_94 AllocBody605_95

def AllocBody605_97 : StackLang.HolProg 64 :=
.seq AllocBody605_93 AllocBody605_96

def AllocBody605_98 : StackLang.HolProg 64 :=
.seq AllocBody605_92 AllocBody605_97

def AllocBody605_99 : StackLang.HolProg 64 :=
.seq AllocBody605_91 AllocBody605_98

def AllocBody605_100 : StackLang.HolProg 64 :=
.seq AllocBody605_90 AllocBody605_99

def AllocBody605_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody605_102 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody605_103 : StackLang.HolProg 64 :=
.seq AllocBody605_101 AllocBody605_102

def AllocBody605_104 : StackLang.HolProg 64 :=
.call (some (AllocBody605_100, 0, 605, 4)) (Sum.inl 473) (some (AllocBody605_103, 605, 5))

def AllocBody605_105 : StackLang.HolProg 64 :=
.seq AllocBody605_89 AllocBody605_104

def AllocBody605_106 : StackLang.HolProg 64 :=
.seq AllocBody605_88 AllocBody605_105

def AllocBody605_107 : StackLang.HolProg 64 :=
.seq AllocBody605_87 AllocBody605_106

def AllocBody605_108 : StackLang.HolProg 64 :=
.seq AllocBody605_68 AllocBody605_107

def AllocBody605_109 : StackLang.HolProg 64 :=
.seq AllocBody605_65 AllocBody605_108

def AllocBody605_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody605_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody605_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody605_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody605_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody605_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 200#64)))

def AllocBody605_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody605_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody605_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody605_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def AllocBody605_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody605_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody605_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody605_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody605_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody605_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_132 : StackLang.HolProg 64 :=
.seq AllocBody605_130 AllocBody605_131

def AllocBody605_133 : StackLang.HolProg 64 :=
.seq AllocBody605_129 AllocBody605_132

def AllocBody605_134 : StackLang.HolProg 64 :=
.seq AllocBody605_128 AllocBody605_133

def AllocBody605_135 : StackLang.HolProg 64 :=
.seq AllocBody605_127 AllocBody605_134

def AllocBody605_136 : StackLang.HolProg 64 :=
.seq AllocBody605_126 AllocBody605_135

def AllocBody605_137 : StackLang.HolProg 64 :=
.seq AllocBody605_125 AllocBody605_136

def AllocBody605_138 : StackLang.HolProg 64 :=
.seq AllocBody605_124 AllocBody605_137

def AllocBody605_139 : StackLang.HolProg 64 :=
.seq AllocBody605_123 AllocBody605_138

def AllocBody605_140 : StackLang.HolProg 64 :=
.seq AllocBody605_122 AllocBody605_139

def AllocBody605_141 : StackLang.HolProg 64 :=
.seq AllocBody605_121 AllocBody605_140

def AllocBody605_142 : StackLang.HolProg 64 :=
.seq AllocBody605_120 AllocBody605_141

def AllocBody605_143 : StackLang.HolProg 64 :=
.seq AllocBody605_119 AllocBody605_142

def AllocBody605_144 : StackLang.HolProg 64 :=
.seq AllocBody605_118 AllocBody605_143

def AllocBody605_145 : StackLang.HolProg 64 :=
.seq AllocBody605_117 AllocBody605_144

def AllocBody605_146 : StackLang.HolProg 64 :=
.seq AllocBody605_116 AllocBody605_145

def AllocBody605_147 : StackLang.HolProg 64 :=
.seq AllocBody605_115 AllocBody605_146

def AllocBody605_148 : StackLang.HolProg 64 :=
.seq AllocBody605_114 AllocBody605_147

def AllocBody605_149 : StackLang.HolProg 64 :=
.seq AllocBody605_113 AllocBody605_148

def AllocBody605_150 : StackLang.HolProg 64 :=
.seq AllocBody605_112 AllocBody605_149

def AllocBody605_151 : StackLang.HolProg 64 :=
.seq AllocBody605_111 AllocBody605_150

def AllocBody605_152 : StackLang.HolProg 64 :=
.seq AllocBody605_110 AllocBody605_151

def AllocBody605_153 : StackLang.HolProg 64 :=
.seq AllocBody605_109 AllocBody605_152

def AllocBody605_154 : StackLang.HolProg 64 :=
.seq AllocBody605_64 AllocBody605_153

def AllocBody605_155 : StackLang.HolProg 64 :=
.seq AllocBody605_63 AllocBody605_154

def AllocBody605_156 : StackLang.HolProg 64 :=
.seq AllocBody605_62 AllocBody605_155

def AllocBody605_157 : StackLang.HolProg 64 :=
.seq AllocBody605_61 AllocBody605_156

def AllocBody605_158 : StackLang.HolProg 64 :=
.seq AllocBody605_60 AllocBody605_157

def AllocBody605_159 : StackLang.HolProg 64 :=
.seq AllocBody605_59 AllocBody605_158

def AllocBody605_160 : StackLang.HolProg 64 :=
.seq AllocBody605_58 AllocBody605_159

def AllocBody605_161 : StackLang.HolProg 64 :=
.seq AllocBody605_15 AllocBody605_160

def AllocBody605_162 : StackLang.HolProg 64 :=
.seq AllocBody605_12 AllocBody605_161

def AllocBody605_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody605_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody605_165 : StackLang.HolProg 64 :=
.seq AllocBody605_163 AllocBody605_164

def AllocBody605_166 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody605_162 AllocBody605_165

def AllocBody605_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody605_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2317#64)

def AllocBody605_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody605_172 : StackLang.HolProg 64 :=
.seq AllocBody605_170 AllocBody605_171

def AllocBody605_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody605_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody605_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody605_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 605 7

def AllocBody605_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody605_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody605_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody605_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody605_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody605_183 : StackLang.HolProg 64 :=
.seq AllocBody605_181 AllocBody605_182

def AllocBody605_184 : StackLang.HolProg 64 :=
.seq AllocBody605_180 AllocBody605_183

def AllocBody605_185 : StackLang.HolProg 64 :=
.seq AllocBody605_179 AllocBody605_184

def AllocBody605_186 : StackLang.HolProg 64 :=
.seq AllocBody605_178 AllocBody605_185

def AllocBody605_187 : StackLang.HolProg 64 :=
.seq AllocBody605_177 AllocBody605_186

def AllocBody605_188 : StackLang.HolProg 64 :=
.seq AllocBody605_176 AllocBody605_187

def AllocBody605_189 : StackLang.HolProg 64 :=
.seq AllocBody605_175 AllocBody605_188

def AllocBody605_190 : StackLang.HolProg 64 :=
.seq AllocBody605_174 AllocBody605_189

def AllocBody605_191 : StackLang.HolProg 64 :=
.seq AllocBody605_173 AllocBody605_190

def AllocBody605_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody605_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody605_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody605_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody605_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody605_199 : StackLang.HolProg 64 :=
.seq AllocBody605_197 AllocBody605_198

def AllocBody605_200 : StackLang.HolProg 64 :=
.seq AllocBody605_196 AllocBody605_199

def AllocBody605_201 : StackLang.HolProg 64 :=
.seq AllocBody605_195 AllocBody605_200

def AllocBody605_202 : StackLang.HolProg 64 :=
.seq AllocBody605_194 AllocBody605_201

def AllocBody605_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody605_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody605_205 : StackLang.HolProg 64 :=
.seq AllocBody605_203 AllocBody605_204

def AllocBody605_206 : StackLang.HolProg 64 :=
.call (some (AllocBody605_202, 0, 605, 6)) (Sum.inl 594) (some (AllocBody605_205, 605, 7))

def AllocBody605_207 : StackLang.HolProg 64 :=
.seq AllocBody605_193 AllocBody605_206

def AllocBody605_208 : StackLang.HolProg 64 :=
.seq AllocBody605_192 AllocBody605_207

def AllocBody605_209 : StackLang.HolProg 64 :=
.seq AllocBody605_191 AllocBody605_208

def AllocBody605_210 : StackLang.HolProg 64 :=
.seq AllocBody605_172 AllocBody605_209

def AllocBody605_211 : StackLang.HolProg 64 :=
.seq AllocBody605_169 AllocBody605_210

def AllocBody605_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody605_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody605_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody605_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody605_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody605_217 : StackLang.HolProg 64 :=
.seq AllocBody605_215 AllocBody605_216

def AllocBody605_218 : StackLang.HolProg 64 :=
.seq AllocBody605_214 AllocBody605_217

def AllocBody605_219 : StackLang.HolProg 64 :=
.seq AllocBody605_213 AllocBody605_218

def AllocBody605_220 : StackLang.HolProg 64 :=
.seq AllocBody605_212 AllocBody605_219

def AllocBody605_221 : StackLang.HolProg 64 :=
.seq AllocBody605_211 AllocBody605_220

def AllocBody605_222 : StackLang.HolProg 64 :=
.seq AllocBody605_168 AllocBody605_221

def AllocBody605_223 : StackLang.HolProg 64 :=
.seq AllocBody605_167 AllocBody605_222

def AllocBody605_224 : StackLang.HolProg 64 :=
.seq AllocBody605_166 AllocBody605_223

def AllocBody605_225 : StackLang.HolProg 64 :=
.seq AllocBody605_11 AllocBody605_224

def AllocBody605_226 : StackLang.HolProg 64 :=
.seq AllocBody605_10 AllocBody605_225

def AllocBody605_227 : StackLang.HolProg 64 :=
.seq AllocBody605_9 AllocBody605_226

def AllocBody605_228 : StackLang.HolProg 64 :=
.seq AllocBody605_8 AllocBody605_227

def AllocBody605_229 : StackLang.HolProg 64 :=
.seq AllocBody605_7 AllocBody605_228

def AllocBody605_230 : StackLang.HolProg 64 :=
.seq AllocBody605_6 AllocBody605_229

def AllocBody605_231 : StackLang.HolProg 64 :=
.seq AllocBody605_5 AllocBody605_230

def AllocBody605_232 : StackLang.HolProg 64 :=
.seq AllocBody605_4 AllocBody605_231

def AllocBody605_233 : StackLang.HolProg 64 :=
.seq AllocBody605_3 AllocBody605_232

def AllocBody605_234 : StackLang.HolProg 64 :=
.seq AllocBody605_2 AllocBody605_233

def AllocBody605_235 : StackLang.HolProg 64 :=
.seq AllocBody605_1 AllocBody605_234

def AllocBody605_236 : StackLang.HolProg 64 :=
.seq AllocBody605_0 AllocBody605_235

def Alloc605 : Nat × StackLang.HolProg 64 := (605, AllocBody605_236)
theorem Alloc605_eq : StackAlloc.progComp (605, raw605) = Alloc605 := by
  kernel_rfl
#print axioms Alloc605_eq
end InitECandidate.Proofs.BackendStages
