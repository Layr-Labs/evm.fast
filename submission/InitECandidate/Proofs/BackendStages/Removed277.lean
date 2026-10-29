import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc277
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody277_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody277_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody277_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody277_3 : StackLang.HolProg 64 :=
.seq RemovedBody277_1 RemovedBody277_2

def RemovedBody277_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody277_3 RemovedBody277_4

def RemovedBody277_6 : StackLang.HolProg 64 :=
.seq RemovedBody277_0 RemovedBody277_5

def RemovedBody277_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody277_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody277_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody277_10 : StackLang.HolProg 64 :=
.seq RemovedBody277_8 RemovedBody277_9

def RemovedBody277_11 : StackLang.HolProg 64 :=
.seq RemovedBody277_7 RemovedBody277_10

def RemovedBody277_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 722#64)

def RemovedBody277_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody277_15 : StackLang.HolProg 64 :=
.seq RemovedBody277_13 RemovedBody277_14

def RemovedBody277_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody277_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody277_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody277_19 : StackLang.HolProg 64 :=
.seq RemovedBody277_17 RemovedBody277_18

def RemovedBody277_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody277_19 RemovedBody277_20

def RemovedBody277_22 : StackLang.HolProg 64 :=
.seq RemovedBody277_16 RemovedBody277_21

def RemovedBody277_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody277_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody277_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 3

def RemovedBody277_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody277_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody277_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody277_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody277_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody277_32 : StackLang.HolProg 64 :=
.seq RemovedBody277_30 RemovedBody277_31

def RemovedBody277_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody277_34 : StackLang.HolProg 64 :=
.seq RemovedBody277_32 RemovedBody277_33

def RemovedBody277_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody277_36 : StackLang.HolProg 64 :=
.seq RemovedBody277_34 RemovedBody277_35

def RemovedBody277_37 : StackLang.HolProg 64 :=
.seq RemovedBody277_29 RemovedBody277_36

def RemovedBody277_38 : StackLang.HolProg 64 :=
.seq RemovedBody277_28 RemovedBody277_37

def RemovedBody277_39 : StackLang.HolProg 64 :=
.seq RemovedBody277_27 RemovedBody277_38

def RemovedBody277_40 : StackLang.HolProg 64 :=
.seq RemovedBody277_26 RemovedBody277_39

def RemovedBody277_41 : StackLang.HolProg 64 :=
.seq RemovedBody277_25 RemovedBody277_40

def RemovedBody277_42 : StackLang.HolProg 64 :=
.seq RemovedBody277_24 RemovedBody277_41

def RemovedBody277_43 : StackLang.HolProg 64 :=
.seq RemovedBody277_23 RemovedBody277_42

def RemovedBody277_44 : StackLang.HolProg 64 :=
.seq RemovedBody277_22 RemovedBody277_43

def RemovedBody277_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody277_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody277_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody277_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody277_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody277_53 : StackLang.HolProg 64 :=
.seq RemovedBody277_51 RemovedBody277_52

def RemovedBody277_54 : StackLang.HolProg 64 :=
.seq RemovedBody277_50 RemovedBody277_53

def RemovedBody277_55 : StackLang.HolProg 64 :=
.seq RemovedBody277_49 RemovedBody277_54

def RemovedBody277_56 : StackLang.HolProg 64 :=
.seq RemovedBody277_48 RemovedBody277_55

def RemovedBody277_57 : StackLang.HolProg 64 :=
.seq RemovedBody277_47 RemovedBody277_56

def RemovedBody277_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody277_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody277_60 : StackLang.HolProg 64 :=
.seq RemovedBody277_58 RemovedBody277_59

def RemovedBody277_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody277_57, 0, 277, 2)) (Sum.inl 69) (some (RemovedBody277_60, 277, 3))

def RemovedBody277_62 : StackLang.HolProg 64 :=
.seq RemovedBody277_46 RemovedBody277_61

def RemovedBody277_63 : StackLang.HolProg 64 :=
.seq RemovedBody277_45 RemovedBody277_62

def RemovedBody277_64 : StackLang.HolProg 64 :=
.seq RemovedBody277_44 RemovedBody277_63

def RemovedBody277_65 : StackLang.HolProg 64 :=
.seq RemovedBody277_15 RemovedBody277_64

def RemovedBody277_66 : StackLang.HolProg 64 :=
.seq RemovedBody277_12 RemovedBody277_65

