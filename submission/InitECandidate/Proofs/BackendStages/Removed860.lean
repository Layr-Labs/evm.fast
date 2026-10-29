import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc860
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody860_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody860_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody860_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody860_3 : StackLang.HolProg 64 :=
.seq RemovedBody860_1 RemovedBody860_2

def RemovedBody860_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody860_3 RemovedBody860_4

def RemovedBody860_6 : StackLang.HolProg 64 :=
.seq RemovedBody860_0 RemovedBody860_5

def RemovedBody860_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody860_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody860_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_11 : StackLang.HolProg 64 :=
.seq RemovedBody860_9 RemovedBody860_10

def RemovedBody860_12 : StackLang.HolProg 64 :=
.seq RemovedBody860_8 RemovedBody860_11

def RemovedBody860_13 : StackLang.HolProg 64 :=
.seq RemovedBody860_7 RemovedBody860_12

def RemovedBody860_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4366#64)

def RemovedBody860_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_17 : StackLang.HolProg 64 :=
.seq RemovedBody860_15 RemovedBody860_16

def RemovedBody860_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody860_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody860_21 : StackLang.HolProg 64 :=
.seq RemovedBody860_19 RemovedBody860_20

def RemovedBody860_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody860_21 RemovedBody860_22

def RemovedBody860_24 : StackLang.HolProg 64 :=
.seq RemovedBody860_18 RemovedBody860_23

def RemovedBody860_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody860_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 3

def RemovedBody860_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody860_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody860_34 : StackLang.HolProg 64 :=
.seq RemovedBody860_32 RemovedBody860_33

def RemovedBody860_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody860_36 : StackLang.HolProg 64 :=
.seq RemovedBody860_34 RemovedBody860_35

def RemovedBody860_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_38 : StackLang.HolProg 64 :=
.seq RemovedBody860_36 RemovedBody860_37

def RemovedBody860_39 : StackLang.HolProg 64 :=
.seq RemovedBody860_31 RemovedBody860_38

def RemovedBody860_40 : StackLang.HolProg 64 :=
.seq RemovedBody860_30 RemovedBody860_39

def RemovedBody860_41 : StackLang.HolProg 64 :=
.seq RemovedBody860_29 RemovedBody860_40

def RemovedBody860_42 : StackLang.HolProg 64 :=
.seq RemovedBody860_28 RemovedBody860_41

def RemovedBody860_43 : StackLang.HolProg 64 :=
.seq RemovedBody860_27 RemovedBody860_42

def RemovedBody860_44 : StackLang.HolProg 64 :=
.seq RemovedBody860_26 RemovedBody860_43

def RemovedBody860_45 : StackLang.HolProg 64 :=
.seq RemovedBody860_25 RemovedBody860_44

def RemovedBody860_46 : StackLang.HolProg 64 :=
.seq RemovedBody860_24 RemovedBody860_45

def RemovedBody860_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody860_54 : StackLang.HolProg 64 :=
.seq RemovedBody860_52 RemovedBody860_53

def RemovedBody860_55 : StackLang.HolProg 64 :=
.seq RemovedBody860_51 RemovedBody860_54

def RemovedBody860_56 : StackLang.HolProg 64 :=
.seq RemovedBody860_50 RemovedBody860_55

def RemovedBody860_57 : StackLang.HolProg 64 :=
.seq RemovedBody860_49 RemovedBody860_56

def RemovedBody860_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody860_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody860_60 : StackLang.HolProg 64 :=
.seq RemovedBody860_58 RemovedBody860_59

def RemovedBody860_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody860_57, 0, 860, 2)) (Sum.inl 387) (some (RemovedBody860_60, 860, 3))

def RemovedBody860_62 : StackLang.HolProg 64 :=
.seq RemovedBody860_48 RemovedBody860_61

def RemovedBody860_63 : StackLang.HolProg 64 :=
.seq RemovedBody860_47 RemovedBody860_62

def RemovedBody860_64 : StackLang.HolProg 64 :=
.seq RemovedBody860_46 RemovedBody860_63

def RemovedBody860_65 : StackLang.HolProg 64 :=
.seq RemovedBody860_17 RemovedBody860_64

def RemovedBody860_66 : StackLang.HolProg 64 :=
.seq RemovedBody860_14 RemovedBody860_65

def RemovedBody860_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody860_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody860_70 : StackLang.HolProg 64 :=
.seq RemovedBody860_68 RemovedBody860_69

def RemovedBody860_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4367#64)

def RemovedBody860_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_74 : StackLang.HolProg 64 :=
.seq RemovedBody860_72 RemovedBody860_73

def RemovedBody860_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody860_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody860_78 : StackLang.HolProg 64 :=
.seq RemovedBody860_76 RemovedBody860_77

def RemovedBody860_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody860_78 RemovedBody860_79

def RemovedBody860_81 : StackLang.HolProg 64 :=
.seq RemovedBody860_75 RemovedBody860_80

def RemovedBody860_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody860_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 5

def RemovedBody860_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody860_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody860_91 : StackLang.HolProg 64 :=
.seq RemovedBody860_89 RemovedBody860_90

def RemovedBody860_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody860_93 : StackLang.HolProg 64 :=
.seq RemovedBody860_91 RemovedBody860_92

def RemovedBody860_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_95 : StackLang.HolProg 64 :=
.seq RemovedBody860_93 RemovedBody860_94

def RemovedBody860_96 : StackLang.HolProg 64 :=
.seq RemovedBody860_88 RemovedBody860_95

def RemovedBody860_97 : StackLang.HolProg 64 :=
.seq RemovedBody860_87 RemovedBody860_96

def RemovedBody860_98 : StackLang.HolProg 64 :=
.seq RemovedBody860_86 RemovedBody860_97

def RemovedBody860_99 : StackLang.HolProg 64 :=
.seq RemovedBody860_85 RemovedBody860_98

def RemovedBody860_100 : StackLang.HolProg 64 :=
.seq RemovedBody860_84 RemovedBody860_99

def RemovedBody860_101 : StackLang.HolProg 64 :=
.seq RemovedBody860_83 RemovedBody860_100

def RemovedBody860_102 : StackLang.HolProg 64 :=
.seq RemovedBody860_82 RemovedBody860_101

def RemovedBody860_103 : StackLang.HolProg 64 :=
.seq RemovedBody860_81 RemovedBody860_102

def RemovedBody860_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody860_111 : StackLang.HolProg 64 :=
.seq RemovedBody860_109 RemovedBody860_110

def RemovedBody860_112 : StackLang.HolProg 64 :=
.seq RemovedBody860_108 RemovedBody860_111

def RemovedBody860_113 : StackLang.HolProg 64 :=
.seq RemovedBody860_107 RemovedBody860_112

def RemovedBody860_114 : StackLang.HolProg 64 :=
.seq RemovedBody860_106 RemovedBody860_113

def RemovedBody860_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody860_117 : StackLang.HolProg 64 :=
.seq RemovedBody860_115 RemovedBody860_116

def RemovedBody860_118 : StackLang.HolProg 64 :=
.call (some (RemovedBody860_114, 0, 860, 4)) (Sum.inl 565) (some (RemovedBody860_117, 860, 5))

def RemovedBody860_119 : StackLang.HolProg 64 :=
.seq RemovedBody860_105 RemovedBody860_118

def RemovedBody860_120 : StackLang.HolProg 64 :=
.seq RemovedBody860_104 RemovedBody860_119

def RemovedBody860_121 : StackLang.HolProg 64 :=
.seq RemovedBody860_103 RemovedBody860_120

def RemovedBody860_122 : StackLang.HolProg 64 :=
.seq RemovedBody860_74 RemovedBody860_121

def RemovedBody860_123 : StackLang.HolProg 64 :=
.seq RemovedBody860_71 RemovedBody860_122

def RemovedBody860_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody860_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_127 : StackLang.HolProg 64 :=
.seq RemovedBody860_125 RemovedBody860_126

def RemovedBody860_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4368#64)

def RemovedBody860_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_131 : StackLang.HolProg 64 :=
.seq RemovedBody860_129 RemovedBody860_130

def RemovedBody860_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody860_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody860_135 : StackLang.HolProg 64 :=
.seq RemovedBody860_133 RemovedBody860_134

def RemovedBody860_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody860_135 RemovedBody860_136

def RemovedBody860_138 : StackLang.HolProg 64 :=
.seq RemovedBody860_132 RemovedBody860_137

def RemovedBody860_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody860_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 7

def RemovedBody860_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody860_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody860_148 : StackLang.HolProg 64 :=
.seq RemovedBody860_146 RemovedBody860_147

