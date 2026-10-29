import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc866
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody866_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody866_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody866_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody866_3 : StackLang.HolProg 64 :=
.seq RemovedBody866_1 RemovedBody866_2

def RemovedBody866_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody866_3 RemovedBody866_4

def RemovedBody866_6 : StackLang.HolProg 64 :=
.seq RemovedBody866_0 RemovedBody866_5

def RemovedBody866_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody866_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody866_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody866_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody866_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody866_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody866_13 : StackLang.HolProg 64 :=
.seq RemovedBody866_11 RemovedBody866_12

def RemovedBody866_14 : StackLang.HolProg 64 :=
.seq RemovedBody866_10 RemovedBody866_13

def RemovedBody866_15 : StackLang.HolProg 64 :=
.seq RemovedBody866_9 RemovedBody866_14

def RemovedBody866_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4525#64)

def RemovedBody866_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody866_19 : StackLang.HolProg 64 :=
.seq RemovedBody866_17 RemovedBody866_18

def RemovedBody866_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody866_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody866_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody866_23 : StackLang.HolProg 64 :=
.seq RemovedBody866_21 RemovedBody866_22

def RemovedBody866_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody866_23 RemovedBody866_24

def RemovedBody866_26 : StackLang.HolProg 64 :=
.seq RemovedBody866_20 RemovedBody866_25

def RemovedBody866_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody866_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody866_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 866 3

def RemovedBody866_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody866_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody866_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody866_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody866_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody866_36 : StackLang.HolProg 64 :=
.seq RemovedBody866_34 RemovedBody866_35

def RemovedBody866_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody866_38 : StackLang.HolProg 64 :=
.seq RemovedBody866_36 RemovedBody866_37

def RemovedBody866_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody866_40 : StackLang.HolProg 64 :=
.seq RemovedBody866_38 RemovedBody866_39

def RemovedBody866_41 : StackLang.HolProg 64 :=
.seq RemovedBody866_33 RemovedBody866_40

def RemovedBody866_42 : StackLang.HolProg 64 :=
.seq RemovedBody866_32 RemovedBody866_41

def RemovedBody866_43 : StackLang.HolProg 64 :=
.seq RemovedBody866_31 RemovedBody866_42

def RemovedBody866_44 : StackLang.HolProg 64 :=
.seq RemovedBody866_30 RemovedBody866_43

def RemovedBody866_45 : StackLang.HolProg 64 :=
.seq RemovedBody866_29 RemovedBody866_44

def RemovedBody866_46 : StackLang.HolProg 64 :=
.seq RemovedBody866_28 RemovedBody866_45

def RemovedBody866_47 : StackLang.HolProg 64 :=
.seq RemovedBody866_27 RemovedBody866_46

def RemovedBody866_48 : StackLang.HolProg 64 :=
.seq RemovedBody866_26 RemovedBody866_47

def RemovedBody866_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody866_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody866_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody866_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody866_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody866_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody866_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody866_59 : StackLang.HolProg 64 :=
.seq RemovedBody866_57 RemovedBody866_58

def RemovedBody866_60 : StackLang.HolProg 64 :=
.seq RemovedBody866_56 RemovedBody866_59

def RemovedBody866_61 : StackLang.HolProg 64 :=
.seq RemovedBody866_55 RemovedBody866_60

def RemovedBody866_62 : StackLang.HolProg 64 :=
.seq RemovedBody866_54 RemovedBody866_61

def RemovedBody866_63 : StackLang.HolProg 64 :=
.seq RemovedBody866_53 RemovedBody866_62

def RemovedBody866_64 : StackLang.HolProg 64 :=
.seq RemovedBody866_52 RemovedBody866_63

def RemovedBody866_65 : StackLang.HolProg 64 :=
.seq RemovedBody866_51 RemovedBody866_64

