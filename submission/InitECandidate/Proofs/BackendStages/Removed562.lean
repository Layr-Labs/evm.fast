import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc562
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody562_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody562_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody562_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody562_3 : StackLang.HolProg 64 :=
.seq RemovedBody562_1 RemovedBody562_2

def RemovedBody562_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody562_3 RemovedBody562_4

def RemovedBody562_6 : StackLang.HolProg 64 :=
.seq RemovedBody562_0 RemovedBody562_5

def RemovedBody562_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody562_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody562_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1925#64)

def RemovedBody562_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody562_13 : StackLang.HolProg 64 :=
.seq RemovedBody562_11 RemovedBody562_12

def RemovedBody562_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody562_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody562_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody562_17 : StackLang.HolProg 64 :=
.seq RemovedBody562_15 RemovedBody562_16

def RemovedBody562_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody562_17 RemovedBody562_18

def RemovedBody562_20 : StackLang.HolProg 64 :=
.seq RemovedBody562_14 RemovedBody562_19

def RemovedBody562_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody562_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody562_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 562 3

def RemovedBody562_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody562_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody562_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody562_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody562_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody562_30 : StackLang.HolProg 64 :=
.seq RemovedBody562_28 RemovedBody562_29

def RemovedBody562_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody562_32 : StackLang.HolProg 64 :=
.seq RemovedBody562_30 RemovedBody562_31

def RemovedBody562_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody562_34 : StackLang.HolProg 64 :=
.seq RemovedBody562_32 RemovedBody562_33

def RemovedBody562_35 : StackLang.HolProg 64 :=
.seq RemovedBody562_27 RemovedBody562_34

def RemovedBody562_36 : StackLang.HolProg 64 :=
.seq RemovedBody562_26 RemovedBody562_35

def RemovedBody562_37 : StackLang.HolProg 64 :=
.seq RemovedBody562_25 RemovedBody562_36

def RemovedBody562_38 : StackLang.HolProg 64 :=
.seq RemovedBody562_24 RemovedBody562_37

def RemovedBody562_39 : StackLang.HolProg 64 :=
.seq RemovedBody562_23 RemovedBody562_38

def RemovedBody562_40 : StackLang.HolProg 64 :=
.seq RemovedBody562_22 RemovedBody562_39

def RemovedBody562_41 : StackLang.HolProg 64 :=
.seq RemovedBody562_21 RemovedBody562_40

def RemovedBody562_42 : StackLang.HolProg 64 :=
.seq RemovedBody562_20 RemovedBody562_41

def RemovedBody562_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody562_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody562_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody562_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_50 : StackLang.HolProg 64 :=
.seq RemovedBody562_48 RemovedBody562_49

def RemovedBody562_51 : StackLang.HolProg 64 :=
.seq RemovedBody562_47 RemovedBody562_50

def RemovedBody562_52 : StackLang.HolProg 64 :=
.seq RemovedBody562_46 RemovedBody562_51

def RemovedBody562_53 : StackLang.HolProg 64 :=
.seq RemovedBody562_45 RemovedBody562_52

def RemovedBody562_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody562_56 : StackLang.HolProg 64 :=
.seq RemovedBody562_54 RemovedBody562_55

def RemovedBody562_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody562_53, 0, 562, 2)) (Sum.inl 470) (some (RemovedBody562_56, 562, 3))

def RemovedBody562_58 : StackLang.HolProg 64 :=
.seq RemovedBody562_44 RemovedBody562_57

def RemovedBody562_59 : StackLang.HolProg 64 :=
.seq RemovedBody562_43 RemovedBody562_58

def RemovedBody562_60 : StackLang.HolProg 64 :=
.seq RemovedBody562_42 RemovedBody562_59

def RemovedBody562_61 : StackLang.HolProg 64 :=
.seq RemovedBody562_13 RemovedBody562_60

def RemovedBody562_62 : StackLang.HolProg 64 :=
.seq RemovedBody562_10 RemovedBody562_61

def RemovedBody562_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody562_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody562_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody562_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody562_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody562_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def RemovedBody562_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1926#64)

def RemovedBody562_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody562_73 : StackLang.HolProg 64 :=
.seq RemovedBody562_71 RemovedBody562_72

def RemovedBody562_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody562_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody562_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody562_77 : StackLang.HolProg 64 :=
.seq RemovedBody562_75 RemovedBody562_76

def RemovedBody562_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody562_77 RemovedBody562_78

def RemovedBody562_80 : StackLang.HolProg 64 :=
.seq RemovedBody562_74 RemovedBody562_79

def RemovedBody562_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody562_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody562_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 562 5

