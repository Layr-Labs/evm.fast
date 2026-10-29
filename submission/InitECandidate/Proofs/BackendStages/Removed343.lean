import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc343
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody343_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody343_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody343_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody343_3 : StackLang.HolProg 64 :=
.seq RemovedBody343_1 RemovedBody343_2

def RemovedBody343_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody343_3 RemovedBody343_4

def RemovedBody343_6 : StackLang.HolProg 64 :=
.seq RemovedBody343_0 RemovedBody343_5

def RemovedBody343_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody343_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody343_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody343_10 : StackLang.HolProg 64 :=
.seq RemovedBody343_8 RemovedBody343_9

def RemovedBody343_11 : StackLang.HolProg 64 :=
.seq RemovedBody343_7 RemovedBody343_10

def RemovedBody343_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 986#64)

def RemovedBody343_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody343_15 : StackLang.HolProg 64 :=
.seq RemovedBody343_13 RemovedBody343_14

def RemovedBody343_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody343_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody343_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody343_19 : StackLang.HolProg 64 :=
.seq RemovedBody343_17 RemovedBody343_18

def RemovedBody343_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody343_19 RemovedBody343_20

def RemovedBody343_22 : StackLang.HolProg 64 :=
.seq RemovedBody343_16 RemovedBody343_21

def RemovedBody343_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody343_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody343_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 3

def RemovedBody343_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody343_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody343_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody343_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody343_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody343_32 : StackLang.HolProg 64 :=
.seq RemovedBody343_30 RemovedBody343_31

def RemovedBody343_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody343_34 : StackLang.HolProg 64 :=
.seq RemovedBody343_32 RemovedBody343_33

def RemovedBody343_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody343_36 : StackLang.HolProg 64 :=
.seq RemovedBody343_34 RemovedBody343_35

def RemovedBody343_37 : StackLang.HolProg 64 :=
.seq RemovedBody343_29 RemovedBody343_36

def RemovedBody343_38 : StackLang.HolProg 64 :=
.seq RemovedBody343_28 RemovedBody343_37

def RemovedBody343_39 : StackLang.HolProg 64 :=
.seq RemovedBody343_27 RemovedBody343_38

def RemovedBody343_40 : StackLang.HolProg 64 :=
.seq RemovedBody343_26 RemovedBody343_39

def RemovedBody343_41 : StackLang.HolProg 64 :=
.seq RemovedBody343_25 RemovedBody343_40

def RemovedBody343_42 : StackLang.HolProg 64 :=
.seq RemovedBody343_24 RemovedBody343_41

def RemovedBody343_43 : StackLang.HolProg 64 :=
.seq RemovedBody343_23 RemovedBody343_42

def RemovedBody343_44 : StackLang.HolProg 64 :=
.seq RemovedBody343_22 RemovedBody343_43

def RemovedBody343_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody343_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody343_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody343_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody343_52 : StackLang.HolProg 64 :=
.seq RemovedBody343_50 RemovedBody343_51

def RemovedBody343_53 : StackLang.HolProg 64 :=
.seq RemovedBody343_49 RemovedBody343_52

def RemovedBody343_54 : StackLang.HolProg 64 :=
.seq RemovedBody343_48 RemovedBody343_53

def RemovedBody343_55 : StackLang.HolProg 64 :=
.seq RemovedBody343_47 RemovedBody343_54

def RemovedBody343_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody343_58 : StackLang.HolProg 64 :=
.seq RemovedBody343_56 RemovedBody343_57

def RemovedBody343_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody343_55, 0, 343, 2)) (Sum.inl 169) (some (RemovedBody343_58, 343, 3))

def RemovedBody343_60 : StackLang.HolProg 64 :=
.seq RemovedBody343_46 RemovedBody343_59

def RemovedBody343_61 : StackLang.HolProg 64 :=
.seq RemovedBody343_45 RemovedBody343_60

def RemovedBody343_62 : StackLang.HolProg 64 :=
.seq RemovedBody343_44 RemovedBody343_61

def RemovedBody343_63 : StackLang.HolProg 64 :=
.seq RemovedBody343_15 RemovedBody343_62

