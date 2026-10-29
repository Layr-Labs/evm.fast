import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc300
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody300_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody300_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody300_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody300_3 : StackLang.HolProg 64 :=
.seq RemovedBody300_1 RemovedBody300_2

def RemovedBody300_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody300_3 RemovedBody300_4

def RemovedBody300_6 : StackLang.HolProg 64 :=
.seq RemovedBody300_0 RemovedBody300_5

def RemovedBody300_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody300_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody300_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody300_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody300_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody300_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody300_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody300_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody300_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody300_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody300_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody300_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody300_20 : StackLang.HolProg 64 :=
.seq RemovedBody300_18 RemovedBody300_19

def RemovedBody300_21 : StackLang.HolProg 64 :=
.seq RemovedBody300_17 RemovedBody300_20

def RemovedBody300_22 : StackLang.HolProg 64 :=
.seq RemovedBody300_16 RemovedBody300_21

def RemovedBody300_23 : StackLang.HolProg 64 :=
.seq RemovedBody300_15 RemovedBody300_22

def RemovedBody300_24 : StackLang.HolProg 64 :=
.seq RemovedBody300_14 RemovedBody300_23

def RemovedBody300_25 : StackLang.HolProg 64 :=
.seq RemovedBody300_13 RemovedBody300_24

def RemovedBody300_26 : StackLang.HolProg 64 :=
.seq RemovedBody300_12 RemovedBody300_25

def RemovedBody300_27 : StackLang.HolProg 64 :=
.seq RemovedBody300_11 RemovedBody300_26

def RemovedBody300_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 806#64)

def RemovedBody300_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody300_31 : StackLang.HolProg 64 :=
.seq RemovedBody300_29 RemovedBody300_30

def RemovedBody300_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody300_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody300_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody300_35 : StackLang.HolProg 64 :=
.seq RemovedBody300_33 RemovedBody300_34

def RemovedBody300_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody300_35 RemovedBody300_36

def RemovedBody300_38 : StackLang.HolProg 64 :=
.seq RemovedBody300_32 RemovedBody300_37

def RemovedBody300_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody300_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody300_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 5

def RemovedBody300_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody300_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody300_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody300_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody300_48 : StackLang.HolProg 64 :=
.seq RemovedBody300_46 RemovedBody300_47

def RemovedBody300_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody300_50 : StackLang.HolProg 64 :=
.seq RemovedBody300_48 RemovedBody300_49

def RemovedBody300_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_52 : StackLang.HolProg 64 :=
.seq RemovedBody300_50 RemovedBody300_51

def RemovedBody300_53 : StackLang.HolProg 64 :=
.seq RemovedBody300_45 RemovedBody300_52

def RemovedBody300_54 : StackLang.HolProg 64 :=
.seq RemovedBody300_44 RemovedBody300_53

def RemovedBody300_55 : StackLang.HolProg 64 :=
.seq RemovedBody300_43 RemovedBody300_54

def RemovedBody300_56 : StackLang.HolProg 64 :=
.seq RemovedBody300_42 RemovedBody300_55

def RemovedBody300_57 : StackLang.HolProg 64 :=
.seq RemovedBody300_41 RemovedBody300_56

def RemovedBody300_58 : StackLang.HolProg 64 :=
.seq RemovedBody300_40 RemovedBody300_57

def RemovedBody300_59 : StackLang.HolProg 64 :=
.seq RemovedBody300_39 RemovedBody300_58

def RemovedBody300_60 : StackLang.HolProg 64 :=
.seq RemovedBody300_38 RemovedBody300_59

def RemovedBody300_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody300_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody300_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody300_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody300_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody300_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody300_71 : StackLang.HolProg 64 :=
.seq RemovedBody300_69 RemovedBody300_70

def RemovedBody300_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody300_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody300_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody300_75 : StackLang.HolProg 64 :=
.seq RemovedBody300_73 RemovedBody300_74

def RemovedBody300_76 : StackLang.HolProg 64 :=
.seq RemovedBody300_72 RemovedBody300_75

def RemovedBody300_77 : StackLang.HolProg 64 :=
.seq RemovedBody300_71 RemovedBody300_76

def RemovedBody300_78 : StackLang.HolProg 64 :=
.seq RemovedBody300_68 RemovedBody300_77

