import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc556
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody556_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody556_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody556_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody556_3 : StackLang.HolProg 64 :=
.seq RemovedBody556_1 RemovedBody556_2

def RemovedBody556_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody556_3 RemovedBody556_4

def RemovedBody556_6 : StackLang.HolProg 64 :=
.seq RemovedBody556_0 RemovedBody556_5

def RemovedBody556_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody556_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody556_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1891#64)

def RemovedBody556_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody556_13 : StackLang.HolProg 64 :=
.seq RemovedBody556_11 RemovedBody556_12

def RemovedBody556_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody556_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody556_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody556_17 : StackLang.HolProg 64 :=
.seq RemovedBody556_15 RemovedBody556_16

def RemovedBody556_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody556_17 RemovedBody556_18

def RemovedBody556_20 : StackLang.HolProg 64 :=
.seq RemovedBody556_14 RemovedBody556_19

def RemovedBody556_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody556_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody556_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 3

def RemovedBody556_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody556_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody556_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody556_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody556_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody556_30 : StackLang.HolProg 64 :=
.seq RemovedBody556_28 RemovedBody556_29

def RemovedBody556_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody556_32 : StackLang.HolProg 64 :=
.seq RemovedBody556_30 RemovedBody556_31

def RemovedBody556_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody556_34 : StackLang.HolProg 64 :=
.seq RemovedBody556_32 RemovedBody556_33

def RemovedBody556_35 : StackLang.HolProg 64 :=
.seq RemovedBody556_27 RemovedBody556_34

def RemovedBody556_36 : StackLang.HolProg 64 :=
.seq RemovedBody556_26 RemovedBody556_35

def RemovedBody556_37 : StackLang.HolProg 64 :=
.seq RemovedBody556_25 RemovedBody556_36

def RemovedBody556_38 : StackLang.HolProg 64 :=
.seq RemovedBody556_24 RemovedBody556_37

def RemovedBody556_39 : StackLang.HolProg 64 :=
.seq RemovedBody556_23 RemovedBody556_38

def RemovedBody556_40 : StackLang.HolProg 64 :=
.seq RemovedBody556_22 RemovedBody556_39

def RemovedBody556_41 : StackLang.HolProg 64 :=
.seq RemovedBody556_21 RemovedBody556_40

def RemovedBody556_42 : StackLang.HolProg 64 :=
.seq RemovedBody556_20 RemovedBody556_41

def RemovedBody556_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody556_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody556_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody556_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_50 : StackLang.HolProg 64 :=
.seq RemovedBody556_48 RemovedBody556_49

def RemovedBody556_51 : StackLang.HolProg 64 :=
.seq RemovedBody556_47 RemovedBody556_50

def RemovedBody556_52 : StackLang.HolProg 64 :=
.seq RemovedBody556_46 RemovedBody556_51

def RemovedBody556_53 : StackLang.HolProg 64 :=
.seq RemovedBody556_45 RemovedBody556_52

def RemovedBody556_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody556_56 : StackLang.HolProg 64 :=
.seq RemovedBody556_54 RemovedBody556_55

def RemovedBody556_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody556_53, 0, 556, 2)) (Sum.inl 470) (some (RemovedBody556_56, 556, 3))

def RemovedBody556_58 : StackLang.HolProg 64 :=
.seq RemovedBody556_44 RemovedBody556_57

def RemovedBody556_59 : StackLang.HolProg 64 :=
.seq RemovedBody556_43 RemovedBody556_58

def RemovedBody556_60 : StackLang.HolProg 64 :=
.seq RemovedBody556_42 RemovedBody556_59

def RemovedBody556_61 : StackLang.HolProg 64 :=
.seq RemovedBody556_13 RemovedBody556_60

def RemovedBody556_62 : StackLang.HolProg 64 :=
.seq RemovedBody556_10 RemovedBody556_61

def RemovedBody556_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody556_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody556_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody556_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody556_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody556_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def RemovedBody556_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody556_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1892#64)

def RemovedBody556_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody556_74 : StackLang.HolProg 64 :=
.seq RemovedBody556_72 RemovedBody556_73

def RemovedBody556_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody556_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody556_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody556_78 : StackLang.HolProg 64 :=
.seq RemovedBody556_76 RemovedBody556_77

def RemovedBody556_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody556_78 RemovedBody556_79

def RemovedBody556_81 : StackLang.HolProg 64 :=
.seq RemovedBody556_75 RemovedBody556_80

def RemovedBody556_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody556_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody556_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 5