def RemovedBody343_64 : StackLang.HolProg 64 :=
.seq RemovedBody343_12 RemovedBody343_63

def RemovedBody343_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody343_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody343_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody343_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody343_70 : StackLang.HolProg 64 :=
.seq RemovedBody343_68 RemovedBody343_69

def RemovedBody343_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 987#64)

def RemovedBody343_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody343_74 : StackLang.HolProg 64 :=
.seq RemovedBody343_72 RemovedBody343_73

def RemovedBody343_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody343_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody343_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody343_78 : StackLang.HolProg 64 :=
.seq RemovedBody343_76 RemovedBody343_77

def RemovedBody343_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody343_78 RemovedBody343_79

def RemovedBody343_81 : StackLang.HolProg 64 :=
.seq RemovedBody343_75 RemovedBody343_80

def RemovedBody343_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody343_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody343_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 5

def RemovedBody343_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody343_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody343_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody343_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody343_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody343_91 : StackLang.HolProg 64 :=
.seq RemovedBody343_89 RemovedBody343_90

def RemovedBody343_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody343_93 : StackLang.HolProg 64 :=
.seq RemovedBody343_91 RemovedBody343_92

def RemovedBody343_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody343_95 : StackLang.HolProg 64 :=
.seq RemovedBody343_93 RemovedBody343_94

def RemovedBody343_96 : StackLang.HolProg 64 :=
.seq RemovedBody343_88 RemovedBody343_95

def RemovedBody343_97 : StackLang.HolProg 64 :=
.seq RemovedBody343_87 RemovedBody343_96

def RemovedBody343_98 : StackLang.HolProg 64 :=
.seq RemovedBody343_86 RemovedBody343_97

def RemovedBody343_99 : StackLang.HolProg 64 :=
.seq RemovedBody343_85 RemovedBody343_98

def RemovedBody343_100 : StackLang.HolProg 64 :=
.seq RemovedBody343_84 RemovedBody343_99

def RemovedBody343_101 : StackLang.HolProg 64 :=
.seq RemovedBody343_83 RemovedBody343_100

def RemovedBody343_102 : StackLang.HolProg 64 :=
.seq RemovedBody343_82 RemovedBody343_101

def RemovedBody343_103 : StackLang.HolProg 64 :=
.seq RemovedBody343_81 RemovedBody343_102

def RemovedBody343_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody343_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody343_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody343_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody343_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody343_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody343_113 : StackLang.HolProg 64 :=
.seq RemovedBody343_111 RemovedBody343_112

def RemovedBody343_114 : StackLang.HolProg 64 :=
.seq RemovedBody343_110 RemovedBody343_113

def RemovedBody343_115 : StackLang.HolProg 64 :=
.seq RemovedBody343_109 RemovedBody343_114

def RemovedBody343_116 : StackLang.HolProg 64 :=
.seq RemovedBody343_108 RemovedBody343_115

def RemovedBody343_117 : StackLang.HolProg 64 :=
.seq RemovedBody343_107 RemovedBody343_116

def RemovedBody343_118 : StackLang.HolProg 64 :=
.seq RemovedBody343_106 RemovedBody343_117

def RemovedBody343_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody343_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody343_121 : StackLang.HolProg 64 :=
.seq RemovedBody343_119 RemovedBody343_120

def RemovedBody343_122 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody343_123 : StackLang.HolProg 64 :=
.seq RemovedBody343_121 RemovedBody343_122

def RemovedBody343_124 : StackLang.HolProg 64 :=
.call (some (RemovedBody343_118, 0, 343, 4)) (Sum.inl 68) (some (RemovedBody343_123, 343, 5))

def RemovedBody343_125 : StackLang.HolProg 64 :=
.seq RemovedBody343_105 RemovedBody343_124

def RemovedBody343_126 : StackLang.HolProg 64 :=
.seq RemovedBody343_104 RemovedBody343_125

def RemovedBody343_127 : StackLang.HolProg 64 :=
.seq RemovedBody343_103 RemovedBody343_126

def RemovedBody343_128 : StackLang.HolProg 64 :=
.seq RemovedBody343_74 RemovedBody343_127

