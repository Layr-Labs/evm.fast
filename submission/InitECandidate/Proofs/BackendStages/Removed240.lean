import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc240
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody240_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody240_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody240_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody240_3 : StackLang.HolProg 64 :=
.seq RemovedBody240_1 RemovedBody240_2

def RemovedBody240_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody240_3 RemovedBody240_4

def RemovedBody240_6 : StackLang.HolProg 64 :=
.seq RemovedBody240_0 RemovedBody240_5

def RemovedBody240_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody240_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody240_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody240_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_11 : StackLang.HolProg 64 :=
.seq RemovedBody240_9 RemovedBody240_10

def RemovedBody240_12 : StackLang.HolProg 64 :=
.seq RemovedBody240_8 RemovedBody240_11

def RemovedBody240_13 : StackLang.HolProg 64 :=
.seq RemovedBody240_7 RemovedBody240_12

def RemovedBody240_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 461#64)

def RemovedBody240_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody240_17 : StackLang.HolProg 64 :=
.seq RemovedBody240_15 RemovedBody240_16

def RemovedBody240_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody240_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody240_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody240_21 : StackLang.HolProg 64 :=
.seq RemovedBody240_19 RemovedBody240_20

def RemovedBody240_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody240_21 RemovedBody240_22

def RemovedBody240_24 : StackLang.HolProg 64 :=
.seq RemovedBody240_18 RemovedBody240_23

def RemovedBody240_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody240_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody240_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 240 3

def RemovedBody240_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody240_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody240_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody240_34 : StackLang.HolProg 64 :=
.seq RemovedBody240_32 RemovedBody240_33

def RemovedBody240_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody240_36 : StackLang.HolProg 64 :=
.seq RemovedBody240_34 RemovedBody240_35

def RemovedBody240_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_38 : StackLang.HolProg 64 :=
.seq RemovedBody240_36 RemovedBody240_37

def RemovedBody240_39 : StackLang.HolProg 64 :=
.seq RemovedBody240_31 RemovedBody240_38

def RemovedBody240_40 : StackLang.HolProg 64 :=
.seq RemovedBody240_30 RemovedBody240_39

def RemovedBody240_41 : StackLang.HolProg 64 :=
.seq RemovedBody240_29 RemovedBody240_40

def RemovedBody240_42 : StackLang.HolProg 64 :=
.seq RemovedBody240_28 RemovedBody240_41

def RemovedBody240_43 : StackLang.HolProg 64 :=
.seq RemovedBody240_27 RemovedBody240_42

def RemovedBody240_44 : StackLang.HolProg 64 :=
.seq RemovedBody240_26 RemovedBody240_43

def RemovedBody240_45 : StackLang.HolProg 64 :=
.seq RemovedBody240_25 RemovedBody240_44

def RemovedBody240_46 : StackLang.HolProg 64 :=
.seq RemovedBody240_24 RemovedBody240_45

def RemovedBody240_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody240_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody240_54 : StackLang.HolProg 64 :=
.seq RemovedBody240_52 RemovedBody240_53

def RemovedBody240_55 : StackLang.HolProg 64 :=
.seq RemovedBody240_51 RemovedBody240_54

def RemovedBody240_56 : StackLang.HolProg 64 :=
.seq RemovedBody240_50 RemovedBody240_55

def RemovedBody240_57 : StackLang.HolProg 64 :=
.seq RemovedBody240_49 RemovedBody240_56

def RemovedBody240_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody240_60 : StackLang.HolProg 64 :=
.seq RemovedBody240_58 RemovedBody240_59

def RemovedBody240_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody240_57, 0, 240, 2)) (Sum.inl 69) (some (RemovedBody240_60, 240, 3))

def RemovedBody240_62 : StackLang.HolProg 64 :=
.seq RemovedBody240_48 RemovedBody240_61

def RemovedBody240_63 : StackLang.HolProg 64 :=
.seq RemovedBody240_47 RemovedBody240_62

def RemovedBody240_64 : StackLang.HolProg 64 :=
.seq RemovedBody240_46 RemovedBody240_63

