import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw471
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody471_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody471_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody471_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody471_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody471_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def AllocBody471_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 72#64))

def AllocBody471_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def AllocBody471_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody471_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def AllocBody471_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody471_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody471_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody471_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody471_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody471_21 : StackLang.HolProg 64 :=
.seq AllocBody471_19 AllocBody471_20

def AllocBody471_22 : StackLang.HolProg 64 :=
.seq AllocBody471_18 AllocBody471_21

def AllocBody471_23 : StackLang.HolProg 64 :=
.seq AllocBody471_17 AllocBody471_22

def AllocBody471_24 : StackLang.HolProg 64 :=
.seq AllocBody471_16 AllocBody471_23

def AllocBody471_25 : StackLang.HolProg 64 :=
.seq AllocBody471_15 AllocBody471_24

def AllocBody471_26 : StackLang.HolProg 64 :=
.seq AllocBody471_14 AllocBody471_25

def AllocBody471_27 : StackLang.HolProg 64 :=
.seq AllocBody471_13 AllocBody471_26

def AllocBody471_28 : StackLang.HolProg 64 :=
.seq AllocBody471_12 AllocBody471_27

def AllocBody471_29 : StackLang.HolProg 64 :=
.seq AllocBody471_11 AllocBody471_28

def AllocBody471_30 : StackLang.HolProg 64 :=
.seq AllocBody471_10 AllocBody471_29

def AllocBody471_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody471_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody471_33 : StackLang.HolProg 64 :=
.seq AllocBody471_31 AllocBody471_32

def AllocBody471_34 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody471_30 AllocBody471_33

def AllocBody471_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody471_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody471_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody471_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody471_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody471_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody471_41 : StackLang.HolProg 64 :=
.seq AllocBody471_39 AllocBody471_40

def AllocBody471_42 : StackLang.HolProg 64 :=
.seq AllocBody471_38 AllocBody471_41

def AllocBody471_43 : StackLang.HolProg 64 :=
.seq AllocBody471_37 AllocBody471_42

def AllocBody471_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1494#64)

def AllocBody471_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody471_47 : StackLang.HolProg 64 :=
.seq AllocBody471_45 AllocBody471_46

def AllocBody471_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody471_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody471_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody471_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 471 3

def AllocBody471_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody471_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody471_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody471_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody471_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody471_58 : StackLang.HolProg 64 :=
.seq AllocBody471_56 AllocBody471_57

def AllocBody471_59 : StackLang.HolProg 64 :=
.seq AllocBody471_55 AllocBody471_58

def AllocBody471_60 : StackLang.HolProg 64 :=
.seq AllocBody471_54 AllocBody471_59

def AllocBody471_61 : StackLang.HolProg 64 :=
.seq AllocBody471_53 AllocBody471_60

def AllocBody471_62 : StackLang.HolProg 64 :=
.seq AllocBody471_52 AllocBody471_61

def AllocBody471_63 : StackLang.HolProg 64 :=
.seq AllocBody471_51 AllocBody471_62

def AllocBody471_64 : StackLang.HolProg 64 :=
.seq AllocBody471_50 AllocBody471_63

def AllocBody471_65 : StackLang.HolProg 64 :=
.seq AllocBody471_49 AllocBody471_64

def AllocBody471_66 : StackLang.HolProg 64 :=
.seq AllocBody471_48 AllocBody471_65

def AllocBody471_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody471_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody471_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody471_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody471_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody471_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody471_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody471_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody471_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody471_78 : StackLang.HolProg 64 :=
.seq AllocBody471_76 AllocBody471_77

def AllocBody471_79 : StackLang.HolProg 64 :=
.seq AllocBody471_75 AllocBody471_78

def AllocBody471_80 : StackLang.HolProg 64 :=
.seq AllocBody471_74 AllocBody471_79

def AllocBody471_81 : StackLang.HolProg 64 :=
.seq AllocBody471_73 AllocBody471_80

def AllocBody471_82 : StackLang.HolProg 64 :=
.seq AllocBody471_72 AllocBody471_81

def AllocBody471_83 : StackLang.HolProg 64 :=
.seq AllocBody471_71 AllocBody471_82

def AllocBody471_84 : StackLang.HolProg 64 :=
.seq AllocBody471_70 AllocBody471_83