def RemovedBody556_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody556_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody556_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody556_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody556_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody556_91 : StackLang.HolProg 64 :=
.seq RemovedBody556_89 RemovedBody556_90

def RemovedBody556_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody556_93 : StackLang.HolProg 64 :=
.seq RemovedBody556_91 RemovedBody556_92

def RemovedBody556_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody556_95 : StackLang.HolProg 64 :=
.seq RemovedBody556_93 RemovedBody556_94

def RemovedBody556_96 : StackLang.HolProg 64 :=
.seq RemovedBody556_88 RemovedBody556_95

def RemovedBody556_97 : StackLang.HolProg 64 :=
.seq RemovedBody556_87 RemovedBody556_96

def RemovedBody556_98 : StackLang.HolProg 64 :=
.seq RemovedBody556_86 RemovedBody556_97

def RemovedBody556_99 : StackLang.HolProg 64 :=
.seq RemovedBody556_85 RemovedBody556_98

def RemovedBody556_100 : StackLang.HolProg 64 :=
.seq RemovedBody556_84 RemovedBody556_99

def RemovedBody556_101 : StackLang.HolProg 64 :=
.seq RemovedBody556_83 RemovedBody556_100

def RemovedBody556_102 : StackLang.HolProg 64 :=
.seq RemovedBody556_82 RemovedBody556_101

def RemovedBody556_103 : StackLang.HolProg 64 :=
.seq RemovedBody556_81 RemovedBody556_102

def RemovedBody556_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody556_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody556_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody556_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody556_111 : StackLang.HolProg 64 :=
.seq RemovedBody556_109 RemovedBody556_110

def RemovedBody556_112 : StackLang.HolProg 64 :=
.seq RemovedBody556_108 RemovedBody556_111

def RemovedBody556_113 : StackLang.HolProg 64 :=
.seq RemovedBody556_107 RemovedBody556_112

def RemovedBody556_114 : StackLang.HolProg 64 :=
.seq RemovedBody556_106 RemovedBody556_113

def RemovedBody556_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody556_117 : StackLang.HolProg 64 :=
.seq RemovedBody556_115 RemovedBody556_116

def RemovedBody556_118 : StackLang.HolProg 64 :=
.call (some (RemovedBody556_114, 0, 556, 4)) (Sum.inl 467) (some (RemovedBody556_117, 556, 5))

def RemovedBody556_119 : StackLang.HolProg 64 :=
.seq RemovedBody556_105 RemovedBody556_118

def RemovedBody556_120 : StackLang.HolProg 64 :=
.seq RemovedBody556_104 RemovedBody556_119

def RemovedBody556_121 : StackLang.HolProg 64 :=
.seq RemovedBody556_103 RemovedBody556_120

def RemovedBody556_122 : StackLang.HolProg 64 :=
.seq RemovedBody556_74 RemovedBody556_121

def RemovedBody556_123 : StackLang.HolProg 64 :=
.seq RemovedBody556_71 RemovedBody556_122

def RemovedBody556_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody556_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody556_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1893#64)

def RemovedBody556_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody556_129 : StackLang.HolProg 64 :=
.seq RemovedBody556_127 RemovedBody556_128

def RemovedBody556_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody556_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody556_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody556_133 : StackLang.HolProg 64 :=
.seq RemovedBody556_131 RemovedBody556_132

def RemovedBody556_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody556_133 RemovedBody556_134

def RemovedBody556_136 : StackLang.HolProg 64 :=
.seq RemovedBody556_130 RemovedBody556_135

def RemovedBody556_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody556_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody556_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 7

def RemovedBody556_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody556_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody556_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody556_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody556_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody556_146 : StackLang.HolProg 64 :=
.seq RemovedBody556_144 RemovedBody556_145

def RemovedBody556_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody556_148 : StackLang.HolProg 64 :=
.seq RemovedBody556_146 RemovedBody556_147

def RemovedBody556_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody556_150 : StackLang.HolProg 64 :=
.seq RemovedBody556_148 RemovedBody556_149

def RemovedBody556_151 : StackLang.HolProg 64 :=
.seq RemovedBody556_143 RemovedBody556_150

def RemovedBody556_152 : StackLang.HolProg 64 :=
.seq RemovedBody556_142 RemovedBody556_151

def RemovedBody556_153 : StackLang.HolProg 64 :=
.seq RemovedBody556_141 RemovedBody556_152

def RemovedBody556_154 : StackLang.HolProg 64 :=
.seq RemovedBody556_140 RemovedBody556_153