def RemovedBody343_129 : StackLang.HolProg 64 :=
.seq RemovedBody343_71 RemovedBody343_128

def RemovedBody343_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody343_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody343_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody343_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody343_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody343_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody343_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody343_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody343_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody343_140 : StackLang.HolProg 64 :=
.seq RemovedBody343_138 RemovedBody343_139

def RemovedBody343_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody343_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody343_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody343_144 : StackLang.HolProg 64 :=
.seq RemovedBody343_142 RemovedBody343_143

def RemovedBody343_145 : StackLang.HolProg 64 :=
.seq RemovedBody343_141 RemovedBody343_144

def RemovedBody343_146 : StackLang.HolProg 64 :=
.seq RemovedBody343_140 RemovedBody343_145

def RemovedBody343_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 988#64)

def RemovedBody343_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody343_150 : StackLang.HolProg 64 :=
.seq RemovedBody343_148 RemovedBody343_149

def RemovedBody343_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody343_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody343_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody343_154 : StackLang.HolProg 64 :=
.seq RemovedBody343_152 RemovedBody343_153

def RemovedBody343_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_156 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody343_154 RemovedBody343_155

def RemovedBody343_157 : StackLang.HolProg 64 :=
.seq RemovedBody343_151 RemovedBody343_156

def RemovedBody343_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody343_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody343_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 7

def RemovedBody343_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody343_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody343_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody343_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody343_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody343_167 : StackLang.HolProg 64 :=
.seq RemovedBody343_165 RemovedBody343_166

def RemovedBody343_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody343_169 : StackLang.HolProg 64 :=
.seq RemovedBody343_167 RemovedBody343_168

def RemovedBody343_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody343_171 : StackLang.HolProg 64 :=
.seq RemovedBody343_169 RemovedBody343_170

def RemovedBody343_172 : StackLang.HolProg 64 :=
.seq RemovedBody343_164 RemovedBody343_171

def RemovedBody343_173 : StackLang.HolProg 64 :=
.seq RemovedBody343_163 RemovedBody343_172

def RemovedBody343_174 : StackLang.HolProg 64 :=
.seq RemovedBody343_162 RemovedBody343_173

def RemovedBody343_175 : StackLang.HolProg 64 :=
.seq RemovedBody343_161 RemovedBody343_174

def RemovedBody343_176 : StackLang.HolProg 64 :=
.seq RemovedBody343_160 RemovedBody343_175

def RemovedBody343_177 : StackLang.HolProg 64 :=
.seq RemovedBody343_159 RemovedBody343_176

def RemovedBody343_178 : StackLang.HolProg 64 :=
.seq RemovedBody343_158 RemovedBody343_177

def RemovedBody343_179 : StackLang.HolProg 64 :=
.seq RemovedBody343_157 RemovedBody343_178

def RemovedBody343_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody343_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody343_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody343_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody343_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody343_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody343_189 : StackLang.HolProg 64 :=
.seq RemovedBody343_187 RemovedBody343_188

def RemovedBody343_190 : StackLang.HolProg 64 :=
.seq RemovedBody343_186 RemovedBody343_189

def RemovedBody343_191 : StackLang.HolProg 64 :=
.seq RemovedBody343_185 RemovedBody343_190

def RemovedBody343_192 : StackLang.HolProg 64 :=
.seq RemovedBody343_184 RemovedBody343_191

def RemovedBody343_193 : StackLang.HolProg 64 :=
.seq RemovedBody343_183 RemovedBody343_192

def RemovedBody343_194 : StackLang.HolProg 64 :=
.seq RemovedBody343_182 RemovedBody343_193

def RemovedBody343_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody343_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody343_197 : StackLang.HolProg 64 :=
.seq RemovedBody343_195 RemovedBody343_196

def RemovedBody343_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody343_199 : StackLang.HolProg 64 :=
.seq RemovedBody343_197 RemovedBody343_198

def RemovedBody343_200 : StackLang.HolProg 64 :=
.call (some (RemovedBody343_194, 0, 343, 6)) (Sum.inl 339) (some (RemovedBody343_199, 343, 7))

def RemovedBody343_201 : StackLang.HolProg 64 :=
.seq RemovedBody343_181 RemovedBody343_200