def AllocBody471_85 : StackLang.HolProg 64 :=
.seq AllocBody471_69 AllocBody471_84

def AllocBody471_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody471_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody471_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody471_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody471_90 : StackLang.HolProg 64 :=
.seq AllocBody471_88 AllocBody471_89

def AllocBody471_91 : StackLang.HolProg 64 :=
.seq AllocBody471_87 AllocBody471_90

def AllocBody471_92 : StackLang.HolProg 64 :=
.seq AllocBody471_86 AllocBody471_91

def AllocBody471_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody471_94 : StackLang.HolProg 64 :=
.seq AllocBody471_92 AllocBody471_93

def AllocBody471_95 : StackLang.HolProg 64 :=
.call (some (AllocBody471_85, 0, 471, 2)) (Sum.inl 463) (some (AllocBody471_94, 471, 3))

def AllocBody471_96 : StackLang.HolProg 64 :=
.seq AllocBody471_68 AllocBody471_95

def AllocBody471_97 : StackLang.HolProg 64 :=
.seq AllocBody471_67 AllocBody471_96

def AllocBody471_98 : StackLang.HolProg 64 :=
.seq AllocBody471_66 AllocBody471_97

def AllocBody471_99 : StackLang.HolProg 64 :=
.seq AllocBody471_47 AllocBody471_98

def AllocBody471_100 : StackLang.HolProg 64 :=
.seq AllocBody471_44 AllocBody471_99

def AllocBody471_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody471_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody471_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody471_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody471_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody471_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody471_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody471_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def AllocBody471_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody471_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody471_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody471_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody471_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody471_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody471_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody471_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody471_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 192#64))

def AllocBody471_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody471_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody471_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody471_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody471_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody471_133 : StackLang.HolProg 64 :=
.seq AllocBody471_131 AllocBody471_132

def AllocBody471_134 : StackLang.HolProg 64 :=
.seq AllocBody471_130 AllocBody471_133

def AllocBody471_135 : StackLang.HolProg 64 :=
.seq AllocBody471_129 AllocBody471_134

def AllocBody471_136 : StackLang.HolProg 64 :=
.seq AllocBody471_128 AllocBody471_135

def AllocBody471_137 : StackLang.HolProg 64 :=
.seq AllocBody471_127 AllocBody471_136

def AllocBody471_138 : StackLang.HolProg 64 :=
.seq AllocBody471_126 AllocBody471_137

def AllocBody471_139 : StackLang.HolProg 64 :=
.seq AllocBody471_125 AllocBody471_138

def AllocBody471_140 : StackLang.HolProg 64 :=
.seq AllocBody471_124 AllocBody471_139

def AllocBody471_141 : StackLang.HolProg 64 :=
.seq AllocBody471_123 AllocBody471_140

def AllocBody471_142 : StackLang.HolProg 64 :=
.seq AllocBody471_122 AllocBody471_141

def AllocBody471_143 : StackLang.HolProg 64 :=
.seq AllocBody471_121 AllocBody471_142

def AllocBody471_144 : StackLang.HolProg 64 :=
.seq AllocBody471_120 AllocBody471_143

def AllocBody471_145 : StackLang.HolProg 64 :=
.seq AllocBody471_119 AllocBody471_144

def AllocBody471_146 : StackLang.HolProg 64 :=
.seq AllocBody471_118 AllocBody471_145

def AllocBody471_147 : StackLang.HolProg 64 :=
.seq AllocBody471_117 AllocBody471_146

def AllocBody471_148 : StackLang.HolProg 64 :=
.seq AllocBody471_116 AllocBody471_147

def AllocBody471_149 : StackLang.HolProg 64 :=
.seq AllocBody471_115 AllocBody471_148

def AllocBody471_150 : StackLang.HolProg 64 :=
.seq AllocBody471_114 AllocBody471_149

def AllocBody471_151 : StackLang.HolProg 64 :=
.seq AllocBody471_113 AllocBody471_150

def AllocBody471_152 : StackLang.HolProg 64 :=
.seq AllocBody471_112 AllocBody471_151

def AllocBody471_153 : StackLang.HolProg 64 :=
.seq AllocBody471_111 AllocBody471_152