def RemovedBody860_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody860_150 : StackLang.HolProg 64 :=
.seq RemovedBody860_148 RemovedBody860_149

def RemovedBody860_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_152 : StackLang.HolProg 64 :=
.seq RemovedBody860_150 RemovedBody860_151

def RemovedBody860_153 : StackLang.HolProg 64 :=
.seq RemovedBody860_145 RemovedBody860_152

def RemovedBody860_154 : StackLang.HolProg 64 :=
.seq RemovedBody860_144 RemovedBody860_153

def RemovedBody860_155 : StackLang.HolProg 64 :=
.seq RemovedBody860_143 RemovedBody860_154

def RemovedBody860_156 : StackLang.HolProg 64 :=
.seq RemovedBody860_142 RemovedBody860_155

def RemovedBody860_157 : StackLang.HolProg 64 :=
.seq RemovedBody860_141 RemovedBody860_156

def RemovedBody860_158 : StackLang.HolProg 64 :=
.seq RemovedBody860_140 RemovedBody860_157

def RemovedBody860_159 : StackLang.HolProg 64 :=
.seq RemovedBody860_139 RemovedBody860_158

def RemovedBody860_160 : StackLang.HolProg 64 :=
.seq RemovedBody860_138 RemovedBody860_159

def RemovedBody860_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody860_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody860_169 : StackLang.HolProg 64 :=
.seq RemovedBody860_167 RemovedBody860_168

def RemovedBody860_170 : StackLang.HolProg 64 :=
.seq RemovedBody860_166 RemovedBody860_169

def RemovedBody860_171 : StackLang.HolProg 64 :=
.seq RemovedBody860_165 RemovedBody860_170

def RemovedBody860_172 : StackLang.HolProg 64 :=
.seq RemovedBody860_164 RemovedBody860_171

def RemovedBody860_173 : StackLang.HolProg 64 :=
.seq RemovedBody860_163 RemovedBody860_172

def RemovedBody860_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody860_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody860_176 : StackLang.HolProg 64 :=
.seq RemovedBody860_174 RemovedBody860_175

def RemovedBody860_177 : StackLang.HolProg 64 :=
.call (some (RemovedBody860_173, 0, 860, 6)) (Sum.inl 859) (some (RemovedBody860_176, 860, 7))

def RemovedBody860_178 : StackLang.HolProg 64 :=
.seq RemovedBody860_162 RemovedBody860_177

def RemovedBody860_179 : StackLang.HolProg 64 :=
.seq RemovedBody860_161 RemovedBody860_178

def RemovedBody860_180 : StackLang.HolProg 64 :=
.seq RemovedBody860_160 RemovedBody860_179

def RemovedBody860_181 : StackLang.HolProg 64 :=
.seq RemovedBody860_131 RemovedBody860_180

def RemovedBody860_182 : StackLang.HolProg 64 :=
.seq RemovedBody860_128 RemovedBody860_181

def RemovedBody860_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody860_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody860_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody860_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551312#64))

def RemovedBody860_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody860_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody860_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody860_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody860_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551208#64))

def RemovedBody860_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def RemovedBody860_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def RemovedBody860_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def RemovedBody860_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def RemovedBody860_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody860_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody860_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def RemovedBody860_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def RemovedBody860_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody860_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 30000000#64)

def RemovedBody860_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody860_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def RemovedBody860_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1566720#64)

def RemovedBody860_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody860_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody860_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody860_226 : StackLang.HolProg 64 :=
.seq RemovedBody860_224 RemovedBody860_225

def RemovedBody860_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4369#64)

def RemovedBody860_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_230 : StackLang.HolProg 64 :=
.seq RemovedBody860_228 RemovedBody860_229

def RemovedBody860_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody860_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody860_234 : StackLang.HolProg 64 :=
.seq RemovedBody860_232 RemovedBody860_233

def RemovedBody860_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_236 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody860_234 RemovedBody860_235

def RemovedBody860_237 : StackLang.HolProg 64 :=
.seq RemovedBody860_231 RemovedBody860_236

def RemovedBody860_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody860_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 9

def RemovedBody860_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody860_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody860_247 : StackLang.HolProg 64 :=
.seq RemovedBody860_245 RemovedBody860_246

def RemovedBody860_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody860_249 : StackLang.HolProg 64 :=
.seq RemovedBody860_247 RemovedBody860_248

def RemovedBody860_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_251 : StackLang.HolProg 64 :=
.seq RemovedBody860_249 RemovedBody860_250

def RemovedBody860_252 : StackLang.HolProg 64 :=
.seq RemovedBody860_244 RemovedBody860_251

def RemovedBody860_253 : StackLang.HolProg 64 :=
.seq RemovedBody860_243 RemovedBody860_252

def RemovedBody860_254 : StackLang.HolProg 64 :=
.seq RemovedBody860_242 RemovedBody860_253

def RemovedBody860_255 : StackLang.HolProg 64 :=
.seq RemovedBody860_241 RemovedBody860_254

def RemovedBody860_256 : StackLang.HolProg 64 :=
.seq RemovedBody860_240 RemovedBody860_255

def RemovedBody860_257 : StackLang.HolProg 64 :=
.seq RemovedBody860_239 RemovedBody860_256

def RemovedBody860_258 : StackLang.HolProg 64 :=
.seq RemovedBody860_238 RemovedBody860_257

def RemovedBody860_259 : StackLang.HolProg 64 :=
.seq RemovedBody860_237 RemovedBody860_258

def RemovedBody860_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody860_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody860_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody860_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody860_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_273 : StackLang.HolProg 64 :=
.seq RemovedBody860_271 RemovedBody860_272

def RemovedBody860_274 : StackLang.HolProg 64 :=
.seq RemovedBody860_270 RemovedBody860_273

def RemovedBody860_275 : StackLang.HolProg 64 :=
.seq RemovedBody860_269 RemovedBody860_274

def RemovedBody860_276 : StackLang.HolProg 64 :=
.seq RemovedBody860_268 RemovedBody860_275

def RemovedBody860_277 : StackLang.HolProg 64 :=
.seq RemovedBody860_267 RemovedBody860_276

def RemovedBody860_278 : StackLang.HolProg 64 :=
.seq RemovedBody860_266 RemovedBody860_277

def RemovedBody860_279 : StackLang.HolProg 64 :=
.seq RemovedBody860_265 RemovedBody860_278

def RemovedBody860_280 : StackLang.HolProg 64 :=
.seq RemovedBody860_264 RemovedBody860_279

def RemovedBody860_281 : StackLang.HolProg 64 :=
.seq RemovedBody860_263 RemovedBody860_280

def RemovedBody860_282 : StackLang.HolProg 64 :=
.seq RemovedBody860_262 RemovedBody860_281

def RemovedBody860_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody860_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody860_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody860_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_289 : StackLang.HolProg 64 :=
.seq RemovedBody860_287 RemovedBody860_288

def RemovedBody860_290 : StackLang.HolProg 64 :=
.seq RemovedBody860_286 RemovedBody860_289

def RemovedBody860_291 : StackLang.HolProg 64 :=
.seq RemovedBody860_285 RemovedBody860_290

def RemovedBody860_292 : StackLang.HolProg 64 :=
.seq RemovedBody860_284 RemovedBody860_291

def RemovedBody860_293 : StackLang.HolProg 64 :=
.seq RemovedBody860_283 RemovedBody860_292

def RemovedBody860_294 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody860_295 : StackLang.HolProg 64 :=
.seq RemovedBody860_293 RemovedBody860_294

def RemovedBody860_296 : StackLang.HolProg 64 :=
.call (some (RemovedBody860_282, 0, 860, 8)) (Sum.inl 487) (some (RemovedBody860_295, 860, 9))

def RemovedBody860_297 : StackLang.HolProg 64 :=
.seq RemovedBody860_261 RemovedBody860_296

def RemovedBody860_298 : StackLang.HolProg 64 :=
.seq RemovedBody860_260 RemovedBody860_297

def RemovedBody860_299 : StackLang.HolProg 64 :=
.seq RemovedBody860_259 RemovedBody860_298

def RemovedBody860_300 : StackLang.HolProg 64 :=
.seq RemovedBody860_230 RemovedBody860_299

def RemovedBody860_301 : StackLang.HolProg 64 :=
.seq RemovedBody860_227 RemovedBody860_300

def RemovedBody860_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody860_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody860_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody860_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551208#64))

def RemovedBody860_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody860_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody860_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody860_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody860_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551312#64))

def RemovedBody860_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody860_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody860_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody860_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody860_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody860_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 30000000#64)