def RemovedBody277_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody277_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody277_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody277_70 : StackLang.HolProg 64 :=
.seq RemovedBody277_68 RemovedBody277_69

def RemovedBody277_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 723#64)

def RemovedBody277_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody277_74 : StackLang.HolProg 64 :=
.seq RemovedBody277_72 RemovedBody277_73

def RemovedBody277_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody277_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody277_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody277_78 : StackLang.HolProg 64 :=
.seq RemovedBody277_76 RemovedBody277_77

def RemovedBody277_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody277_78 RemovedBody277_79

def RemovedBody277_81 : StackLang.HolProg 64 :=
.seq RemovedBody277_75 RemovedBody277_80

def RemovedBody277_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody277_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody277_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 5

def RemovedBody277_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody277_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody277_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody277_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody277_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody277_91 : StackLang.HolProg 64 :=
.seq RemovedBody277_89 RemovedBody277_90

def RemovedBody277_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody277_93 : StackLang.HolProg 64 :=
.seq RemovedBody277_91 RemovedBody277_92

def RemovedBody277_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody277_95 : StackLang.HolProg 64 :=
.seq RemovedBody277_93 RemovedBody277_94

def RemovedBody277_96 : StackLang.HolProg 64 :=
.seq RemovedBody277_88 RemovedBody277_95

def RemovedBody277_97 : StackLang.HolProg 64 :=
.seq RemovedBody277_87 RemovedBody277_96

def RemovedBody277_98 : StackLang.HolProg 64 :=
.seq RemovedBody277_86 RemovedBody277_97

def RemovedBody277_99 : StackLang.HolProg 64 :=
.seq RemovedBody277_85 RemovedBody277_98

def RemovedBody277_100 : StackLang.HolProg 64 :=
.seq RemovedBody277_84 RemovedBody277_99

def RemovedBody277_101 : StackLang.HolProg 64 :=
.seq RemovedBody277_83 RemovedBody277_100

def RemovedBody277_102 : StackLang.HolProg 64 :=
.seq RemovedBody277_82 RemovedBody277_101

def RemovedBody277_103 : StackLang.HolProg 64 :=
.seq RemovedBody277_81 RemovedBody277_102

def RemovedBody277_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody277_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody277_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody277_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody277_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody277_112 : StackLang.HolProg 64 :=
.seq RemovedBody277_110 RemovedBody277_111

def RemovedBody277_113 : StackLang.HolProg 64 :=
.seq RemovedBody277_109 RemovedBody277_112

def RemovedBody277_114 : StackLang.HolProg 64 :=
.seq RemovedBody277_108 RemovedBody277_113

def RemovedBody277_115 : StackLang.HolProg 64 :=
.seq RemovedBody277_107 RemovedBody277_114

def RemovedBody277_116 : StackLang.HolProg 64 :=
.seq RemovedBody277_106 RemovedBody277_115

def RemovedBody277_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody277_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody277_119 : StackLang.HolProg 64 :=
.seq RemovedBody277_117 RemovedBody277_118

def RemovedBody277_120 : StackLang.HolProg 64 :=
.call (some (RemovedBody277_116, 0, 277, 4)) (Sum.inl 276) (some (RemovedBody277_119, 277, 5))

def RemovedBody277_121 : StackLang.HolProg 64 :=
.seq RemovedBody277_105 RemovedBody277_120

def RemovedBody277_122 : StackLang.HolProg 64 :=
.seq RemovedBody277_104 RemovedBody277_121

def RemovedBody277_123 : StackLang.HolProg 64 :=
.seq RemovedBody277_103 RemovedBody277_122

def RemovedBody277_124 : StackLang.HolProg 64 :=
.seq RemovedBody277_74 RemovedBody277_123

def RemovedBody277_125 : StackLang.HolProg 64 :=
.seq RemovedBody277_71 RemovedBody277_124

def RemovedBody277_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody277_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody277_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 724#64)

def RemovedBody277_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody277_131 : StackLang.HolProg 64 :=
.seq RemovedBody277_129 RemovedBody277_130

def RemovedBody277_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody277_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody277_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody277_135 : StackLang.HolProg 64 :=
.seq RemovedBody277_133 RemovedBody277_134

def RemovedBody277_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody277_135 RemovedBody277_136

def RemovedBody277_138 : StackLang.HolProg 64 :=
.seq RemovedBody277_132 RemovedBody277_137

def RemovedBody277_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody277_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody277_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 7