def AllocBody471_154 : StackLang.HolProg 64 :=
.seq AllocBody471_110 AllocBody471_153

def AllocBody471_155 : StackLang.HolProg 64 :=
.seq AllocBody471_109 AllocBody471_154

def AllocBody471_156 : StackLang.HolProg 64 :=
.seq AllocBody471_108 AllocBody471_155

def AllocBody471_157 : StackLang.HolProg 64 :=
.seq AllocBody471_107 AllocBody471_156

def AllocBody471_158 : StackLang.HolProg 64 :=
.seq AllocBody471_106 AllocBody471_157

def AllocBody471_159 : StackLang.HolProg 64 :=
.seq AllocBody471_105 AllocBody471_158

def AllocBody471_160 : StackLang.HolProg 64 :=
.seq AllocBody471_104 AllocBody471_159

def AllocBody471_161 : StackLang.HolProg 64 :=
.seq AllocBody471_103 AllocBody471_160

def AllocBody471_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_163 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody471_161 AllocBody471_162

def AllocBody471_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody471_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody471_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4#64)

def AllocBody471_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody471_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody471_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody471_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody471_172 : StackLang.HolProg 64 :=
.seq AllocBody471_170 AllocBody471_171

def AllocBody471_173 : StackLang.HolProg 64 :=
.seq AllocBody471_169 AllocBody471_172

def AllocBody471_174 : StackLang.HolProg 64 :=
.seq AllocBody471_168 AllocBody471_173

def AllocBody471_175 : StackLang.HolProg 64 :=
.seq AllocBody471_167 AllocBody471_174

def AllocBody471_176 : StackLang.HolProg 64 :=
.seq AllocBody471_166 AllocBody471_175

def AllocBody471_177 : StackLang.HolProg 64 :=
.seq AllocBody471_165 AllocBody471_176

def AllocBody471_178 : StackLang.HolProg 64 :=
.seq AllocBody471_164 AllocBody471_177

def AllocBody471_179 : StackLang.HolProg 64 :=
.seq AllocBody471_163 AllocBody471_178

def AllocBody471_180 : StackLang.HolProg 64 :=
.seq AllocBody471_102 AllocBody471_179

def AllocBody471_181 : StackLang.HolProg 64 :=
.seq AllocBody471_101 AllocBody471_180

def AllocBody471_182 : StackLang.HolProg 64 :=
.seq AllocBody471_100 AllocBody471_181

def AllocBody471_183 : StackLang.HolProg 64 :=
.seq AllocBody471_43 AllocBody471_182

def AllocBody471_184 : StackLang.HolProg 64 :=
.seq AllocBody471_36 AllocBody471_183

def AllocBody471_185 : StackLang.HolProg 64 :=
.seq AllocBody471_35 AllocBody471_184

def AllocBody471_186 : StackLang.HolProg 64 :=
.seq AllocBody471_34 AllocBody471_185

def AllocBody471_187 : StackLang.HolProg 64 :=
.seq AllocBody471_9 AllocBody471_186

def AllocBody471_188 : StackLang.HolProg 64 :=
.seq AllocBody471_8 AllocBody471_187

def AllocBody471_189 : StackLang.HolProg 64 :=
.seq AllocBody471_7 AllocBody471_188

def AllocBody471_190 : StackLang.HolProg 64 :=
.seq AllocBody471_6 AllocBody471_189

def AllocBody471_191 : StackLang.HolProg 64 :=
.seq AllocBody471_5 AllocBody471_190

def AllocBody471_192 : StackLang.HolProg 64 :=
.seq AllocBody471_4 AllocBody471_191

def AllocBody471_193 : StackLang.HolProg 64 :=
.seq AllocBody471_3 AllocBody471_192

def AllocBody471_194 : StackLang.HolProg 64 :=
.seq AllocBody471_2 AllocBody471_193

def AllocBody471_195 : StackLang.HolProg 64 :=
.seq AllocBody471_1 AllocBody471_194

def AllocBody471_196 : StackLang.HolProg 64 :=
.seq AllocBody471_0 AllocBody471_195

def Alloc471 : Nat × StackLang.HolProg 64 := (471, AllocBody471_196)
theorem Alloc471_eq : StackAlloc.progComp (471, raw471) = Alloc471 := by
  kernel_rfl
#print axioms Alloc471_eq
end InitECandidate.Proofs.BackendStages