def RemovedBody556_155 : StackLang.HolProg 64 :=
.seq RemovedBody556_139 RemovedBody556_154

def RemovedBody556_156 : StackLang.HolProg 64 :=
.seq RemovedBody556_138 RemovedBody556_155

def RemovedBody556_157 : StackLang.HolProg 64 :=
.seq RemovedBody556_137 RemovedBody556_156

def RemovedBody556_158 : StackLang.HolProg 64 :=
.seq RemovedBody556_136 RemovedBody556_157

def RemovedBody556_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody556_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody556_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody556_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_166 : StackLang.HolProg 64 :=
.seq RemovedBody556_164 RemovedBody556_165

def RemovedBody556_167 : StackLang.HolProg 64 :=
.seq RemovedBody556_163 RemovedBody556_166

def RemovedBody556_168 : StackLang.HolProg 64 :=
.seq RemovedBody556_162 RemovedBody556_167

def RemovedBody556_169 : StackLang.HolProg 64 :=
.seq RemovedBody556_161 RemovedBody556_168

def RemovedBody556_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody556_172 : StackLang.HolProg 64 :=
.seq RemovedBody556_170 RemovedBody556_171

def RemovedBody556_173 : StackLang.HolProg 64 :=
.call (some (RemovedBody556_169, 0, 556, 6)) (Sum.inl 476) (some (RemovedBody556_172, 556, 7))

def RemovedBody556_174 : StackLang.HolProg 64 :=
.seq RemovedBody556_160 RemovedBody556_173

def RemovedBody556_175 : StackLang.HolProg 64 :=
.seq RemovedBody556_159 RemovedBody556_174

def RemovedBody556_176 : StackLang.HolProg 64 :=
.seq RemovedBody556_158 RemovedBody556_175

def RemovedBody556_177 : StackLang.HolProg 64 :=
.seq RemovedBody556_129 RemovedBody556_176

def RemovedBody556_178 : StackLang.HolProg 64 :=
.seq RemovedBody556_126 RemovedBody556_177

def RemovedBody556_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody556_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody556_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1894#64)

def RemovedBody556_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody556_185 : StackLang.HolProg 64 :=
.seq RemovedBody556_183 RemovedBody556_184

def RemovedBody556_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody556_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody556_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody556_189 : StackLang.HolProg 64 :=
.seq RemovedBody556_187 RemovedBody556_188

def RemovedBody556_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_191 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody556_189 RemovedBody556_190

def RemovedBody556_192 : StackLang.HolProg 64 :=
.seq RemovedBody556_186 RemovedBody556_191

def RemovedBody556_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody556_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody556_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 9

def RemovedBody556_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody556_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody556_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody556_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody556_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody556_202 : StackLang.HolProg 64 :=
.seq RemovedBody556_200 RemovedBody556_201

def RemovedBody556_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody556_204 : StackLang.HolProg 64 :=
.seq RemovedBody556_202 RemovedBody556_203

def RemovedBody556_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody556_206 : StackLang.HolProg 64 :=
.seq RemovedBody556_204 RemovedBody556_205

def RemovedBody556_207 : StackLang.HolProg 64 :=
.seq RemovedBody556_199 RemovedBody556_206

def RemovedBody556_208 : StackLang.HolProg 64 :=
.seq RemovedBody556_198 RemovedBody556_207

def RemovedBody556_209 : StackLang.HolProg 64 :=
.seq RemovedBody556_197 RemovedBody556_208

def RemovedBody556_210 : StackLang.HolProg 64 :=
.seq RemovedBody556_196 RemovedBody556_209

def RemovedBody556_211 : StackLang.HolProg 64 :=
.seq RemovedBody556_195 RemovedBody556_210

def RemovedBody556_212 : StackLang.HolProg 64 :=
.seq RemovedBody556_194 RemovedBody556_211

def RemovedBody556_213 : StackLang.HolProg 64 :=
.seq RemovedBody556_193 RemovedBody556_212

def RemovedBody556_214 : StackLang.HolProg 64 :=
.seq RemovedBody556_192 RemovedBody556_213

def RemovedBody556_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody556_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody556_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody556_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody556_222 : StackLang.HolProg 64 :=
.seq RemovedBody556_220 RemovedBody556_221

def RemovedBody556_223 : StackLang.HolProg 64 :=
.seq RemovedBody556_219 RemovedBody556_222

def RemovedBody556_224 : StackLang.HolProg 64 :=
.seq RemovedBody556_218 RemovedBody556_223

