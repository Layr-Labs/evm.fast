import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc571
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody571_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody571_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody571_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody571_3 : StackLang.HolProg 64 :=
.seq RemovedBody571_1 RemovedBody571_2

def RemovedBody571_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody571_3 RemovedBody571_4

def RemovedBody571_6 : StackLang.HolProg 64 :=
.seq RemovedBody571_0 RemovedBody571_5

def RemovedBody571_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody571_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody571_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1988#64)

def RemovedBody571_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody571_13 : StackLang.HolProg 64 :=
.seq RemovedBody571_11 RemovedBody571_12

def RemovedBody571_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody571_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody571_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody571_17 : StackLang.HolProg 64 :=
.seq RemovedBody571_15 RemovedBody571_16

def RemovedBody571_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody571_17 RemovedBody571_18

def RemovedBody571_20 : StackLang.HolProg 64 :=
.seq RemovedBody571_14 RemovedBody571_19

def RemovedBody571_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody571_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody571_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 571 3

def RemovedBody571_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody571_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody571_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody571_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody571_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody571_30 : StackLang.HolProg 64 :=
.seq RemovedBody571_28 RemovedBody571_29

def RemovedBody571_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody571_32 : StackLang.HolProg 64 :=
.seq RemovedBody571_30 RemovedBody571_31

def RemovedBody571_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody571_34 : StackLang.HolProg 64 :=
.seq RemovedBody571_32 RemovedBody571_33

def RemovedBody571_35 : StackLang.HolProg 64 :=
.seq RemovedBody571_27 RemovedBody571_34

def RemovedBody571_36 : StackLang.HolProg 64 :=
.seq RemovedBody571_26 RemovedBody571_35

def RemovedBody571_37 : StackLang.HolProg 64 :=
.seq RemovedBody571_25 RemovedBody571_36

def RemovedBody571_38 : StackLang.HolProg 64 :=
.seq RemovedBody571_24 RemovedBody571_37

def RemovedBody571_39 : StackLang.HolProg 64 :=
.seq RemovedBody571_23 RemovedBody571_38

def RemovedBody571_40 : StackLang.HolProg 64 :=
.seq RemovedBody571_22 RemovedBody571_39

def RemovedBody571_41 : StackLang.HolProg 64 :=
.seq RemovedBody571_21 RemovedBody571_40

def RemovedBody571_42 : StackLang.HolProg 64 :=
.seq RemovedBody571_20 RemovedBody571_41

def RemovedBody571_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody571_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody571_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody571_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_50 : StackLang.HolProg 64 :=
.seq RemovedBody571_48 RemovedBody571_49

def RemovedBody571_51 : StackLang.HolProg 64 :=
.seq RemovedBody571_47 RemovedBody571_50

def RemovedBody571_52 : StackLang.HolProg 64 :=
.seq RemovedBody571_46 RemovedBody571_51

def RemovedBody571_53 : StackLang.HolProg 64 :=
.seq RemovedBody571_45 RemovedBody571_52

def RemovedBody571_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody571_56 : StackLang.HolProg 64 :=
.seq RemovedBody571_54 RemovedBody571_55

def RemovedBody571_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody571_53, 0, 571, 2)) (Sum.inl 470) (some (RemovedBody571_56, 571, 3))

def RemovedBody571_58 : StackLang.HolProg 64 :=
.seq RemovedBody571_44 RemovedBody571_57

def RemovedBody571_59 : StackLang.HolProg 64 :=
.seq RemovedBody571_43 RemovedBody571_58

def RemovedBody571_60 : StackLang.HolProg 64 :=
.seq RemovedBody571_42 RemovedBody571_59

def RemovedBody571_61 : StackLang.HolProg 64 :=
.seq RemovedBody571_13 RemovedBody571_60

def RemovedBody571_62 : StackLang.HolProg 64 :=
.seq RemovedBody571_10 RemovedBody571_61

def RemovedBody571_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody571_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody571_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody571_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody571_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody571_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def RemovedBody571_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody571_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1989#64)

def RemovedBody571_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody571_74 : StackLang.HolProg 64 :=
.seq RemovedBody571_72 RemovedBody571_73

def RemovedBody571_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody571_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody571_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody571_78 : StackLang.HolProg 64 :=
.seq RemovedBody571_76 RemovedBody571_77

def RemovedBody571_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody571_78 RemovedBody571_79

def RemovedBody571_81 : StackLang.HolProg 64 :=
.seq RemovedBody571_75 RemovedBody571_80

def RemovedBody571_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody571_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody571_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 571 5

def RemovedBody571_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody571_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody571_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody571_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody571_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody571_91 : StackLang.HolProg 64 :=
.seq RemovedBody571_89 RemovedBody571_90

