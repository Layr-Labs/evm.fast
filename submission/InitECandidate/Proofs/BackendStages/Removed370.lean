import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc370
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody370_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody370_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody370_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody370_3 : StackLang.HolProg 64 :=
.seq RemovedBody370_1 RemovedBody370_2

def RemovedBody370_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody370_3 RemovedBody370_4

def RemovedBody370_6 : StackLang.HolProg 64 :=
.seq RemovedBody370_0 RemovedBody370_5

def RemovedBody370_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody370_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody370_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody370_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody370_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody370_12 : StackLang.HolProg 64 :=
.seq RemovedBody370_10 RemovedBody370_11

def RemovedBody370_13 : StackLang.HolProg 64 :=
.seq RemovedBody370_9 RemovedBody370_12

def RemovedBody370_14 : StackLang.HolProg 64 :=
.seq RemovedBody370_8 RemovedBody370_13

def RemovedBody370_15 : StackLang.HolProg 64 :=
.seq RemovedBody370_7 RemovedBody370_14

def RemovedBody370_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1085#64)

def RemovedBody370_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody370_19 : StackLang.HolProg 64 :=
.seq RemovedBody370_17 RemovedBody370_18

def RemovedBody370_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody370_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody370_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody370_23 : StackLang.HolProg 64 :=
.seq RemovedBody370_21 RemovedBody370_22

def RemovedBody370_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody370_23 RemovedBody370_24

def RemovedBody370_26 : StackLang.HolProg 64 :=
.seq RemovedBody370_20 RemovedBody370_25

def RemovedBody370_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody370_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody370_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 3

def RemovedBody370_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody370_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody370_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody370_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody370_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody370_36 : StackLang.HolProg 64 :=
.seq RemovedBody370_34 RemovedBody370_35

def RemovedBody370_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody370_38 : StackLang.HolProg 64 :=
.seq RemovedBody370_36 RemovedBody370_37

def RemovedBody370_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody370_40 : StackLang.HolProg 64 :=
.seq RemovedBody370_38 RemovedBody370_39

def RemovedBody370_41 : StackLang.HolProg 64 :=
.seq RemovedBody370_33 RemovedBody370_40

def RemovedBody370_42 : StackLang.HolProg 64 :=
.seq RemovedBody370_32 RemovedBody370_41

def RemovedBody370_43 : StackLang.HolProg 64 :=
.seq RemovedBody370_31 RemovedBody370_42

def RemovedBody370_44 : StackLang.HolProg 64 :=
.seq RemovedBody370_30 RemovedBody370_43

def RemovedBody370_45 : StackLang.HolProg 64 :=
.seq RemovedBody370_29 RemovedBody370_44

def RemovedBody370_46 : StackLang.HolProg 64 :=
.seq RemovedBody370_28 RemovedBody370_45

def RemovedBody370_47 : StackLang.HolProg 64 :=
.seq RemovedBody370_27 RemovedBody370_46

def RemovedBody370_48 : StackLang.HolProg 64 :=
.seq RemovedBody370_26 RemovedBody370_47

def RemovedBody370_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody370_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody370_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody370_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody370_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody370_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody370_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody370_59 : StackLang.HolProg 64 :=
.seq RemovedBody370_57 RemovedBody370_58

def RemovedBody370_60 : StackLang.HolProg 64 :=
.seq RemovedBody370_56 RemovedBody370_59

def RemovedBody370_61 : StackLang.HolProg 64 :=
.seq RemovedBody370_55 RemovedBody370_60

def RemovedBody370_62 : StackLang.HolProg 64 :=
.seq RemovedBody370_54 RemovedBody370_61

def RemovedBody370_63 : StackLang.HolProg 64 :=
.seq RemovedBody370_53 RemovedBody370_62

def RemovedBody370_64 : StackLang.HolProg 64 :=
.seq RemovedBody370_52 RemovedBody370_63

def RemovedBody370_65 : StackLang.HolProg 64 :=
.seq RemovedBody370_51 RemovedBody370_64

def RemovedBody370_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody370_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody370_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody370_69 : StackLang.HolProg 64 :=
.seq RemovedBody370_67 RemovedBody370_68

def RemovedBody370_70 : StackLang.HolProg 64 :=
.seq RemovedBody370_66 RemovedBody370_69

def RemovedBody370_71 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody370_72 : StackLang.HolProg 64 :=
.seq RemovedBody370_70 RemovedBody370_71

def RemovedBody370_73 : StackLang.HolProg 64 :=
.call (some (RemovedBody370_65, 0, 370, 2)) (Sum.inl 69) (some (RemovedBody370_72, 370, 3))

def RemovedBody370_74 : StackLang.HolProg 64 :=
.seq RemovedBody370_50 RemovedBody370_73

