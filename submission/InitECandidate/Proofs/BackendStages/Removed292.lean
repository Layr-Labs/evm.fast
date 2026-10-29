import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc292
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody292_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody292_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody292_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody292_3 : StackLang.HolProg 64 :=
.seq RemovedBody292_1 RemovedBody292_2

def RemovedBody292_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody292_3 RemovedBody292_4

def RemovedBody292_6 : StackLang.HolProg 64 :=
.seq RemovedBody292_0 RemovedBody292_5

def RemovedBody292_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody292_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody292_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody292_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody292_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody292_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody292_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody292_14 : StackLang.HolProg 64 :=
.seq RemovedBody292_12 RemovedBody292_13

def RemovedBody292_15 : StackLang.HolProg 64 :=
.seq RemovedBody292_11 RemovedBody292_14

def RemovedBody292_16 : StackLang.HolProg 64 :=
.seq RemovedBody292_10 RemovedBody292_15

def RemovedBody292_17 : StackLang.HolProg 64 :=
.seq RemovedBody292_9 RemovedBody292_16

def RemovedBody292_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 794#64)

def RemovedBody292_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody292_21 : StackLang.HolProg 64 :=
.seq RemovedBody292_19 RemovedBody292_20

def RemovedBody292_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody292_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody292_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody292_25 : StackLang.HolProg 64 :=
.seq RemovedBody292_23 RemovedBody292_24

def RemovedBody292_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody292_25 RemovedBody292_26

def RemovedBody292_28 : StackLang.HolProg 64 :=
.seq RemovedBody292_22 RemovedBody292_27

def RemovedBody292_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody292_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody292_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 292 3

def RemovedBody292_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody292_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody292_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody292_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody292_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody292_38 : StackLang.HolProg 64 :=
.seq RemovedBody292_36 RemovedBody292_37

def RemovedBody292_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody292_40 : StackLang.HolProg 64 :=
.seq RemovedBody292_38 RemovedBody292_39

def RemovedBody292_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody292_42 : StackLang.HolProg 64 :=
.seq RemovedBody292_40 RemovedBody292_41

def RemovedBody292_43 : StackLang.HolProg 64 :=
.seq RemovedBody292_35 RemovedBody292_42

def RemovedBody292_44 : StackLang.HolProg 64 :=
.seq RemovedBody292_34 RemovedBody292_43

def RemovedBody292_45 : StackLang.HolProg 64 :=
.seq RemovedBody292_33 RemovedBody292_44

def RemovedBody292_46 : StackLang.HolProg 64 :=
.seq RemovedBody292_32 RemovedBody292_45

def RemovedBody292_47 : StackLang.HolProg 64 :=
.seq RemovedBody292_31 RemovedBody292_46

def RemovedBody292_48 : StackLang.HolProg 64 :=
.seq RemovedBody292_30 RemovedBody292_47

def RemovedBody292_49 : StackLang.HolProg 64 :=
.seq RemovedBody292_29 RemovedBody292_48

def RemovedBody292_50 : StackLang.HolProg 64 :=
.seq RemovedBody292_28 RemovedBody292_49

def RemovedBody292_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody292_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody292_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody292_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody292_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody292_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody292_60 : StackLang.HolProg 64 :=
.seq RemovedBody292_58 RemovedBody292_59

def RemovedBody292_61 : StackLang.HolProg 64 :=
.seq RemovedBody292_57 RemovedBody292_60

def RemovedBody292_62 : StackLang.HolProg 64 :=
.seq RemovedBody292_56 RemovedBody292_61

def RemovedBody292_63 : StackLang.HolProg 64 :=
.seq RemovedBody292_55 RemovedBody292_62

def RemovedBody292_64 : StackLang.HolProg 64 :=
.seq RemovedBody292_54 RemovedBody292_63

def RemovedBody292_65 : StackLang.HolProg 64 :=
.seq RemovedBody292_53 RemovedBody292_64