def RemovedBody571_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody571_93 : StackLang.HolProg 64 :=
.seq RemovedBody571_91 RemovedBody571_92

def RemovedBody571_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody571_95 : StackLang.HolProg 64 :=
.seq RemovedBody571_93 RemovedBody571_94

def RemovedBody571_96 : StackLang.HolProg 64 :=
.seq RemovedBody571_88 RemovedBody571_95

def RemovedBody571_97 : StackLang.HolProg 64 :=
.seq RemovedBody571_87 RemovedBody571_96

def RemovedBody571_98 : StackLang.HolProg 64 :=
.seq RemovedBody571_86 RemovedBody571_97

def RemovedBody571_99 : StackLang.HolProg 64 :=
.seq RemovedBody571_85 RemovedBody571_98

def RemovedBody571_100 : StackLang.HolProg 64 :=
.seq RemovedBody571_84 RemovedBody571_99

def RemovedBody571_101 : StackLang.HolProg 64 :=
.seq RemovedBody571_83 RemovedBody571_100

def RemovedBody571_102 : StackLang.HolProg 64 :=
.seq RemovedBody571_82 RemovedBody571_101

def RemovedBody571_103 : StackLang.HolProg 64 :=
.seq RemovedBody571_81 RemovedBody571_102

def RemovedBody571_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody571_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody571_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody571_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody571_111 : StackLang.HolProg 64 :=
.seq RemovedBody571_109 RemovedBody571_110

def RemovedBody571_112 : StackLang.HolProg 64 :=
.seq RemovedBody571_108 RemovedBody571_111

def RemovedBody571_113 : StackLang.HolProg 64 :=
.seq RemovedBody571_107 RemovedBody571_112

def RemovedBody571_114 : StackLang.HolProg 64 :=
.seq RemovedBody571_106 RemovedBody571_113

def RemovedBody571_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody571_117 : StackLang.HolProg 64 :=
.seq RemovedBody571_115 RemovedBody571_116

def RemovedBody571_118 : StackLang.HolProg 64 :=
.call (some (RemovedBody571_114, 0, 571, 4)) (Sum.inl 407) (some (RemovedBody571_117, 571, 5))

def RemovedBody571_119 : StackLang.HolProg 64 :=
.seq RemovedBody571_105 RemovedBody571_118

def RemovedBody571_120 : StackLang.HolProg 64 :=
.seq RemovedBody571_104 RemovedBody571_119

def RemovedBody571_121 : StackLang.HolProg 64 :=
.seq RemovedBody571_103 RemovedBody571_120

def RemovedBody571_122 : StackLang.HolProg 64 :=
.seq RemovedBody571_74 RemovedBody571_121

def RemovedBody571_123 : StackLang.HolProg 64 :=
.seq RemovedBody571_71 RemovedBody571_122

def RemovedBody571_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody571_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody571_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody571_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody571_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody571_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1990#64)

def RemovedBody571_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody571_137 : StackLang.HolProg 64 :=
.seq RemovedBody571_135 RemovedBody571_136

def RemovedBody571_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody571_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody571_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody571_141 : StackLang.HolProg 64 :=
.seq RemovedBody571_139 RemovedBody571_140

def RemovedBody571_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_143 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody571_141 RemovedBody571_142

def RemovedBody571_144 : StackLang.HolProg 64 :=
.seq RemovedBody571_138 RemovedBody571_143

def RemovedBody571_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody571_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody571_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 571 7

def RemovedBody571_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody571_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody571_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody571_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody571_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody571_154 : StackLang.HolProg 64 :=
.seq RemovedBody571_152 RemovedBody571_153

def RemovedBody571_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody571_156 : StackLang.HolProg 64 :=
.seq RemovedBody571_154 RemovedBody571_155

def RemovedBody571_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody571_158 : StackLang.HolProg 64 :=
.seq RemovedBody571_156 RemovedBody571_157

def RemovedBody571_159 : StackLang.HolProg 64 :=
.seq RemovedBody571_151 RemovedBody571_158

def RemovedBody571_160 : StackLang.HolProg 64 :=
.seq RemovedBody571_150 RemovedBody571_159

def RemovedBody571_161 : StackLang.HolProg 64 :=
.seq RemovedBody571_149 RemovedBody571_160

def RemovedBody571_162 : StackLang.HolProg 64 :=
.seq RemovedBody571_148 RemovedBody571_161

def RemovedBody571_163 : StackLang.HolProg 64 :=
.seq RemovedBody571_147 RemovedBody571_162

def RemovedBody571_164 : StackLang.HolProg 64 :=
.seq RemovedBody571_146 RemovedBody571_163

def RemovedBody571_165 : StackLang.HolProg 64 :=
.seq RemovedBody571_145 RemovedBody571_164