def RemovedBody562_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody562_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody562_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody562_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody562_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody562_90 : StackLang.HolProg 64 :=
.seq RemovedBody562_88 RemovedBody562_89

def RemovedBody562_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody562_92 : StackLang.HolProg 64 :=
.seq RemovedBody562_90 RemovedBody562_91

def RemovedBody562_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody562_94 : StackLang.HolProg 64 :=
.seq RemovedBody562_92 RemovedBody562_93

def RemovedBody562_95 : StackLang.HolProg 64 :=
.seq RemovedBody562_87 RemovedBody562_94

def RemovedBody562_96 : StackLang.HolProg 64 :=
.seq RemovedBody562_86 RemovedBody562_95

def RemovedBody562_97 : StackLang.HolProg 64 :=
.seq RemovedBody562_85 RemovedBody562_96

def RemovedBody562_98 : StackLang.HolProg 64 :=
.seq RemovedBody562_84 RemovedBody562_97

def RemovedBody562_99 : StackLang.HolProg 64 :=
.seq RemovedBody562_83 RemovedBody562_98

def RemovedBody562_100 : StackLang.HolProg 64 :=
.seq RemovedBody562_82 RemovedBody562_99

def RemovedBody562_101 : StackLang.HolProg 64 :=
.seq RemovedBody562_81 RemovedBody562_100

def RemovedBody562_102 : StackLang.HolProg 64 :=
.seq RemovedBody562_80 RemovedBody562_101

def RemovedBody562_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody562_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody562_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody562_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_110 : StackLang.HolProg 64 :=
.seq RemovedBody562_108 RemovedBody562_109

def RemovedBody562_111 : StackLang.HolProg 64 :=
.seq RemovedBody562_107 RemovedBody562_110

def RemovedBody562_112 : StackLang.HolProg 64 :=
.seq RemovedBody562_106 RemovedBody562_111

def RemovedBody562_113 : StackLang.HolProg 64 :=
.seq RemovedBody562_105 RemovedBody562_112

def RemovedBody562_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody562_116 : StackLang.HolProg 64 :=
.seq RemovedBody562_114 RemovedBody562_115

def RemovedBody562_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody562_113, 0, 562, 4)) (Sum.inl 477) (some (RemovedBody562_116, 562, 5))

def RemovedBody562_118 : StackLang.HolProg 64 :=
.seq RemovedBody562_104 RemovedBody562_117

def RemovedBody562_119 : StackLang.HolProg 64 :=
.seq RemovedBody562_103 RemovedBody562_118

def RemovedBody562_120 : StackLang.HolProg 64 :=
.seq RemovedBody562_102 RemovedBody562_119

def RemovedBody562_121 : StackLang.HolProg 64 :=
.seq RemovedBody562_73 RemovedBody562_120

def RemovedBody562_122 : StackLang.HolProg 64 :=
.seq RemovedBody562_70 RemovedBody562_121

def RemovedBody562_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody562_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody562_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1927#64)

def RemovedBody562_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody562_129 : StackLang.HolProg 64 :=
.seq RemovedBody562_127 RemovedBody562_128

def RemovedBody562_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody562_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody562_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody562_133 : StackLang.HolProg 64 :=
.seq RemovedBody562_131 RemovedBody562_132

def RemovedBody562_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody562_133 RemovedBody562_134

def RemovedBody562_136 : StackLang.HolProg 64 :=
.seq RemovedBody562_130 RemovedBody562_135

def RemovedBody562_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody562_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody562_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 562 7

def RemovedBody562_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody562_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody562_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody562_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody562_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody562_146 : StackLang.HolProg 64 :=
.seq RemovedBody562_144 RemovedBody562_145

def RemovedBody562_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody562_148 : StackLang.HolProg 64 :=
.seq RemovedBody562_146 RemovedBody562_147

def RemovedBody562_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody562_150 : StackLang.HolProg 64 :=
.seq RemovedBody562_148 RemovedBody562_149

def RemovedBody562_151 : StackLang.HolProg 64 :=
.seq RemovedBody562_143 RemovedBody562_150

def RemovedBody562_152 : StackLang.HolProg 64 :=
.seq RemovedBody562_142 RemovedBody562_151

def RemovedBody562_153 : StackLang.HolProg 64 :=
.seq RemovedBody562_141 RemovedBody562_152

def RemovedBody562_154 : StackLang.HolProg 64 :=
.seq RemovedBody562_140 RemovedBody562_153

def RemovedBody562_155 : StackLang.HolProg 64 :=
.seq RemovedBody562_139 RemovedBody562_154

def RemovedBody562_156 : StackLang.HolProg 64 :=
.seq RemovedBody562_138 RemovedBody562_155