def RemovedBody300_79 : StackLang.HolProg 64 :=
.seq RemovedBody300_67 RemovedBody300_78

def RemovedBody300_80 : StackLang.HolProg 64 :=
.seq RemovedBody300_66 RemovedBody300_79

def RemovedBody300_81 : StackLang.HolProg 64 :=
.seq RemovedBody300_65 RemovedBody300_80

def RemovedBody300_82 : StackLang.HolProg 64 :=
.seq RemovedBody300_64 RemovedBody300_81

def RemovedBody300_83 : StackLang.HolProg 64 :=
.seq RemovedBody300_63 RemovedBody300_82

def RemovedBody300_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody300_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody300_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody300_87 : StackLang.HolProg 64 :=
.seq RemovedBody300_85 RemovedBody300_86

def RemovedBody300_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody300_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody300_90 : StackLang.HolProg 64 :=
.seq RemovedBody300_88 RemovedBody300_89

def RemovedBody300_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody300_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody300_93 : StackLang.HolProg 64 :=
.seq RemovedBody300_91 RemovedBody300_92

def RemovedBody300_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody300_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody300_96 : StackLang.HolProg 64 :=
.seq RemovedBody300_94 RemovedBody300_95

def RemovedBody300_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody300_98 : StackLang.HolProg 64 :=
.seq RemovedBody300_96 RemovedBody300_97

def RemovedBody300_99 : StackLang.HolProg 64 :=
.seq RemovedBody300_93 RemovedBody300_98

def RemovedBody300_100 : StackLang.HolProg 64 :=
.seq RemovedBody300_90 RemovedBody300_99

def RemovedBody300_101 : StackLang.HolProg 64 :=
.seq RemovedBody300_87 RemovedBody300_100

def RemovedBody300_102 : StackLang.HolProg 64 :=
.seq RemovedBody300_84 RemovedBody300_101

def RemovedBody300_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_104 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody300_105 : StackLang.HolProg 64 :=
.seq RemovedBody300_103 RemovedBody300_104

def RemovedBody300_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody300_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody300_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody300_110 : StackLang.HolProg 64 :=
.seq RemovedBody300_108 RemovedBody300_109

def RemovedBody300_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody300_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody300_113 : StackLang.HolProg 64 :=
.seq RemovedBody300_111 RemovedBody300_112

def RemovedBody300_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody300_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody300_116 : StackLang.HolProg 64 :=
.seq RemovedBody300_114 RemovedBody300_115

def RemovedBody300_117 : StackLang.HolProg 64 :=
.seq RemovedBody300_113 RemovedBody300_116

def RemovedBody300_118 : StackLang.HolProg 64 :=
.seq RemovedBody300_110 RemovedBody300_117

def RemovedBody300_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 807#64)

def RemovedBody300_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody300_122 : StackLang.HolProg 64 :=
.seq RemovedBody300_120 RemovedBody300_121

def RemovedBody300_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody300_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody300_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody300_126 : StackLang.HolProg 64 :=
.seq RemovedBody300_124 RemovedBody300_125

def RemovedBody300_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_128 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody300_126 RemovedBody300_127

def RemovedBody300_129 : StackLang.HolProg 64 :=
.seq RemovedBody300_123 RemovedBody300_128

def RemovedBody300_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody300_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody300_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 4

def RemovedBody300_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody300_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody300_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody300_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody300_139 : StackLang.HolProg 64 :=
.seq RemovedBody300_137 RemovedBody300_138

def RemovedBody300_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody300_141 : StackLang.HolProg 64 :=
.seq RemovedBody300_139 RemovedBody300_140

def RemovedBody300_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_143 : StackLang.HolProg 64 :=
.seq RemovedBody300_141 RemovedBody300_142

def RemovedBody300_144 : StackLang.HolProg 64 :=
.seq RemovedBody300_136 RemovedBody300_143

def RemovedBody300_145 : StackLang.HolProg 64 :=
.seq RemovedBody300_135 RemovedBody300_144

def RemovedBody300_146 : StackLang.HolProg 64 :=
.seq RemovedBody300_134 RemovedBody300_145

def RemovedBody300_147 : StackLang.HolProg 64 :=
.seq RemovedBody300_133 RemovedBody300_146

def RemovedBody300_148 : StackLang.HolProg 64 :=
.seq RemovedBody300_132 RemovedBody300_147