def RemovedBody571_166 : StackLang.HolProg 64 :=
.seq RemovedBody571_144 RemovedBody571_165

def RemovedBody571_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody571_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody571_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody571_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_174 : StackLang.HolProg 64 :=
.seq RemovedBody571_172 RemovedBody571_173

def RemovedBody571_175 : StackLang.HolProg 64 :=
.seq RemovedBody571_171 RemovedBody571_174

def RemovedBody571_176 : StackLang.HolProg 64 :=
.seq RemovedBody571_170 RemovedBody571_175

def RemovedBody571_177 : StackLang.HolProg 64 :=
.seq RemovedBody571_169 RemovedBody571_176

def RemovedBody571_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_179 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody571_180 : StackLang.HolProg 64 :=
.seq RemovedBody571_178 RemovedBody571_179

def RemovedBody571_181 : StackLang.HolProg 64 :=
.call (some (RemovedBody571_177, 0, 571, 6)) (Sum.inl 476) (some (RemovedBody571_180, 571, 7))

def RemovedBody571_182 : StackLang.HolProg 64 :=
.seq RemovedBody571_168 RemovedBody571_181

def RemovedBody571_183 : StackLang.HolProg 64 :=
.seq RemovedBody571_167 RemovedBody571_182

def RemovedBody571_184 : StackLang.HolProg 64 :=
.seq RemovedBody571_166 RemovedBody571_183

def RemovedBody571_185 : StackLang.HolProg 64 :=
.seq RemovedBody571_137 RemovedBody571_184

def RemovedBody571_186 : StackLang.HolProg 64 :=
.seq RemovedBody571_134 RemovedBody571_185

def RemovedBody571_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody571_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody571_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1991#64)

def RemovedBody571_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody571_193 : StackLang.HolProg 64 :=
.seq RemovedBody571_191 RemovedBody571_192

def RemovedBody571_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody571_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody571_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody571_197 : StackLang.HolProg 64 :=
.seq RemovedBody571_195 RemovedBody571_196

def RemovedBody571_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_199 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody571_197 RemovedBody571_198

def RemovedBody571_200 : StackLang.HolProg 64 :=
.seq RemovedBody571_194 RemovedBody571_199

def RemovedBody571_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody571_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody571_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 571 9

def RemovedBody571_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody571_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody571_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody571_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody571_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody571_210 : StackLang.HolProg 64 :=
.seq RemovedBody571_208 RemovedBody571_209

def RemovedBody571_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody571_212 : StackLang.HolProg 64 :=
.seq RemovedBody571_210 RemovedBody571_211

def RemovedBody571_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody571_214 : StackLang.HolProg 64 :=
.seq RemovedBody571_212 RemovedBody571_213

def RemovedBody571_215 : StackLang.HolProg 64 :=
.seq RemovedBody571_207 RemovedBody571_214

def RemovedBody571_216 : StackLang.HolProg 64 :=
.seq RemovedBody571_206 RemovedBody571_215

def RemovedBody571_217 : StackLang.HolProg 64 :=
.seq RemovedBody571_205 RemovedBody571_216

def RemovedBody571_218 : StackLang.HolProg 64 :=
.seq RemovedBody571_204 RemovedBody571_217

def RemovedBody571_219 : StackLang.HolProg 64 :=
.seq RemovedBody571_203 RemovedBody571_218

def RemovedBody571_220 : StackLang.HolProg 64 :=
.seq RemovedBody571_202 RemovedBody571_219

def RemovedBody571_221 : StackLang.HolProg 64 :=
.seq RemovedBody571_201 RemovedBody571_220

def RemovedBody571_222 : StackLang.HolProg 64 :=
.seq RemovedBody571_200 RemovedBody571_221

def RemovedBody571_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody571_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody571_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody571_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody571_230 : StackLang.HolProg 64 :=
.seq RemovedBody571_228 RemovedBody571_229

def RemovedBody571_231 : StackLang.HolProg 64 :=
.seq RemovedBody571_227 RemovedBody571_230

def RemovedBody571_232 : StackLang.HolProg 64 :=
.seq RemovedBody571_226 RemovedBody571_231

def RemovedBody571_233 : StackLang.HolProg 64 :=
.seq RemovedBody571_225 RemovedBody571_232

def RemovedBody571_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody571_235 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody571_236 : StackLang.HolProg 64 :=
.seq RemovedBody571_234 RemovedBody571_235

def RemovedBody571_237 : StackLang.HolProg 64 :=
.call (some (RemovedBody571_233, 0, 571, 8)) (Sum.inl 490) (some (RemovedBody571_236, 571, 9))

def RemovedBody571_238 : StackLang.HolProg 64 :=
.seq RemovedBody571_224 RemovedBody571_237

def RemovedBody571_239 : StackLang.HolProg 64 :=
.seq RemovedBody571_223 RemovedBody571_238