def RemovedBody866_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody866_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody866_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody866_69 : StackLang.HolProg 64 :=
.seq RemovedBody866_67 RemovedBody866_68

def RemovedBody866_70 : StackLang.HolProg 64 :=
.seq RemovedBody866_66 RemovedBody866_69

def RemovedBody866_71 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody866_72 : StackLang.HolProg 64 :=
.seq RemovedBody866_70 RemovedBody866_71

def RemovedBody866_73 : StackLang.HolProg 64 :=
.call (some (RemovedBody866_65, 0, 866, 2)) (Sum.inl 68) (some (RemovedBody866_72, 866, 3))

def RemovedBody866_74 : StackLang.HolProg 64 :=
.seq RemovedBody866_50 RemovedBody866_73

def RemovedBody866_75 : StackLang.HolProg 64 :=
.seq RemovedBody866_49 RemovedBody866_74

def RemovedBody866_76 : StackLang.HolProg 64 :=
.seq RemovedBody866_48 RemovedBody866_75

def RemovedBody866_77 : StackLang.HolProg 64 :=
.seq RemovedBody866_19 RemovedBody866_76

def RemovedBody866_78 : StackLang.HolProg 64 :=
.seq RemovedBody866_16 RemovedBody866_77

def RemovedBody866_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody866_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody866_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody866_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody866_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody866_86 : StackLang.HolProg 64 :=
.seq RemovedBody866_84 RemovedBody866_85

def RemovedBody866_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4526#64)

def RemovedBody866_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody866_90 : StackLang.HolProg 64 :=
.seq RemovedBody866_88 RemovedBody866_89

def RemovedBody866_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody866_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody866_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody866_94 : StackLang.HolProg 64 :=
.seq RemovedBody866_92 RemovedBody866_93

def RemovedBody866_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody866_94 RemovedBody866_95

def RemovedBody866_97 : StackLang.HolProg 64 :=
.seq RemovedBody866_91 RemovedBody866_96

def RemovedBody866_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody866_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody866_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 866 5

def RemovedBody866_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody866_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody866_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody866_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody866_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody866_107 : StackLang.HolProg 64 :=
.seq RemovedBody866_105 RemovedBody866_106

def RemovedBody866_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody866_109 : StackLang.HolProg 64 :=
.seq RemovedBody866_107 RemovedBody866_108

def RemovedBody866_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody866_111 : StackLang.HolProg 64 :=
.seq RemovedBody866_109 RemovedBody866_110

def RemovedBody866_112 : StackLang.HolProg 64 :=
.seq RemovedBody866_104 RemovedBody866_111

def RemovedBody866_113 : StackLang.HolProg 64 :=
.seq RemovedBody866_103 RemovedBody866_112

def RemovedBody866_114 : StackLang.HolProg 64 :=
.seq RemovedBody866_102 RemovedBody866_113

def RemovedBody866_115 : StackLang.HolProg 64 :=
.seq RemovedBody866_101 RemovedBody866_114

def RemovedBody866_116 : StackLang.HolProg 64 :=
.seq RemovedBody866_100 RemovedBody866_115

def RemovedBody866_117 : StackLang.HolProg 64 :=
.seq RemovedBody866_99 RemovedBody866_116

def RemovedBody866_118 : StackLang.HolProg 64 :=
.seq RemovedBody866_98 RemovedBody866_117

def RemovedBody866_119 : StackLang.HolProg 64 :=
.seq RemovedBody866_97 RemovedBody866_118

def RemovedBody866_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody866_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody866_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody866_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody866_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody866_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody866_129 : StackLang.HolProg 64 :=
.seq RemovedBody866_127 RemovedBody866_128

def RemovedBody866_130 : StackLang.HolProg 64 :=
.seq RemovedBody866_126 RemovedBody866_129

def RemovedBody866_131 : StackLang.HolProg 64 :=
.seq RemovedBody866_125 RemovedBody866_130