def RemovedBody277_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody277_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody277_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody277_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody277_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody277_148 : StackLang.HolProg 64 :=
.seq RemovedBody277_146 RemovedBody277_147

def RemovedBody277_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody277_150 : StackLang.HolProg 64 :=
.seq RemovedBody277_148 RemovedBody277_149

def RemovedBody277_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody277_152 : StackLang.HolProg 64 :=
.seq RemovedBody277_150 RemovedBody277_151

def RemovedBody277_153 : StackLang.HolProg 64 :=
.seq RemovedBody277_145 RemovedBody277_152

def RemovedBody277_154 : StackLang.HolProg 64 :=
.seq RemovedBody277_144 RemovedBody277_153

def RemovedBody277_155 : StackLang.HolProg 64 :=
.seq RemovedBody277_143 RemovedBody277_154

def RemovedBody277_156 : StackLang.HolProg 64 :=
.seq RemovedBody277_142 RemovedBody277_155

def RemovedBody277_157 : StackLang.HolProg 64 :=
.seq RemovedBody277_141 RemovedBody277_156

def RemovedBody277_158 : StackLang.HolProg 64 :=
.seq RemovedBody277_140 RemovedBody277_157

def RemovedBody277_159 : StackLang.HolProg 64 :=
.seq RemovedBody277_139 RemovedBody277_158

def RemovedBody277_160 : StackLang.HolProg 64 :=
.seq RemovedBody277_138 RemovedBody277_159

def RemovedBody277_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody277_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody277_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody277_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody277_168 : StackLang.HolProg 64 :=
.seq RemovedBody277_166 RemovedBody277_167

def RemovedBody277_169 : StackLang.HolProg 64 :=
.seq RemovedBody277_165 RemovedBody277_168

def RemovedBody277_170 : StackLang.HolProg 64 :=
.seq RemovedBody277_164 RemovedBody277_169

def RemovedBody277_171 : StackLang.HolProg 64 :=
.seq RemovedBody277_163 RemovedBody277_170

def RemovedBody277_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody277_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody277_174 : StackLang.HolProg 64 :=
.seq RemovedBody277_172 RemovedBody277_173

def RemovedBody277_175 : StackLang.HolProg 64 :=
.call (some (RemovedBody277_171, 0, 277, 6)) (Sum.inl 158) (some (RemovedBody277_174, 277, 7))

def RemovedBody277_176 : StackLang.HolProg 64 :=
.seq RemovedBody277_162 RemovedBody277_175

def RemovedBody277_177 : StackLang.HolProg 64 :=
.seq RemovedBody277_161 RemovedBody277_176

def RemovedBody277_178 : StackLang.HolProg 64 :=
.seq RemovedBody277_160 RemovedBody277_177

def RemovedBody277_179 : StackLang.HolProg 64 :=
.seq RemovedBody277_131 RemovedBody277_178

def RemovedBody277_180 : StackLang.HolProg 64 :=
.seq RemovedBody277_128 RemovedBody277_179

def RemovedBody277_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody277_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody277_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 725#64)

def RemovedBody277_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody277_186 : StackLang.HolProg 64 :=
.seq RemovedBody277_184 RemovedBody277_185

def RemovedBody277_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody277_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody277_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody277_190 : StackLang.HolProg 64 :=
.seq RemovedBody277_188 RemovedBody277_189

def RemovedBody277_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_192 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody277_190 RemovedBody277_191

def RemovedBody277_193 : StackLang.HolProg 64 :=
.seq RemovedBody277_187 RemovedBody277_192

def RemovedBody277_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody277_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody277_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 9

def RemovedBody277_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody277_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody277_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody277_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody277_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody277_203 : StackLang.HolProg 64 :=
.seq RemovedBody277_201 RemovedBody277_202

def RemovedBody277_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody277_205 : StackLang.HolProg 64 :=
.seq RemovedBody277_203 RemovedBody277_204

def RemovedBody277_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody277_207 : StackLang.HolProg 64 :=
.seq RemovedBody277_205 RemovedBody277_206

def RemovedBody277_208 : StackLang.HolProg 64 :=
.seq RemovedBody277_200 RemovedBody277_207

def RemovedBody277_209 : StackLang.HolProg 64 :=
.seq RemovedBody277_199 RemovedBody277_208

def RemovedBody277_210 : StackLang.HolProg 64 :=
.seq RemovedBody277_198 RemovedBody277_209