def RemovedBody240_65 : StackLang.HolProg 64 :=
.seq RemovedBody240_17 RemovedBody240_64

def RemovedBody240_66 : StackLang.HolProg 64 :=
.seq RemovedBody240_14 RemovedBody240_65

def RemovedBody240_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody240_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody240_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody240_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 462#64)

def RemovedBody240_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody240_73 : StackLang.HolProg 64 :=
.seq RemovedBody240_71 RemovedBody240_72

def RemovedBody240_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody240_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody240_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody240_77 : StackLang.HolProg 64 :=
.seq RemovedBody240_75 RemovedBody240_76

def RemovedBody240_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody240_77 RemovedBody240_78

def RemovedBody240_80 : StackLang.HolProg 64 :=
.seq RemovedBody240_74 RemovedBody240_79

def RemovedBody240_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody240_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody240_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 240 5

def RemovedBody240_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody240_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody240_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody240_90 : StackLang.HolProg 64 :=
.seq RemovedBody240_88 RemovedBody240_89

def RemovedBody240_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody240_92 : StackLang.HolProg 64 :=
.seq RemovedBody240_90 RemovedBody240_91

def RemovedBody240_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_94 : StackLang.HolProg 64 :=
.seq RemovedBody240_92 RemovedBody240_93

def RemovedBody240_95 : StackLang.HolProg 64 :=
.seq RemovedBody240_87 RemovedBody240_94

def RemovedBody240_96 : StackLang.HolProg 64 :=
.seq RemovedBody240_86 RemovedBody240_95

def RemovedBody240_97 : StackLang.HolProg 64 :=
.seq RemovedBody240_85 RemovedBody240_96

def RemovedBody240_98 : StackLang.HolProg 64 :=
.seq RemovedBody240_84 RemovedBody240_97

def RemovedBody240_99 : StackLang.HolProg 64 :=
.seq RemovedBody240_83 RemovedBody240_98

def RemovedBody240_100 : StackLang.HolProg 64 :=
.seq RemovedBody240_82 RemovedBody240_99

def RemovedBody240_101 : StackLang.HolProg 64 :=
.seq RemovedBody240_81 RemovedBody240_100

def RemovedBody240_102 : StackLang.HolProg 64 :=
.seq RemovedBody240_80 RemovedBody240_101

def RemovedBody240_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody240_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody240_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody240_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody240_112 : StackLang.HolProg 64 :=
.seq RemovedBody240_110 RemovedBody240_111

def RemovedBody240_113 : StackLang.HolProg 64 :=
.seq RemovedBody240_109 RemovedBody240_112

def RemovedBody240_114 : StackLang.HolProg 64 :=
.seq RemovedBody240_108 RemovedBody240_113

def RemovedBody240_115 : StackLang.HolProg 64 :=
.seq RemovedBody240_107 RemovedBody240_114

def RemovedBody240_116 : StackLang.HolProg 64 :=
.seq RemovedBody240_106 RemovedBody240_115

def RemovedBody240_117 : StackLang.HolProg 64 :=
.seq RemovedBody240_105 RemovedBody240_116

def RemovedBody240_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody240_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody240_120 : StackLang.HolProg 64 :=
.seq RemovedBody240_118 RemovedBody240_119

def RemovedBody240_121 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody240_122 : StackLang.HolProg 64 :=
.seq RemovedBody240_120 RemovedBody240_121

def RemovedBody240_123 : StackLang.HolProg 64 :=
.call (some (RemovedBody240_117, 0, 240, 4)) (Sum.inl 68) (some (RemovedBody240_122, 240, 5))

def RemovedBody240_124 : StackLang.HolProg 64 :=
.seq RemovedBody240_104 RemovedBody240_123

def RemovedBody240_125 : StackLang.HolProg 64 :=
.seq RemovedBody240_103 RemovedBody240_124

def RemovedBody240_126 : StackLang.HolProg 64 :=
.seq RemovedBody240_102 RemovedBody240_125