def RemovedBody300_149 : StackLang.HolProg 64 :=
.seq RemovedBody300_131 RemovedBody300_148

def RemovedBody300_150 : StackLang.HolProg 64 :=
.seq RemovedBody300_130 RemovedBody300_149

def RemovedBody300_151 : StackLang.HolProg 64 :=
.seq RemovedBody300_129 RemovedBody300_150

def RemovedBody300_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody300_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody300_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody300_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody300_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody300_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody300_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody300_163 : StackLang.HolProg 64 :=
.seq RemovedBody300_161 RemovedBody300_162

def RemovedBody300_164 : StackLang.HolProg 64 :=
.seq RemovedBody300_160 RemovedBody300_163

def RemovedBody300_165 : StackLang.HolProg 64 :=
.seq RemovedBody300_159 RemovedBody300_164

def RemovedBody300_166 : StackLang.HolProg 64 :=
.seq RemovedBody300_158 RemovedBody300_165

def RemovedBody300_167 : StackLang.HolProg 64 :=
.seq RemovedBody300_157 RemovedBody300_166

def RemovedBody300_168 : StackLang.HolProg 64 :=
.seq RemovedBody300_156 RemovedBody300_167

def RemovedBody300_169 : StackLang.HolProg 64 :=
.seq RemovedBody300_155 RemovedBody300_168

def RemovedBody300_170 : StackLang.HolProg 64 :=
.seq RemovedBody300_154 RemovedBody300_169

def RemovedBody300_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody300_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody300_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody300_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody300_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody300_176 : StackLang.HolProg 64 :=
.seq RemovedBody300_174 RemovedBody300_175

def RemovedBody300_177 : StackLang.HolProg 64 :=
.seq RemovedBody300_173 RemovedBody300_176

def RemovedBody300_178 : StackLang.HolProg 64 :=
.seq RemovedBody300_172 RemovedBody300_177

def RemovedBody300_179 : StackLang.HolProg 64 :=
.seq RemovedBody300_171 RemovedBody300_178

def RemovedBody300_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody300_181 : StackLang.HolProg 64 :=
.seq RemovedBody300_179 RemovedBody300_180

def RemovedBody300_182 : StackLang.HolProg 64 :=
.call (some (RemovedBody300_170, 0, 300, 3)) (Sum.inl 286) (some (RemovedBody300_181, 300, 4))

def RemovedBody300_183 : StackLang.HolProg 64 :=
.seq RemovedBody300_153 RemovedBody300_182

def RemovedBody300_184 : StackLang.HolProg 64 :=
.seq RemovedBody300_152 RemovedBody300_183

def RemovedBody300_185 : StackLang.HolProg 64 :=
.seq RemovedBody300_151 RemovedBody300_184

def RemovedBody300_186 : StackLang.HolProg 64 :=
.seq RemovedBody300_122 RemovedBody300_185

def RemovedBody300_187 : StackLang.HolProg 64 :=
.seq RemovedBody300_119 RemovedBody300_186

def RemovedBody300_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_190 : StackLang.HolProg 64 :=
.seq RemovedBody300_188 RemovedBody300_189

def RemovedBody300_191 : StackLang.HolProg 64 :=
.seq RemovedBody300_187 RemovedBody300_190

def RemovedBody300_192 : StackLang.HolProg 64 :=
.seq RemovedBody300_118 RemovedBody300_191

def RemovedBody300_193 : StackLang.HolProg 64 :=
.seq RemovedBody300_107 RemovedBody300_192

def RemovedBody300_194 : StackLang.HolProg 64 :=
.seq RemovedBody300_106 RemovedBody300_193

def RemovedBody300_195 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) RemovedBody300_105 RemovedBody300_194

def RemovedBody300_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody300_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody300_199 : StackLang.HolProg 64 :=
.seq RemovedBody300_197 RemovedBody300_198

def RemovedBody300_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody300_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody300_202 : StackLang.HolProg 64 :=
.seq RemovedBody300_200 RemovedBody300_201

def RemovedBody300_203 : StackLang.HolProg 64 :=
.seq RemovedBody300_199 RemovedBody300_202

def RemovedBody300_204 : StackLang.HolProg 64 :=
.seq RemovedBody300_196 RemovedBody300_203

def RemovedBody300_205 : StackLang.HolProg 64 :=
.seq RemovedBody300_195 RemovedBody300_204

def RemovedBody300_206 : StackLang.HolProg 64 :=
.seq RemovedBody300_102 RemovedBody300_205