def RemovedBody860_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody860_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody860_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1566720#64)

def RemovedBody860_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody860_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def RemovedBody860_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody860_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody860_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody860_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def RemovedBody860_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody860_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def RemovedBody860_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody860_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody860_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody860_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8#64)

def RemovedBody860_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def RemovedBody860_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4370#64)

def RemovedBody860_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_364 : StackLang.HolProg 64 :=
.seq RemovedBody860_362 RemovedBody860_363

def RemovedBody860_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody860_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody860_368 : StackLang.HolProg 64 :=
.seq RemovedBody860_366 RemovedBody860_367

def RemovedBody860_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_370 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody860_368 RemovedBody860_369

def RemovedBody860_371 : StackLang.HolProg 64 :=
.seq RemovedBody860_365 RemovedBody860_370

def RemovedBody860_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody860_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 11

def RemovedBody860_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody860_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody860_381 : StackLang.HolProg 64 :=
.seq RemovedBody860_379 RemovedBody860_380

def RemovedBody860_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody860_383 : StackLang.HolProg 64 :=
.seq RemovedBody860_381 RemovedBody860_382

def RemovedBody860_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_385 : StackLang.HolProg 64 :=
.seq RemovedBody860_383 RemovedBody860_384

def RemovedBody860_386 : StackLang.HolProg 64 :=
.seq RemovedBody860_378 RemovedBody860_385

def RemovedBody860_387 : StackLang.HolProg 64 :=
.seq RemovedBody860_377 RemovedBody860_386

def RemovedBody860_388 : StackLang.HolProg 64 :=
.seq RemovedBody860_376 RemovedBody860_387

def RemovedBody860_389 : StackLang.HolProg 64 :=
.seq RemovedBody860_375 RemovedBody860_388

def RemovedBody860_390 : StackLang.HolProg 64 :=
.seq RemovedBody860_374 RemovedBody860_389

def RemovedBody860_391 : StackLang.HolProg 64 :=
.seq RemovedBody860_373 RemovedBody860_390

def RemovedBody860_392 : StackLang.HolProg 64 :=
.seq RemovedBody860_372 RemovedBody860_391

def RemovedBody860_393 : StackLang.HolProg 64 :=
.seq RemovedBody860_371 RemovedBody860_392

def RemovedBody860_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody860_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_402 : StackLang.HolProg 64 :=
.seq RemovedBody860_400 RemovedBody860_401

def RemovedBody860_403 : StackLang.HolProg 64 :=
.seq RemovedBody860_399 RemovedBody860_402

def RemovedBody860_404 : StackLang.HolProg 64 :=
.seq RemovedBody860_398 RemovedBody860_403

def RemovedBody860_405 : StackLang.HolProg 64 :=
.seq RemovedBody860_397 RemovedBody860_404

def RemovedBody860_406 : StackLang.HolProg 64 :=
.seq RemovedBody860_396 RemovedBody860_405

def RemovedBody860_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_408 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody860_409 : StackLang.HolProg 64 :=
.seq RemovedBody860_407 RemovedBody860_408

def RemovedBody860_410 : StackLang.HolProg 64 :=
.call (some (RemovedBody860_406, 0, 860, 10)) (Sum.inl 182) (some (RemovedBody860_409, 860, 11))

def RemovedBody860_411 : StackLang.HolProg 64 :=
.seq RemovedBody860_395 RemovedBody860_410

def RemovedBody860_412 : StackLang.HolProg 64 :=
.seq RemovedBody860_394 RemovedBody860_411

def RemovedBody860_413 : StackLang.HolProg 64 :=
.seq RemovedBody860_393 RemovedBody860_412

def RemovedBody860_414 : StackLang.HolProg 64 :=
.seq RemovedBody860_364 RemovedBody860_413

def RemovedBody860_415 : StackLang.HolProg 64 :=
.seq RemovedBody860_361 RemovedBody860_414

def RemovedBody860_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 152#64)))

def RemovedBody860_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody860_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8#64)

def RemovedBody860_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 52#64)

def RemovedBody860_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4371#64)

def RemovedBody860_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_427 : StackLang.HolProg 64 :=
.seq RemovedBody860_425 RemovedBody860_426

def RemovedBody860_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody860_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody860_431 : StackLang.HolProg 64 :=
.seq RemovedBody860_429 RemovedBody860_430

def RemovedBody860_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_433 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody860_431 RemovedBody860_432

def RemovedBody860_434 : StackLang.HolProg 64 :=
.seq RemovedBody860_428 RemovedBody860_433

def RemovedBody860_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody860_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 13

def RemovedBody860_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody860_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody860_444 : StackLang.HolProg 64 :=
.seq RemovedBody860_442 RemovedBody860_443

def RemovedBody860_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody860_446 : StackLang.HolProg 64 :=
.seq RemovedBody860_444 RemovedBody860_445

def RemovedBody860_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_448 : StackLang.HolProg 64 :=
.seq RemovedBody860_446 RemovedBody860_447

def RemovedBody860_449 : StackLang.HolProg 64 :=
.seq RemovedBody860_441 RemovedBody860_448

def RemovedBody860_450 : StackLang.HolProg 64 :=
.seq RemovedBody860_440 RemovedBody860_449

def RemovedBody860_451 : StackLang.HolProg 64 :=
.seq RemovedBody860_439 RemovedBody860_450

def RemovedBody860_452 : StackLang.HolProg 64 :=
.seq RemovedBody860_438 RemovedBody860_451

def RemovedBody860_453 : StackLang.HolProg 64 :=
.seq RemovedBody860_437 RemovedBody860_452

def RemovedBody860_454 : StackLang.HolProg 64 :=
.seq RemovedBody860_436 RemovedBody860_453

def RemovedBody860_455 : StackLang.HolProg 64 :=
.seq RemovedBody860_435 RemovedBody860_454

def RemovedBody860_456 : StackLang.HolProg 64 :=
.seq RemovedBody860_434 RemovedBody860_455

def RemovedBody860_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody860_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_465 : StackLang.HolProg 64 :=
.seq RemovedBody860_463 RemovedBody860_464

def RemovedBody860_466 : StackLang.HolProg 64 :=
.seq RemovedBody860_462 RemovedBody860_465

def RemovedBody860_467 : StackLang.HolProg 64 :=
.seq RemovedBody860_461 RemovedBody860_466

def RemovedBody860_468 : StackLang.HolProg 64 :=
.seq RemovedBody860_460 RemovedBody860_467

def RemovedBody860_469 : StackLang.HolProg 64 :=
.seq RemovedBody860_459 RemovedBody860_468

def RemovedBody860_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_471 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody860_472 : StackLang.HolProg 64 :=
.seq RemovedBody860_470 RemovedBody860_471

def RemovedBody860_473 : StackLang.HolProg 64 :=
.call (some (RemovedBody860_469, 0, 860, 12)) (Sum.inl 182) (some (RemovedBody860_472, 860, 13))

def RemovedBody860_474 : StackLang.HolProg 64 :=
.seq RemovedBody860_458 RemovedBody860_473

def RemovedBody860_475 : StackLang.HolProg 64 :=
.seq RemovedBody860_457 RemovedBody860_474

def RemovedBody860_476 : StackLang.HolProg 64 :=
.seq RemovedBody860_456 RemovedBody860_475

def RemovedBody860_477 : StackLang.HolProg 64 :=
.seq RemovedBody860_427 RemovedBody860_476

def RemovedBody860_478 : StackLang.HolProg 64 :=
.seq RemovedBody860_424 RemovedBody860_477

def RemovedBody860_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody860_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def RemovedBody860_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody860_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4372#64)

def RemovedBody860_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_488 : StackLang.HolProg 64 :=
.seq RemovedBody860_486 RemovedBody860_487

def RemovedBody860_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody860_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody860_492 : StackLang.HolProg 64 :=
.seq RemovedBody860_490 RemovedBody860_491

def RemovedBody860_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_494 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody860_492 RemovedBody860_493

def RemovedBody860_495 : StackLang.HolProg 64 :=
.seq RemovedBody860_489 RemovedBody860_494

def RemovedBody860_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody860_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 15

def RemovedBody860_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody860_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody860_505 : StackLang.HolProg 64 :=
.seq RemovedBody860_503 RemovedBody860_504

def RemovedBody860_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody860_507 : StackLang.HolProg 64 :=
.seq RemovedBody860_505 RemovedBody860_506

def RemovedBody860_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_509 : StackLang.HolProg 64 :=
.seq RemovedBody860_507 RemovedBody860_508

def RemovedBody860_510 : StackLang.HolProg 64 :=
.seq RemovedBody860_502 RemovedBody860_509