def RemovedBody866_132 : StackLang.HolProg 64 :=
.seq RemovedBody866_124 RemovedBody866_131

def RemovedBody866_133 : StackLang.HolProg 64 :=
.seq RemovedBody866_123 RemovedBody866_132

def RemovedBody866_134 : StackLang.HolProg 64 :=
.seq RemovedBody866_122 RemovedBody866_133

def RemovedBody866_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody866_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody866_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody866_138 : StackLang.HolProg 64 :=
.seq RemovedBody866_136 RemovedBody866_137

def RemovedBody866_139 : StackLang.HolProg 64 :=
.seq RemovedBody866_135 RemovedBody866_138

def RemovedBody866_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody866_141 : StackLang.HolProg 64 :=
.seq RemovedBody866_139 RemovedBody866_140

def RemovedBody866_142 : StackLang.HolProg 64 :=
.call (some (RemovedBody866_134, 0, 866, 4)) (Sum.inl 77) (some (RemovedBody866_141, 866, 5))

def RemovedBody866_143 : StackLang.HolProg 64 :=
.seq RemovedBody866_121 RemovedBody866_142

def RemovedBody866_144 : StackLang.HolProg 64 :=
.seq RemovedBody866_120 RemovedBody866_143

def RemovedBody866_145 : StackLang.HolProg 64 :=
.seq RemovedBody866_119 RemovedBody866_144

def RemovedBody866_146 : StackLang.HolProg 64 :=
.seq RemovedBody866_90 RemovedBody866_145

def RemovedBody866_147 : StackLang.HolProg 64 :=
.seq RemovedBody866_87 RemovedBody866_146

def RemovedBody866_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody866_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody866_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody866_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody866_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551200#64))

def RemovedBody866_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def RemovedBody866_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody866_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 56#64))

def RemovedBody866_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody866_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody866_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551200#64))

def RemovedBody866_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 56#64))

def RemovedBody866_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody866_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody866_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody866_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody866_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551200#64))

def RemovedBody866_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody866_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody866_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody866_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody866_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody866_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody866_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def RemovedBody866_181 : StackLang.HolProg 64 :=
.seq RemovedBody866_179 RemovedBody866_180

def RemovedBody866_182 : StackLang.HolProg 64 :=
.seq RemovedBody866_178 RemovedBody866_181

def RemovedBody866_183 : StackLang.HolProg 64 :=
.seq RemovedBody866_177 RemovedBody866_182

def RemovedBody866_184 : StackLang.HolProg 64 :=
.seq RemovedBody866_176 RemovedBody866_183

def RemovedBody866_185 : StackLang.HolProg 64 :=
.seq RemovedBody866_175 RemovedBody866_184

def RemovedBody866_186 : StackLang.HolProg 64 :=
.seq RemovedBody866_174 RemovedBody866_185

def RemovedBody866_187 : StackLang.HolProg 64 :=
.seq RemovedBody866_173 RemovedBody866_186

def RemovedBody866_188 : StackLang.HolProg 64 :=
.seq RemovedBody866_172 RemovedBody866_187

def RemovedBody866_189 : StackLang.HolProg 64 :=
.seq RemovedBody866_171 RemovedBody866_188

def RemovedBody866_190 : StackLang.HolProg 64 :=
.seq RemovedBody866_170 RemovedBody866_189

def RemovedBody866_191 : StackLang.HolProg 64 :=
.seq RemovedBody866_169 RemovedBody866_190

def RemovedBody866_192 : StackLang.HolProg 64 :=
.seq RemovedBody866_168 RemovedBody866_191

def RemovedBody866_193 : StackLang.HolProg 64 :=
.seq RemovedBody866_167 RemovedBody866_192

def RemovedBody866_194 : StackLang.HolProg 64 :=
.seq RemovedBody866_166 RemovedBody866_193

def RemovedBody866_195 : StackLang.HolProg 64 :=
.seq RemovedBody866_165 RemovedBody866_194