def RemovedBody300_207 : StackLang.HolProg 64 :=
.call (some (RemovedBody300_83, 0, 300, 2)) (Sum.inl 161) (some (RemovedBody300_206, 300, 5))

def RemovedBody300_208 : StackLang.HolProg 64 :=
.seq RemovedBody300_62 RemovedBody300_207

def RemovedBody300_209 : StackLang.HolProg 64 :=
.seq RemovedBody300_61 RemovedBody300_208

def RemovedBody300_210 : StackLang.HolProg 64 :=
.seq RemovedBody300_60 RemovedBody300_209

def RemovedBody300_211 : StackLang.HolProg 64 :=
.seq RemovedBody300_31 RemovedBody300_210

def RemovedBody300_212 : StackLang.HolProg 64 :=
.seq RemovedBody300_28 RemovedBody300_211

def RemovedBody300_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody300_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody300_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody300_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody300_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody300_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody300_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody300_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody300_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def RemovedBody300_227 : StackLang.HolProg 64 :=
.seq RemovedBody300_225 RemovedBody300_226

def RemovedBody300_228 : StackLang.HolProg 64 :=
.seq RemovedBody300_224 RemovedBody300_227

def RemovedBody300_229 : StackLang.HolProg 64 :=
.seq RemovedBody300_223 RemovedBody300_228

def RemovedBody300_230 : StackLang.HolProg 64 :=
.seq RemovedBody300_222 RemovedBody300_229

def RemovedBody300_231 : StackLang.HolProg 64 :=
.seq RemovedBody300_221 RemovedBody300_230

def RemovedBody300_232 : StackLang.HolProg 64 :=
.seq RemovedBody300_220 RemovedBody300_231

def RemovedBody300_233 : StackLang.HolProg 64 :=
.seq RemovedBody300_219 RemovedBody300_232

def RemovedBody300_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_235 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody300_233 RemovedBody300_234

def RemovedBody300_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody300_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def RemovedBody300_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody300_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 808#64)

def RemovedBody300_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody300_246 : StackLang.HolProg 64 :=
.seq RemovedBody300_244 RemovedBody300_245

def RemovedBody300_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody300_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody300_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody300_250 : StackLang.HolProg 64 :=
.seq RemovedBody300_248 RemovedBody300_249

def RemovedBody300_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_252 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody300_250 RemovedBody300_251

def RemovedBody300_253 : StackLang.HolProg 64 :=
.seq RemovedBody300_247 RemovedBody300_252

def RemovedBody300_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody300_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody300_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 7

def RemovedBody300_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody300_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody300_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody300_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody300_263 : StackLang.HolProg 64 :=
.seq RemovedBody300_261 RemovedBody300_262

def RemovedBody300_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody300_265 : StackLang.HolProg 64 :=
.seq RemovedBody300_263 RemovedBody300_264

def RemovedBody300_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_267 : StackLang.HolProg 64 :=
.seq RemovedBody300_265 RemovedBody300_266

def RemovedBody300_268 : StackLang.HolProg 64 :=
.seq RemovedBody300_260 RemovedBody300_267

def RemovedBody300_269 : StackLang.HolProg 64 :=
.seq RemovedBody300_259 RemovedBody300_268

def RemovedBody300_270 : StackLang.HolProg 64 :=
.seq RemovedBody300_258 RemovedBody300_269

def RemovedBody300_271 : StackLang.HolProg 64 :=
.seq RemovedBody300_257 RemovedBody300_270

def RemovedBody300_272 : StackLang.HolProg 64 :=
.seq RemovedBody300_256 RemovedBody300_271

def RemovedBody300_273 : StackLang.HolProg 64 :=
.seq RemovedBody300_255 RemovedBody300_272

def RemovedBody300_274 : StackLang.HolProg 64 :=
.seq RemovedBody300_254 RemovedBody300_273

def RemovedBody300_275 : StackLang.HolProg 64 :=
.seq RemovedBody300_253 RemovedBody300_274

def RemovedBody300_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody300_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody300_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody300_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody300_284 : StackLang.HolProg 64 :=
.seq RemovedBody300_282 RemovedBody300_283

def RemovedBody300_285 : StackLang.HolProg 64 :=
.seq RemovedBody300_281 RemovedBody300_284