def RemovedBody860_511 : StackLang.HolProg 64 :=
.seq RemovedBody860_501 RemovedBody860_510

def RemovedBody860_512 : StackLang.HolProg 64 :=
.seq RemovedBody860_500 RemovedBody860_511

def RemovedBody860_513 : StackLang.HolProg 64 :=
.seq RemovedBody860_499 RemovedBody860_512

def RemovedBody860_514 : StackLang.HolProg 64 :=
.seq RemovedBody860_498 RemovedBody860_513

def RemovedBody860_515 : StackLang.HolProg 64 :=
.seq RemovedBody860_497 RemovedBody860_514

def RemovedBody860_516 : StackLang.HolProg 64 :=
.seq RemovedBody860_496 RemovedBody860_515

def RemovedBody860_517 : StackLang.HolProg 64 :=
.seq RemovedBody860_495 RemovedBody860_516

def RemovedBody860_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody860_525 : StackLang.HolProg 64 :=
.seq RemovedBody860_523 RemovedBody860_524

def RemovedBody860_526 : StackLang.HolProg 64 :=
.seq RemovedBody860_522 RemovedBody860_525

def RemovedBody860_527 : StackLang.HolProg 64 :=
.seq RemovedBody860_521 RemovedBody860_526

def RemovedBody860_528 : StackLang.HolProg 64 :=
.seq RemovedBody860_520 RemovedBody860_527

def RemovedBody860_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_530 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody860_531 : StackLang.HolProg 64 :=
.seq RemovedBody860_529 RemovedBody860_530

def RemovedBody860_532 : StackLang.HolProg 64 :=
.call (some (RemovedBody860_528, 0, 860, 14)) (Sum.inl 625) (some (RemovedBody860_531, 860, 15))

def RemovedBody860_533 : StackLang.HolProg 64 :=
.seq RemovedBody860_519 RemovedBody860_532

def RemovedBody860_534 : StackLang.HolProg 64 :=
.seq RemovedBody860_518 RemovedBody860_533

def RemovedBody860_535 : StackLang.HolProg 64 :=
.seq RemovedBody860_517 RemovedBody860_534

def RemovedBody860_536 : StackLang.HolProg 64 :=
.seq RemovedBody860_488 RemovedBody860_535

def RemovedBody860_537 : StackLang.HolProg 64 :=
.seq RemovedBody860_485 RemovedBody860_536

def RemovedBody860_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4373#64)

def RemovedBody860_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_543 : StackLang.HolProg 64 :=
.seq RemovedBody860_541 RemovedBody860_542

def RemovedBody860_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody860_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody860_547 : StackLang.HolProg 64 :=
.seq RemovedBody860_545 RemovedBody860_546

def RemovedBody860_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_549 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody860_547 RemovedBody860_548

def RemovedBody860_550 : StackLang.HolProg 64 :=
.seq RemovedBody860_544 RemovedBody860_549

def RemovedBody860_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody860_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 17

def RemovedBody860_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody860_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody860_560 : StackLang.HolProg 64 :=
.seq RemovedBody860_558 RemovedBody860_559

def RemovedBody860_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody860_562 : StackLang.HolProg 64 :=
.seq RemovedBody860_560 RemovedBody860_561

def RemovedBody860_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_564 : StackLang.HolProg 64 :=
.seq RemovedBody860_562 RemovedBody860_563

def RemovedBody860_565 : StackLang.HolProg 64 :=
.seq RemovedBody860_557 RemovedBody860_564

def RemovedBody860_566 : StackLang.HolProg 64 :=
.seq RemovedBody860_556 RemovedBody860_565

def RemovedBody860_567 : StackLang.HolProg 64 :=
.seq RemovedBody860_555 RemovedBody860_566

def RemovedBody860_568 : StackLang.HolProg 64 :=
.seq RemovedBody860_554 RemovedBody860_567

def RemovedBody860_569 : StackLang.HolProg 64 :=
.seq RemovedBody860_553 RemovedBody860_568

def RemovedBody860_570 : StackLang.HolProg 64 :=
.seq RemovedBody860_552 RemovedBody860_569

def RemovedBody860_571 : StackLang.HolProg 64 :=
.seq RemovedBody860_551 RemovedBody860_570

def RemovedBody860_572 : StackLang.HolProg 64 :=
.seq RemovedBody860_550 RemovedBody860_571

def RemovedBody860_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_580 : StackLang.HolProg 64 :=
.seq RemovedBody860_578 RemovedBody860_579

def RemovedBody860_581 : StackLang.HolProg 64 :=
.seq RemovedBody860_577 RemovedBody860_580

def RemovedBody860_582 : StackLang.HolProg 64 :=
.seq RemovedBody860_576 RemovedBody860_581

def RemovedBody860_583 : StackLang.HolProg 64 :=
.seq RemovedBody860_575 RemovedBody860_582

def RemovedBody860_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_585 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody860_586 : StackLang.HolProg 64 :=
.seq RemovedBody860_584 RemovedBody860_585

def RemovedBody860_587 : StackLang.HolProg 64 :=
.call (some (RemovedBody860_583, 0, 860, 16)) (Sum.inl 455) (some (RemovedBody860_586, 860, 17))

def RemovedBody860_588 : StackLang.HolProg 64 :=
.seq RemovedBody860_574 RemovedBody860_587

def RemovedBody860_589 : StackLang.HolProg 64 :=
.seq RemovedBody860_573 RemovedBody860_588

def RemovedBody860_590 : StackLang.HolProg 64 :=
.seq RemovedBody860_572 RemovedBody860_589

def RemovedBody860_591 : StackLang.HolProg 64 :=
.seq RemovedBody860_543 RemovedBody860_590

def RemovedBody860_592 : StackLang.HolProg 64 :=
.seq RemovedBody860_540 RemovedBody860_591

def RemovedBody860_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 80#64))

def RemovedBody860_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody860_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def RemovedBody860_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody860_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody860_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody860_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody860_609 : StackLang.HolProg 64 :=
.seq RemovedBody860_607 RemovedBody860_608

def RemovedBody860_610 : StackLang.HolProg 64 :=
.seq RemovedBody860_606 RemovedBody860_609

def RemovedBody860_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4374#64)

def RemovedBody860_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_614 : StackLang.HolProg 64 :=
.seq RemovedBody860_612 RemovedBody860_613

def RemovedBody860_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody860_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody860_618 : StackLang.HolProg 64 :=
.seq RemovedBody860_616 RemovedBody860_617

def RemovedBody860_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_620 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody860_618 RemovedBody860_619

def RemovedBody860_621 : StackLang.HolProg 64 :=
.seq RemovedBody860_615 RemovedBody860_620

def RemovedBody860_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody860_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 19

def RemovedBody860_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody860_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody860_631 : StackLang.HolProg 64 :=
.seq RemovedBody860_629 RemovedBody860_630

def RemovedBody860_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody860_633 : StackLang.HolProg 64 :=
.seq RemovedBody860_631 RemovedBody860_632

def RemovedBody860_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_635 : StackLang.HolProg 64 :=
.seq RemovedBody860_633 RemovedBody860_634

def RemovedBody860_636 : StackLang.HolProg 64 :=
.seq RemovedBody860_628 RemovedBody860_635

def RemovedBody860_637 : StackLang.HolProg 64 :=
.seq RemovedBody860_627 RemovedBody860_636

def RemovedBody860_638 : StackLang.HolProg 64 :=
.seq RemovedBody860_626 RemovedBody860_637

def RemovedBody860_639 : StackLang.HolProg 64 :=
.seq RemovedBody860_625 RemovedBody860_638

def RemovedBody860_640 : StackLang.HolProg 64 :=
.seq RemovedBody860_624 RemovedBody860_639

def RemovedBody860_641 : StackLang.HolProg 64 :=
.seq RemovedBody860_623 RemovedBody860_640

def RemovedBody860_642 : StackLang.HolProg 64 :=
.seq RemovedBody860_622 RemovedBody860_641

def RemovedBody860_643 : StackLang.HolProg 64 :=
.seq RemovedBody860_621 RemovedBody860_642

def RemovedBody860_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody860_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody860_653 : StackLang.HolProg 64 :=
.seq RemovedBody860_651 RemovedBody860_652

def RemovedBody860_654 : StackLang.HolProg 64 :=
.seq RemovedBody860_650 RemovedBody860_653

def RemovedBody860_655 : StackLang.HolProg 64 :=
.seq RemovedBody860_649 RemovedBody860_654

def RemovedBody860_656 : StackLang.HolProg 64 :=
.seq RemovedBody860_648 RemovedBody860_655

