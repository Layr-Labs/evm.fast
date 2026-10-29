import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function471
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody471_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody471_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody471_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody471_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody471_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def rawBody471_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 72#64))

def rawBody471_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def rawBody471_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody471_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def rawBody471_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody471_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody471_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody471_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody471_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody471_21 : StackLang.HolProg 64 :=
.seq rawBody471_19 rawBody471_20

def rawBody471_22 : StackLang.HolProg 64 :=
.seq rawBody471_18 rawBody471_21

def rawBody471_23 : StackLang.HolProg 64 :=
.seq rawBody471_17 rawBody471_22

def rawBody471_24 : StackLang.HolProg 64 :=
.seq rawBody471_16 rawBody471_23

def rawBody471_25 : StackLang.HolProg 64 :=
.seq rawBody471_15 rawBody471_24

def rawBody471_26 : StackLang.HolProg 64 :=
.seq rawBody471_14 rawBody471_25

def rawBody471_27 : StackLang.HolProg 64 :=
.seq rawBody471_13 rawBody471_26

def rawBody471_28 : StackLang.HolProg 64 :=
.seq rawBody471_12 rawBody471_27

def rawBody471_29 : StackLang.HolProg 64 :=
.seq rawBody471_11 rawBody471_28

def rawBody471_30 : StackLang.HolProg 64 :=
.seq rawBody471_10 rawBody471_29

def rawBody471_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody471_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody471_33 : StackLang.HolProg 64 :=
.seq rawBody471_31 rawBody471_32

def rawBody471_34 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody471_30 rawBody471_33

def rawBody471_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody471_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody471_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody471_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody471_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody471_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody471_41 : StackLang.HolProg 64 :=
.seq rawBody471_39 rawBody471_40

def rawBody471_42 : StackLang.HolProg 64 :=
.seq rawBody471_38 rawBody471_41

def rawBody471_43 : StackLang.HolProg 64 :=
.seq rawBody471_37 rawBody471_42

def rawBody471_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1494#64)

def rawBody471_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody471_47 : StackLang.HolProg 64 :=
.seq rawBody471_45 rawBody471_46

def rawBody471_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody471_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody471_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody471_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 471 3

def rawBody471_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody471_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody471_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody471_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody471_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody471_58 : StackLang.HolProg 64 :=
.seq rawBody471_56 rawBody471_57

def rawBody471_59 : StackLang.HolProg 64 :=
.seq rawBody471_55 rawBody471_58

def rawBody471_60 : StackLang.HolProg 64 :=
.seq rawBody471_54 rawBody471_59

def rawBody471_61 : StackLang.HolProg 64 :=
.seq rawBody471_53 rawBody471_60

def rawBody471_62 : StackLang.HolProg 64 :=
.seq rawBody471_52 rawBody471_61

def rawBody471_63 : StackLang.HolProg 64 :=
.seq rawBody471_51 rawBody471_62

def rawBody471_64 : StackLang.HolProg 64 :=
.seq rawBody471_50 rawBody471_63

def rawBody471_65 : StackLang.HolProg 64 :=
.seq rawBody471_49 rawBody471_64

def rawBody471_66 : StackLang.HolProg 64 :=
.seq rawBody471_48 rawBody471_65

def rawBody471_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody471_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody471_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody471_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody471_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody471_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody471_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody471_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody471_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody471_78 : StackLang.HolProg 64 :=
.seq rawBody471_76 rawBody471_77

def rawBody471_79 : StackLang.HolProg 64 :=
.seq rawBody471_75 rawBody471_78

def rawBody471_80 : StackLang.HolProg 64 :=
.seq rawBody471_74 rawBody471_79

def rawBody471_81 : StackLang.HolProg 64 :=
.seq rawBody471_73 rawBody471_80

def rawBody471_82 : StackLang.HolProg 64 :=
.seq rawBody471_72 rawBody471_81

def rawBody471_83 : StackLang.HolProg 64 :=
.seq rawBody471_71 rawBody471_82