def RemovedBody300_286 : StackLang.HolProg 64 :=
.seq RemovedBody300_280 RemovedBody300_285

def RemovedBody300_287 : StackLang.HolProg 64 :=
.seq RemovedBody300_279 RemovedBody300_286

def RemovedBody300_288 : StackLang.HolProg 64 :=
.seq RemovedBody300_278 RemovedBody300_287

def RemovedBody300_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody300_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody300_291 : StackLang.HolProg 64 :=
.seq RemovedBody300_289 RemovedBody300_290

def RemovedBody300_292 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody300_293 : StackLang.HolProg 64 :=
.seq RemovedBody300_291 RemovedBody300_292

def RemovedBody300_294 : StackLang.HolProg 64 :=
.call (some (RemovedBody300_288, 0, 300, 6)) (Sum.inl 286) (some (RemovedBody300_293, 300, 7))

def RemovedBody300_295 : StackLang.HolProg 64 :=
.seq RemovedBody300_277 RemovedBody300_294

def RemovedBody300_296 : StackLang.HolProg 64 :=
.seq RemovedBody300_276 RemovedBody300_295

def RemovedBody300_297 : StackLang.HolProg 64 :=
.seq RemovedBody300_275 RemovedBody300_296

def RemovedBody300_298 : StackLang.HolProg 64 :=
.seq RemovedBody300_246 RemovedBody300_297

def RemovedBody300_299 : StackLang.HolProg 64 :=
.seq RemovedBody300_243 RemovedBody300_298

def RemovedBody300_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_302 : StackLang.HolProg 64 :=
.seq RemovedBody300_300 RemovedBody300_301

def RemovedBody300_303 : StackLang.HolProg 64 :=
.seq RemovedBody300_299 RemovedBody300_302

def RemovedBody300_304 : StackLang.HolProg 64 :=
.seq RemovedBody300_242 RemovedBody300_303

def RemovedBody300_305 : StackLang.HolProg 64 :=
.seq RemovedBody300_241 RemovedBody300_304

def RemovedBody300_306 : StackLang.HolProg 64 :=
.seq RemovedBody300_240 RemovedBody300_305

def RemovedBody300_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody300_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody300_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody300_311 : StackLang.HolProg 64 :=
.seq RemovedBody300_309 RemovedBody300_310

def RemovedBody300_312 : StackLang.HolProg 64 :=
.seq RemovedBody300_308 RemovedBody300_311

def RemovedBody300_313 : StackLang.HolProg 64 :=
.seq RemovedBody300_307 RemovedBody300_312

def RemovedBody300_314 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody300_306 RemovedBody300_313

def RemovedBody300_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody300_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody300_318 : StackLang.HolProg 64 :=
.seq RemovedBody300_316 RemovedBody300_317

def RemovedBody300_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 809#64)

def RemovedBody300_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody300_322 : StackLang.HolProg 64 :=
.seq RemovedBody300_320 RemovedBody300_321

def RemovedBody300_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody300_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody300_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody300_326 : StackLang.HolProg 64 :=
.seq RemovedBody300_324 RemovedBody300_325

def RemovedBody300_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_328 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody300_326 RemovedBody300_327

def RemovedBody300_329 : StackLang.HolProg 64 :=
.seq RemovedBody300_323 RemovedBody300_328

def RemovedBody300_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody300_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody300_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 9

def RemovedBody300_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody300_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody300_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody300_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody300_339 : StackLang.HolProg 64 :=
.seq RemovedBody300_337 RemovedBody300_338

def RemovedBody300_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody300_341 : StackLang.HolProg 64 :=
.seq RemovedBody300_339 RemovedBody300_340

def RemovedBody300_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_343 : StackLang.HolProg 64 :=
.seq RemovedBody300_341 RemovedBody300_342

def RemovedBody300_344 : StackLang.HolProg 64 :=
.seq RemovedBody300_336 RemovedBody300_343

def RemovedBody300_345 : StackLang.HolProg 64 :=
.seq RemovedBody300_335 RemovedBody300_344

def RemovedBody300_346 : StackLang.HolProg 64 :=
.seq RemovedBody300_334 RemovedBody300_345

def RemovedBody300_347 : StackLang.HolProg 64 :=
.seq RemovedBody300_333 RemovedBody300_346

def RemovedBody300_348 : StackLang.HolProg 64 :=
.seq RemovedBody300_332 RemovedBody300_347