def RemovedBody571_240 : StackLang.HolProg 64 :=
.seq RemovedBody571_222 RemovedBody571_239

def RemovedBody571_241 : StackLang.HolProg 64 :=
.seq RemovedBody571_193 RemovedBody571_240

def RemovedBody571_242 : StackLang.HolProg 64 :=
.seq RemovedBody571_190 RemovedBody571_241

def RemovedBody571_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody571_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody571_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody571_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody571_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody571_248 : StackLang.HolProg 64 :=
.seq RemovedBody571_246 RemovedBody571_247

def RemovedBody571_249 : StackLang.HolProg 64 :=
.seq RemovedBody571_245 RemovedBody571_248

def RemovedBody571_250 : StackLang.HolProg 64 :=
.seq RemovedBody571_244 RemovedBody571_249

def RemovedBody571_251 : StackLang.HolProg 64 :=
.seq RemovedBody571_243 RemovedBody571_250

def RemovedBody571_252 : StackLang.HolProg 64 :=
.seq RemovedBody571_242 RemovedBody571_251

def RemovedBody571_253 : StackLang.HolProg 64 :=
.seq RemovedBody571_189 RemovedBody571_252

def RemovedBody571_254 : StackLang.HolProg 64 :=
.seq RemovedBody571_188 RemovedBody571_253

def RemovedBody571_255 : StackLang.HolProg 64 :=
.seq RemovedBody571_187 RemovedBody571_254

def RemovedBody571_256 : StackLang.HolProg 64 :=
.seq RemovedBody571_186 RemovedBody571_255

def RemovedBody571_257 : StackLang.HolProg 64 :=
.seq RemovedBody571_133 RemovedBody571_256

def RemovedBody571_258 : StackLang.HolProg 64 :=
.seq RemovedBody571_132 RemovedBody571_257

def RemovedBody571_259 : StackLang.HolProg 64 :=
.seq RemovedBody571_131 RemovedBody571_258

def RemovedBody571_260 : StackLang.HolProg 64 :=
.seq RemovedBody571_130 RemovedBody571_259

def RemovedBody571_261 : StackLang.HolProg 64 :=
.seq RemovedBody571_129 RemovedBody571_260

def RemovedBody571_262 : StackLang.HolProg 64 :=
.seq RemovedBody571_128 RemovedBody571_261

def RemovedBody571_263 : StackLang.HolProg 64 :=
.seq RemovedBody571_127 RemovedBody571_262

def RemovedBody571_264 : StackLang.HolProg 64 :=
.seq RemovedBody571_126 RemovedBody571_263

def RemovedBody571_265 : StackLang.HolProg 64 :=
.seq RemovedBody571_125 RemovedBody571_264

def RemovedBody571_266 : StackLang.HolProg 64 :=
.seq RemovedBody571_124 RemovedBody571_265

def RemovedBody571_267 : StackLang.HolProg 64 :=
.seq RemovedBody571_123 RemovedBody571_266

def RemovedBody571_268 : StackLang.HolProg 64 :=
.seq RemovedBody571_70 RemovedBody571_267

def RemovedBody571_269 : StackLang.HolProg 64 :=
.seq RemovedBody571_69 RemovedBody571_268

def RemovedBody571_270 : StackLang.HolProg 64 :=
.seq RemovedBody571_68 RemovedBody571_269

def RemovedBody571_271 : StackLang.HolProg 64 :=
.seq RemovedBody571_67 RemovedBody571_270

def RemovedBody571_272 : StackLang.HolProg 64 :=
.seq RemovedBody571_66 RemovedBody571_271

def RemovedBody571_273 : StackLang.HolProg 64 :=
.seq RemovedBody571_65 RemovedBody571_272

def RemovedBody571_274 : StackLang.HolProg 64 :=
.seq RemovedBody571_64 RemovedBody571_273

def RemovedBody571_275 : StackLang.HolProg 64 :=
.seq RemovedBody571_63 RemovedBody571_274

def RemovedBody571_276 : StackLang.HolProg 64 :=
.seq RemovedBody571_62 RemovedBody571_275

def RemovedBody571_277 : StackLang.HolProg 64 :=
.seq RemovedBody571_9 RemovedBody571_276

def RemovedBody571_278 : StackLang.HolProg 64 :=
.seq RemovedBody571_8 RemovedBody571_277

def RemovedBody571_279 : StackLang.HolProg 64 :=
.seq RemovedBody571_7 RemovedBody571_278

def RemovedBody571_280 : StackLang.HolProg 64 :=
.seq RemovedBody571_6 RemovedBody571_279

def Removed571 : Nat × StackLang.HolProg 64 := (571, RemovedBody571_280)
theorem Removed571_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc571 = Removed571 := by
  kernel_rfl
#print axioms Removed571_eq
end InitECandidate.Proofs.BackendStages