def RemovedBody860_657 : StackLang.HolProg 64 :=
.seq RemovedBody860_647 RemovedBody860_656

def RemovedBody860_658 : StackLang.HolProg 64 :=
.seq RemovedBody860_646 RemovedBody860_657

def RemovedBody860_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody860_661 : StackLang.HolProg 64 :=
.seq RemovedBody860_659 RemovedBody860_660

def RemovedBody860_662 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody860_663 : StackLang.HolProg 64 :=
.seq RemovedBody860_661 RemovedBody860_662

def RemovedBody860_664 : StackLang.HolProg 64 :=
.call (some (RemovedBody860_658, 0, 860, 18)) (Sum.inl 68) (some (RemovedBody860_663, 860, 19))

def RemovedBody860_665 : StackLang.HolProg 64 :=
.seq RemovedBody860_645 RemovedBody860_664

def RemovedBody860_666 : StackLang.HolProg 64 :=
.seq RemovedBody860_644 RemovedBody860_665

def RemovedBody860_667 : StackLang.HolProg 64 :=
.seq RemovedBody860_643 RemovedBody860_666

def RemovedBody860_668 : StackLang.HolProg 64 :=
.seq RemovedBody860_614 RemovedBody860_667

def RemovedBody860_669 : StackLang.HolProg 64 :=
.seq RemovedBody860_611 RemovedBody860_668

def RemovedBody860_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody860_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def RemovedBody860_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody860_675 : StackLang.HolProg 64 :=
.seq RemovedBody860_673 RemovedBody860_674

def RemovedBody860_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4375#64)

def RemovedBody860_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_679 : StackLang.HolProg 64 :=
.seq RemovedBody860_677 RemovedBody860_678

def RemovedBody860_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody860_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody860_683 : StackLang.HolProg 64 :=
.seq RemovedBody860_681 RemovedBody860_682

def RemovedBody860_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_685 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody860_683 RemovedBody860_684

def RemovedBody860_686 : StackLang.HolProg 64 :=
.seq RemovedBody860_680 RemovedBody860_685

def RemovedBody860_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody860_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 21

def RemovedBody860_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody860_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody860_696 : StackLang.HolProg 64 :=
.seq RemovedBody860_694 RemovedBody860_695

def RemovedBody860_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody860_698 : StackLang.HolProg 64 :=
.seq RemovedBody860_696 RemovedBody860_697

def RemovedBody860_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_700 : StackLang.HolProg 64 :=
.seq RemovedBody860_698 RemovedBody860_699

def RemovedBody860_701 : StackLang.HolProg 64 :=
.seq RemovedBody860_693 RemovedBody860_700

def RemovedBody860_702 : StackLang.HolProg 64 :=
.seq RemovedBody860_692 RemovedBody860_701

def RemovedBody860_703 : StackLang.HolProg 64 :=
.seq RemovedBody860_691 RemovedBody860_702

def RemovedBody860_704 : StackLang.HolProg 64 :=
.seq RemovedBody860_690 RemovedBody860_703

def RemovedBody860_705 : StackLang.HolProg 64 :=
.seq RemovedBody860_689 RemovedBody860_704

def RemovedBody860_706 : StackLang.HolProg 64 :=
.seq RemovedBody860_688 RemovedBody860_705

def RemovedBody860_707 : StackLang.HolProg 64 :=
.seq RemovedBody860_687 RemovedBody860_706

def RemovedBody860_708 : StackLang.HolProg 64 :=
.seq RemovedBody860_686 RemovedBody860_707

def RemovedBody860_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody860_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody860_718 : StackLang.HolProg 64 :=
.seq RemovedBody860_716 RemovedBody860_717

def RemovedBody860_719 : StackLang.HolProg 64 :=
.seq RemovedBody860_715 RemovedBody860_718

def RemovedBody860_720 : StackLang.HolProg 64 :=
.seq RemovedBody860_714 RemovedBody860_719

def RemovedBody860_721 : StackLang.HolProg 64 :=
.seq RemovedBody860_713 RemovedBody860_720

def RemovedBody860_722 : StackLang.HolProg 64 :=
.seq RemovedBody860_712 RemovedBody860_721

def RemovedBody860_723 : StackLang.HolProg 64 :=
.seq RemovedBody860_711 RemovedBody860_722

def RemovedBody860_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody860_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody860_727 : StackLang.HolProg 64 :=
.seq RemovedBody860_725 RemovedBody860_726

def RemovedBody860_728 : StackLang.HolProg 64 :=
.seq RemovedBody860_724 RemovedBody860_727

def RemovedBody860_729 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody860_730 : StackLang.HolProg 64 :=
.seq RemovedBody860_728 RemovedBody860_729

def RemovedBody860_731 : StackLang.HolProg 64 :=
.call (some (RemovedBody860_723, 0, 860, 20)) (Sum.inl 77) (some (RemovedBody860_730, 860, 21))

def RemovedBody860_732 : StackLang.HolProg 64 :=
.seq RemovedBody860_710 RemovedBody860_731

def RemovedBody860_733 : StackLang.HolProg 64 :=
.seq RemovedBody860_709 RemovedBody860_732

def RemovedBody860_734 : StackLang.HolProg 64 :=
.seq RemovedBody860_708 RemovedBody860_733

def RemovedBody860_735 : StackLang.HolProg 64 :=
.seq RemovedBody860_679 RemovedBody860_734

def RemovedBody860_736 : StackLang.HolProg 64 :=
.seq RemovedBody860_676 RemovedBody860_735

def RemovedBody860_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody860_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody860_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_743 : StackLang.HolProg 64 :=
.seq RemovedBody860_741 RemovedBody860_742

def RemovedBody860_744 : StackLang.HolProg 64 :=
.seq RemovedBody860_740 RemovedBody860_743

def RemovedBody860_745 : StackLang.HolProg 64 :=
.seq RemovedBody860_739 RemovedBody860_744

def RemovedBody860_746 : StackLang.HolProg 64 :=
.seq RemovedBody860_738 RemovedBody860_745

def RemovedBody860_747 : StackLang.HolProg 64 :=
.seq RemovedBody860_737 RemovedBody860_746

def RemovedBody860_748 : StackLang.HolProg 64 :=
.seq RemovedBody860_736 RemovedBody860_747

def RemovedBody860_749 : StackLang.HolProg 64 :=
.seq RemovedBody860_675 RemovedBody860_748

def RemovedBody860_750 : StackLang.HolProg 64 :=
.seq RemovedBody860_672 RemovedBody860_749

def RemovedBody860_751 : StackLang.HolProg 64 :=
.seq RemovedBody860_671 RemovedBody860_750

def RemovedBody860_752 : StackLang.HolProg 64 :=
.seq RemovedBody860_670 RemovedBody860_751

def RemovedBody860_753 : StackLang.HolProg 64 :=
.seq RemovedBody860_669 RemovedBody860_752

def RemovedBody860_754 : StackLang.HolProg 64 :=
.seq RemovedBody860_610 RemovedBody860_753

def RemovedBody860_755 : StackLang.HolProg 64 :=
.seq RemovedBody860_605 RemovedBody860_754

def RemovedBody860_756 : StackLang.HolProg 64 :=
.seq RemovedBody860_604 RemovedBody860_755

def RemovedBody860_757 : StackLang.HolProg 64 :=
.seq RemovedBody860_603 RemovedBody860_756

def RemovedBody860_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_760 : StackLang.HolProg 64 :=
.seq RemovedBody860_758 RemovedBody860_759

def RemovedBody860_761 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody860_757 RemovedBody860_760

def RemovedBody860_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody860_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4376#64)

def RemovedBody860_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_767 : StackLang.HolProg 64 :=
.seq RemovedBody860_765 RemovedBody860_766

def RemovedBody860_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody860_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody860_771 : StackLang.HolProg 64 :=
.seq RemovedBody860_769 RemovedBody860_770

def RemovedBody860_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_773 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody860_771 RemovedBody860_772

def RemovedBody860_774 : StackLang.HolProg 64 :=
.seq RemovedBody860_768 RemovedBody860_773

def RemovedBody860_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody860_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 23

def RemovedBody860_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody860_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody860_784 : StackLang.HolProg 64 :=
.seq RemovedBody860_782 RemovedBody860_783

def RemovedBody860_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody860_786 : StackLang.HolProg 64 :=
.seq RemovedBody860_784 RemovedBody860_785

def RemovedBody860_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_788 : StackLang.HolProg 64 :=
.seq RemovedBody860_786 RemovedBody860_787

def RemovedBody860_789 : StackLang.HolProg 64 :=
.seq RemovedBody860_781 RemovedBody860_788