def rawBody471_84 : StackLang.HolProg 64 :=
.seq rawBody471_70 rawBody471_83

def rawBody471_85 : StackLang.HolProg 64 :=
.seq rawBody471_69 rawBody471_84

def rawBody471_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody471_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody471_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody471_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody471_90 : StackLang.HolProg 64 :=
.seq rawBody471_88 rawBody471_89

def rawBody471_91 : StackLang.HolProg 64 :=
.seq rawBody471_87 rawBody471_90

def rawBody471_92 : StackLang.HolProg 64 :=
.seq rawBody471_86 rawBody471_91

def rawBody471_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody471_94 : StackLang.HolProg 64 :=
.seq rawBody471_92 rawBody471_93

def rawBody471_95 : StackLang.HolProg 64 :=
.call (some (rawBody471_85, 0, 471, 2)) (Sum.inl 463) (some (rawBody471_94, 471, 3))

def rawBody471_96 : StackLang.HolProg 64 :=
.seq rawBody471_68 rawBody471_95

def rawBody471_97 : StackLang.HolProg 64 :=
.seq rawBody471_67 rawBody471_96

def rawBody471_98 : StackLang.HolProg 64 :=
.seq rawBody471_66 rawBody471_97

def rawBody471_99 : StackLang.HolProg 64 :=
.seq rawBody471_47 rawBody471_98

def rawBody471_100 : StackLang.HolProg 64 :=
.seq rawBody471_44 rawBody471_99

def rawBody471_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody471_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody471_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody471_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody471_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody471_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody471_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody471_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def rawBody471_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody471_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody471_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody471_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody471_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody471_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody471_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody471_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def rawBody471_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 192#64))

def rawBody471_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody471_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody471_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody471_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody471_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody471_133 : StackLang.HolProg 64 :=
.seq rawBody471_131 rawBody471_132

def rawBody471_134 : StackLang.HolProg 64 :=
.seq rawBody471_130 rawBody471_133

def rawBody471_135 : StackLang.HolProg 64 :=
.seq rawBody471_129 rawBody471_134

def rawBody471_136 : StackLang.HolProg 64 :=
.seq rawBody471_128 rawBody471_135

def rawBody471_137 : StackLang.HolProg 64 :=
.seq rawBody471_127 rawBody471_136

def rawBody471_138 : StackLang.HolProg 64 :=
.seq rawBody471_126 rawBody471_137

def rawBody471_139 : StackLang.HolProg 64 :=
.seq rawBody471_125 rawBody471_138

def rawBody471_140 : StackLang.HolProg 64 :=
.seq rawBody471_124 rawBody471_139

def rawBody471_141 : StackLang.HolProg 64 :=
.seq rawBody471_123 rawBody471_140

def rawBody471_142 : StackLang.HolProg 64 :=
.seq rawBody471_122 rawBody471_141

def rawBody471_143 : StackLang.HolProg 64 :=
.seq rawBody471_121 rawBody471_142

def rawBody471_144 : StackLang.HolProg 64 :=
.seq rawBody471_120 rawBody471_143

def rawBody471_145 : StackLang.HolProg 64 :=
.seq rawBody471_119 rawBody471_144

def rawBody471_146 : StackLang.HolProg 64 :=
.seq rawBody471_118 rawBody471_145

def rawBody471_147 : StackLang.HolProg 64 :=
.seq rawBody471_117 rawBody471_146

def rawBody471_148 : StackLang.HolProg 64 :=
.seq rawBody471_116 rawBody471_147

def rawBody471_149 : StackLang.HolProg 64 :=
.seq rawBody471_115 rawBody471_148

def rawBody471_150 : StackLang.HolProg 64 :=
.seq rawBody471_114 rawBody471_149

def rawBody471_151 : StackLang.HolProg 64 :=
.seq rawBody471_113 rawBody471_150

def rawBody471_152 : StackLang.HolProg 64 :=
.seq rawBody471_112 rawBody471_151

def rawBody471_153 : StackLang.HolProg 64 :=
.seq rawBody471_111 rawBody471_152