def RemovedBody292_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody292_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody292_68 : StackLang.HolProg 64 :=
.seq RemovedBody292_66 RemovedBody292_67

def RemovedBody292_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody292_70 : StackLang.HolProg 64 :=
.seq RemovedBody292_68 RemovedBody292_69

def RemovedBody292_71 : StackLang.HolProg 64 :=
.call (some (RemovedBody292_65, 0, 292, 2)) (Sum.inl 68) (some (RemovedBody292_70, 292, 3))

def RemovedBody292_72 : StackLang.HolProg 64 :=
.seq RemovedBody292_52 RemovedBody292_71

def RemovedBody292_73 : StackLang.HolProg 64 :=
.seq RemovedBody292_51 RemovedBody292_72

def RemovedBody292_74 : StackLang.HolProg 64 :=
.seq RemovedBody292_50 RemovedBody292_73

def RemovedBody292_75 : StackLang.HolProg 64 :=
.seq RemovedBody292_21 RemovedBody292_74

def RemovedBody292_76 : StackLang.HolProg 64 :=
.seq RemovedBody292_18 RemovedBody292_75

def RemovedBody292_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody292_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody292_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody292_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody292_81 : StackLang.HolProg 64 :=
.seq RemovedBody292_79 RemovedBody292_80

def RemovedBody292_82 : StackLang.HolProg 64 :=
.seq RemovedBody292_78 RemovedBody292_81

def RemovedBody292_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 795#64)

def RemovedBody292_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody292_86 : StackLang.HolProg 64 :=
.seq RemovedBody292_84 RemovedBody292_85

def RemovedBody292_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody292_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody292_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody292_90 : StackLang.HolProg 64 :=
.seq RemovedBody292_88 RemovedBody292_89

def RemovedBody292_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody292_90 RemovedBody292_91

def RemovedBody292_93 : StackLang.HolProg 64 :=
.seq RemovedBody292_87 RemovedBody292_92

def RemovedBody292_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody292_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody292_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 292 5

def RemovedBody292_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody292_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody292_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody292_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody292_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody292_103 : StackLang.HolProg 64 :=
.seq RemovedBody292_101 RemovedBody292_102

def RemovedBody292_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody292_105 : StackLang.HolProg 64 :=
.seq RemovedBody292_103 RemovedBody292_104

def RemovedBody292_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody292_107 : StackLang.HolProg 64 :=
.seq RemovedBody292_105 RemovedBody292_106

def RemovedBody292_108 : StackLang.HolProg 64 :=
.seq RemovedBody292_100 RemovedBody292_107

def RemovedBody292_109 : StackLang.HolProg 64 :=
.seq RemovedBody292_99 RemovedBody292_108

def RemovedBody292_110 : StackLang.HolProg 64 :=
.seq RemovedBody292_98 RemovedBody292_109

def RemovedBody292_111 : StackLang.HolProg 64 :=
.seq RemovedBody292_97 RemovedBody292_110

def RemovedBody292_112 : StackLang.HolProg 64 :=
.seq RemovedBody292_96 RemovedBody292_111

def RemovedBody292_113 : StackLang.HolProg 64 :=
.seq RemovedBody292_95 RemovedBody292_112

def RemovedBody292_114 : StackLang.HolProg 64 :=
.seq RemovedBody292_94 RemovedBody292_113

def RemovedBody292_115 : StackLang.HolProg 64 :=
.seq RemovedBody292_93 RemovedBody292_114

def RemovedBody292_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody292_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody292_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody292_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody292_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody292_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody292_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody292_126 : StackLang.HolProg 64 :=
.seq RemovedBody292_124 RemovedBody292_125

def RemovedBody292_127 : StackLang.HolProg 64 :=
.seq RemovedBody292_123 RemovedBody292_126

def RemovedBody292_128 : StackLang.HolProg 64 :=
.seq RemovedBody292_122 RemovedBody292_127

def RemovedBody292_129 : StackLang.HolProg 64 :=
.seq RemovedBody292_121 RemovedBody292_128

