import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw613
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody613_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody613_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody613_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody613_3 : StackLang.HolProg 64 :=
.seq AllocBody613_1 AllocBody613_2

def AllocBody613_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody613_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody613_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody613_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody613_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody613_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody613_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def AllocBody613_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551352#64))

def AllocBody613_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody613_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody613_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 152#64)))

def AllocBody613_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody613_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody613_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody613_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 216#64)))

def AllocBody613_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody613_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody613_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody613_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody613_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody613_31 : StackLang.HolProg 64 :=
.seq AllocBody613_29 AllocBody613_30

def AllocBody613_32 : StackLang.HolProg 64 :=
.seq AllocBody613_28 AllocBody613_31

def AllocBody613_33 : StackLang.HolProg 64 :=
.seq AllocBody613_27 AllocBody613_32

def AllocBody613_34 : StackLang.HolProg 64 :=
.seq AllocBody613_26 AllocBody613_33

def AllocBody613_35 : StackLang.HolProg 64 :=
.seq AllocBody613_25 AllocBody613_34

def AllocBody613_36 : StackLang.HolProg 64 :=
.seq AllocBody613_24 AllocBody613_35

def AllocBody613_37 : StackLang.HolProg 64 :=
.seq AllocBody613_23 AllocBody613_36

def AllocBody613_38 : StackLang.HolProg 64 :=
.seq AllocBody613_22 AllocBody613_37

def AllocBody613_39 : StackLang.HolProg 64 :=
.seq AllocBody613_21 AllocBody613_38

def AllocBody613_40 : StackLang.HolProg 64 :=
.seq AllocBody613_20 AllocBody613_39

def AllocBody613_41 : StackLang.HolProg 64 :=
.seq AllocBody613_19 AllocBody613_40

def AllocBody613_42 : StackLang.HolProg 64 :=
.seq AllocBody613_18 AllocBody613_41

def AllocBody613_43 : StackLang.HolProg 64 :=
.seq AllocBody613_17 AllocBody613_42

def AllocBody613_44 : StackLang.HolProg 64 :=
.seq AllocBody613_16 AllocBody613_43

def AllocBody613_45 : StackLang.HolProg 64 :=
.seq AllocBody613_15 AllocBody613_44

def AllocBody613_46 : StackLang.HolProg 64 :=
.seq AllocBody613_14 AllocBody613_45

def AllocBody613_47 : StackLang.HolProg 64 :=
.seq AllocBody613_13 AllocBody613_46

def AllocBody613_48 : StackLang.HolProg 64 :=
.seq AllocBody613_12 AllocBody613_47

def AllocBody613_49 : StackLang.HolProg 64 :=
.seq AllocBody613_11 AllocBody613_48

def AllocBody613_50 : StackLang.HolProg 64 :=
.seq AllocBody613_10 AllocBody613_49

def AllocBody613_51 : StackLang.HolProg 64 :=
.seq AllocBody613_9 AllocBody613_50

def AllocBody613_52 : StackLang.HolProg 64 :=
.seq AllocBody613_8 AllocBody613_51

def AllocBody613_53 : StackLang.HolProg 64 :=
.seq AllocBody613_7 AllocBody613_52

def AllocBody613_54 : StackLang.HolProg 64 :=
.seq AllocBody613_6 AllocBody613_53

def AllocBody613_55 : StackLang.HolProg 64 :=
.seq AllocBody613_5 AllocBody613_54

def AllocBody613_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_57 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody613_55 AllocBody613_56

def AllocBody613_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody613_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody613_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody613_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody613_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody613_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody613_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 216#64))

def AllocBody613_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 144#64))

def AllocBody613_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody613_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody613_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody613_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody613_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody613_74 : StackLang.HolProg 64 :=
.seq AllocBody613_72 AllocBody613_73

def AllocBody613_75 : StackLang.HolProg 64 :=
.seq AllocBody613_71 AllocBody613_74

def AllocBody613_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2351#64)

def AllocBody613_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody613_79 : StackLang.HolProg 64 :=
.seq AllocBody613_77 AllocBody613_78

def AllocBody613_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody613_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody613_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody613_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 613 3