def RemovedBody556_225 : StackLang.HolProg 64 :=
.seq RemovedBody556_217 RemovedBody556_224

def RemovedBody556_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody556_227 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody556_228 : StackLang.HolProg 64 :=
.seq RemovedBody556_226 RemovedBody556_227

def RemovedBody556_229 : StackLang.HolProg 64 :=
.call (some (RemovedBody556_225, 0, 556, 8)) (Sum.inl 490) (some (RemovedBody556_228, 556, 9))

def RemovedBody556_230 : StackLang.HolProg 64 :=
.seq RemovedBody556_216 RemovedBody556_229

def RemovedBody556_231 : StackLang.HolProg 64 :=
.seq RemovedBody556_215 RemovedBody556_230

def RemovedBody556_232 : StackLang.HolProg 64 :=
.seq RemovedBody556_214 RemovedBody556_231

def RemovedBody556_233 : StackLang.HolProg 64 :=
.seq RemovedBody556_185 RemovedBody556_232

def RemovedBody556_234 : StackLang.HolProg 64 :=
.seq RemovedBody556_182 RemovedBody556_233

def RemovedBody556_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody556_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody556_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody556_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody556_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody556_240 : StackLang.HolProg 64 :=
.seq RemovedBody556_238 RemovedBody556_239

def RemovedBody556_241 : StackLang.HolProg 64 :=
.seq RemovedBody556_237 RemovedBody556_240

def RemovedBody556_242 : StackLang.HolProg 64 :=
.seq RemovedBody556_236 RemovedBody556_241

def RemovedBody556_243 : StackLang.HolProg 64 :=
.seq RemovedBody556_235 RemovedBody556_242

def RemovedBody556_244 : StackLang.HolProg 64 :=
.seq RemovedBody556_234 RemovedBody556_243

def RemovedBody556_245 : StackLang.HolProg 64 :=
.seq RemovedBody556_181 RemovedBody556_244

def RemovedBody556_246 : StackLang.HolProg 64 :=
.seq RemovedBody556_180 RemovedBody556_245

def RemovedBody556_247 : StackLang.HolProg 64 :=
.seq RemovedBody556_179 RemovedBody556_246

def RemovedBody556_248 : StackLang.HolProg 64 :=
.seq RemovedBody556_178 RemovedBody556_247

def RemovedBody556_249 : StackLang.HolProg 64 :=
.seq RemovedBody556_125 RemovedBody556_248

def RemovedBody556_250 : StackLang.HolProg 64 :=
.seq RemovedBody556_124 RemovedBody556_249

def RemovedBody556_251 : StackLang.HolProg 64 :=
.seq RemovedBody556_123 RemovedBody556_250

def RemovedBody556_252 : StackLang.HolProg 64 :=
.seq RemovedBody556_70 RemovedBody556_251

def RemovedBody556_253 : StackLang.HolProg 64 :=
.seq RemovedBody556_69 RemovedBody556_252

def RemovedBody556_254 : StackLang.HolProg 64 :=
.seq RemovedBody556_68 RemovedBody556_253

def RemovedBody556_255 : StackLang.HolProg 64 :=
.seq RemovedBody556_67 RemovedBody556_254

def RemovedBody556_256 : StackLang.HolProg 64 :=
.seq RemovedBody556_66 RemovedBody556_255

def RemovedBody556_257 : StackLang.HolProg 64 :=
.seq RemovedBody556_65 RemovedBody556_256

def RemovedBody556_258 : StackLang.HolProg 64 :=
.seq RemovedBody556_64 RemovedBody556_257

def RemovedBody556_259 : StackLang.HolProg 64 :=
.seq RemovedBody556_63 RemovedBody556_258

def RemovedBody556_260 : StackLang.HolProg 64 :=
.seq RemovedBody556_62 RemovedBody556_259

def RemovedBody556_261 : StackLang.HolProg 64 :=
.seq RemovedBody556_9 RemovedBody556_260

def RemovedBody556_262 : StackLang.HolProg 64 :=
.seq RemovedBody556_8 RemovedBody556_261

def RemovedBody556_263 : StackLang.HolProg 64 :=
.seq RemovedBody556_7 RemovedBody556_262

def RemovedBody556_264 : StackLang.HolProg 64 :=
.seq RemovedBody556_6 RemovedBody556_263

def Removed556 : Nat × StackLang.HolProg 64 := (556, RemovedBody556_264)
theorem Removed556_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc556 = Removed556 := by
  kernel_rfl
#print axioms Removed556_eq
end InitECandidate.Proofs.BackendStages
