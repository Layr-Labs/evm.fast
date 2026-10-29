import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc110
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody110_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody110_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody110_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody110_3 : StackLang.HolProg 64 :=
.seq RemovedBody110_1 RemovedBody110_2

def RemovedBody110_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody110_3 RemovedBody110_4

def RemovedBody110_6 : StackLang.HolProg 64 :=
.seq RemovedBody110_0 RemovedBody110_5

def RemovedBody110_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody110_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody110_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody110_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody110_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody110_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody110_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody110_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody110_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody110_16 : StackLang.HolProg 64 :=
.seq RemovedBody110_14 RemovedBody110_15

def RemovedBody110_17 : StackLang.HolProg 64 :=
.seq RemovedBody110_13 RemovedBody110_16

def RemovedBody110_18 : StackLang.HolProg 64 :=
.seq RemovedBody110_12 RemovedBody110_17

def RemovedBody110_19 : StackLang.HolProg 64 :=
.seq RemovedBody110_11 RemovedBody110_18

def RemovedBody110_20 : StackLang.HolProg 64 :=
.seq RemovedBody110_10 RemovedBody110_19

def RemovedBody110_21 : StackLang.HolProg 64 :=
.seq RemovedBody110_9 RemovedBody110_20

def RemovedBody110_22 : StackLang.HolProg 64 :=
.seq RemovedBody110_8 RemovedBody110_21

def RemovedBody110_23 : StackLang.HolProg 64 :=
.seq RemovedBody110_7 RemovedBody110_22

def RemovedBody110_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 45#64)

def RemovedBody110_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody110_27 : StackLang.HolProg 64 :=
.seq RemovedBody110_25 RemovedBody110_26

def RemovedBody110_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody110_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody110_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody110_31 : StackLang.HolProg 64 :=
.seq RemovedBody110_29 RemovedBody110_30

def RemovedBody110_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody110_31 RemovedBody110_32

def RemovedBody110_34 : StackLang.HolProg 64 :=
.seq RemovedBody110_28 RemovedBody110_33

def RemovedBody110_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody110_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody110_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 110 3

def RemovedBody110_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody110_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody110_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody110_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody110_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody110_44 : StackLang.HolProg 64 :=
.seq RemovedBody110_42 RemovedBody110_43

def RemovedBody110_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody110_46 : StackLang.HolProg 64 :=
.seq RemovedBody110_44 RemovedBody110_45

def RemovedBody110_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody110_48 : StackLang.HolProg 64 :=
.seq RemovedBody110_46 RemovedBody110_47

def RemovedBody110_49 : StackLang.HolProg 64 :=
.seq RemovedBody110_41 RemovedBody110_48

def RemovedBody110_50 : StackLang.HolProg 64 :=
.seq RemovedBody110_40 RemovedBody110_49

def RemovedBody110_51 : StackLang.HolProg 64 :=
.seq RemovedBody110_39 RemovedBody110_50

def RemovedBody110_52 : StackLang.HolProg 64 :=
.seq RemovedBody110_38 RemovedBody110_51

def RemovedBody110_53 : StackLang.HolProg 64 :=
.seq RemovedBody110_37 RemovedBody110_52

def RemovedBody110_54 : StackLang.HolProg 64 :=
.seq RemovedBody110_36 RemovedBody110_53

def RemovedBody110_55 : StackLang.HolProg 64 :=
.seq RemovedBody110_35 RemovedBody110_54

def RemovedBody110_56 : StackLang.HolProg 64 :=
.seq RemovedBody110_34 RemovedBody110_55

def RemovedBody110_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody110_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody110_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody110_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody110_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody110_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody110_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody110_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody110_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody110_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody110_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody110_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody110_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody110_73 : StackLang.HolProg 64 :=
.seq RemovedBody110_71 RemovedBody110_72

def RemovedBody110_74 : StackLang.HolProg 64 :=
.seq RemovedBody110_70 RemovedBody110_73

def RemovedBody110_75 : StackLang.HolProg 64 :=
.seq RemovedBody110_69 RemovedBody110_74

def RemovedBody110_76 : StackLang.HolProg 64 :=
.seq RemovedBody110_68 RemovedBody110_75

def RemovedBody110_77 : StackLang.HolProg 64 :=
.seq RemovedBody110_67 RemovedBody110_76

def RemovedBody110_78 : StackLang.HolProg 64 :=
.seq RemovedBody110_66 RemovedBody110_77

def RemovedBody110_79 : StackLang.HolProg 64 :=
.seq RemovedBody110_65 RemovedBody110_78

def RemovedBody110_80 : StackLang.HolProg 64 :=
.seq RemovedBody110_64 RemovedBody110_79

def RemovedBody110_81 : StackLang.HolProg 64 :=
.seq RemovedBody110_63 RemovedBody110_80

def RemovedBody110_82 : StackLang.HolProg 64 :=
.seq RemovedBody110_62 RemovedBody110_81

def RemovedBody110_83 : StackLang.HolProg 64 :=
.seq RemovedBody110_61 RemovedBody110_82