def AllocBody613_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody613_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody613_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody613_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody613_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody613_90 : StackLang.HolProg 64 :=
.seq AllocBody613_88 AllocBody613_89

def AllocBody613_91 : StackLang.HolProg 64 :=
.seq AllocBody613_87 AllocBody613_90

def AllocBody613_92 : StackLang.HolProg 64 :=
.seq AllocBody613_86 AllocBody613_91

def AllocBody613_93 : StackLang.HolProg 64 :=
.seq AllocBody613_85 AllocBody613_92

def AllocBody613_94 : StackLang.HolProg 64 :=
.seq AllocBody613_84 AllocBody613_93

def AllocBody613_95 : StackLang.HolProg 64 :=
.seq AllocBody613_83 AllocBody613_94

def AllocBody613_96 : StackLang.HolProg 64 :=
.seq AllocBody613_82 AllocBody613_95

def AllocBody613_97 : StackLang.HolProg 64 :=
.seq AllocBody613_81 AllocBody613_96

def AllocBody613_98 : StackLang.HolProg 64 :=
.seq AllocBody613_80 AllocBody613_97

def AllocBody613_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody613_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody613_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody613_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody613_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody613_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody613_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody613_108 : StackLang.HolProg 64 :=
.seq AllocBody613_106 AllocBody613_107

def AllocBody613_109 : StackLang.HolProg 64 :=
.seq AllocBody613_105 AllocBody613_108

def AllocBody613_110 : StackLang.HolProg 64 :=
.seq AllocBody613_104 AllocBody613_109

def AllocBody613_111 : StackLang.HolProg 64 :=
.seq AllocBody613_103 AllocBody613_110

def AllocBody613_112 : StackLang.HolProg 64 :=
.seq AllocBody613_102 AllocBody613_111

def AllocBody613_113 : StackLang.HolProg 64 :=
.seq AllocBody613_101 AllocBody613_112

def AllocBody613_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody613_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody613_116 : StackLang.HolProg 64 :=
.seq AllocBody613_114 AllocBody613_115

def AllocBody613_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody613_118 : StackLang.HolProg 64 :=
.seq AllocBody613_116 AllocBody613_117

def AllocBody613_119 : StackLang.HolProg 64 :=
.call (some (AllocBody613_113, 0, 613, 2)) (Sum.inl 68) (some (AllocBody613_118, 613, 3))

def AllocBody613_120 : StackLang.HolProg 64 :=
.seq AllocBody613_100 AllocBody613_119

def AllocBody613_121 : StackLang.HolProg 64 :=
.seq AllocBody613_99 AllocBody613_120

def AllocBody613_122 : StackLang.HolProg 64 :=
.seq AllocBody613_98 AllocBody613_121

def AllocBody613_123 : StackLang.HolProg 64 :=
.seq AllocBody613_79 AllocBody613_122

def AllocBody613_124 : StackLang.HolProg 64 :=
.seq AllocBody613_76 AllocBody613_123

def AllocBody613_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody613_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody613_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody613_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody613_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody613_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def AllocBody613_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody613_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody613_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody613_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 216#64)))

def AllocBody613_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody613_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_139 : StackLang.HolProg 64 :=
.seq AllocBody613_137 AllocBody613_138

def AllocBody613_140 : StackLang.HolProg 64 :=
.seq AllocBody613_136 AllocBody613_139

def AllocBody613_141 : StackLang.HolProg 64 :=
.seq AllocBody613_135 AllocBody613_140

def AllocBody613_142 : StackLang.HolProg 64 :=
.seq AllocBody613_134 AllocBody613_141

def AllocBody613_143 : StackLang.HolProg 64 :=
.seq AllocBody613_133 AllocBody613_142

def AllocBody613_144 : StackLang.HolProg 64 :=
.seq AllocBody613_132 AllocBody613_143

def AllocBody613_145 : StackLang.HolProg 64 :=
.seq AllocBody613_131 AllocBody613_144

def AllocBody613_146 : StackLang.HolProg 64 :=
.seq AllocBody613_130 AllocBody613_145