def RemovedBody300_349 : StackLang.HolProg 64 :=
.seq RemovedBody300_331 RemovedBody300_348

def RemovedBody300_350 : StackLang.HolProg 64 :=
.seq RemovedBody300_330 RemovedBody300_349

def RemovedBody300_351 : StackLang.HolProg 64 :=
.seq RemovedBody300_329 RemovedBody300_350

def RemovedBody300_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody300_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody300_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody300_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody300_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody300_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody300_362 : StackLang.HolProg 64 :=
.seq RemovedBody300_360 RemovedBody300_361

def RemovedBody300_363 : StackLang.HolProg 64 :=
.seq RemovedBody300_359 RemovedBody300_362

def RemovedBody300_364 : StackLang.HolProg 64 :=
.seq RemovedBody300_358 RemovedBody300_363

def RemovedBody300_365 : StackLang.HolProg 64 :=
.seq RemovedBody300_357 RemovedBody300_364

def RemovedBody300_366 : StackLang.HolProg 64 :=
.seq RemovedBody300_356 RemovedBody300_365

def RemovedBody300_367 : StackLang.HolProg 64 :=
.seq RemovedBody300_355 RemovedBody300_366

def RemovedBody300_368 : StackLang.HolProg 64 :=
.seq RemovedBody300_354 RemovedBody300_367

def RemovedBody300_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody300_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody300_371 : StackLang.HolProg 64 :=
.seq RemovedBody300_369 RemovedBody300_370

def RemovedBody300_372 : StackLang.HolProg 64 :=
.call (some (RemovedBody300_368, 0, 300, 8)) (Sum.inl 294) (some (RemovedBody300_371, 300, 9))

def RemovedBody300_373 : StackLang.HolProg 64 :=
.seq RemovedBody300_353 RemovedBody300_372

def RemovedBody300_374 : StackLang.HolProg 64 :=
.seq RemovedBody300_352 RemovedBody300_373

def RemovedBody300_375 : StackLang.HolProg 64 :=
.seq RemovedBody300_351 RemovedBody300_374

def RemovedBody300_376 : StackLang.HolProg 64 :=
.seq RemovedBody300_322 RemovedBody300_375

def RemovedBody300_377 : StackLang.HolProg 64 :=
.seq RemovedBody300_319 RemovedBody300_376

def RemovedBody300_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody300_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody300_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 810#64)

def RemovedBody300_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody300_386 : StackLang.HolProg 64 :=
.seq RemovedBody300_384 RemovedBody300_385

def RemovedBody300_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody300_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody300_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody300_390 : StackLang.HolProg 64 :=
.seq RemovedBody300_388 RemovedBody300_389

def RemovedBody300_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_392 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody300_390 RemovedBody300_391

def RemovedBody300_393 : StackLang.HolProg 64 :=
.seq RemovedBody300_387 RemovedBody300_392

def RemovedBody300_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody300_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody300_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 11

def RemovedBody300_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody300_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody300_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody300_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody300_403 : StackLang.HolProg 64 :=
.seq RemovedBody300_401 RemovedBody300_402

def RemovedBody300_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody300_405 : StackLang.HolProg 64 :=
.seq RemovedBody300_403 RemovedBody300_404

def RemovedBody300_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_407 : StackLang.HolProg 64 :=
.seq RemovedBody300_405 RemovedBody300_406

def RemovedBody300_408 : StackLang.HolProg 64 :=
.seq RemovedBody300_400 RemovedBody300_407

def RemovedBody300_409 : StackLang.HolProg 64 :=
.seq RemovedBody300_399 RemovedBody300_408

def RemovedBody300_410 : StackLang.HolProg 64 :=
.seq RemovedBody300_398 RemovedBody300_409

def RemovedBody300_411 : StackLang.HolProg 64 :=
.seq RemovedBody300_397 RemovedBody300_410

def RemovedBody300_412 : StackLang.HolProg 64 :=
.seq RemovedBody300_396 RemovedBody300_411

def RemovedBody300_413 : StackLang.HolProg 64 :=
.seq RemovedBody300_395 RemovedBody300_412

def RemovedBody300_414 : StackLang.HolProg 64 :=
.seq RemovedBody300_394 RemovedBody300_413

def RemovedBody300_415 : StackLang.HolProg 64 :=
.seq RemovedBody300_393 RemovedBody300_414