def RemovedBody860_790 : StackLang.HolProg 64 :=
.seq RemovedBody860_780 RemovedBody860_789

def RemovedBody860_791 : StackLang.HolProg 64 :=
.seq RemovedBody860_779 RemovedBody860_790

def RemovedBody860_792 : StackLang.HolProg 64 :=
.seq RemovedBody860_778 RemovedBody860_791

def RemovedBody860_793 : StackLang.HolProg 64 :=
.seq RemovedBody860_777 RemovedBody860_792

def RemovedBody860_794 : StackLang.HolProg 64 :=
.seq RemovedBody860_776 RemovedBody860_793

def RemovedBody860_795 : StackLang.HolProg 64 :=
.seq RemovedBody860_775 RemovedBody860_794

def RemovedBody860_796 : StackLang.HolProg 64 :=
.seq RemovedBody860_774 RemovedBody860_795

def RemovedBody860_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_804 : StackLang.HolProg 64 :=
.seq RemovedBody860_802 RemovedBody860_803

def RemovedBody860_805 : StackLang.HolProg 64 :=
.seq RemovedBody860_801 RemovedBody860_804

def RemovedBody860_806 : StackLang.HolProg 64 :=
.seq RemovedBody860_800 RemovedBody860_805

def RemovedBody860_807 : StackLang.HolProg 64 :=
.seq RemovedBody860_799 RemovedBody860_806

def RemovedBody860_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_809 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody860_810 : StackLang.HolProg 64 :=
.seq RemovedBody860_808 RemovedBody860_809

def RemovedBody860_811 : StackLang.HolProg 64 :=
.call (some (RemovedBody860_807, 0, 860, 22)) (Sum.inl 76) (some (RemovedBody860_810, 860, 23))

def RemovedBody860_812 : StackLang.HolProg 64 :=
.seq RemovedBody860_798 RemovedBody860_811

def RemovedBody860_813 : StackLang.HolProg 64 :=
.seq RemovedBody860_797 RemovedBody860_812

def RemovedBody860_814 : StackLang.HolProg 64 :=
.seq RemovedBody860_796 RemovedBody860_813

def RemovedBody860_815 : StackLang.HolProg 64 :=
.seq RemovedBody860_767 RemovedBody860_814

def RemovedBody860_816 : StackLang.HolProg 64 :=
.seq RemovedBody860_764 RemovedBody860_815

def RemovedBody860_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def RemovedBody860_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4377#64)

def RemovedBody860_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_824 : StackLang.HolProg 64 :=
.seq RemovedBody860_822 RemovedBody860_823

def RemovedBody860_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody860_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody860_828 : StackLang.HolProg 64 :=
.seq RemovedBody860_826 RemovedBody860_827

def RemovedBody860_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_830 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody860_828 RemovedBody860_829

def RemovedBody860_831 : StackLang.HolProg 64 :=
.seq RemovedBody860_825 RemovedBody860_830

def RemovedBody860_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody860_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody860_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 25

def RemovedBody860_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody860_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody860_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody860_841 : StackLang.HolProg 64 :=
.seq RemovedBody860_839 RemovedBody860_840

def RemovedBody860_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody860_843 : StackLang.HolProg 64 :=
.seq RemovedBody860_841 RemovedBody860_842

def RemovedBody860_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_845 : StackLang.HolProg 64 :=
.seq RemovedBody860_843 RemovedBody860_844

def RemovedBody860_846 : StackLang.HolProg 64 :=
.seq RemovedBody860_838 RemovedBody860_845

def RemovedBody860_847 : StackLang.HolProg 64 :=
.seq RemovedBody860_837 RemovedBody860_846

def RemovedBody860_848 : StackLang.HolProg 64 :=
.seq RemovedBody860_836 RemovedBody860_847

def RemovedBody860_849 : StackLang.HolProg 64 :=
.seq RemovedBody860_835 RemovedBody860_848

def RemovedBody860_850 : StackLang.HolProg 64 :=
.seq RemovedBody860_834 RemovedBody860_849

def RemovedBody860_851 : StackLang.HolProg 64 :=
.seq RemovedBody860_833 RemovedBody860_850

def RemovedBody860_852 : StackLang.HolProg 64 :=
.seq RemovedBody860_832 RemovedBody860_851

def RemovedBody860_853 : StackLang.HolProg 64 :=
.seq RemovedBody860_831 RemovedBody860_852

def RemovedBody860_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody860_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody860_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody860_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody860_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_862 : StackLang.HolProg 64 :=
.seq RemovedBody860_860 RemovedBody860_861

def RemovedBody860_863 : StackLang.HolProg 64 :=
.seq RemovedBody860_859 RemovedBody860_862

def RemovedBody860_864 : StackLang.HolProg 64 :=
.seq RemovedBody860_858 RemovedBody860_863

def RemovedBody860_865 : StackLang.HolProg 64 :=
.seq RemovedBody860_857 RemovedBody860_864

def RemovedBody860_866 : StackLang.HolProg 64 :=
.seq RemovedBody860_856 RemovedBody860_865

def RemovedBody860_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody860_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody860_869 : StackLang.HolProg 64 :=
.seq RemovedBody860_867 RemovedBody860_868

def RemovedBody860_870 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody860_871 : StackLang.HolProg 64 :=
.seq RemovedBody860_869 RemovedBody860_870

def RemovedBody860_872 : StackLang.HolProg 64 :=
.call (some (RemovedBody860_866, 0, 860, 24)) (Sum.inl 73) (some (RemovedBody860_871, 860, 25))

def RemovedBody860_873 : StackLang.HolProg 64 :=
.seq RemovedBody860_855 RemovedBody860_872

def RemovedBody860_874 : StackLang.HolProg 64 :=
.seq RemovedBody860_854 RemovedBody860_873

def RemovedBody860_875 : StackLang.HolProg 64 :=
.seq RemovedBody860_853 RemovedBody860_874

def RemovedBody860_876 : StackLang.HolProg 64 :=
.seq RemovedBody860_824 RemovedBody860_875

def RemovedBody860_877 : StackLang.HolProg 64 :=
.seq RemovedBody860_821 RemovedBody860_876

def RemovedBody860_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody860_880 : StackLang.HolProg 64 :=
.seq RemovedBody860_878 RemovedBody860_879

def RemovedBody860_881 : StackLang.HolProg 64 :=
.seq RemovedBody860_877 RemovedBody860_880

def RemovedBody860_882 : StackLang.HolProg 64 :=
.seq RemovedBody860_820 RemovedBody860_881

def RemovedBody860_883 : StackLang.HolProg 64 :=
.seq RemovedBody860_819 RemovedBody860_882

def RemovedBody860_884 : StackLang.HolProg 64 :=
.seq RemovedBody860_818 RemovedBody860_883

def RemovedBody860_885 : StackLang.HolProg 64 :=
.seq RemovedBody860_817 RemovedBody860_884

def RemovedBody860_886 : StackLang.HolProg 64 :=
.seq RemovedBody860_816 RemovedBody860_885

def RemovedBody860_887 : StackLang.HolProg 64 :=
.seq RemovedBody860_763 RemovedBody860_886

def RemovedBody860_888 : StackLang.HolProg 64 :=
.seq RemovedBody860_762 RemovedBody860_887

def RemovedBody860_889 : StackLang.HolProg 64 :=
.seq RemovedBody860_761 RemovedBody860_888

def RemovedBody860_890 : StackLang.HolProg 64 :=
.seq RemovedBody860_602 RemovedBody860_889

def RemovedBody860_891 : StackLang.HolProg 64 :=
.seq RemovedBody860_601 RemovedBody860_890

def RemovedBody860_892 : StackLang.HolProg 64 :=
.seq RemovedBody860_600 RemovedBody860_891

def RemovedBody860_893 : StackLang.HolProg 64 :=
.seq RemovedBody860_599 RemovedBody860_892

def RemovedBody860_894 : StackLang.HolProg 64 :=
.seq RemovedBody860_598 RemovedBody860_893

def RemovedBody860_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody860_897 : StackLang.HolProg 64 :=
.seq RemovedBody860_895 RemovedBody860_896

def RemovedBody860_898 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody860_894 RemovedBody860_897

def RemovedBody860_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody860_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody860_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody860_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody860_903 : StackLang.HolProg 64 :=
.seq RemovedBody860_901 RemovedBody860_902

def RemovedBody860_904 : StackLang.HolProg 64 :=
.seq RemovedBody860_900 RemovedBody860_903

def RemovedBody860_905 : StackLang.HolProg 64 :=
.seq RemovedBody860_899 RemovedBody860_904

def RemovedBody860_906 : StackLang.HolProg 64 :=
.seq RemovedBody860_898 RemovedBody860_905