def RemovedBody292_130 : StackLang.HolProg 64 :=
.seq RemovedBody292_120 RemovedBody292_129

def RemovedBody292_131 : StackLang.HolProg 64 :=
.seq RemovedBody292_119 RemovedBody292_130

def RemovedBody292_132 : StackLang.HolProg 64 :=
.seq RemovedBody292_118 RemovedBody292_131

def RemovedBody292_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody292_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody292_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody292_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody292_137 : StackLang.HolProg 64 :=
.seq RemovedBody292_135 RemovedBody292_136

def RemovedBody292_138 : StackLang.HolProg 64 :=
.seq RemovedBody292_134 RemovedBody292_137

def RemovedBody292_139 : StackLang.HolProg 64 :=
.seq RemovedBody292_133 RemovedBody292_138

def RemovedBody292_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody292_141 : StackLang.HolProg 64 :=
.seq RemovedBody292_139 RemovedBody292_140

def RemovedBody292_142 : StackLang.HolProg 64 :=
.call (some (RemovedBody292_132, 0, 292, 4)) (Sum.inl 77) (some (RemovedBody292_141, 292, 5))

def RemovedBody292_143 : StackLang.HolProg 64 :=
.seq RemovedBody292_117 RemovedBody292_142

def RemovedBody292_144 : StackLang.HolProg 64 :=
.seq RemovedBody292_116 RemovedBody292_143

def RemovedBody292_145 : StackLang.HolProg 64 :=
.seq RemovedBody292_115 RemovedBody292_144

def RemovedBody292_146 : StackLang.HolProg 64 :=
.seq RemovedBody292_86 RemovedBody292_145

def RemovedBody292_147 : StackLang.HolProg 64 :=
.seq RemovedBody292_83 RemovedBody292_146

def RemovedBody292_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody292_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody292_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody292_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 796#64)

def RemovedBody292_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody292_155 : StackLang.HolProg 64 :=
.seq RemovedBody292_153 RemovedBody292_154

def RemovedBody292_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody292_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody292_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody292_159 : StackLang.HolProg 64 :=
.seq RemovedBody292_157 RemovedBody292_158

def RemovedBody292_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody292_159 RemovedBody292_160

def RemovedBody292_162 : StackLang.HolProg 64 :=
.seq RemovedBody292_156 RemovedBody292_161

def RemovedBody292_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody292_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody292_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 292 7

def RemovedBody292_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody292_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody292_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody292_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody292_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody292_172 : StackLang.HolProg 64 :=
.seq RemovedBody292_170 RemovedBody292_171

def RemovedBody292_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody292_174 : StackLang.HolProg 64 :=
.seq RemovedBody292_172 RemovedBody292_173

def RemovedBody292_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody292_176 : StackLang.HolProg 64 :=
.seq RemovedBody292_174 RemovedBody292_175

def RemovedBody292_177 : StackLang.HolProg 64 :=
.seq RemovedBody292_169 RemovedBody292_176

def RemovedBody292_178 : StackLang.HolProg 64 :=
.seq RemovedBody292_168 RemovedBody292_177

def RemovedBody292_179 : StackLang.HolProg 64 :=
.seq RemovedBody292_167 RemovedBody292_178

def RemovedBody292_180 : StackLang.HolProg 64 :=
.seq RemovedBody292_166 RemovedBody292_179

def RemovedBody292_181 : StackLang.HolProg 64 :=
.seq RemovedBody292_165 RemovedBody292_180

def RemovedBody292_182 : StackLang.HolProg 64 :=
.seq RemovedBody292_164 RemovedBody292_181

def RemovedBody292_183 : StackLang.HolProg 64 :=
.seq RemovedBody292_163 RemovedBody292_182

def RemovedBody292_184 : StackLang.HolProg 64 :=
.seq RemovedBody292_162 RemovedBody292_183

def RemovedBody292_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody292_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody292_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody292_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody292_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody292_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody292_193 : StackLang.HolProg 64 :=
.seq RemovedBody292_191 RemovedBody292_192