def RemovedBody110_84 : StackLang.HolProg 64 :=
.seq RemovedBody110_60 RemovedBody110_83

def RemovedBody110_85 : StackLang.HolProg 64 :=
.seq RemovedBody110_59 RemovedBody110_84

def RemovedBody110_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody110_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody110_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody110_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody110_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody110_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody110_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody110_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody110_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody110_95 : StackLang.HolProg 64 :=
.seq RemovedBody110_93 RemovedBody110_94

def RemovedBody110_96 : StackLang.HolProg 64 :=
.seq RemovedBody110_92 RemovedBody110_95

def RemovedBody110_97 : StackLang.HolProg 64 :=
.seq RemovedBody110_91 RemovedBody110_96

def RemovedBody110_98 : StackLang.HolProg 64 :=
.seq RemovedBody110_90 RemovedBody110_97

def RemovedBody110_99 : StackLang.HolProg 64 :=
.seq RemovedBody110_89 RemovedBody110_98

def RemovedBody110_100 : StackLang.HolProg 64 :=
.seq RemovedBody110_88 RemovedBody110_99

def RemovedBody110_101 : StackLang.HolProg 64 :=
.seq RemovedBody110_87 RemovedBody110_100

def RemovedBody110_102 : StackLang.HolProg 64 :=
.seq RemovedBody110_86 RemovedBody110_101

def RemovedBody110_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody110_104 : StackLang.HolProg 64 :=
.seq RemovedBody110_102 RemovedBody110_103

def RemovedBody110_105 : StackLang.HolProg 64 :=
.call (some (RemovedBody110_85, 0, 110, 2)) (Sum.inl 106) (some (RemovedBody110_104, 110, 3))

def RemovedBody110_106 : StackLang.HolProg 64 :=
.seq RemovedBody110_58 RemovedBody110_105

def RemovedBody110_107 : StackLang.HolProg 64 :=
.seq RemovedBody110_57 RemovedBody110_106

def RemovedBody110_108 : StackLang.HolProg 64 :=
.seq RemovedBody110_56 RemovedBody110_107

def RemovedBody110_109 : StackLang.HolProg 64 :=
.seq RemovedBody110_27 RemovedBody110_108

def RemovedBody110_110 : StackLang.HolProg 64 :=
.seq RemovedBody110_24 RemovedBody110_109

def RemovedBody110_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody110_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody110_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody110_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody110_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody110_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 10

def RemovedBody110_119 : StackLang.HolProg 64 :=
.seq RemovedBody110_117 RemovedBody110_118

def RemovedBody110_120 : StackLang.HolProg 64 :=
.seq RemovedBody110_116 RemovedBody110_119

def RemovedBody110_121 : StackLang.HolProg 64 :=
.seq RemovedBody110_115 RemovedBody110_120

def RemovedBody110_122 : StackLang.HolProg 64 :=
.seq RemovedBody110_114 RemovedBody110_121

def RemovedBody110_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody110_122 RemovedBody110_123

def RemovedBody110_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody110_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody110_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody110_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody110_129 : StackLang.HolProg 64 :=
.seq RemovedBody110_127 RemovedBody110_128

def RemovedBody110_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 46#64)

def RemovedBody110_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody110_133 : StackLang.HolProg 64 :=
.seq RemovedBody110_131 RemovedBody110_132

def RemovedBody110_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody110_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody110_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody110_137 : StackLang.HolProg 64 :=
.seq RemovedBody110_135 RemovedBody110_136

def RemovedBody110_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody110_137 RemovedBody110_138

def RemovedBody110_140 : StackLang.HolProg 64 :=
.seq RemovedBody110_134 RemovedBody110_139

def RemovedBody110_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody110_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody110_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 110 5

def RemovedBody110_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody110_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody110_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody110_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody110_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody110_150 : StackLang.HolProg 64 :=
.seq RemovedBody110_148 RemovedBody110_149

def RemovedBody110_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody110_152 : StackLang.HolProg 64 :=
.seq RemovedBody110_150 RemovedBody110_151

def RemovedBody110_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody110_154 : StackLang.HolProg 64 :=
.seq RemovedBody110_152 RemovedBody110_153

def RemovedBody110_155 : StackLang.HolProg 64 :=
.seq RemovedBody110_147 RemovedBody110_154

def RemovedBody110_156 : StackLang.HolProg 64 :=
.seq RemovedBody110_146 RemovedBody110_155

def RemovedBody110_157 : StackLang.HolProg 64 :=
.seq RemovedBody110_145 RemovedBody110_156

def RemovedBody110_158 : StackLang.HolProg 64 :=
.seq RemovedBody110_144 RemovedBody110_157

def RemovedBody110_159 : StackLang.HolProg 64 :=
.seq RemovedBody110_143 RemovedBody110_158

def RemovedBody110_160 : StackLang.HolProg 64 :=
.seq RemovedBody110_142 RemovedBody110_159

def RemovedBody110_161 : StackLang.HolProg 64 :=
.seq RemovedBody110_141 RemovedBody110_160

def RemovedBody110_162 : StackLang.HolProg 64 :=
.seq RemovedBody110_140 RemovedBody110_161