def RemovedBody370_75 : StackLang.HolProg 64 :=
.seq RemovedBody370_49 RemovedBody370_74

def RemovedBody370_76 : StackLang.HolProg 64 :=
.seq RemovedBody370_48 RemovedBody370_75

def RemovedBody370_77 : StackLang.HolProg 64 :=
.seq RemovedBody370_19 RemovedBody370_76

def RemovedBody370_78 : StackLang.HolProg 64 :=
.seq RemovedBody370_16 RemovedBody370_77

def RemovedBody370_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody370_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody370_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody370_82 : StackLang.HolProg 64 :=
.seq RemovedBody370_80 RemovedBody370_81

def RemovedBody370_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1086#64)

def RemovedBody370_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody370_86 : StackLang.HolProg 64 :=
.seq RemovedBody370_84 RemovedBody370_85

def RemovedBody370_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody370_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody370_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody370_90 : StackLang.HolProg 64 :=
.seq RemovedBody370_88 RemovedBody370_89

def RemovedBody370_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody370_90 RemovedBody370_91

def RemovedBody370_93 : StackLang.HolProg 64 :=
.seq RemovedBody370_87 RemovedBody370_92

def RemovedBody370_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody370_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody370_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 5

def RemovedBody370_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody370_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody370_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody370_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody370_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody370_103 : StackLang.HolProg 64 :=
.seq RemovedBody370_101 RemovedBody370_102

def RemovedBody370_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody370_105 : StackLang.HolProg 64 :=
.seq RemovedBody370_103 RemovedBody370_104

def RemovedBody370_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody370_107 : StackLang.HolProg 64 :=
.seq RemovedBody370_105 RemovedBody370_106

def RemovedBody370_108 : StackLang.HolProg 64 :=
.seq RemovedBody370_100 RemovedBody370_107

def RemovedBody370_109 : StackLang.HolProg 64 :=
.seq RemovedBody370_99 RemovedBody370_108

def RemovedBody370_110 : StackLang.HolProg 64 :=
.seq RemovedBody370_98 RemovedBody370_109

def RemovedBody370_111 : StackLang.HolProg 64 :=
.seq RemovedBody370_97 RemovedBody370_110

def RemovedBody370_112 : StackLang.HolProg 64 :=
.seq RemovedBody370_96 RemovedBody370_111

def RemovedBody370_113 : StackLang.HolProg 64 :=
.seq RemovedBody370_95 RemovedBody370_112

def RemovedBody370_114 : StackLang.HolProg 64 :=
.seq RemovedBody370_94 RemovedBody370_113

def RemovedBody370_115 : StackLang.HolProg 64 :=
.seq RemovedBody370_93 RemovedBody370_114

def RemovedBody370_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody370_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody370_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody370_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody370_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody370_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody370_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody370_126 : StackLang.HolProg 64 :=
.seq RemovedBody370_124 RemovedBody370_125

def RemovedBody370_127 : StackLang.HolProg 64 :=
.seq RemovedBody370_123 RemovedBody370_126

def RemovedBody370_128 : StackLang.HolProg 64 :=
.seq RemovedBody370_122 RemovedBody370_127

def RemovedBody370_129 : StackLang.HolProg 64 :=
.seq RemovedBody370_121 RemovedBody370_128

def RemovedBody370_130 : StackLang.HolProg 64 :=
.seq RemovedBody370_120 RemovedBody370_129

def RemovedBody370_131 : StackLang.HolProg 64 :=
.seq RemovedBody370_119 RemovedBody370_130

def RemovedBody370_132 : StackLang.HolProg 64 :=
.seq RemovedBody370_118 RemovedBody370_131

def RemovedBody370_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody370_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody370_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody370_136 : StackLang.HolProg 64 :=
.seq RemovedBody370_134 RemovedBody370_135

def RemovedBody370_137 : StackLang.HolProg 64 :=
.seq RemovedBody370_133 RemovedBody370_136

def RemovedBody370_138 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody370_139 : StackLang.HolProg 64 :=
.seq RemovedBody370_137 RemovedBody370_138

def RemovedBody370_140 : StackLang.HolProg 64 :=
.call (some (RemovedBody370_132, 0, 370, 4)) (Sum.inl 367) (some (RemovedBody370_139, 370, 5))

def RemovedBody370_141 : StackLang.HolProg 64 :=
.seq RemovedBody370_117 RemovedBody370_140

def RemovedBody370_142 : StackLang.HolProg 64 :=
.seq RemovedBody370_116 RemovedBody370_141

def RemovedBody370_143 : StackLang.HolProg 64 :=
.seq RemovedBody370_115 RemovedBody370_142

def RemovedBody370_144 : StackLang.HolProg 64 :=
.seq RemovedBody370_86 RemovedBody370_143