def AllocBody613_147 : StackLang.HolProg 64 :=
.seq AllocBody613_129 AllocBody613_146

def AllocBody613_148 : StackLang.HolProg 64 :=
.seq AllocBody613_128 AllocBody613_147

def AllocBody613_149 : StackLang.HolProg 64 :=
.seq AllocBody613_127 AllocBody613_148

def AllocBody613_150 : StackLang.HolProg 64 :=
.seq AllocBody613_126 AllocBody613_149

def AllocBody613_151 : StackLang.HolProg 64 :=
.seq AllocBody613_125 AllocBody613_150

def AllocBody613_152 : StackLang.HolProg 64 :=
.seq AllocBody613_124 AllocBody613_151

def AllocBody613_153 : StackLang.HolProg 64 :=
.seq AllocBody613_75 AllocBody613_152

def AllocBody613_154 : StackLang.HolProg 64 :=
.seq AllocBody613_70 AllocBody613_153

def AllocBody613_155 : StackLang.HolProg 64 :=
.seq AllocBody613_69 AllocBody613_154

def AllocBody613_156 : StackLang.HolProg 64 :=
.seq AllocBody613_68 AllocBody613_155

def AllocBody613_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody613_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody613_159 : StackLang.HolProg 64 :=
.seq AllocBody613_157 AllocBody613_158

def AllocBody613_160 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody613_156 AllocBody613_159

def AllocBody613_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody613_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody613_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2352#64)

def AllocBody613_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody613_166 : StackLang.HolProg 64 :=
.seq AllocBody613_164 AllocBody613_165

def AllocBody613_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody613_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody613_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody613_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 613 5

def AllocBody613_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody613_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody613_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody613_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody613_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody613_177 : StackLang.HolProg 64 :=
.seq AllocBody613_175 AllocBody613_176

def AllocBody613_178 : StackLang.HolProg 64 :=
.seq AllocBody613_174 AllocBody613_177

def AllocBody613_179 : StackLang.HolProg 64 :=
.seq AllocBody613_173 AllocBody613_178

def AllocBody613_180 : StackLang.HolProg 64 :=
.seq AllocBody613_172 AllocBody613_179

def AllocBody613_181 : StackLang.HolProg 64 :=
.seq AllocBody613_171 AllocBody613_180

def AllocBody613_182 : StackLang.HolProg 64 :=
.seq AllocBody613_170 AllocBody613_181

def AllocBody613_183 : StackLang.HolProg 64 :=
.seq AllocBody613_169 AllocBody613_182

def AllocBody613_184 : StackLang.HolProg 64 :=
.seq AllocBody613_168 AllocBody613_183

def AllocBody613_185 : StackLang.HolProg 64 :=
.seq AllocBody613_167 AllocBody613_184

def AllocBody613_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody613_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody613_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody613_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody613_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody613_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody613_194 : StackLang.HolProg 64 :=
.seq AllocBody613_192 AllocBody613_193

def AllocBody613_195 : StackLang.HolProg 64 :=
.seq AllocBody613_191 AllocBody613_194

def AllocBody613_196 : StackLang.HolProg 64 :=
.seq AllocBody613_190 AllocBody613_195

def AllocBody613_197 : StackLang.HolProg 64 :=
.seq AllocBody613_189 AllocBody613_196

def AllocBody613_198 : StackLang.HolProg 64 :=
.seq AllocBody613_188 AllocBody613_197

def AllocBody613_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody613_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody613_201 : StackLang.HolProg 64 :=
.seq AllocBody613_199 AllocBody613_200

def AllocBody613_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody613_203 : StackLang.HolProg 64 :=
.seq AllocBody613_201 AllocBody613_202

def AllocBody613_204 : StackLang.HolProg 64 :=
.call (some (AllocBody613_198, 0, 613, 4)) (Sum.inl 77) (some (AllocBody613_203, 613, 5))

def AllocBody613_205 : StackLang.HolProg 64 :=
.seq AllocBody613_187 AllocBody613_204

def AllocBody613_206 : StackLang.HolProg 64 :=
.seq AllocBody613_186 AllocBody613_205

def AllocBody613_207 : StackLang.HolProg 64 :=
.seq AllocBody613_185 AllocBody613_206