def RemovedBody300_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody300_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody300_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody300_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody300_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody300_424 : StackLang.HolProg 64 :=
.seq RemovedBody300_422 RemovedBody300_423

def RemovedBody300_425 : StackLang.HolProg 64 :=
.seq RemovedBody300_421 RemovedBody300_424

def RemovedBody300_426 : StackLang.HolProg 64 :=
.seq RemovedBody300_420 RemovedBody300_425

def RemovedBody300_427 : StackLang.HolProg 64 :=
.seq RemovedBody300_419 RemovedBody300_426

def RemovedBody300_428 : StackLang.HolProg 64 :=
.seq RemovedBody300_418 RemovedBody300_427

def RemovedBody300_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody300_430 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody300_431 : StackLang.HolProg 64 :=
.seq RemovedBody300_429 RemovedBody300_430

def RemovedBody300_432 : StackLang.HolProg 64 :=
.call (some (RemovedBody300_428, 0, 300, 10)) (Sum.inl 295) (some (RemovedBody300_431, 300, 11))

def RemovedBody300_433 : StackLang.HolProg 64 :=
.seq RemovedBody300_417 RemovedBody300_432

def RemovedBody300_434 : StackLang.HolProg 64 :=
.seq RemovedBody300_416 RemovedBody300_433

def RemovedBody300_435 : StackLang.HolProg 64 :=
.seq RemovedBody300_415 RemovedBody300_434

def RemovedBody300_436 : StackLang.HolProg 64 :=
.seq RemovedBody300_386 RemovedBody300_435

def RemovedBody300_437 : StackLang.HolProg 64 :=
.seq RemovedBody300_383 RemovedBody300_436

def RemovedBody300_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody300_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody300_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody300_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody300_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def RemovedBody300_446 : StackLang.HolProg 64 :=
.seq RemovedBody300_444 RemovedBody300_445

def RemovedBody300_447 : StackLang.HolProg 64 :=
.seq RemovedBody300_443 RemovedBody300_446

def RemovedBody300_448 : StackLang.HolProg 64 :=
.seq RemovedBody300_442 RemovedBody300_447

def RemovedBody300_449 : StackLang.HolProg 64 :=
.seq RemovedBody300_441 RemovedBody300_448

def RemovedBody300_450 : StackLang.HolProg 64 :=
.seq RemovedBody300_440 RemovedBody300_449

def RemovedBody300_451 : StackLang.HolProg 64 :=
.seq RemovedBody300_439 RemovedBody300_450

def RemovedBody300_452 : StackLang.HolProg 64 :=
.seq RemovedBody300_438 RemovedBody300_451

def RemovedBody300_453 : StackLang.HolProg 64 :=
.seq RemovedBody300_437 RemovedBody300_452

def RemovedBody300_454 : StackLang.HolProg 64 :=
.seq RemovedBody300_382 RemovedBody300_453

def RemovedBody300_455 : StackLang.HolProg 64 :=
.seq RemovedBody300_381 RemovedBody300_454

def RemovedBody300_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody300_457 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody300_455 RemovedBody300_456

def RemovedBody300_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody300_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody300_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody300_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody300_464 : StackLang.HolProg 64 :=
.seq RemovedBody300_462 RemovedBody300_463

def RemovedBody300_465 : StackLang.HolProg 64 :=
.seq RemovedBody300_461 RemovedBody300_464

def RemovedBody300_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody300_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 10

def RemovedBody300_468 : StackLang.HolProg 64 :=
.seq RemovedBody300_466 RemovedBody300_467

def RemovedBody300_469 : StackLang.HolProg 64 :=
.seq RemovedBody300_465 RemovedBody300_468

def RemovedBody300_470 : StackLang.HolProg 64 :=
.seq RemovedBody300_460 RemovedBody300_469

def RemovedBody300_471 : StackLang.HolProg 64 :=
.seq RemovedBody300_459 RemovedBody300_470

def RemovedBody300_472 : StackLang.HolProg 64 :=
.seq RemovedBody300_458 RemovedBody300_471

def RemovedBody300_473 : StackLang.HolProg 64 :=
.seq RemovedBody300_457 RemovedBody300_472

def RemovedBody300_474 : StackLang.HolProg 64 :=
.seq RemovedBody300_380 RemovedBody300_473

def RemovedBody300_475 : StackLang.HolProg 64 :=
.seq RemovedBody300_379 RemovedBody300_474