def RemovedBody860_907 : StackLang.HolProg 64 :=
.seq RemovedBody860_597 RemovedBody860_906

def RemovedBody860_908 : StackLang.HolProg 64 :=
.seq RemovedBody860_596 RemovedBody860_907

def RemovedBody860_909 : StackLang.HolProg 64 :=
.seq RemovedBody860_595 RemovedBody860_908

def RemovedBody860_910 : StackLang.HolProg 64 :=
.seq RemovedBody860_594 RemovedBody860_909

def RemovedBody860_911 : StackLang.HolProg 64 :=
.seq RemovedBody860_593 RemovedBody860_910

def RemovedBody860_912 : StackLang.HolProg 64 :=
.seq RemovedBody860_592 RemovedBody860_911

def RemovedBody860_913 : StackLang.HolProg 64 :=
.seq RemovedBody860_539 RemovedBody860_912

def RemovedBody860_914 : StackLang.HolProg 64 :=
.seq RemovedBody860_538 RemovedBody860_913

def RemovedBody860_915 : StackLang.HolProg 64 :=
.seq RemovedBody860_537 RemovedBody860_914

def RemovedBody860_916 : StackLang.HolProg 64 :=
.seq RemovedBody860_484 RemovedBody860_915

def RemovedBody860_917 : StackLang.HolProg 64 :=
.seq RemovedBody860_483 RemovedBody860_916

def RemovedBody860_918 : StackLang.HolProg 64 :=
.seq RemovedBody860_482 RemovedBody860_917

def RemovedBody860_919 : StackLang.HolProg 64 :=
.seq RemovedBody860_481 RemovedBody860_918

def RemovedBody860_920 : StackLang.HolProg 64 :=
.seq RemovedBody860_480 RemovedBody860_919

def RemovedBody860_921 : StackLang.HolProg 64 :=
.seq RemovedBody860_479 RemovedBody860_920

def RemovedBody860_922 : StackLang.HolProg 64 :=
.seq RemovedBody860_478 RemovedBody860_921

def RemovedBody860_923 : StackLang.HolProg 64 :=
.seq RemovedBody860_423 RemovedBody860_922

def RemovedBody860_924 : StackLang.HolProg 64 :=
.seq RemovedBody860_422 RemovedBody860_923

def RemovedBody860_925 : StackLang.HolProg 64 :=
.seq RemovedBody860_421 RemovedBody860_924

def RemovedBody860_926 : StackLang.HolProg 64 :=
.seq RemovedBody860_420 RemovedBody860_925

def RemovedBody860_927 : StackLang.HolProg 64 :=
.seq RemovedBody860_419 RemovedBody860_926

def RemovedBody860_928 : StackLang.HolProg 64 :=
.seq RemovedBody860_418 RemovedBody860_927

def RemovedBody860_929 : StackLang.HolProg 64 :=
.seq RemovedBody860_417 RemovedBody860_928

def RemovedBody860_930 : StackLang.HolProg 64 :=
.seq RemovedBody860_416 RemovedBody860_929

def RemovedBody860_931 : StackLang.HolProg 64 :=
.seq RemovedBody860_415 RemovedBody860_930

def RemovedBody860_932 : StackLang.HolProg 64 :=
.seq RemovedBody860_360 RemovedBody860_931

def RemovedBody860_933 : StackLang.HolProg 64 :=
.seq RemovedBody860_359 RemovedBody860_932

def RemovedBody860_934 : StackLang.HolProg 64 :=
.seq RemovedBody860_358 RemovedBody860_933

def RemovedBody860_935 : StackLang.HolProg 64 :=
.seq RemovedBody860_357 RemovedBody860_934

def RemovedBody860_936 : StackLang.HolProg 64 :=
.seq RemovedBody860_356 RemovedBody860_935

def RemovedBody860_937 : StackLang.HolProg 64 :=
.seq RemovedBody860_355 RemovedBody860_936

def RemovedBody860_938 : StackLang.HolProg 64 :=
.seq RemovedBody860_354 RemovedBody860_937

def RemovedBody860_939 : StackLang.HolProg 64 :=
.seq RemovedBody860_353 RemovedBody860_938

def RemovedBody860_940 : StackLang.HolProg 64 :=
.seq RemovedBody860_352 RemovedBody860_939

def RemovedBody860_941 : StackLang.HolProg 64 :=
.seq RemovedBody860_351 RemovedBody860_940

def RemovedBody860_942 : StackLang.HolProg 64 :=
.seq RemovedBody860_350 RemovedBody860_941

def RemovedBody860_943 : StackLang.HolProg 64 :=
.seq RemovedBody860_349 RemovedBody860_942

def RemovedBody860_944 : StackLang.HolProg 64 :=
.seq RemovedBody860_348 RemovedBody860_943

def RemovedBody860_945 : StackLang.HolProg 64 :=
.seq RemovedBody860_347 RemovedBody860_944

def RemovedBody860_946 : StackLang.HolProg 64 :=
.seq RemovedBody860_346 RemovedBody860_945

def RemovedBody860_947 : StackLang.HolProg 64 :=
.seq RemovedBody860_345 RemovedBody860_946

def RemovedBody860_948 : StackLang.HolProg 64 :=
.seq RemovedBody860_344 RemovedBody860_947

def RemovedBody860_949 : StackLang.HolProg 64 :=
.seq RemovedBody860_343 RemovedBody860_948

def RemovedBody860_950 : StackLang.HolProg 64 :=
.seq RemovedBody860_342 RemovedBody860_949

def RemovedBody860_951 : StackLang.HolProg 64 :=
.seq RemovedBody860_341 RemovedBody860_950

def RemovedBody860_952 : StackLang.HolProg 64 :=
.seq RemovedBody860_340 RemovedBody860_951

def RemovedBody860_953 : StackLang.HolProg 64 :=
.seq RemovedBody860_339 RemovedBody860_952

def RemovedBody860_954 : StackLang.HolProg 64 :=
.seq RemovedBody860_338 RemovedBody860_953

def RemovedBody860_955 : StackLang.HolProg 64 :=
.seq RemovedBody860_337 RemovedBody860_954

def RemovedBody860_956 : StackLang.HolProg 64 :=
.seq RemovedBody860_336 RemovedBody860_955

def RemovedBody860_957 : StackLang.HolProg 64 :=
.seq RemovedBody860_335 RemovedBody860_956

def RemovedBody860_958 : StackLang.HolProg 64 :=
.seq RemovedBody860_334 RemovedBody860_957

def RemovedBody860_959 : StackLang.HolProg 64 :=
.seq RemovedBody860_333 RemovedBody860_958

def RemovedBody860_960 : StackLang.HolProg 64 :=
.seq RemovedBody860_332 RemovedBody860_959

def RemovedBody860_961 : StackLang.HolProg 64 :=
.seq RemovedBody860_331 RemovedBody860_960

def RemovedBody860_962 : StackLang.HolProg 64 :=
.seq RemovedBody860_330 RemovedBody860_961

def RemovedBody860_963 : StackLang.HolProg 64 :=
.seq RemovedBody860_329 RemovedBody860_962

def RemovedBody860_964 : StackLang.HolProg 64 :=
.seq RemovedBody860_328 RemovedBody860_963

def RemovedBody860_965 : StackLang.HolProg 64 :=
.seq RemovedBody860_327 RemovedBody860_964

def RemovedBody860_966 : StackLang.HolProg 64 :=
.seq RemovedBody860_326 RemovedBody860_965

def RemovedBody860_967 : StackLang.HolProg 64 :=
.seq RemovedBody860_325 RemovedBody860_966

def RemovedBody860_968 : StackLang.HolProg 64 :=
.seq RemovedBody860_324 RemovedBody860_967

def RemovedBody860_969 : StackLang.HolProg 64 :=
.seq RemovedBody860_323 RemovedBody860_968

def RemovedBody860_970 : StackLang.HolProg 64 :=
.seq RemovedBody860_322 RemovedBody860_969

def RemovedBody860_971 : StackLang.HolProg 64 :=
.seq RemovedBody860_321 RemovedBody860_970

def RemovedBody860_972 : StackLang.HolProg 64 :=
.seq RemovedBody860_320 RemovedBody860_971

def RemovedBody860_973 : StackLang.HolProg 64 :=
.seq RemovedBody860_319 RemovedBody860_972

def RemovedBody860_974 : StackLang.HolProg 64 :=
.seq RemovedBody860_318 RemovedBody860_973

def RemovedBody860_975 : StackLang.HolProg 64 :=
.seq RemovedBody860_317 RemovedBody860_974

def RemovedBody860_976 : StackLang.HolProg 64 :=
.seq RemovedBody860_316 RemovedBody860_975