def AllocBody613_208 : StackLang.HolProg 64 :=
.seq AllocBody613_166 AllocBody613_207

def AllocBody613_209 : StackLang.HolProg 64 :=
.seq AllocBody613_163 AllocBody613_208

def AllocBody613_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody613_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody613_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody613_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody613_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody613_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 152#64)))

def AllocBody613_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody613_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody613_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody613_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody613_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody613_222 : StackLang.HolProg 64 :=
.seq AllocBody613_220 AllocBody613_221

def AllocBody613_223 : StackLang.HolProg 64 :=
.seq AllocBody613_219 AllocBody613_222

def AllocBody613_224 : StackLang.HolProg 64 :=
.seq AllocBody613_218 AllocBody613_223

def AllocBody613_225 : StackLang.HolProg 64 :=
.seq AllocBody613_217 AllocBody613_224

def AllocBody613_226 : StackLang.HolProg 64 :=
.seq AllocBody613_216 AllocBody613_225

def AllocBody613_227 : StackLang.HolProg 64 :=
.seq AllocBody613_215 AllocBody613_226

def AllocBody613_228 : StackLang.HolProg 64 :=
.seq AllocBody613_214 AllocBody613_227

def AllocBody613_229 : StackLang.HolProg 64 :=
.seq AllocBody613_213 AllocBody613_228

def AllocBody613_230 : StackLang.HolProg 64 :=
.seq AllocBody613_212 AllocBody613_229

def AllocBody613_231 : StackLang.HolProg 64 :=
.seq AllocBody613_211 AllocBody613_230

def AllocBody613_232 : StackLang.HolProg 64 :=
.seq AllocBody613_210 AllocBody613_231

def AllocBody613_233 : StackLang.HolProg 64 :=
.seq AllocBody613_209 AllocBody613_232

def AllocBody613_234 : StackLang.HolProg 64 :=
.seq AllocBody613_162 AllocBody613_233

def AllocBody613_235 : StackLang.HolProg 64 :=
.seq AllocBody613_161 AllocBody613_234

def AllocBody613_236 : StackLang.HolProg 64 :=
.seq AllocBody613_160 AllocBody613_235

def AllocBody613_237 : StackLang.HolProg 64 :=
.seq AllocBody613_67 AllocBody613_236

def AllocBody613_238 : StackLang.HolProg 64 :=
.seq AllocBody613_66 AllocBody613_237

def AllocBody613_239 : StackLang.HolProg 64 :=
.seq AllocBody613_65 AllocBody613_238

def AllocBody613_240 : StackLang.HolProg 64 :=
.seq AllocBody613_64 AllocBody613_239

def AllocBody613_241 : StackLang.HolProg 64 :=
.seq AllocBody613_63 AllocBody613_240

def AllocBody613_242 : StackLang.HolProg 64 :=
.seq AllocBody613_62 AllocBody613_241

def AllocBody613_243 : StackLang.HolProg 64 :=
.seq AllocBody613_61 AllocBody613_242

def AllocBody613_244 : StackLang.HolProg 64 :=
.seq AllocBody613_60 AllocBody613_243

def AllocBody613_245 : StackLang.HolProg 64 :=
.seq AllocBody613_59 AllocBody613_244

def AllocBody613_246 : StackLang.HolProg 64 :=
.seq AllocBody613_58 AllocBody613_245

def AllocBody613_247 : StackLang.HolProg 64 :=
.seq AllocBody613_57 AllocBody613_246

def AllocBody613_248 : StackLang.HolProg 64 :=
.seq AllocBody613_4 AllocBody613_247

def AllocBody613_249 : StackLang.HolProg 64 :=
.seq AllocBody613_3 AllocBody613_248

def AllocBody613_250 : StackLang.HolProg 64 :=
.seq AllocBody613_0 AllocBody613_249

def Alloc613 : Nat × StackLang.HolProg 64 := (613, AllocBody613_250)
theorem Alloc613_eq : StackAlloc.progComp (613, raw613) = Alloc613 := by
  kernel_rfl
#print axioms Alloc613_eq
end InitECandidate.Proofs.BackendStages