def RemovedBody300_476 : StackLang.HolProg 64 :=
.seq RemovedBody300_378 RemovedBody300_475

def RemovedBody300_477 : StackLang.HolProg 64 :=
.seq RemovedBody300_377 RemovedBody300_476

def RemovedBody300_478 : StackLang.HolProg 64 :=
.seq RemovedBody300_318 RemovedBody300_477

def RemovedBody300_479 : StackLang.HolProg 64 :=
.seq RemovedBody300_315 RemovedBody300_478

def RemovedBody300_480 : StackLang.HolProg 64 :=
.seq RemovedBody300_314 RemovedBody300_479

def RemovedBody300_481 : StackLang.HolProg 64 :=
.seq RemovedBody300_239 RemovedBody300_480

def RemovedBody300_482 : StackLang.HolProg 64 :=
.seq RemovedBody300_238 RemovedBody300_481

def RemovedBody300_483 : StackLang.HolProg 64 :=
.seq RemovedBody300_237 RemovedBody300_482

def RemovedBody300_484 : StackLang.HolProg 64 :=
.seq RemovedBody300_236 RemovedBody300_483

def RemovedBody300_485 : StackLang.HolProg 64 :=
.seq RemovedBody300_235 RemovedBody300_484

def RemovedBody300_486 : StackLang.HolProg 64 :=
.seq RemovedBody300_218 RemovedBody300_485

def RemovedBody300_487 : StackLang.HolProg 64 :=
.seq RemovedBody300_217 RemovedBody300_486

def RemovedBody300_488 : StackLang.HolProg 64 :=
.seq RemovedBody300_216 RemovedBody300_487

def RemovedBody300_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_490 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody300_488 RemovedBody300_489

def RemovedBody300_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody300_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody300_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody300_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody300_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody300_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody300_498 : StackLang.HolProg 64 :=
.seq RemovedBody300_496 RemovedBody300_497

def RemovedBody300_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody300_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def RemovedBody300_501 : StackLang.HolProg 64 :=
.seq RemovedBody300_499 RemovedBody300_500

def RemovedBody300_502 : StackLang.HolProg 64 :=
.seq RemovedBody300_498 RemovedBody300_501

def RemovedBody300_503 : StackLang.HolProg 64 :=
.seq RemovedBody300_495 RemovedBody300_502

def RemovedBody300_504 : StackLang.HolProg 64 :=
.seq RemovedBody300_494 RemovedBody300_503

def RemovedBody300_505 : StackLang.HolProg 64 :=
.seq RemovedBody300_493 RemovedBody300_504

def RemovedBody300_506 : StackLang.HolProg 64 :=
.seq RemovedBody300_492 RemovedBody300_505

def RemovedBody300_507 : StackLang.HolProg 64 :=
.seq RemovedBody300_491 RemovedBody300_506

def RemovedBody300_508 : StackLang.HolProg 64 :=
.seq RemovedBody300_490 RemovedBody300_507

def RemovedBody300_509 : StackLang.HolProg 64 :=
.seq RemovedBody300_215 RemovedBody300_508

def RemovedBody300_510 : StackLang.HolProg 64 :=
.seq RemovedBody300_214 RemovedBody300_509

def RemovedBody300_511 : StackLang.HolProg 64 :=
.seq RemovedBody300_213 RemovedBody300_510

def RemovedBody300_512 : StackLang.HolProg 64 :=
.seq RemovedBody300_212 RemovedBody300_511

def RemovedBody300_513 : StackLang.HolProg 64 :=
.seq RemovedBody300_27 RemovedBody300_512

def RemovedBody300_514 : StackLang.HolProg 64 :=
.seq RemovedBody300_10 RemovedBody300_513

def RemovedBody300_515 : StackLang.HolProg 64 :=
.seq RemovedBody300_9 RemovedBody300_514

def RemovedBody300_516 : StackLang.HolProg 64 :=
.seq RemovedBody300_8 RemovedBody300_515

def RemovedBody300_517 : StackLang.HolProg 64 :=
.seq RemovedBody300_7 RemovedBody300_516

def RemovedBody300_518 : StackLang.HolProg 64 :=
.seq RemovedBody300_6 RemovedBody300_517

def Removed300 : Nat × StackLang.HolProg 64 := (300, RemovedBody300_518)
theorem Removed300_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc300 = Removed300 := by
  kernel_rfl
#print axioms Removed300_eq
end InitECandidate.Proofs.BackendStages