def RemovedBody240_127 : StackLang.HolProg 64 :=
.seq RemovedBody240_73 RemovedBody240_126

def RemovedBody240_128 : StackLang.HolProg 64 :=
.seq RemovedBody240_70 RemovedBody240_127

def RemovedBody240_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody240_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody240_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody240_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody240_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody240_134 : StackLang.HolProg 64 :=
.seq RemovedBody240_132 RemovedBody240_133

def RemovedBody240_135 : StackLang.HolProg 64 :=
.seq RemovedBody240_131 RemovedBody240_134

def RemovedBody240_136 : StackLang.HolProg 64 :=
.seq RemovedBody240_130 RemovedBody240_135

def RemovedBody240_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 463#64)

def RemovedBody240_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody240_140 : StackLang.HolProg 64 :=
.seq RemovedBody240_138 RemovedBody240_139

def RemovedBody240_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody240_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody240_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody240_144 : StackLang.HolProg 64 :=
.seq RemovedBody240_142 RemovedBody240_143

def RemovedBody240_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody240_144 RemovedBody240_145

def RemovedBody240_147 : StackLang.HolProg 64 :=
.seq RemovedBody240_141 RemovedBody240_146

def RemovedBody240_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody240_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody240_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 240 7

def RemovedBody240_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody240_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody240_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody240_157 : StackLang.HolProg 64 :=
.seq RemovedBody240_155 RemovedBody240_156

def RemovedBody240_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody240_159 : StackLang.HolProg 64 :=
.seq RemovedBody240_157 RemovedBody240_158

def RemovedBody240_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_161 : StackLang.HolProg 64 :=
.seq RemovedBody240_159 RemovedBody240_160

def RemovedBody240_162 : StackLang.HolProg 64 :=
.seq RemovedBody240_154 RemovedBody240_161

def RemovedBody240_163 : StackLang.HolProg 64 :=
.seq RemovedBody240_153 RemovedBody240_162

def RemovedBody240_164 : StackLang.HolProg 64 :=
.seq RemovedBody240_152 RemovedBody240_163

def RemovedBody240_165 : StackLang.HolProg 64 :=
.seq RemovedBody240_151 RemovedBody240_164

def RemovedBody240_166 : StackLang.HolProg 64 :=
.seq RemovedBody240_150 RemovedBody240_165

def RemovedBody240_167 : StackLang.HolProg 64 :=
.seq RemovedBody240_149 RemovedBody240_166

def RemovedBody240_168 : StackLang.HolProg 64 :=
.seq RemovedBody240_148 RemovedBody240_167

def RemovedBody240_169 : StackLang.HolProg 64 :=
.seq RemovedBody240_147 RemovedBody240_168

def RemovedBody240_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody240_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody240_177 : StackLang.HolProg 64 :=
.seq RemovedBody240_175 RemovedBody240_176

def RemovedBody240_178 : StackLang.HolProg 64 :=
.seq RemovedBody240_174 RemovedBody240_177

def RemovedBody240_179 : StackLang.HolProg 64 :=
.seq RemovedBody240_173 RemovedBody240_178

def RemovedBody240_180 : StackLang.HolProg 64 :=
.seq RemovedBody240_172 RemovedBody240_179

def RemovedBody240_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody240_182 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody240_183 : StackLang.HolProg 64 :=
.seq RemovedBody240_181 RemovedBody240_182

def RemovedBody240_184 : StackLang.HolProg 64 :=
.call (some (RemovedBody240_180, 0, 240, 6)) (Sum.inl 237) (some (RemovedBody240_183, 240, 7))

def RemovedBody240_185 : StackLang.HolProg 64 :=
.seq RemovedBody240_171 RemovedBody240_184

def RemovedBody240_186 : StackLang.HolProg 64 :=
.seq RemovedBody240_170 RemovedBody240_185

def RemovedBody240_187 : StackLang.HolProg 64 :=
.seq RemovedBody240_169 RemovedBody240_186