def RemovedBody370_145 : StackLang.HolProg 64 :=
.seq RemovedBody370_83 RemovedBody370_144

def RemovedBody370_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody370_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody370_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1087#64)

def RemovedBody370_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody370_151 : StackLang.HolProg 64 :=
.seq RemovedBody370_149 RemovedBody370_150

def RemovedBody370_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody370_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody370_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody370_155 : StackLang.HolProg 64 :=
.seq RemovedBody370_153 RemovedBody370_154

def RemovedBody370_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_157 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody370_155 RemovedBody370_156

def RemovedBody370_158 : StackLang.HolProg 64 :=
.seq RemovedBody370_152 RemovedBody370_157

def RemovedBody370_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody370_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody370_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 7

def RemovedBody370_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody370_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody370_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody370_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody370_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody370_168 : StackLang.HolProg 64 :=
.seq RemovedBody370_166 RemovedBody370_167

def RemovedBody370_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody370_170 : StackLang.HolProg 64 :=
.seq RemovedBody370_168 RemovedBody370_169

def RemovedBody370_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody370_172 : StackLang.HolProg 64 :=
.seq RemovedBody370_170 RemovedBody370_171

def RemovedBody370_173 : StackLang.HolProg 64 :=
.seq RemovedBody370_165 RemovedBody370_172

def RemovedBody370_174 : StackLang.HolProg 64 :=
.seq RemovedBody370_164 RemovedBody370_173

def RemovedBody370_175 : StackLang.HolProg 64 :=
.seq RemovedBody370_163 RemovedBody370_174

def RemovedBody370_176 : StackLang.HolProg 64 :=
.seq RemovedBody370_162 RemovedBody370_175

def RemovedBody370_177 : StackLang.HolProg 64 :=
.seq RemovedBody370_161 RemovedBody370_176

def RemovedBody370_178 : StackLang.HolProg 64 :=
.seq RemovedBody370_160 RemovedBody370_177

def RemovedBody370_179 : StackLang.HolProg 64 :=
.seq RemovedBody370_159 RemovedBody370_178

def RemovedBody370_180 : StackLang.HolProg 64 :=
.seq RemovedBody370_158 RemovedBody370_179

def RemovedBody370_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody370_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody370_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody370_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody370_188 : StackLang.HolProg 64 :=
.seq RemovedBody370_186 RemovedBody370_187

def RemovedBody370_189 : StackLang.HolProg 64 :=
.seq RemovedBody370_185 RemovedBody370_188

def RemovedBody370_190 : StackLang.HolProg 64 :=
.seq RemovedBody370_184 RemovedBody370_189

def RemovedBody370_191 : StackLang.HolProg 64 :=
.seq RemovedBody370_183 RemovedBody370_190

def RemovedBody370_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody370_193 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody370_194 : StackLang.HolProg 64 :=
.seq RemovedBody370_192 RemovedBody370_193

def RemovedBody370_195 : StackLang.HolProg 64 :=
.call (some (RemovedBody370_191, 0, 370, 6)) (Sum.inl 158) (some (RemovedBody370_194, 370, 7))

def RemovedBody370_196 : StackLang.HolProg 64 :=
.seq RemovedBody370_182 RemovedBody370_195

def RemovedBody370_197 : StackLang.HolProg 64 :=
.seq RemovedBody370_181 RemovedBody370_196

def RemovedBody370_198 : StackLang.HolProg 64 :=
.seq RemovedBody370_180 RemovedBody370_197

def RemovedBody370_199 : StackLang.HolProg 64 :=
.seq RemovedBody370_151 RemovedBody370_198

def RemovedBody370_200 : StackLang.HolProg 64 :=
.seq RemovedBody370_148 RemovedBody370_199

def RemovedBody370_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody370_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody370_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1088#64)

def RemovedBody370_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody370_206 : StackLang.HolProg 64 :=
.seq RemovedBody370_204 RemovedBody370_205

def RemovedBody370_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody370_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody370_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody370_210 : StackLang.HolProg 64 :=
.seq RemovedBody370_208 RemovedBody370_209

def RemovedBody370_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody370_210 RemovedBody370_211

def RemovedBody370_213 : StackLang.HolProg 64 :=
.seq RemovedBody370_207 RemovedBody370_212

def RemovedBody370_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody370_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody370_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 9

def RemovedBody370_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody370_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody370_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody370_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody370_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody370_223 : StackLang.HolProg 64 :=
.seq RemovedBody370_221 RemovedBody370_222

def RemovedBody370_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody370_225 : StackLang.HolProg 64 :=
.seq RemovedBody370_223 RemovedBody370_224

def RemovedBody370_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody370_227 : StackLang.HolProg 64 :=
.seq RemovedBody370_225 RemovedBody370_226