def RemovedBody110_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody110_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody110_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody110_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody110_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody110_171 : StackLang.HolProg 64 :=
.seq RemovedBody110_169 RemovedBody110_170

def RemovedBody110_172 : StackLang.HolProg 64 :=
.seq RemovedBody110_168 RemovedBody110_171

def RemovedBody110_173 : StackLang.HolProg 64 :=
.seq RemovedBody110_167 RemovedBody110_172

def RemovedBody110_174 : StackLang.HolProg 64 :=
.seq RemovedBody110_166 RemovedBody110_173

def RemovedBody110_175 : StackLang.HolProg 64 :=
.seq RemovedBody110_165 RemovedBody110_174

def RemovedBody110_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody110_177 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody110_178 : StackLang.HolProg 64 :=
.seq RemovedBody110_176 RemovedBody110_177

def RemovedBody110_179 : StackLang.HolProg 64 :=
.call (some (RemovedBody110_175, 0, 110, 4)) (Sum.inl 105) (some (RemovedBody110_178, 110, 5))

def RemovedBody110_180 : StackLang.HolProg 64 :=
.seq RemovedBody110_164 RemovedBody110_179

def RemovedBody110_181 : StackLang.HolProg 64 :=
.seq RemovedBody110_163 RemovedBody110_180

def RemovedBody110_182 : StackLang.HolProg 64 :=
.seq RemovedBody110_162 RemovedBody110_181

def RemovedBody110_183 : StackLang.HolProg 64 :=
.seq RemovedBody110_133 RemovedBody110_182

def RemovedBody110_184 : StackLang.HolProg 64 :=
.seq RemovedBody110_130 RemovedBody110_183

def RemovedBody110_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody110_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody110_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody110_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody110_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody110_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody110_193 : StackLang.HolProg 64 :=
.seq RemovedBody110_191 RemovedBody110_192

def RemovedBody110_194 : StackLang.HolProg 64 :=
.seq RemovedBody110_190 RemovedBody110_193

def RemovedBody110_195 : StackLang.HolProg 64 :=
.seq RemovedBody110_189 RemovedBody110_194

def RemovedBody110_196 : StackLang.HolProg 64 :=
.seq RemovedBody110_188 RemovedBody110_195

def RemovedBody110_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_198 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody110_196 RemovedBody110_197

def RemovedBody110_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody110_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody110_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody110_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody110_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody110_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody110_205 : StackLang.HolProg 64 :=
.seq RemovedBody110_203 RemovedBody110_204

def RemovedBody110_206 : StackLang.HolProg 64 :=
.seq RemovedBody110_202 RemovedBody110_205

def RemovedBody110_207 : StackLang.HolProg 64 :=
.seq RemovedBody110_201 RemovedBody110_206

def RemovedBody110_208 : StackLang.HolProg 64 :=
.seq RemovedBody110_200 RemovedBody110_207

def RemovedBody110_209 : StackLang.HolProg 64 :=
.seq RemovedBody110_199 RemovedBody110_208

def RemovedBody110_210 : StackLang.HolProg 64 :=
.seq RemovedBody110_198 RemovedBody110_209

def RemovedBody110_211 : StackLang.HolProg 64 :=
.seq RemovedBody110_187 RemovedBody110_210

def RemovedBody110_212 : StackLang.HolProg 64 :=
.seq RemovedBody110_186 RemovedBody110_211

def RemovedBody110_213 : StackLang.HolProg 64 :=
.seq RemovedBody110_185 RemovedBody110_212

def RemovedBody110_214 : StackLang.HolProg 64 :=
.seq RemovedBody110_184 RemovedBody110_213

def RemovedBody110_215 : StackLang.HolProg 64 :=
.seq RemovedBody110_129 RemovedBody110_214

def RemovedBody110_216 : StackLang.HolProg 64 :=
.seq RemovedBody110_126 RemovedBody110_215

def RemovedBody110_217 : StackLang.HolProg 64 :=
.seq RemovedBody110_125 RemovedBody110_216

def RemovedBody110_218 : StackLang.HolProg 64 :=
.seq RemovedBody110_124 RemovedBody110_217

def RemovedBody110_219 : StackLang.HolProg 64 :=
.seq RemovedBody110_113 RemovedBody110_218

def RemovedBody110_220 : StackLang.HolProg 64 :=
.seq RemovedBody110_112 RemovedBody110_219

def RemovedBody110_221 : StackLang.HolProg 64 :=
.seq RemovedBody110_111 RemovedBody110_220

def RemovedBody110_222 : StackLang.HolProg 64 :=
.seq RemovedBody110_110 RemovedBody110_221

def RemovedBody110_223 : StackLang.HolProg 64 :=
.seq RemovedBody110_23 RemovedBody110_222

def RemovedBody110_224 : StackLang.HolProg 64 :=
.seq RemovedBody110_6 RemovedBody110_223

def Removed110 : Nat × StackLang.HolProg 64 := (110, RemovedBody110_224)
theorem Removed110_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc110 = Removed110 := by
  kernel_rfl
#print axioms Removed110_eq
end InitECandidate.Proofs.BackendStages