def RemovedBody240_188 : StackLang.HolProg 64 :=
.seq RemovedBody240_140 RemovedBody240_187

def RemovedBody240_189 : StackLang.HolProg 64 :=
.seq RemovedBody240_137 RemovedBody240_188

def RemovedBody240_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody240_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody240_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody240_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody240_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody240_197 : StackLang.HolProg 64 :=
.seq RemovedBody240_195 RemovedBody240_196

def RemovedBody240_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 464#64)

def RemovedBody240_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody240_201 : StackLang.HolProg 64 :=
.seq RemovedBody240_199 RemovedBody240_200

def RemovedBody240_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody240_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody240_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody240_205 : StackLang.HolProg 64 :=
.seq RemovedBody240_203 RemovedBody240_204

def RemovedBody240_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_207 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody240_205 RemovedBody240_206

def RemovedBody240_208 : StackLang.HolProg 64 :=
.seq RemovedBody240_202 RemovedBody240_207

def RemovedBody240_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody240_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody240_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 240 9

def RemovedBody240_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody240_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody240_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody240_218 : StackLang.HolProg 64 :=
.seq RemovedBody240_216 RemovedBody240_217

def RemovedBody240_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody240_220 : StackLang.HolProg 64 :=
.seq RemovedBody240_218 RemovedBody240_219

def RemovedBody240_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_222 : StackLang.HolProg 64 :=
.seq RemovedBody240_220 RemovedBody240_221

def RemovedBody240_223 : StackLang.HolProg 64 :=
.seq RemovedBody240_215 RemovedBody240_222

def RemovedBody240_224 : StackLang.HolProg 64 :=
.seq RemovedBody240_214 RemovedBody240_223

def RemovedBody240_225 : StackLang.HolProg 64 :=
.seq RemovedBody240_213 RemovedBody240_224

def RemovedBody240_226 : StackLang.HolProg 64 :=
.seq RemovedBody240_212 RemovedBody240_225

def RemovedBody240_227 : StackLang.HolProg 64 :=
.seq RemovedBody240_211 RemovedBody240_226

def RemovedBody240_228 : StackLang.HolProg 64 :=
.seq RemovedBody240_210 RemovedBody240_227

def RemovedBody240_229 : StackLang.HolProg 64 :=
.seq RemovedBody240_209 RemovedBody240_228

def RemovedBody240_230 : StackLang.HolProg 64 :=
.seq RemovedBody240_208 RemovedBody240_229

def RemovedBody240_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody240_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody240_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody240_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody240_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody240_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody240_242 : StackLang.HolProg 64 :=
.seq RemovedBody240_240 RemovedBody240_241

def RemovedBody240_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody240_245 : StackLang.HolProg 64 :=
.seq RemovedBody240_243 RemovedBody240_244

def RemovedBody240_246 : StackLang.HolProg 64 :=
.seq RemovedBody240_242 RemovedBody240_245

def RemovedBody240_247 : StackLang.HolProg 64 :=
.seq RemovedBody240_239 RemovedBody240_246

def RemovedBody240_248 : StackLang.HolProg 64 :=
.seq RemovedBody240_238 RemovedBody240_247

def RemovedBody240_249 : StackLang.HolProg 64 :=
.seq RemovedBody240_237 RemovedBody240_248

def RemovedBody240_250 : StackLang.HolProg 64 :=
.seq RemovedBody240_236 RemovedBody240_249

def RemovedBody240_251 : StackLang.HolProg 64 :=
.seq RemovedBody240_235 RemovedBody240_250

def RemovedBody240_252 : StackLang.HolProg 64 :=
.seq RemovedBody240_234 RemovedBody240_251

def RemovedBody240_253 : StackLang.HolProg 64 :=
.seq RemovedBody240_233 RemovedBody240_252

def RemovedBody240_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody240_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody240_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody240_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody240_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody240_259 : StackLang.HolProg 64 :=
.seq RemovedBody240_257 RemovedBody240_258

def RemovedBody240_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody240_262 : StackLang.HolProg 64 :=
.seq RemovedBody240_260 RemovedBody240_261