def RemovedBody277_211 : StackLang.HolProg 64 :=
.seq RemovedBody277_197 RemovedBody277_210

def RemovedBody277_212 : StackLang.HolProg 64 :=
.seq RemovedBody277_196 RemovedBody277_211

def RemovedBody277_213 : StackLang.HolProg 64 :=
.seq RemovedBody277_195 RemovedBody277_212

def RemovedBody277_214 : StackLang.HolProg 64 :=
.seq RemovedBody277_194 RemovedBody277_213

def RemovedBody277_215 : StackLang.HolProg 64 :=
.seq RemovedBody277_193 RemovedBody277_214

def RemovedBody277_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody277_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody277_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody277_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody277_223 : StackLang.HolProg 64 :=
.seq RemovedBody277_221 RemovedBody277_222

def RemovedBody277_224 : StackLang.HolProg 64 :=
.seq RemovedBody277_220 RemovedBody277_223

def RemovedBody277_225 : StackLang.HolProg 64 :=
.seq RemovedBody277_219 RemovedBody277_224

def RemovedBody277_226 : StackLang.HolProg 64 :=
.seq RemovedBody277_218 RemovedBody277_225

def RemovedBody277_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody277_228 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody277_229 : StackLang.HolProg 64 :=
.seq RemovedBody277_227 RemovedBody277_228

def RemovedBody277_230 : StackLang.HolProg 64 :=
.call (some (RemovedBody277_226, 0, 277, 8)) (Sum.inl 70) (some (RemovedBody277_229, 277, 9))

def RemovedBody277_231 : StackLang.HolProg 64 :=
.seq RemovedBody277_217 RemovedBody277_230

def RemovedBody277_232 : StackLang.HolProg 64 :=
.seq RemovedBody277_216 RemovedBody277_231

def RemovedBody277_233 : StackLang.HolProg 64 :=
.seq RemovedBody277_215 RemovedBody277_232

def RemovedBody277_234 : StackLang.HolProg 64 :=
.seq RemovedBody277_186 RemovedBody277_233

def RemovedBody277_235 : StackLang.HolProg 64 :=
.seq RemovedBody277_183 RemovedBody277_234

def RemovedBody277_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody277_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody277_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody277_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody277_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody277_241 : StackLang.HolProg 64 :=
.seq RemovedBody277_239 RemovedBody277_240

def RemovedBody277_242 : StackLang.HolProg 64 :=
.seq RemovedBody277_238 RemovedBody277_241

def RemovedBody277_243 : StackLang.HolProg 64 :=
.seq RemovedBody277_237 RemovedBody277_242

def RemovedBody277_244 : StackLang.HolProg 64 :=
.seq RemovedBody277_236 RemovedBody277_243

def RemovedBody277_245 : StackLang.HolProg 64 :=
.seq RemovedBody277_235 RemovedBody277_244

def RemovedBody277_246 : StackLang.HolProg 64 :=
.seq RemovedBody277_182 RemovedBody277_245

def RemovedBody277_247 : StackLang.HolProg 64 :=
.seq RemovedBody277_181 RemovedBody277_246

def RemovedBody277_248 : StackLang.HolProg 64 :=
.seq RemovedBody277_180 RemovedBody277_247

def RemovedBody277_249 : StackLang.HolProg 64 :=
.seq RemovedBody277_127 RemovedBody277_248

def RemovedBody277_250 : StackLang.HolProg 64 :=
.seq RemovedBody277_126 RemovedBody277_249

def RemovedBody277_251 : StackLang.HolProg 64 :=
.seq RemovedBody277_125 RemovedBody277_250

def RemovedBody277_252 : StackLang.HolProg 64 :=
.seq RemovedBody277_70 RemovedBody277_251

def RemovedBody277_253 : StackLang.HolProg 64 :=
.seq RemovedBody277_67 RemovedBody277_252

def RemovedBody277_254 : StackLang.HolProg 64 :=
.seq RemovedBody277_66 RemovedBody277_253

def RemovedBody277_255 : StackLang.HolProg 64 :=
.seq RemovedBody277_11 RemovedBody277_254

def RemovedBody277_256 : StackLang.HolProg 64 :=
.seq RemovedBody277_6 RemovedBody277_255

def Removed277 : Nat × StackLang.HolProg 64 := (277, RemovedBody277_256)
theorem Removed277_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc277 = Removed277 := by
  kernel_rfl
#print axioms Removed277_eq
end InitECandidate.Proofs.BackendStages