def RemovedBody343_202 : StackLang.HolProg 64 :=
.seq RemovedBody343_180 RemovedBody343_201

def RemovedBody343_203 : StackLang.HolProg 64 :=
.seq RemovedBody343_179 RemovedBody343_202

def RemovedBody343_204 : StackLang.HolProg 64 :=
.seq RemovedBody343_150 RemovedBody343_203

def RemovedBody343_205 : StackLang.HolProg 64 :=
.seq RemovedBody343_147 RemovedBody343_204

def RemovedBody343_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody343_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody343_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody343_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody343_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody343_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody343_215 : StackLang.HolProg 64 :=
.seq RemovedBody343_213 RemovedBody343_214

def RemovedBody343_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 989#64)

def RemovedBody343_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody343_219 : StackLang.HolProg 64 :=
.seq RemovedBody343_217 RemovedBody343_218

def RemovedBody343_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody343_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody343_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody343_223 : StackLang.HolProg 64 :=
.seq RemovedBody343_221 RemovedBody343_222

def RemovedBody343_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_225 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody343_223 RemovedBody343_224

def RemovedBody343_226 : StackLang.HolProg 64 :=
.seq RemovedBody343_220 RemovedBody343_225

def RemovedBody343_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody343_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody343_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 9

def RemovedBody343_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody343_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody343_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody343_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody343_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody343_236 : StackLang.HolProg 64 :=
.seq RemovedBody343_234 RemovedBody343_235

def RemovedBody343_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody343_238 : StackLang.HolProg 64 :=
.seq RemovedBody343_236 RemovedBody343_237

def RemovedBody343_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody343_240 : StackLang.HolProg 64 :=
.seq RemovedBody343_238 RemovedBody343_239

def RemovedBody343_241 : StackLang.HolProg 64 :=
.seq RemovedBody343_233 RemovedBody343_240

def RemovedBody343_242 : StackLang.HolProg 64 :=
.seq RemovedBody343_232 RemovedBody343_241

def RemovedBody343_243 : StackLang.HolProg 64 :=
.seq RemovedBody343_231 RemovedBody343_242

def RemovedBody343_244 : StackLang.HolProg 64 :=
.seq RemovedBody343_230 RemovedBody343_243

def RemovedBody343_245 : StackLang.HolProg 64 :=
.seq RemovedBody343_229 RemovedBody343_244

def RemovedBody343_246 : StackLang.HolProg 64 :=
.seq RemovedBody343_228 RemovedBody343_245

def RemovedBody343_247 : StackLang.HolProg 64 :=
.seq RemovedBody343_227 RemovedBody343_246

def RemovedBody343_248 : StackLang.HolProg 64 :=
.seq RemovedBody343_226 RemovedBody343_247

def RemovedBody343_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody343_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody343_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody343_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody343_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody343_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody343_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody343_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody343_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody343_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody343_262 : StackLang.HolProg 64 :=
.seq RemovedBody343_260 RemovedBody343_261

def RemovedBody343_263 : StackLang.HolProg 64 :=
.seq RemovedBody343_259 RemovedBody343_262

def RemovedBody343_264 : StackLang.HolProg 64 :=
.seq RemovedBody343_258 RemovedBody343_263

def RemovedBody343_265 : StackLang.HolProg 64 :=
.seq RemovedBody343_257 RemovedBody343_264

def RemovedBody343_266 : StackLang.HolProg 64 :=
.seq RemovedBody343_256 RemovedBody343_265

def RemovedBody343_267 : StackLang.HolProg 64 :=
.seq RemovedBody343_255 RemovedBody343_266

def RemovedBody343_268 : StackLang.HolProg 64 :=
.seq RemovedBody343_254 RemovedBody343_267

def RemovedBody343_269 : StackLang.HolProg 64 :=
.seq RemovedBody343_253 RemovedBody343_268

def RemovedBody343_270 : StackLang.HolProg 64 :=
.seq RemovedBody343_252 RemovedBody343_269

def RemovedBody343_271 : StackLang.HolProg 64 :=
.seq RemovedBody343_251 RemovedBody343_270