def RemovedBody240_263 : StackLang.HolProg 64 :=
.seq RemovedBody240_259 RemovedBody240_262

def RemovedBody240_264 : StackLang.HolProg 64 :=
.seq RemovedBody240_256 RemovedBody240_263

def RemovedBody240_265 : StackLang.HolProg 64 :=
.seq RemovedBody240_255 RemovedBody240_264

def RemovedBody240_266 : StackLang.HolProg 64 :=
.seq RemovedBody240_254 RemovedBody240_265

def RemovedBody240_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody240_268 : StackLang.HolProg 64 :=
.seq RemovedBody240_266 RemovedBody240_267

def RemovedBody240_269 : StackLang.HolProg 64 :=
.call (some (RemovedBody240_253, 0, 240, 8)) (Sum.inl 78) (some (RemovedBody240_268, 240, 9))

def RemovedBody240_270 : StackLang.HolProg 64 :=
.seq RemovedBody240_232 RemovedBody240_269

def RemovedBody240_271 : StackLang.HolProg 64 :=
.seq RemovedBody240_231 RemovedBody240_270

def RemovedBody240_272 : StackLang.HolProg 64 :=
.seq RemovedBody240_230 RemovedBody240_271

def RemovedBody240_273 : StackLang.HolProg 64 :=
.seq RemovedBody240_201 RemovedBody240_272

def RemovedBody240_274 : StackLang.HolProg 64 :=
.seq RemovedBody240_198 RemovedBody240_273

def RemovedBody240_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody240_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def RemovedBody240_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody240_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody240_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody240_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody240_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody240_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody240_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def RemovedBody240_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody240_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody240_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody240_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody240_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody240_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody240_299 : StackLang.HolProg 64 :=
.seq RemovedBody240_297 RemovedBody240_298

def RemovedBody240_300 : StackLang.HolProg 64 :=
.seq RemovedBody240_296 RemovedBody240_299

def RemovedBody240_301 : StackLang.HolProg 64 :=
.seq RemovedBody240_295 RemovedBody240_300

def RemovedBody240_302 : StackLang.HolProg 64 :=
.seq RemovedBody240_294 RemovedBody240_301

def RemovedBody240_303 : StackLang.HolProg 64 :=
.seq RemovedBody240_293 RemovedBody240_302

def RemovedBody240_304 : StackLang.HolProg 64 :=
.seq RemovedBody240_292 RemovedBody240_303

def RemovedBody240_305 : StackLang.HolProg 64 :=
.seq RemovedBody240_291 RemovedBody240_304

def RemovedBody240_306 : StackLang.HolProg 64 :=
.seq RemovedBody240_290 RemovedBody240_305

def RemovedBody240_307 : StackLang.HolProg 64 :=
.seq RemovedBody240_289 RemovedBody240_306

def RemovedBody240_308 : StackLang.HolProg 64 :=
.seq RemovedBody240_288 RemovedBody240_307

def RemovedBody240_309 : StackLang.HolProg 64 :=
.seq RemovedBody240_287 RemovedBody240_308

def RemovedBody240_310 : StackLang.HolProg 64 :=
.seq RemovedBody240_286 RemovedBody240_309

def RemovedBody240_311 : StackLang.HolProg 64 :=
.seq RemovedBody240_285 RemovedBody240_310

def RemovedBody240_312 : StackLang.HolProg 64 :=
.seq RemovedBody240_284 RemovedBody240_311

def RemovedBody240_313 : StackLang.HolProg 64 :=
.seq RemovedBody240_283 RemovedBody240_312

def RemovedBody240_314 : StackLang.HolProg 64 :=
.seq RemovedBody240_282 RemovedBody240_313

def RemovedBody240_315 : StackLang.HolProg 64 :=
.seq RemovedBody240_281 RemovedBody240_314

def RemovedBody240_316 : StackLang.HolProg 64 :=
.seq RemovedBody240_280 RemovedBody240_315