def rawBody471_154 : StackLang.HolProg 64 :=
.seq rawBody471_110 rawBody471_153

def rawBody471_155 : StackLang.HolProg 64 :=
.seq rawBody471_109 rawBody471_154

def rawBody471_156 : StackLang.HolProg 64 :=
.seq rawBody471_108 rawBody471_155

def rawBody471_157 : StackLang.HolProg 64 :=
.seq rawBody471_107 rawBody471_156

def rawBody471_158 : StackLang.HolProg 64 :=
.seq rawBody471_106 rawBody471_157

def rawBody471_159 : StackLang.HolProg 64 :=
.seq rawBody471_105 rawBody471_158

def rawBody471_160 : StackLang.HolProg 64 :=
.seq rawBody471_104 rawBody471_159

def rawBody471_161 : StackLang.HolProg 64 :=
.seq rawBody471_103 rawBody471_160

def rawBody471_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_163 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody471_161 rawBody471_162

def rawBody471_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody471_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody471_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4#64)

def rawBody471_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody471_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody471_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody471_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody471_172 : StackLang.HolProg 64 :=
.seq rawBody471_170 rawBody471_171

def rawBody471_173 : StackLang.HolProg 64 :=
.seq rawBody471_169 rawBody471_172

def rawBody471_174 : StackLang.HolProg 64 :=
.seq rawBody471_168 rawBody471_173

def rawBody471_175 : StackLang.HolProg 64 :=
.seq rawBody471_167 rawBody471_174

def rawBody471_176 : StackLang.HolProg 64 :=
.seq rawBody471_166 rawBody471_175

def rawBody471_177 : StackLang.HolProg 64 :=
.seq rawBody471_165 rawBody471_176

def rawBody471_178 : StackLang.HolProg 64 :=
.seq rawBody471_164 rawBody471_177

def rawBody471_179 : StackLang.HolProg 64 :=
.seq rawBody471_163 rawBody471_178

def rawBody471_180 : StackLang.HolProg 64 :=
.seq rawBody471_102 rawBody471_179

def rawBody471_181 : StackLang.HolProg 64 :=
.seq rawBody471_101 rawBody471_180

def rawBody471_182 : StackLang.HolProg 64 :=
.seq rawBody471_100 rawBody471_181

def rawBody471_183 : StackLang.HolProg 64 :=
.seq rawBody471_43 rawBody471_182

def rawBody471_184 : StackLang.HolProg 64 :=
.seq rawBody471_36 rawBody471_183

def rawBody471_185 : StackLang.HolProg 64 :=
.seq rawBody471_35 rawBody471_184

def rawBody471_186 : StackLang.HolProg 64 :=
.seq rawBody471_34 rawBody471_185

def rawBody471_187 : StackLang.HolProg 64 :=
.seq rawBody471_9 rawBody471_186

def rawBody471_188 : StackLang.HolProg 64 :=
.seq rawBody471_8 rawBody471_187

def rawBody471_189 : StackLang.HolProg 64 :=
.seq rawBody471_7 rawBody471_188

def rawBody471_190 : StackLang.HolProg 64 :=
.seq rawBody471_6 rawBody471_189

def rawBody471_191 : StackLang.HolProg 64 :=
.seq rawBody471_5 rawBody471_190

def rawBody471_192 : StackLang.HolProg 64 :=
.seq rawBody471_4 rawBody471_191

def rawBody471_193 : StackLang.HolProg 64 :=
.seq rawBody471_3 rawBody471_192

def rawBody471_194 : StackLang.HolProg 64 :=
.seq rawBody471_2 rawBody471_193

def rawBody471_195 : StackLang.HolProg 64 :=
.seq rawBody471_1 rawBody471_194

def rawBody471_196 : StackLang.HolProg 64 :=
.seq rawBody471_0 rawBody471_195

def raw471 : StackLang.HolProg 64 := rawBody471_196
theorem raw471_eq : StackRawCall.compTop RawInfo.rawInfo (function471 (.list [])).1 = raw471 := by
  kernel_rfl
#print axioms raw471_eq
end InitECandidate.Proofs.BackendStages