def RemovedBody866_196 : StackLang.HolProg 64 :=
.seq RemovedBody866_164 RemovedBody866_195

def RemovedBody866_197 : StackLang.HolProg 64 :=
.seq RemovedBody866_163 RemovedBody866_196

def RemovedBody866_198 : StackLang.HolProg 64 :=
.seq RemovedBody866_162 RemovedBody866_197

def RemovedBody866_199 : StackLang.HolProg 64 :=
.seq RemovedBody866_161 RemovedBody866_198

def RemovedBody866_200 : StackLang.HolProg 64 :=
.seq RemovedBody866_160 RemovedBody866_199

def RemovedBody866_201 : StackLang.HolProg 64 :=
.seq RemovedBody866_159 RemovedBody866_200

def RemovedBody866_202 : StackLang.HolProg 64 :=
.seq RemovedBody866_158 RemovedBody866_201

def RemovedBody866_203 : StackLang.HolProg 64 :=
.seq RemovedBody866_157 RemovedBody866_202

def RemovedBody866_204 : StackLang.HolProg 64 :=
.seq RemovedBody866_156 RemovedBody866_203

def RemovedBody866_205 : StackLang.HolProg 64 :=
.seq RemovedBody866_155 RemovedBody866_204

def RemovedBody866_206 : StackLang.HolProg 64 :=
.seq RemovedBody866_154 RemovedBody866_205

def RemovedBody866_207 : StackLang.HolProg 64 :=
.seq RemovedBody866_153 RemovedBody866_206

def RemovedBody866_208 : StackLang.HolProg 64 :=
.seq RemovedBody866_152 RemovedBody866_207

def RemovedBody866_209 : StackLang.HolProg 64 :=
.seq RemovedBody866_151 RemovedBody866_208

def RemovedBody866_210 : StackLang.HolProg 64 :=
.seq RemovedBody866_150 RemovedBody866_209

def RemovedBody866_211 : StackLang.HolProg 64 :=
.seq RemovedBody866_149 RemovedBody866_210

def RemovedBody866_212 : StackLang.HolProg 64 :=
.seq RemovedBody866_148 RemovedBody866_211

def RemovedBody866_213 : StackLang.HolProg 64 :=
.seq RemovedBody866_147 RemovedBody866_212

def RemovedBody866_214 : StackLang.HolProg 64 :=
.seq RemovedBody866_86 RemovedBody866_213

def RemovedBody866_215 : StackLang.HolProg 64 :=
.seq RemovedBody866_83 RemovedBody866_214

def RemovedBody866_216 : StackLang.HolProg 64 :=
.seq RemovedBody866_82 RemovedBody866_215

def RemovedBody866_217 : StackLang.HolProg 64 :=
.seq RemovedBody866_81 RemovedBody866_216

def RemovedBody866_218 : StackLang.HolProg 64 :=
.seq RemovedBody866_80 RemovedBody866_217

def RemovedBody866_219 : StackLang.HolProg 64 :=
.seq RemovedBody866_79 RemovedBody866_218

def RemovedBody866_220 : StackLang.HolProg 64 :=
.seq RemovedBody866_78 RemovedBody866_219

def RemovedBody866_221 : StackLang.HolProg 64 :=
.seq RemovedBody866_15 RemovedBody866_220

def RemovedBody866_222 : StackLang.HolProg 64 :=
.seq RemovedBody866_8 RemovedBody866_221

def RemovedBody866_223 : StackLang.HolProg 64 :=
.seq RemovedBody866_7 RemovedBody866_222

def RemovedBody866_224 : StackLang.HolProg 64 :=
.seq RemovedBody866_6 RemovedBody866_223

def Removed866 : Nat × StackLang.HolProg 64 := (866, RemovedBody866_224)
theorem Removed866_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc866 = Removed866 := by
  kernel_rfl
#print axioms Removed866_eq
end InitECandidate.Proofs.BackendStages