def RemovedBody240_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody240_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody240_319 : StackLang.HolProg 64 :=
.seq RemovedBody240_317 RemovedBody240_318

def RemovedBody240_320 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody240_316 RemovedBody240_319

def RemovedBody240_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody240_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_323 : StackLang.HolProg 64 :=
.seq RemovedBody240_321 RemovedBody240_322

def RemovedBody240_324 : StackLang.HolProg 64 :=
.seq RemovedBody240_320 RemovedBody240_323

def RemovedBody240_325 : StackLang.HolProg 64 :=
.seq RemovedBody240_279 RemovedBody240_324

def RemovedBody240_326 : StackLang.HolProg 64 :=
.loop RemovedBody240_325

def RemovedBody240_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody240_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 465#64)

def RemovedBody240_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody240_332 : StackLang.HolProg 64 :=
.seq RemovedBody240_330 RemovedBody240_331

def RemovedBody240_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody240_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody240_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody240_336 : StackLang.HolProg 64 :=
.seq RemovedBody240_334 RemovedBody240_335

def RemovedBody240_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_338 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody240_336 RemovedBody240_337

def RemovedBody240_339 : StackLang.HolProg 64 :=
.seq RemovedBody240_333 RemovedBody240_338

def RemovedBody240_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody240_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody240_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 240 11

def RemovedBody240_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody240_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody240_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody240_349 : StackLang.HolProg 64 :=
.seq RemovedBody240_347 RemovedBody240_348

def RemovedBody240_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody240_351 : StackLang.HolProg 64 :=
.seq RemovedBody240_349 RemovedBody240_350

def RemovedBody240_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_353 : StackLang.HolProg 64 :=
.seq RemovedBody240_351 RemovedBody240_352

def RemovedBody240_354 : StackLang.HolProg 64 :=
.seq RemovedBody240_346 RemovedBody240_353

def RemovedBody240_355 : StackLang.HolProg 64 :=
.seq RemovedBody240_345 RemovedBody240_354

def RemovedBody240_356 : StackLang.HolProg 64 :=
.seq RemovedBody240_344 RemovedBody240_355

def RemovedBody240_357 : StackLang.HolProg 64 :=
.seq RemovedBody240_343 RemovedBody240_356

def RemovedBody240_358 : StackLang.HolProg 64 :=
.seq RemovedBody240_342 RemovedBody240_357

def RemovedBody240_359 : StackLang.HolProg 64 :=
.seq RemovedBody240_341 RemovedBody240_358

def RemovedBody240_360 : StackLang.HolProg 64 :=
.seq RemovedBody240_340 RemovedBody240_359

def RemovedBody240_361 : StackLang.HolProg 64 :=
.seq RemovedBody240_339 RemovedBody240_360

def RemovedBody240_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody240_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody240_369 : StackLang.HolProg 64 :=
.seq RemovedBody240_367 RemovedBody240_368

def RemovedBody240_370 : StackLang.HolProg 64 :=
.seq RemovedBody240_366 RemovedBody240_369

def RemovedBody240_371 : StackLang.HolProg 64 :=
.seq RemovedBody240_365 RemovedBody240_370

def RemovedBody240_372 : StackLang.HolProg 64 :=
.seq RemovedBody240_364 RemovedBody240_371

def RemovedBody240_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody240_374 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody240_375 : StackLang.HolProg 64 :=
.seq RemovedBody240_373 RemovedBody240_374

def RemovedBody240_376 : StackLang.HolProg 64 :=
.call (some (RemovedBody240_372, 0, 240, 10)) (Sum.inl 154) (some (RemovedBody240_375, 240, 11))

def RemovedBody240_377 : StackLang.HolProg 64 :=
.seq RemovedBody240_363 RemovedBody240_376

def RemovedBody240_378 : StackLang.HolProg 64 :=
.seq RemovedBody240_362 RemovedBody240_377

def RemovedBody240_379 : StackLang.HolProg 64 :=
.seq RemovedBody240_361 RemovedBody240_378

def RemovedBody240_380 : StackLang.HolProg 64 :=
.seq RemovedBody240_332 RemovedBody240_379