def RemovedBody343_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody343_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody343_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody343_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody343_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody343_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody343_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody343_279 : StackLang.HolProg 64 :=
.seq RemovedBody343_277 RemovedBody343_278

def RemovedBody343_280 : StackLang.HolProg 64 :=
.seq RemovedBody343_276 RemovedBody343_279

def RemovedBody343_281 : StackLang.HolProg 64 :=
.seq RemovedBody343_275 RemovedBody343_280

def RemovedBody343_282 : StackLang.HolProg 64 :=
.seq RemovedBody343_274 RemovedBody343_281

def RemovedBody343_283 : StackLang.HolProg 64 :=
.seq RemovedBody343_273 RemovedBody343_282

def RemovedBody343_284 : StackLang.HolProg 64 :=
.seq RemovedBody343_272 RemovedBody343_283

def RemovedBody343_285 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody343_286 : StackLang.HolProg 64 :=
.seq RemovedBody343_284 RemovedBody343_285

def RemovedBody343_287 : StackLang.HolProg 64 :=
.call (some (RemovedBody343_271, 0, 343, 8)) (Sum.inl 77) (some (RemovedBody343_286, 343, 9))

def RemovedBody343_288 : StackLang.HolProg 64 :=
.seq RemovedBody343_250 RemovedBody343_287

def RemovedBody343_289 : StackLang.HolProg 64 :=
.seq RemovedBody343_249 RemovedBody343_288

def RemovedBody343_290 : StackLang.HolProg 64 :=
.seq RemovedBody343_248 RemovedBody343_289

def RemovedBody343_291 : StackLang.HolProg 64 :=
.seq RemovedBody343_219 RemovedBody343_290

def RemovedBody343_292 : StackLang.HolProg 64 :=
.seq RemovedBody343_216 RemovedBody343_291

def RemovedBody343_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody343_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody343_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody343_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody343_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody343_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody343_300 : StackLang.HolProg 64 :=
.seq RemovedBody343_298 RemovedBody343_299

def RemovedBody343_301 : StackLang.HolProg 64 :=
.seq RemovedBody343_297 RemovedBody343_300

def RemovedBody343_302 : StackLang.HolProg 64 :=
.seq RemovedBody343_296 RemovedBody343_301

def RemovedBody343_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody343_304 : StackLang.HolProg 64 :=
.seq RemovedBody343_302 RemovedBody343_303

def RemovedBody343_305 : StackLang.HolProg 64 :=
.seq RemovedBody343_295 RemovedBody343_304

def RemovedBody343_306 : StackLang.HolProg 64 :=
.seq RemovedBody343_294 RemovedBody343_305

def RemovedBody343_307 : StackLang.HolProg 64 :=
.seq RemovedBody343_293 RemovedBody343_306

def RemovedBody343_308 : StackLang.HolProg 64 :=
.seq RemovedBody343_292 RemovedBody343_307

def RemovedBody343_309 : StackLang.HolProg 64 :=
.seq RemovedBody343_215 RemovedBody343_308

def RemovedBody343_310 : StackLang.HolProg 64 :=
.seq RemovedBody343_212 RemovedBody343_309

def RemovedBody343_311 : StackLang.HolProg 64 :=
.seq RemovedBody343_211 RemovedBody343_310

def RemovedBody343_312 : StackLang.HolProg 64 :=
.seq RemovedBody343_210 RemovedBody343_311

def RemovedBody343_313 : StackLang.HolProg 64 :=
.seq RemovedBody343_209 RemovedBody343_312

def RemovedBody343_314 : StackLang.HolProg 64 :=
.seq RemovedBody343_208 RemovedBody343_313

def RemovedBody343_315 : StackLang.HolProg 64 :=
.seq RemovedBody343_207 RemovedBody343_314

def RemovedBody343_316 : StackLang.HolProg 64 :=
.seq RemovedBody343_206 RemovedBody343_315

def RemovedBody343_317 : StackLang.HolProg 64 :=
.seq RemovedBody343_205 RemovedBody343_316

def RemovedBody343_318 : StackLang.HolProg 64 :=
.seq RemovedBody343_146 RemovedBody343_317