def RemovedBody562_157 : StackLang.HolProg 64 :=
.seq RemovedBody562_137 RemovedBody562_156

def RemovedBody562_158 : StackLang.HolProg 64 :=
.seq RemovedBody562_136 RemovedBody562_157

def RemovedBody562_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody562_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody562_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody562_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody562_166 : StackLang.HolProg 64 :=
.seq RemovedBody562_164 RemovedBody562_165

def RemovedBody562_167 : StackLang.HolProg 64 :=
.seq RemovedBody562_163 RemovedBody562_166

def RemovedBody562_168 : StackLang.HolProg 64 :=
.seq RemovedBody562_162 RemovedBody562_167

def RemovedBody562_169 : StackLang.HolProg 64 :=
.seq RemovedBody562_161 RemovedBody562_168

def RemovedBody562_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody562_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody562_172 : StackLang.HolProg 64 :=
.seq RemovedBody562_170 RemovedBody562_171

def RemovedBody562_173 : StackLang.HolProg 64 :=
.call (some (RemovedBody562_169, 0, 562, 6)) (Sum.inl 490) (some (RemovedBody562_172, 562, 7))

def RemovedBody562_174 : StackLang.HolProg 64 :=
.seq RemovedBody562_160 RemovedBody562_173

def RemovedBody562_175 : StackLang.HolProg 64 :=
.seq RemovedBody562_159 RemovedBody562_174

def RemovedBody562_176 : StackLang.HolProg 64 :=
.seq RemovedBody562_158 RemovedBody562_175

def RemovedBody562_177 : StackLang.HolProg 64 :=
.seq RemovedBody562_129 RemovedBody562_176

def RemovedBody562_178 : StackLang.HolProg 64 :=
.seq RemovedBody562_126 RemovedBody562_177

def RemovedBody562_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody562_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody562_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody562_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody562_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody562_184 : StackLang.HolProg 64 :=
.seq RemovedBody562_182 RemovedBody562_183

def RemovedBody562_185 : StackLang.HolProg 64 :=
.seq RemovedBody562_181 RemovedBody562_184

def RemovedBody562_186 : StackLang.HolProg 64 :=
.seq RemovedBody562_180 RemovedBody562_185

def RemovedBody562_187 : StackLang.HolProg 64 :=
.seq RemovedBody562_179 RemovedBody562_186

def RemovedBody562_188 : StackLang.HolProg 64 :=
.seq RemovedBody562_178 RemovedBody562_187

def RemovedBody562_189 : StackLang.HolProg 64 :=
.seq RemovedBody562_125 RemovedBody562_188

def RemovedBody562_190 : StackLang.HolProg 64 :=
.seq RemovedBody562_124 RemovedBody562_189

def RemovedBody562_191 : StackLang.HolProg 64 :=
.seq RemovedBody562_123 RemovedBody562_190

def RemovedBody562_192 : StackLang.HolProg 64 :=
.seq RemovedBody562_122 RemovedBody562_191

def RemovedBody562_193 : StackLang.HolProg 64 :=
.seq RemovedBody562_69 RemovedBody562_192

def RemovedBody562_194 : StackLang.HolProg 64 :=
.seq RemovedBody562_68 RemovedBody562_193

def RemovedBody562_195 : StackLang.HolProg 64 :=
.seq RemovedBody562_67 RemovedBody562_194

def RemovedBody562_196 : StackLang.HolProg 64 :=
.seq RemovedBody562_66 RemovedBody562_195

def RemovedBody562_197 : StackLang.HolProg 64 :=
.seq RemovedBody562_65 RemovedBody562_196

def RemovedBody562_198 : StackLang.HolProg 64 :=
.seq RemovedBody562_64 RemovedBody562_197

def RemovedBody562_199 : StackLang.HolProg 64 :=
.seq RemovedBody562_63 RemovedBody562_198

def RemovedBody562_200 : StackLang.HolProg 64 :=
.seq RemovedBody562_62 RemovedBody562_199

def RemovedBody562_201 : StackLang.HolProg 64 :=
.seq RemovedBody562_9 RemovedBody562_200

def RemovedBody562_202 : StackLang.HolProg 64 :=
.seq RemovedBody562_8 RemovedBody562_201

def RemovedBody562_203 : StackLang.HolProg 64 :=
.seq RemovedBody562_7 RemovedBody562_202

def RemovedBody562_204 : StackLang.HolProg 64 :=
.seq RemovedBody562_6 RemovedBody562_203

def Removed562 : Nat × StackLang.HolProg 64 := (562, RemovedBody562_204)
theorem Removed562_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc562 = Removed562 := by
  kernel_rfl
#print axioms Removed562_eq
end InitECandidate.Proofs.BackendStages