def RemovedBody240_381 : StackLang.HolProg 64 :=
.seq RemovedBody240_329 RemovedBody240_380

def RemovedBody240_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody240_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody240_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 466#64)

def RemovedBody240_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody240_387 : StackLang.HolProg 64 :=
.seq RemovedBody240_385 RemovedBody240_386

def RemovedBody240_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody240_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody240_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody240_391 : StackLang.HolProg 64 :=
.seq RemovedBody240_389 RemovedBody240_390

def RemovedBody240_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_393 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody240_391 RemovedBody240_392

def RemovedBody240_394 : StackLang.HolProg 64 :=
.seq RemovedBody240_388 RemovedBody240_393

def RemovedBody240_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody240_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody240_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 240 13

def RemovedBody240_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody240_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody240_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody240_404 : StackLang.HolProg 64 :=
.seq RemovedBody240_402 RemovedBody240_403

def RemovedBody240_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody240_406 : StackLang.HolProg 64 :=
.seq RemovedBody240_404 RemovedBody240_405

def RemovedBody240_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_408 : StackLang.HolProg 64 :=
.seq RemovedBody240_406 RemovedBody240_407

def RemovedBody240_409 : StackLang.HolProg 64 :=
.seq RemovedBody240_401 RemovedBody240_408

def RemovedBody240_410 : StackLang.HolProg 64 :=
.seq RemovedBody240_400 RemovedBody240_409

def RemovedBody240_411 : StackLang.HolProg 64 :=
.seq RemovedBody240_399 RemovedBody240_410

def RemovedBody240_412 : StackLang.HolProg 64 :=
.seq RemovedBody240_398 RemovedBody240_411

def RemovedBody240_413 : StackLang.HolProg 64 :=
.seq RemovedBody240_397 RemovedBody240_412

def RemovedBody240_414 : StackLang.HolProg 64 :=
.seq RemovedBody240_396 RemovedBody240_413

def RemovedBody240_415 : StackLang.HolProg 64 :=
.seq RemovedBody240_395 RemovedBody240_414

def RemovedBody240_416 : StackLang.HolProg 64 :=
.seq RemovedBody240_394 RemovedBody240_415

def RemovedBody240_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody240_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody240_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody240_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody240_424 : StackLang.HolProg 64 :=
.seq RemovedBody240_422 RemovedBody240_423

def RemovedBody240_425 : StackLang.HolProg 64 :=
.seq RemovedBody240_421 RemovedBody240_424

def RemovedBody240_426 : StackLang.HolProg 64 :=
.seq RemovedBody240_420 RemovedBody240_425

def RemovedBody240_427 : StackLang.HolProg 64 :=
.seq RemovedBody240_419 RemovedBody240_426

def RemovedBody240_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody240_429 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody240_430 : StackLang.HolProg 64 :=
.seq RemovedBody240_428 RemovedBody240_429

def RemovedBody240_431 : StackLang.HolProg 64 :=
.call (some (RemovedBody240_427, 0, 240, 12)) (Sum.inl 70) (some (RemovedBody240_430, 240, 13))

def RemovedBody240_432 : StackLang.HolProg 64 :=
.seq RemovedBody240_418 RemovedBody240_431

def RemovedBody240_433 : StackLang.HolProg 64 :=
.seq RemovedBody240_417 RemovedBody240_432

def RemovedBody240_434 : StackLang.HolProg 64 :=
.seq RemovedBody240_416 RemovedBody240_433

def RemovedBody240_435 : StackLang.HolProg 64 :=
.seq RemovedBody240_387 RemovedBody240_434

def RemovedBody240_436 : StackLang.HolProg 64 :=
.seq RemovedBody240_384 RemovedBody240_435

def RemovedBody240_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody240_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody240_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody240_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody240_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody240_442 : StackLang.HolProg 64 :=
.seq RemovedBody240_440 RemovedBody240_441

def RemovedBody240_443 : StackLang.HolProg 64 :=
.seq RemovedBody240_439 RemovedBody240_442