def RemovedBody370_228 : StackLang.HolProg 64 :=
.seq RemovedBody370_220 RemovedBody370_227

def RemovedBody370_229 : StackLang.HolProg 64 :=
.seq RemovedBody370_219 RemovedBody370_228

def RemovedBody370_230 : StackLang.HolProg 64 :=
.seq RemovedBody370_218 RemovedBody370_229

def RemovedBody370_231 : StackLang.HolProg 64 :=
.seq RemovedBody370_217 RemovedBody370_230

def RemovedBody370_232 : StackLang.HolProg 64 :=
.seq RemovedBody370_216 RemovedBody370_231

def RemovedBody370_233 : StackLang.HolProg 64 :=
.seq RemovedBody370_215 RemovedBody370_232

def RemovedBody370_234 : StackLang.HolProg 64 :=
.seq RemovedBody370_214 RemovedBody370_233

def RemovedBody370_235 : StackLang.HolProg 64 :=
.seq RemovedBody370_213 RemovedBody370_234

def RemovedBody370_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody370_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody370_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody370_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody370_243 : StackLang.HolProg 64 :=
.seq RemovedBody370_241 RemovedBody370_242

def RemovedBody370_244 : StackLang.HolProg 64 :=
.seq RemovedBody370_240 RemovedBody370_243

def RemovedBody370_245 : StackLang.HolProg 64 :=
.seq RemovedBody370_239 RemovedBody370_244

def RemovedBody370_246 : StackLang.HolProg 64 :=
.seq RemovedBody370_238 RemovedBody370_245

def RemovedBody370_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody370_248 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody370_249 : StackLang.HolProg 64 :=
.seq RemovedBody370_247 RemovedBody370_248

def RemovedBody370_250 : StackLang.HolProg 64 :=
.call (some (RemovedBody370_246, 0, 370, 8)) (Sum.inl 70) (some (RemovedBody370_249, 370, 9))

def RemovedBody370_251 : StackLang.HolProg 64 :=
.seq RemovedBody370_237 RemovedBody370_250

def RemovedBody370_252 : StackLang.HolProg 64 :=
.seq RemovedBody370_236 RemovedBody370_251

def RemovedBody370_253 : StackLang.HolProg 64 :=
.seq RemovedBody370_235 RemovedBody370_252

def RemovedBody370_254 : StackLang.HolProg 64 :=
.seq RemovedBody370_206 RemovedBody370_253

def RemovedBody370_255 : StackLang.HolProg 64 :=
.seq RemovedBody370_203 RemovedBody370_254

def RemovedBody370_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody370_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody370_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody370_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody370_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody370_261 : StackLang.HolProg 64 :=
.seq RemovedBody370_259 RemovedBody370_260

def RemovedBody370_262 : StackLang.HolProg 64 :=
.seq RemovedBody370_258 RemovedBody370_261

def RemovedBody370_263 : StackLang.HolProg 64 :=
.seq RemovedBody370_257 RemovedBody370_262

def RemovedBody370_264 : StackLang.HolProg 64 :=
.seq RemovedBody370_256 RemovedBody370_263

def RemovedBody370_265 : StackLang.HolProg 64 :=
.seq RemovedBody370_255 RemovedBody370_264

def RemovedBody370_266 : StackLang.HolProg 64 :=
.seq RemovedBody370_202 RemovedBody370_265

def RemovedBody370_267 : StackLang.HolProg 64 :=
.seq RemovedBody370_201 RemovedBody370_266

def RemovedBody370_268 : StackLang.HolProg 64 :=
.seq RemovedBody370_200 RemovedBody370_267

def RemovedBody370_269 : StackLang.HolProg 64 :=
.seq RemovedBody370_147 RemovedBody370_268

def RemovedBody370_270 : StackLang.HolProg 64 :=
.seq RemovedBody370_146 RemovedBody370_269

def RemovedBody370_271 : StackLang.HolProg 64 :=
.seq RemovedBody370_145 RemovedBody370_270

def RemovedBody370_272 : StackLang.HolProg 64 :=
.seq RemovedBody370_82 RemovedBody370_271

def RemovedBody370_273 : StackLang.HolProg 64 :=
.seq RemovedBody370_79 RemovedBody370_272

def RemovedBody370_274 : StackLang.HolProg 64 :=
.seq RemovedBody370_78 RemovedBody370_273

def RemovedBody370_275 : StackLang.HolProg 64 :=
.seq RemovedBody370_15 RemovedBody370_274

def RemovedBody370_276 : StackLang.HolProg 64 :=
.seq RemovedBody370_6 RemovedBody370_275

def Removed370 : Nat × StackLang.HolProg 64 := (370, RemovedBody370_276)
theorem Removed370_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc370 = Removed370 := by
  kernel_rfl
#print axioms Removed370_eq
end InitECandidate.Proofs.BackendStages