def RemovedBody292_194 : StackLang.HolProg 64 :=
.seq RemovedBody292_190 RemovedBody292_193

def RemovedBody292_195 : StackLang.HolProg 64 :=
.seq RemovedBody292_189 RemovedBody292_194

def RemovedBody292_196 : StackLang.HolProg 64 :=
.seq RemovedBody292_188 RemovedBody292_195

def RemovedBody292_197 : StackLang.HolProg 64 :=
.seq RemovedBody292_187 RemovedBody292_196

def RemovedBody292_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody292_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody292_200 : StackLang.HolProg 64 :=
.seq RemovedBody292_198 RemovedBody292_199

def RemovedBody292_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody292_202 : StackLang.HolProg 64 :=
.seq RemovedBody292_200 RemovedBody292_201

def RemovedBody292_203 : StackLang.HolProg 64 :=
.call (some (RemovedBody292_197, 0, 292, 6)) (Sum.inl 77) (some (RemovedBody292_202, 292, 7))

def RemovedBody292_204 : StackLang.HolProg 64 :=
.seq RemovedBody292_186 RemovedBody292_203

def RemovedBody292_205 : StackLang.HolProg 64 :=
.seq RemovedBody292_185 RemovedBody292_204

def RemovedBody292_206 : StackLang.HolProg 64 :=
.seq RemovedBody292_184 RemovedBody292_205

def RemovedBody292_207 : StackLang.HolProg 64 :=
.seq RemovedBody292_155 RemovedBody292_206

def RemovedBody292_208 : StackLang.HolProg 64 :=
.seq RemovedBody292_152 RemovedBody292_207

def RemovedBody292_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody292_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody292_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody292_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody292_213 : StackLang.HolProg 64 :=
.seq RemovedBody292_211 RemovedBody292_212

def RemovedBody292_214 : StackLang.HolProg 64 :=
.seq RemovedBody292_210 RemovedBody292_213

def RemovedBody292_215 : StackLang.HolProg 64 :=
.seq RemovedBody292_209 RemovedBody292_214

def RemovedBody292_216 : StackLang.HolProg 64 :=
.seq RemovedBody292_208 RemovedBody292_215

def RemovedBody292_217 : StackLang.HolProg 64 :=
.seq RemovedBody292_151 RemovedBody292_216

def RemovedBody292_218 : StackLang.HolProg 64 :=
.seq RemovedBody292_150 RemovedBody292_217

def RemovedBody292_219 : StackLang.HolProg 64 :=
.seq RemovedBody292_149 RemovedBody292_218

def RemovedBody292_220 : StackLang.HolProg 64 :=
.seq RemovedBody292_148 RemovedBody292_219

def RemovedBody292_221 : StackLang.HolProg 64 :=
.seq RemovedBody292_147 RemovedBody292_220

def RemovedBody292_222 : StackLang.HolProg 64 :=
.seq RemovedBody292_82 RemovedBody292_221

def RemovedBody292_223 : StackLang.HolProg 64 :=
.seq RemovedBody292_77 RemovedBody292_222

def RemovedBody292_224 : StackLang.HolProg 64 :=
.seq RemovedBody292_76 RemovedBody292_223

def RemovedBody292_225 : StackLang.HolProg 64 :=
.seq RemovedBody292_17 RemovedBody292_224

def RemovedBody292_226 : StackLang.HolProg 64 :=
.seq RemovedBody292_8 RemovedBody292_225

def RemovedBody292_227 : StackLang.HolProg 64 :=
.seq RemovedBody292_7 RemovedBody292_226

def RemovedBody292_228 : StackLang.HolProg 64 :=
.seq RemovedBody292_6 RemovedBody292_227

def Removed292 : Nat × StackLang.HolProg 64 := (292, RemovedBody292_228)
theorem Removed292_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc292 = Removed292 := by
  kernel_rfl
#print axioms Removed292_eq
end InitECandidate.Proofs.BackendStages