def RemovedBody860_977 : StackLang.HolProg 64 :=
.seq RemovedBody860_315 RemovedBody860_976

def RemovedBody860_978 : StackLang.HolProg 64 :=
.seq RemovedBody860_314 RemovedBody860_977

def RemovedBody860_979 : StackLang.HolProg 64 :=
.seq RemovedBody860_313 RemovedBody860_978

def RemovedBody860_980 : StackLang.HolProg 64 :=
.seq RemovedBody860_312 RemovedBody860_979

def RemovedBody860_981 : StackLang.HolProg 64 :=
.seq RemovedBody860_311 RemovedBody860_980

def RemovedBody860_982 : StackLang.HolProg 64 :=
.seq RemovedBody860_310 RemovedBody860_981

def RemovedBody860_983 : StackLang.HolProg 64 :=
.seq RemovedBody860_309 RemovedBody860_982

def RemovedBody860_984 : StackLang.HolProg 64 :=
.seq RemovedBody860_308 RemovedBody860_983

def RemovedBody860_985 : StackLang.HolProg 64 :=
.seq RemovedBody860_307 RemovedBody860_984

def RemovedBody860_986 : StackLang.HolProg 64 :=
.seq RemovedBody860_306 RemovedBody860_985

def RemovedBody860_987 : StackLang.HolProg 64 :=
.seq RemovedBody860_305 RemovedBody860_986

def RemovedBody860_988 : StackLang.HolProg 64 :=
.seq RemovedBody860_304 RemovedBody860_987

def RemovedBody860_989 : StackLang.HolProg 64 :=
.seq RemovedBody860_303 RemovedBody860_988

def RemovedBody860_990 : StackLang.HolProg 64 :=
.seq RemovedBody860_302 RemovedBody860_989

def RemovedBody860_991 : StackLang.HolProg 64 :=
.seq RemovedBody860_301 RemovedBody860_990

def RemovedBody860_992 : StackLang.HolProg 64 :=
.seq RemovedBody860_226 RemovedBody860_991

def RemovedBody860_993 : StackLang.HolProg 64 :=
.seq RemovedBody860_223 RemovedBody860_992

def RemovedBody860_994 : StackLang.HolProg 64 :=
.seq RemovedBody860_222 RemovedBody860_993

def RemovedBody860_995 : StackLang.HolProg 64 :=
.seq RemovedBody860_221 RemovedBody860_994

def RemovedBody860_996 : StackLang.HolProg 64 :=
.seq RemovedBody860_220 RemovedBody860_995

def RemovedBody860_997 : StackLang.HolProg 64 :=
.seq RemovedBody860_219 RemovedBody860_996

def RemovedBody860_998 : StackLang.HolProg 64 :=
.seq RemovedBody860_218 RemovedBody860_997

def RemovedBody860_999 : StackLang.HolProg 64 :=
.seq RemovedBody860_217 RemovedBody860_998

def RemovedBody860_1000 : StackLang.HolProg 64 :=
.seq RemovedBody860_216 RemovedBody860_999

def RemovedBody860_1001 : StackLang.HolProg 64 :=
.seq RemovedBody860_215 RemovedBody860_1000

def RemovedBody860_1002 : StackLang.HolProg 64 :=
.seq RemovedBody860_214 RemovedBody860_1001

def RemovedBody860_1003 : StackLang.HolProg 64 :=
.seq RemovedBody860_213 RemovedBody860_1002

def RemovedBody860_1004 : StackLang.HolProg 64 :=
.seq RemovedBody860_212 RemovedBody860_1003

def RemovedBody860_1005 : StackLang.HolProg 64 :=
.seq RemovedBody860_211 RemovedBody860_1004

def RemovedBody860_1006 : StackLang.HolProg 64 :=
.seq RemovedBody860_210 RemovedBody860_1005

def RemovedBody860_1007 : StackLang.HolProg 64 :=
.seq RemovedBody860_209 RemovedBody860_1006

def RemovedBody860_1008 : StackLang.HolProg 64 :=
.seq RemovedBody860_208 RemovedBody860_1007

def RemovedBody860_1009 : StackLang.HolProg 64 :=
.seq RemovedBody860_207 RemovedBody860_1008

def RemovedBody860_1010 : StackLang.HolProg 64 :=
.seq RemovedBody860_206 RemovedBody860_1009

def RemovedBody860_1011 : StackLang.HolProg 64 :=
.seq RemovedBody860_205 RemovedBody860_1010

def RemovedBody860_1012 : StackLang.HolProg 64 :=
.seq RemovedBody860_204 RemovedBody860_1011

def RemovedBody860_1013 : StackLang.HolProg 64 :=
.seq RemovedBody860_203 RemovedBody860_1012

def RemovedBody860_1014 : StackLang.HolProg 64 :=
.seq RemovedBody860_202 RemovedBody860_1013

def RemovedBody860_1015 : StackLang.HolProg 64 :=
.seq RemovedBody860_201 RemovedBody860_1014

def RemovedBody860_1016 : StackLang.HolProg 64 :=
.seq RemovedBody860_200 RemovedBody860_1015

def RemovedBody860_1017 : StackLang.HolProg 64 :=
.seq RemovedBody860_199 RemovedBody860_1016

def RemovedBody860_1018 : StackLang.HolProg 64 :=
.seq RemovedBody860_198 RemovedBody860_1017

def RemovedBody860_1019 : StackLang.HolProg 64 :=
.seq RemovedBody860_197 RemovedBody860_1018

def RemovedBody860_1020 : StackLang.HolProg 64 :=
.seq RemovedBody860_196 RemovedBody860_1019

def RemovedBody860_1021 : StackLang.HolProg 64 :=
.seq RemovedBody860_195 RemovedBody860_1020

def RemovedBody860_1022 : StackLang.HolProg 64 :=
.seq RemovedBody860_194 RemovedBody860_1021

def RemovedBody860_1023 : StackLang.HolProg 64 :=
.seq RemovedBody860_193 RemovedBody860_1022

def RemovedBody860_1024 : StackLang.HolProg 64 :=
.seq RemovedBody860_192 RemovedBody860_1023

def RemovedBody860_1025 : StackLang.HolProg 64 :=
.seq RemovedBody860_191 RemovedBody860_1024

def RemovedBody860_1026 : StackLang.HolProg 64 :=
.seq RemovedBody860_190 RemovedBody860_1025

def RemovedBody860_1027 : StackLang.HolProg 64 :=
.seq RemovedBody860_189 RemovedBody860_1026

def RemovedBody860_1028 : StackLang.HolProg 64 :=
.seq RemovedBody860_188 RemovedBody860_1027

def RemovedBody860_1029 : StackLang.HolProg 64 :=
.seq RemovedBody860_187 RemovedBody860_1028

def RemovedBody860_1030 : StackLang.HolProg 64 :=
.seq RemovedBody860_186 RemovedBody860_1029

def RemovedBody860_1031 : StackLang.HolProg 64 :=
.seq RemovedBody860_185 RemovedBody860_1030

def RemovedBody860_1032 : StackLang.HolProg 64 :=
.seq RemovedBody860_184 RemovedBody860_1031

def RemovedBody860_1033 : StackLang.HolProg 64 :=
.seq RemovedBody860_183 RemovedBody860_1032

def RemovedBody860_1034 : StackLang.HolProg 64 :=
.seq RemovedBody860_182 RemovedBody860_1033

def RemovedBody860_1035 : StackLang.HolProg 64 :=
.seq RemovedBody860_127 RemovedBody860_1034

def RemovedBody860_1036 : StackLang.HolProg 64 :=
.seq RemovedBody860_124 RemovedBody860_1035

def RemovedBody860_1037 : StackLang.HolProg 64 :=
.seq RemovedBody860_123 RemovedBody860_1036

def RemovedBody860_1038 : StackLang.HolProg 64 :=
.seq RemovedBody860_70 RemovedBody860_1037

def RemovedBody860_1039 : StackLang.HolProg 64 :=
.seq RemovedBody860_67 RemovedBody860_1038

def RemovedBody860_1040 : StackLang.HolProg 64 :=
.seq RemovedBody860_66 RemovedBody860_1039

def RemovedBody860_1041 : StackLang.HolProg 64 :=
.seq RemovedBody860_13 RemovedBody860_1040

def RemovedBody860_1042 : StackLang.HolProg 64 :=
.seq RemovedBody860_6 RemovedBody860_1041

def Removed860 : Nat × StackLang.HolProg 64 := (860, RemovedBody860_1042)
theorem Removed860_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc860 = Removed860 := by
  kernel_rfl
#print axioms Removed860_eq
end InitECandidate.Proofs.BackendStages