def RemovedBody343_319 : StackLang.HolProg 64 :=
.seq RemovedBody343_137 RemovedBody343_318

def RemovedBody343_320 : StackLang.HolProg 64 :=
.seq RemovedBody343_136 RemovedBody343_319

def RemovedBody343_321 : StackLang.HolProg 64 :=
.seq RemovedBody343_135 RemovedBody343_320

def RemovedBody343_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody343_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody343_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody343_325 : StackLang.HolProg 64 :=
.seq RemovedBody343_323 RemovedBody343_324

def RemovedBody343_326 : StackLang.HolProg 64 :=
.seq RemovedBody343_322 RemovedBody343_325

def RemovedBody343_327 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody343_321 RemovedBody343_326

def RemovedBody343_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody343_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody343_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody343_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody343_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody343_333 : StackLang.HolProg 64 :=
.seq RemovedBody343_331 RemovedBody343_332

def RemovedBody343_334 : StackLang.HolProg 64 :=
.seq RemovedBody343_330 RemovedBody343_333

def RemovedBody343_335 : StackLang.HolProg 64 :=
.seq RemovedBody343_329 RemovedBody343_334

def RemovedBody343_336 : StackLang.HolProg 64 :=
.seq RemovedBody343_328 RemovedBody343_335

def RemovedBody343_337 : StackLang.HolProg 64 :=
.seq RemovedBody343_327 RemovedBody343_336

def RemovedBody343_338 : StackLang.HolProg 64 :=
.seq RemovedBody343_134 RemovedBody343_337

def RemovedBody343_339 : StackLang.HolProg 64 :=
.loop RemovedBody343_338

def RemovedBody343_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody343_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody343_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody343_343 : StackLang.HolProg 64 :=
.seq RemovedBody343_341 RemovedBody343_342

def RemovedBody343_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody343_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody343_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody343_347 : StackLang.HolProg 64 :=
.seq RemovedBody343_345 RemovedBody343_346

def RemovedBody343_348 : StackLang.HolProg 64 :=
.seq RemovedBody343_344 RemovedBody343_347

def RemovedBody343_349 : StackLang.HolProg 64 :=
.seq RemovedBody343_343 RemovedBody343_348

def RemovedBody343_350 : StackLang.HolProg 64 :=
.seq RemovedBody343_340 RemovedBody343_349

def RemovedBody343_351 : StackLang.HolProg 64 :=
.seq RemovedBody343_339 RemovedBody343_350

def RemovedBody343_352 : StackLang.HolProg 64 :=
.seq RemovedBody343_133 RemovedBody343_351

def RemovedBody343_353 : StackLang.HolProg 64 :=
.seq RemovedBody343_132 RemovedBody343_352

def RemovedBody343_354 : StackLang.HolProg 64 :=
.seq RemovedBody343_131 RemovedBody343_353

def RemovedBody343_355 : StackLang.HolProg 64 :=
.seq RemovedBody343_130 RemovedBody343_354

def RemovedBody343_356 : StackLang.HolProg 64 :=
.seq RemovedBody343_129 RemovedBody343_355

def RemovedBody343_357 : StackLang.HolProg 64 :=
.seq RemovedBody343_70 RemovedBody343_356

def RemovedBody343_358 : StackLang.HolProg 64 :=
.seq RemovedBody343_67 RemovedBody343_357

def RemovedBody343_359 : StackLang.HolProg 64 :=
.seq RemovedBody343_66 RemovedBody343_358

def RemovedBody343_360 : StackLang.HolProg 64 :=
.seq RemovedBody343_65 RemovedBody343_359

def RemovedBody343_361 : StackLang.HolProg 64 :=
.seq RemovedBody343_64 RemovedBody343_360

def RemovedBody343_362 : StackLang.HolProg 64 :=
.seq RemovedBody343_11 RemovedBody343_361

def RemovedBody343_363 : StackLang.HolProg 64 :=
.seq RemovedBody343_6 RemovedBody343_362

def Removed343 : Nat × StackLang.HolProg 64 := (343, RemovedBody343_363)
theorem Removed343_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc343 = Removed343 := by
  kernel_rfl
#print axioms Removed343_eq
end InitECandidate.Proofs.BackendStages