def RemovedBody240_444 : StackLang.HolProg 64 :=
.seq RemovedBody240_438 RemovedBody240_443

def RemovedBody240_445 : StackLang.HolProg 64 :=
.seq RemovedBody240_437 RemovedBody240_444

def RemovedBody240_446 : StackLang.HolProg 64 :=
.seq RemovedBody240_436 RemovedBody240_445

def RemovedBody240_447 : StackLang.HolProg 64 :=
.seq RemovedBody240_383 RemovedBody240_446

def RemovedBody240_448 : StackLang.HolProg 64 :=
.seq RemovedBody240_382 RemovedBody240_447

def RemovedBody240_449 : StackLang.HolProg 64 :=
.seq RemovedBody240_381 RemovedBody240_448

def RemovedBody240_450 : StackLang.HolProg 64 :=
.seq RemovedBody240_328 RemovedBody240_449

def RemovedBody240_451 : StackLang.HolProg 64 :=
.seq RemovedBody240_327 RemovedBody240_450

def RemovedBody240_452 : StackLang.HolProg 64 :=
.seq RemovedBody240_326 RemovedBody240_451

def RemovedBody240_453 : StackLang.HolProg 64 :=
.seq RemovedBody240_278 RemovedBody240_452

def RemovedBody240_454 : StackLang.HolProg 64 :=
.seq RemovedBody240_277 RemovedBody240_453

def RemovedBody240_455 : StackLang.HolProg 64 :=
.seq RemovedBody240_276 RemovedBody240_454

def RemovedBody240_456 : StackLang.HolProg 64 :=
.seq RemovedBody240_275 RemovedBody240_455

def RemovedBody240_457 : StackLang.HolProg 64 :=
.seq RemovedBody240_274 RemovedBody240_456

def RemovedBody240_458 : StackLang.HolProg 64 :=
.seq RemovedBody240_197 RemovedBody240_457

def RemovedBody240_459 : StackLang.HolProg 64 :=
.seq RemovedBody240_194 RemovedBody240_458

def RemovedBody240_460 : StackLang.HolProg 64 :=
.seq RemovedBody240_193 RemovedBody240_459

def RemovedBody240_461 : StackLang.HolProg 64 :=
.seq RemovedBody240_192 RemovedBody240_460

def RemovedBody240_462 : StackLang.HolProg 64 :=
.seq RemovedBody240_191 RemovedBody240_461

def RemovedBody240_463 : StackLang.HolProg 64 :=
.seq RemovedBody240_190 RemovedBody240_462

def RemovedBody240_464 : StackLang.HolProg 64 :=
.seq RemovedBody240_189 RemovedBody240_463

def RemovedBody240_465 : StackLang.HolProg 64 :=
.seq RemovedBody240_136 RemovedBody240_464

def RemovedBody240_466 : StackLang.HolProg 64 :=
.seq RemovedBody240_129 RemovedBody240_465

def RemovedBody240_467 : StackLang.HolProg 64 :=
.seq RemovedBody240_128 RemovedBody240_466

def RemovedBody240_468 : StackLang.HolProg 64 :=
.seq RemovedBody240_69 RemovedBody240_467

def RemovedBody240_469 : StackLang.HolProg 64 :=
.seq RemovedBody240_68 RemovedBody240_468

def RemovedBody240_470 : StackLang.HolProg 64 :=
.seq RemovedBody240_67 RemovedBody240_469

def RemovedBody240_471 : StackLang.HolProg 64 :=
.seq RemovedBody240_66 RemovedBody240_470

def RemovedBody240_472 : StackLang.HolProg 64 :=
.seq RemovedBody240_13 RemovedBody240_471

def RemovedBody240_473 : StackLang.HolProg 64 :=
.seq RemovedBody240_6 RemovedBody240_472

def Removed240 : Nat × StackLang.HolProg 64 := (240, RemovedBody240_473)
theorem Removed240_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc240 = Removed240 := by
  kernel_rfl
#print axioms Removed240_eq
end InitECandidate.Proofs.BackendStages
