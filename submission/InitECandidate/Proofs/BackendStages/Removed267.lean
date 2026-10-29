import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc267
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody267_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody267_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody267_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody267_3 : StackLang.HolProg 64 :=
.seq RemovedBody267_1 RemovedBody267_2

def RemovedBody267_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody267_3 RemovedBody267_4

def RemovedBody267_6 : StackLang.HolProg 64 :=
.seq RemovedBody267_0 RemovedBody267_5

def RemovedBody267_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody267_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_10 : StackLang.HolProg 64 :=
.seq RemovedBody267_8 RemovedBody267_9

def RemovedBody267_11 : StackLang.HolProg 64 :=
.seq RemovedBody267_7 RemovedBody267_10

def RemovedBody267_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 645#64)

def RemovedBody267_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_15 : StackLang.HolProg 64 :=
.seq RemovedBody267_13 RemovedBody267_14

def RemovedBody267_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody267_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody267_19 : StackLang.HolProg 64 :=
.seq RemovedBody267_17 RemovedBody267_18

def RemovedBody267_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody267_19 RemovedBody267_20

def RemovedBody267_22 : StackLang.HolProg 64 :=
.seq RemovedBody267_16 RemovedBody267_21

def RemovedBody267_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody267_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 3

def RemovedBody267_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody267_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody267_32 : StackLang.HolProg 64 :=
.seq RemovedBody267_30 RemovedBody267_31

def RemovedBody267_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody267_34 : StackLang.HolProg 64 :=
.seq RemovedBody267_32 RemovedBody267_33

def RemovedBody267_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_36 : StackLang.HolProg 64 :=
.seq RemovedBody267_34 RemovedBody267_35

def RemovedBody267_37 : StackLang.HolProg 64 :=
.seq RemovedBody267_29 RemovedBody267_36

def RemovedBody267_38 : StackLang.HolProg 64 :=
.seq RemovedBody267_28 RemovedBody267_37

def RemovedBody267_39 : StackLang.HolProg 64 :=
.seq RemovedBody267_27 RemovedBody267_38

def RemovedBody267_40 : StackLang.HolProg 64 :=
.seq RemovedBody267_26 RemovedBody267_39

def RemovedBody267_41 : StackLang.HolProg 64 :=
.seq RemovedBody267_25 RemovedBody267_40

def RemovedBody267_42 : StackLang.HolProg 64 :=
.seq RemovedBody267_24 RemovedBody267_41

def RemovedBody267_43 : StackLang.HolProg 64 :=
.seq RemovedBody267_23 RemovedBody267_42

def RemovedBody267_44 : StackLang.HolProg 64 :=
.seq RemovedBody267_22 RemovedBody267_43

def RemovedBody267_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody267_52 : StackLang.HolProg 64 :=
.seq RemovedBody267_50 RemovedBody267_51

def RemovedBody267_53 : StackLang.HolProg 64 :=
.seq RemovedBody267_49 RemovedBody267_52

def RemovedBody267_54 : StackLang.HolProg 64 :=
.seq RemovedBody267_48 RemovedBody267_53

def RemovedBody267_55 : StackLang.HolProg 64 :=
.seq RemovedBody267_47 RemovedBody267_54

def RemovedBody267_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody267_58 : StackLang.HolProg 64 :=
.seq RemovedBody267_56 RemovedBody267_57

def RemovedBody267_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody267_55, 0, 267, 2)) (Sum.inl 69) (some (RemovedBody267_58, 267, 3))

def RemovedBody267_60 : StackLang.HolProg 64 :=
.seq RemovedBody267_46 RemovedBody267_59

def RemovedBody267_61 : StackLang.HolProg 64 :=
.seq RemovedBody267_45 RemovedBody267_60

def RemovedBody267_62 : StackLang.HolProg 64 :=
.seq RemovedBody267_44 RemovedBody267_61

def RemovedBody267_63 : StackLang.HolProg 64 :=
.seq RemovedBody267_15 RemovedBody267_62

def RemovedBody267_64 : StackLang.HolProg 64 :=
.seq RemovedBody267_12 RemovedBody267_63

def RemovedBody267_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody267_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def RemovedBody267_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody267_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 646#64)

def RemovedBody267_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_71 : StackLang.HolProg 64 :=
.seq RemovedBody267_69 RemovedBody267_70

def RemovedBody267_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody267_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody267_75 : StackLang.HolProg 64 :=
.seq RemovedBody267_73 RemovedBody267_74

def RemovedBody267_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody267_75 RemovedBody267_76

def RemovedBody267_78 : StackLang.HolProg 64 :=
.seq RemovedBody267_72 RemovedBody267_77

def RemovedBody267_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody267_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 5

def RemovedBody267_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody267_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody267_88 : StackLang.HolProg 64 :=
.seq RemovedBody267_86 RemovedBody267_87

def RemovedBody267_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody267_90 : StackLang.HolProg 64 :=
.seq RemovedBody267_88 RemovedBody267_89

def RemovedBody267_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_92 : StackLang.HolProg 64 :=
.seq RemovedBody267_90 RemovedBody267_91

def RemovedBody267_93 : StackLang.HolProg 64 :=
.seq RemovedBody267_85 RemovedBody267_92

def RemovedBody267_94 : StackLang.HolProg 64 :=
.seq RemovedBody267_84 RemovedBody267_93

def RemovedBody267_95 : StackLang.HolProg 64 :=
.seq RemovedBody267_83 RemovedBody267_94

def RemovedBody267_96 : StackLang.HolProg 64 :=
.seq RemovedBody267_82 RemovedBody267_95

def RemovedBody267_97 : StackLang.HolProg 64 :=
.seq RemovedBody267_81 RemovedBody267_96

def RemovedBody267_98 : StackLang.HolProg 64 :=
.seq RemovedBody267_80 RemovedBody267_97

def RemovedBody267_99 : StackLang.HolProg 64 :=
.seq RemovedBody267_79 RemovedBody267_98

def RemovedBody267_100 : StackLang.HolProg 64 :=
.seq RemovedBody267_78 RemovedBody267_99

def RemovedBody267_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody267_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_109 : StackLang.HolProg 64 :=
.seq RemovedBody267_107 RemovedBody267_108

def RemovedBody267_110 : StackLang.HolProg 64 :=
.seq RemovedBody267_106 RemovedBody267_109

def RemovedBody267_111 : StackLang.HolProg 64 :=
.seq RemovedBody267_105 RemovedBody267_110

def RemovedBody267_112 : StackLang.HolProg 64 :=
.seq RemovedBody267_104 RemovedBody267_111

def RemovedBody267_113 : StackLang.HolProg 64 :=
.seq RemovedBody267_103 RemovedBody267_112

def RemovedBody267_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody267_116 : StackLang.HolProg 64 :=
.seq RemovedBody267_114 RemovedBody267_115

def RemovedBody267_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody267_113, 0, 267, 4)) (Sum.inl 68) (some (RemovedBody267_116, 267, 5))

def RemovedBody267_118 : StackLang.HolProg 64 :=
.seq RemovedBody267_102 RemovedBody267_117

def RemovedBody267_119 : StackLang.HolProg 64 :=
.seq RemovedBody267_101 RemovedBody267_118

def RemovedBody267_120 : StackLang.HolProg 64 :=
.seq RemovedBody267_100 RemovedBody267_119

def RemovedBody267_121 : StackLang.HolProg 64 :=
.seq RemovedBody267_71 RemovedBody267_120

def RemovedBody267_122 : StackLang.HolProg 64 :=
.seq RemovedBody267_68 RemovedBody267_121

def RemovedBody267_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody267_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody267_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_128 : StackLang.HolProg 64 :=
.seq RemovedBody267_126 RemovedBody267_127

def RemovedBody267_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 647#64)

def RemovedBody267_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_132 : StackLang.HolProg 64 :=
.seq RemovedBody267_130 RemovedBody267_131

def RemovedBody267_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody267_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody267_136 : StackLang.HolProg 64 :=
.seq RemovedBody267_134 RemovedBody267_135

def RemovedBody267_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody267_136 RemovedBody267_137

def RemovedBody267_139 : StackLang.HolProg 64 :=
.seq RemovedBody267_133 RemovedBody267_138

def RemovedBody267_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody267_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 7

def RemovedBody267_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody267_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody267_149 : StackLang.HolProg 64 :=
.seq RemovedBody267_147 RemovedBody267_148

def RemovedBody267_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody267_151 : StackLang.HolProg 64 :=
.seq RemovedBody267_149 RemovedBody267_150

def RemovedBody267_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_153 : StackLang.HolProg 64 :=
.seq RemovedBody267_151 RemovedBody267_152

def RemovedBody267_154 : StackLang.HolProg 64 :=
.seq RemovedBody267_146 RemovedBody267_153

def RemovedBody267_155 : StackLang.HolProg 64 :=
.seq RemovedBody267_145 RemovedBody267_154

def RemovedBody267_156 : StackLang.HolProg 64 :=
.seq RemovedBody267_144 RemovedBody267_155

def RemovedBody267_157 : StackLang.HolProg 64 :=
.seq RemovedBody267_143 RemovedBody267_156

def RemovedBody267_158 : StackLang.HolProg 64 :=
.seq RemovedBody267_142 RemovedBody267_157

def RemovedBody267_159 : StackLang.HolProg 64 :=
.seq RemovedBody267_141 RemovedBody267_158

def RemovedBody267_160 : StackLang.HolProg 64 :=
.seq RemovedBody267_140 RemovedBody267_159

def RemovedBody267_161 : StackLang.HolProg 64 :=
.seq RemovedBody267_139 RemovedBody267_160

def RemovedBody267_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_170 : StackLang.HolProg 64 :=
.seq RemovedBody267_168 RemovedBody267_169

def RemovedBody267_171 : StackLang.HolProg 64 :=
.seq RemovedBody267_167 RemovedBody267_170

def RemovedBody267_172 : StackLang.HolProg 64 :=
.seq RemovedBody267_166 RemovedBody267_171

def RemovedBody267_173 : StackLang.HolProg 64 :=
.seq RemovedBody267_165 RemovedBody267_172

def RemovedBody267_174 : StackLang.HolProg 64 :=
.seq RemovedBody267_164 RemovedBody267_173

def RemovedBody267_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_177 : StackLang.HolProg 64 :=
.seq RemovedBody267_175 RemovedBody267_176

def RemovedBody267_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody267_179 : StackLang.HolProg 64 :=
.seq RemovedBody267_177 RemovedBody267_178

def RemovedBody267_180 : StackLang.HolProg 64 :=
.call (some (RemovedBody267_174, 0, 267, 6)) (Sum.inl 259) (some (RemovedBody267_179, 267, 7))

def RemovedBody267_181 : StackLang.HolProg 64 :=
.seq RemovedBody267_163 RemovedBody267_180

def RemovedBody267_182 : StackLang.HolProg 64 :=
.seq RemovedBody267_162 RemovedBody267_181

def RemovedBody267_183 : StackLang.HolProg 64 :=
.seq RemovedBody267_161 RemovedBody267_182

def RemovedBody267_184 : StackLang.HolProg 64 :=
.seq RemovedBody267_132 RemovedBody267_183

def RemovedBody267_185 : StackLang.HolProg 64 :=
.seq RemovedBody267_129 RemovedBody267_184

def RemovedBody267_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody267_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody267_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def RemovedBody267_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody267_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody267_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_195 : StackLang.HolProg 64 :=
.seq RemovedBody267_193 RemovedBody267_194

def RemovedBody267_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 648#64)

def RemovedBody267_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_199 : StackLang.HolProg 64 :=
.seq RemovedBody267_197 RemovedBody267_198

def RemovedBody267_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody267_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody267_203 : StackLang.HolProg 64 :=
.seq RemovedBody267_201 RemovedBody267_202

def RemovedBody267_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_205 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody267_203 RemovedBody267_204

def RemovedBody267_206 : StackLang.HolProg 64 :=
.seq RemovedBody267_200 RemovedBody267_205

def RemovedBody267_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody267_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 9

def RemovedBody267_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody267_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody267_216 : StackLang.HolProg 64 :=
.seq RemovedBody267_214 RemovedBody267_215

def RemovedBody267_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody267_218 : StackLang.HolProg 64 :=
.seq RemovedBody267_216 RemovedBody267_217

def RemovedBody267_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_220 : StackLang.HolProg 64 :=
.seq RemovedBody267_218 RemovedBody267_219

def RemovedBody267_221 : StackLang.HolProg 64 :=
.seq RemovedBody267_213 RemovedBody267_220

def RemovedBody267_222 : StackLang.HolProg 64 :=
.seq RemovedBody267_212 RemovedBody267_221

def RemovedBody267_223 : StackLang.HolProg 64 :=
.seq RemovedBody267_211 RemovedBody267_222

def RemovedBody267_224 : StackLang.HolProg 64 :=
.seq RemovedBody267_210 RemovedBody267_223

def RemovedBody267_225 : StackLang.HolProg 64 :=
.seq RemovedBody267_209 RemovedBody267_224

def RemovedBody267_226 : StackLang.HolProg 64 :=
.seq RemovedBody267_208 RemovedBody267_225

def RemovedBody267_227 : StackLang.HolProg 64 :=
.seq RemovedBody267_207 RemovedBody267_226

def RemovedBody267_228 : StackLang.HolProg 64 :=
.seq RemovedBody267_206 RemovedBody267_227

def RemovedBody267_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_237 : StackLang.HolProg 64 :=
.seq RemovedBody267_235 RemovedBody267_236

def RemovedBody267_238 : StackLang.HolProg 64 :=
.seq RemovedBody267_234 RemovedBody267_237

def RemovedBody267_239 : StackLang.HolProg 64 :=
.seq RemovedBody267_233 RemovedBody267_238

def RemovedBody267_240 : StackLang.HolProg 64 :=
.seq RemovedBody267_232 RemovedBody267_239

def RemovedBody267_241 : StackLang.HolProg 64 :=
.seq RemovedBody267_231 RemovedBody267_240

def RemovedBody267_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_244 : StackLang.HolProg 64 :=
.seq RemovedBody267_242 RemovedBody267_243

def RemovedBody267_245 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody267_246 : StackLang.HolProg 64 :=
.seq RemovedBody267_244 RemovedBody267_245

def RemovedBody267_247 : StackLang.HolProg 64 :=
.call (some (RemovedBody267_241, 0, 267, 8)) (Sum.inl 238) (some (RemovedBody267_246, 267, 9))

def RemovedBody267_248 : StackLang.HolProg 64 :=
.seq RemovedBody267_230 RemovedBody267_247

def RemovedBody267_249 : StackLang.HolProg 64 :=
.seq RemovedBody267_229 RemovedBody267_248

def RemovedBody267_250 : StackLang.HolProg 64 :=
.seq RemovedBody267_228 RemovedBody267_249

def RemovedBody267_251 : StackLang.HolProg 64 :=
.seq RemovedBody267_199 RemovedBody267_250

def RemovedBody267_252 : StackLang.HolProg 64 :=
.seq RemovedBody267_196 RemovedBody267_251

def RemovedBody267_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody267_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody267_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def RemovedBody267_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody267_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_261 : StackLang.HolProg 64 :=
.seq RemovedBody267_259 RemovedBody267_260

def RemovedBody267_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 649#64)

def RemovedBody267_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_265 : StackLang.HolProg 64 :=
.seq RemovedBody267_263 RemovedBody267_264

def RemovedBody267_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody267_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody267_269 : StackLang.HolProg 64 :=
.seq RemovedBody267_267 RemovedBody267_268

def RemovedBody267_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_271 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody267_269 RemovedBody267_270

def RemovedBody267_272 : StackLang.HolProg 64 :=
.seq RemovedBody267_266 RemovedBody267_271

def RemovedBody267_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody267_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 11

def RemovedBody267_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody267_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody267_282 : StackLang.HolProg 64 :=
.seq RemovedBody267_280 RemovedBody267_281

def RemovedBody267_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody267_284 : StackLang.HolProg 64 :=
.seq RemovedBody267_282 RemovedBody267_283

def RemovedBody267_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_286 : StackLang.HolProg 64 :=
.seq RemovedBody267_284 RemovedBody267_285

def RemovedBody267_287 : StackLang.HolProg 64 :=
.seq RemovedBody267_279 RemovedBody267_286

def RemovedBody267_288 : StackLang.HolProg 64 :=
.seq RemovedBody267_278 RemovedBody267_287

def RemovedBody267_289 : StackLang.HolProg 64 :=
.seq RemovedBody267_277 RemovedBody267_288

def RemovedBody267_290 : StackLang.HolProg 64 :=
.seq RemovedBody267_276 RemovedBody267_289

def RemovedBody267_291 : StackLang.HolProg 64 :=
.seq RemovedBody267_275 RemovedBody267_290

def RemovedBody267_292 : StackLang.HolProg 64 :=
.seq RemovedBody267_274 RemovedBody267_291

def RemovedBody267_293 : StackLang.HolProg 64 :=
.seq RemovedBody267_273 RemovedBody267_292

def RemovedBody267_294 : StackLang.HolProg 64 :=
.seq RemovedBody267_272 RemovedBody267_293

def RemovedBody267_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_303 : StackLang.HolProg 64 :=
.seq RemovedBody267_301 RemovedBody267_302

def RemovedBody267_304 : StackLang.HolProg 64 :=
.seq RemovedBody267_300 RemovedBody267_303

def RemovedBody267_305 : StackLang.HolProg 64 :=
.seq RemovedBody267_299 RemovedBody267_304

def RemovedBody267_306 : StackLang.HolProg 64 :=
.seq RemovedBody267_298 RemovedBody267_305

def RemovedBody267_307 : StackLang.HolProg 64 :=
.seq RemovedBody267_297 RemovedBody267_306

def RemovedBody267_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_310 : StackLang.HolProg 64 :=
.seq RemovedBody267_308 RemovedBody267_309

def RemovedBody267_311 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody267_312 : StackLang.HolProg 64 :=
.seq RemovedBody267_310 RemovedBody267_311

def RemovedBody267_313 : StackLang.HolProg 64 :=
.call (some (RemovedBody267_307, 0, 267, 10)) (Sum.inl 77) (some (RemovedBody267_312, 267, 11))

def RemovedBody267_314 : StackLang.HolProg 64 :=
.seq RemovedBody267_296 RemovedBody267_313

def RemovedBody267_315 : StackLang.HolProg 64 :=
.seq RemovedBody267_295 RemovedBody267_314

def RemovedBody267_316 : StackLang.HolProg 64 :=
.seq RemovedBody267_294 RemovedBody267_315

def RemovedBody267_317 : StackLang.HolProg 64 :=
.seq RemovedBody267_265 RemovedBody267_316

def RemovedBody267_318 : StackLang.HolProg 64 :=
.seq RemovedBody267_262 RemovedBody267_317

def RemovedBody267_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody267_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 32#64))

def RemovedBody267_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody267_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 650#64)

def RemovedBody267_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_328 : StackLang.HolProg 64 :=
.seq RemovedBody267_326 RemovedBody267_327

def RemovedBody267_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody267_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody267_332 : StackLang.HolProg 64 :=
.seq RemovedBody267_330 RemovedBody267_331

def RemovedBody267_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody267_332 RemovedBody267_333

def RemovedBody267_335 : StackLang.HolProg 64 :=
.seq RemovedBody267_329 RemovedBody267_334

def RemovedBody267_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody267_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 13

def RemovedBody267_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody267_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody267_345 : StackLang.HolProg 64 :=
.seq RemovedBody267_343 RemovedBody267_344

def RemovedBody267_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody267_347 : StackLang.HolProg 64 :=
.seq RemovedBody267_345 RemovedBody267_346

def RemovedBody267_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_349 : StackLang.HolProg 64 :=
.seq RemovedBody267_347 RemovedBody267_348

def RemovedBody267_350 : StackLang.HolProg 64 :=
.seq RemovedBody267_342 RemovedBody267_349

def RemovedBody267_351 : StackLang.HolProg 64 :=
.seq RemovedBody267_341 RemovedBody267_350

def RemovedBody267_352 : StackLang.HolProg 64 :=
.seq RemovedBody267_340 RemovedBody267_351

def RemovedBody267_353 : StackLang.HolProg 64 :=
.seq RemovedBody267_339 RemovedBody267_352

def RemovedBody267_354 : StackLang.HolProg 64 :=
.seq RemovedBody267_338 RemovedBody267_353

def RemovedBody267_355 : StackLang.HolProg 64 :=
.seq RemovedBody267_337 RemovedBody267_354

def RemovedBody267_356 : StackLang.HolProg 64 :=
.seq RemovedBody267_336 RemovedBody267_355

def RemovedBody267_357 : StackLang.HolProg 64 :=
.seq RemovedBody267_335 RemovedBody267_356

def RemovedBody267_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_366 : StackLang.HolProg 64 :=
.seq RemovedBody267_364 RemovedBody267_365

def RemovedBody267_367 : StackLang.HolProg 64 :=
.seq RemovedBody267_363 RemovedBody267_366

def RemovedBody267_368 : StackLang.HolProg 64 :=
.seq RemovedBody267_362 RemovedBody267_367

def RemovedBody267_369 : StackLang.HolProg 64 :=
.seq RemovedBody267_361 RemovedBody267_368

def RemovedBody267_370 : StackLang.HolProg 64 :=
.seq RemovedBody267_360 RemovedBody267_369

def RemovedBody267_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody267_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_373 : StackLang.HolProg 64 :=
.seq RemovedBody267_371 RemovedBody267_372

def RemovedBody267_374 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody267_375 : StackLang.HolProg 64 :=
.seq RemovedBody267_373 RemovedBody267_374

def RemovedBody267_376 : StackLang.HolProg 64 :=
.call (some (RemovedBody267_370, 0, 267, 12)) (Sum.inl 266) (some (RemovedBody267_375, 267, 13))

def RemovedBody267_377 : StackLang.HolProg 64 :=
.seq RemovedBody267_359 RemovedBody267_376

def RemovedBody267_378 : StackLang.HolProg 64 :=
.seq RemovedBody267_358 RemovedBody267_377

def RemovedBody267_379 : StackLang.HolProg 64 :=
.seq RemovedBody267_357 RemovedBody267_378

def RemovedBody267_380 : StackLang.HolProg 64 :=
.seq RemovedBody267_328 RemovedBody267_379

def RemovedBody267_381 : StackLang.HolProg 64 :=
.seq RemovedBody267_325 RemovedBody267_380

def RemovedBody267_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody267_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody267_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4#64)

def RemovedBody267_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4#64)

def RemovedBody267_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 651#64)

def RemovedBody267_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_390 : StackLang.HolProg 64 :=
.seq RemovedBody267_388 RemovedBody267_389

def RemovedBody267_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody267_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody267_394 : StackLang.HolProg 64 :=
.seq RemovedBody267_392 RemovedBody267_393

def RemovedBody267_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_396 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody267_394 RemovedBody267_395

def RemovedBody267_397 : StackLang.HolProg 64 :=
.seq RemovedBody267_391 RemovedBody267_396

def RemovedBody267_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody267_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 15

def RemovedBody267_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody267_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody267_407 : StackLang.HolProg 64 :=
.seq RemovedBody267_405 RemovedBody267_406

def RemovedBody267_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody267_409 : StackLang.HolProg 64 :=
.seq RemovedBody267_407 RemovedBody267_408

def RemovedBody267_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_411 : StackLang.HolProg 64 :=
.seq RemovedBody267_409 RemovedBody267_410

def RemovedBody267_412 : StackLang.HolProg 64 :=
.seq RemovedBody267_404 RemovedBody267_411

def RemovedBody267_413 : StackLang.HolProg 64 :=
.seq RemovedBody267_403 RemovedBody267_412

def RemovedBody267_414 : StackLang.HolProg 64 :=
.seq RemovedBody267_402 RemovedBody267_413

def RemovedBody267_415 : StackLang.HolProg 64 :=
.seq RemovedBody267_401 RemovedBody267_414

def RemovedBody267_416 : StackLang.HolProg 64 :=
.seq RemovedBody267_400 RemovedBody267_415

def RemovedBody267_417 : StackLang.HolProg 64 :=
.seq RemovedBody267_399 RemovedBody267_416

def RemovedBody267_418 : StackLang.HolProg 64 :=
.seq RemovedBody267_398 RemovedBody267_417

def RemovedBody267_419 : StackLang.HolProg 64 :=
.seq RemovedBody267_397 RemovedBody267_418

def RemovedBody267_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody267_427 : StackLang.HolProg 64 :=
.seq RemovedBody267_425 RemovedBody267_426

def RemovedBody267_428 : StackLang.HolProg 64 :=
.seq RemovedBody267_424 RemovedBody267_427

def RemovedBody267_429 : StackLang.HolProg 64 :=
.seq RemovedBody267_423 RemovedBody267_428

def RemovedBody267_430 : StackLang.HolProg 64 :=
.seq RemovedBody267_422 RemovedBody267_429

def RemovedBody267_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody267_432 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody267_433 : StackLang.HolProg 64 :=
.seq RemovedBody267_431 RemovedBody267_432

def RemovedBody267_434 : StackLang.HolProg 64 :=
.call (some (RemovedBody267_430, 0, 267, 14)) (Sum.inl 235) (some (RemovedBody267_433, 267, 15))

def RemovedBody267_435 : StackLang.HolProg 64 :=
.seq RemovedBody267_421 RemovedBody267_434

def RemovedBody267_436 : StackLang.HolProg 64 :=
.seq RemovedBody267_420 RemovedBody267_435

def RemovedBody267_437 : StackLang.HolProg 64 :=
.seq RemovedBody267_419 RemovedBody267_436

def RemovedBody267_438 : StackLang.HolProg 64 :=
.seq RemovedBody267_390 RemovedBody267_437

def RemovedBody267_439 : StackLang.HolProg 64 :=
.seq RemovedBody267_387 RemovedBody267_438

def RemovedBody267_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody267_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody267_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 652#64)

def RemovedBody267_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_445 : StackLang.HolProg 64 :=
.seq RemovedBody267_443 RemovedBody267_444

def RemovedBody267_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody267_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody267_449 : StackLang.HolProg 64 :=
.seq RemovedBody267_447 RemovedBody267_448

def RemovedBody267_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_451 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody267_449 RemovedBody267_450

def RemovedBody267_452 : StackLang.HolProg 64 :=
.seq RemovedBody267_446 RemovedBody267_451

def RemovedBody267_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody267_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody267_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 17

def RemovedBody267_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody267_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody267_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody267_462 : StackLang.HolProg 64 :=
.seq RemovedBody267_460 RemovedBody267_461

def RemovedBody267_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody267_464 : StackLang.HolProg 64 :=
.seq RemovedBody267_462 RemovedBody267_463

def RemovedBody267_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_466 : StackLang.HolProg 64 :=
.seq RemovedBody267_464 RemovedBody267_465

def RemovedBody267_467 : StackLang.HolProg 64 :=
.seq RemovedBody267_459 RemovedBody267_466

def RemovedBody267_468 : StackLang.HolProg 64 :=
.seq RemovedBody267_458 RemovedBody267_467

def RemovedBody267_469 : StackLang.HolProg 64 :=
.seq RemovedBody267_457 RemovedBody267_468

def RemovedBody267_470 : StackLang.HolProg 64 :=
.seq RemovedBody267_456 RemovedBody267_469

def RemovedBody267_471 : StackLang.HolProg 64 :=
.seq RemovedBody267_455 RemovedBody267_470

def RemovedBody267_472 : StackLang.HolProg 64 :=
.seq RemovedBody267_454 RemovedBody267_471

def RemovedBody267_473 : StackLang.HolProg 64 :=
.seq RemovedBody267_453 RemovedBody267_472

def RemovedBody267_474 : StackLang.HolProg 64 :=
.seq RemovedBody267_452 RemovedBody267_473

def RemovedBody267_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody267_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody267_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody267_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody267_482 : StackLang.HolProg 64 :=
.seq RemovedBody267_480 RemovedBody267_481

def RemovedBody267_483 : StackLang.HolProg 64 :=
.seq RemovedBody267_479 RemovedBody267_482

def RemovedBody267_484 : StackLang.HolProg 64 :=
.seq RemovedBody267_478 RemovedBody267_483

def RemovedBody267_485 : StackLang.HolProg 64 :=
.seq RemovedBody267_477 RemovedBody267_484

def RemovedBody267_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody267_487 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody267_488 : StackLang.HolProg 64 :=
.seq RemovedBody267_486 RemovedBody267_487

def RemovedBody267_489 : StackLang.HolProg 64 :=
.call (some (RemovedBody267_485, 0, 267, 16)) (Sum.inl 70) (some (RemovedBody267_488, 267, 17))

def RemovedBody267_490 : StackLang.HolProg 64 :=
.seq RemovedBody267_476 RemovedBody267_489

def RemovedBody267_491 : StackLang.HolProg 64 :=
.seq RemovedBody267_475 RemovedBody267_490

def RemovedBody267_492 : StackLang.HolProg 64 :=
.seq RemovedBody267_474 RemovedBody267_491

def RemovedBody267_493 : StackLang.HolProg 64 :=
.seq RemovedBody267_445 RemovedBody267_492

def RemovedBody267_494 : StackLang.HolProg 64 :=
.seq RemovedBody267_442 RemovedBody267_493

def RemovedBody267_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody267_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody267_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody267_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody267_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody267_500 : StackLang.HolProg 64 :=
.seq RemovedBody267_498 RemovedBody267_499

def RemovedBody267_501 : StackLang.HolProg 64 :=
.seq RemovedBody267_497 RemovedBody267_500

def RemovedBody267_502 : StackLang.HolProg 64 :=
.seq RemovedBody267_496 RemovedBody267_501

def RemovedBody267_503 : StackLang.HolProg 64 :=
.seq RemovedBody267_495 RemovedBody267_502

def RemovedBody267_504 : StackLang.HolProg 64 :=
.seq RemovedBody267_494 RemovedBody267_503

def RemovedBody267_505 : StackLang.HolProg 64 :=
.seq RemovedBody267_441 RemovedBody267_504

def RemovedBody267_506 : StackLang.HolProg 64 :=
.seq RemovedBody267_440 RemovedBody267_505

def RemovedBody267_507 : StackLang.HolProg 64 :=
.seq RemovedBody267_439 RemovedBody267_506

def RemovedBody267_508 : StackLang.HolProg 64 :=
.seq RemovedBody267_386 RemovedBody267_507

def RemovedBody267_509 : StackLang.HolProg 64 :=
.seq RemovedBody267_385 RemovedBody267_508

def RemovedBody267_510 : StackLang.HolProg 64 :=
.seq RemovedBody267_384 RemovedBody267_509

def RemovedBody267_511 : StackLang.HolProg 64 :=
.seq RemovedBody267_383 RemovedBody267_510

def RemovedBody267_512 : StackLang.HolProg 64 :=
.seq RemovedBody267_382 RemovedBody267_511

def RemovedBody267_513 : StackLang.HolProg 64 :=
.seq RemovedBody267_381 RemovedBody267_512

def RemovedBody267_514 : StackLang.HolProg 64 :=
.seq RemovedBody267_324 RemovedBody267_513

def RemovedBody267_515 : StackLang.HolProg 64 :=
.seq RemovedBody267_323 RemovedBody267_514

def RemovedBody267_516 : StackLang.HolProg 64 :=
.seq RemovedBody267_322 RemovedBody267_515

def RemovedBody267_517 : StackLang.HolProg 64 :=
.seq RemovedBody267_321 RemovedBody267_516

def RemovedBody267_518 : StackLang.HolProg 64 :=
.seq RemovedBody267_320 RemovedBody267_517

def RemovedBody267_519 : StackLang.HolProg 64 :=
.seq RemovedBody267_319 RemovedBody267_518

def RemovedBody267_520 : StackLang.HolProg 64 :=
.seq RemovedBody267_318 RemovedBody267_519

def RemovedBody267_521 : StackLang.HolProg 64 :=
.seq RemovedBody267_261 RemovedBody267_520

def RemovedBody267_522 : StackLang.HolProg 64 :=
.seq RemovedBody267_258 RemovedBody267_521

def RemovedBody267_523 : StackLang.HolProg 64 :=
.seq RemovedBody267_257 RemovedBody267_522

def RemovedBody267_524 : StackLang.HolProg 64 :=
.seq RemovedBody267_256 RemovedBody267_523

def RemovedBody267_525 : StackLang.HolProg 64 :=
.seq RemovedBody267_255 RemovedBody267_524

def RemovedBody267_526 : StackLang.HolProg 64 :=
.seq RemovedBody267_254 RemovedBody267_525

def RemovedBody267_527 : StackLang.HolProg 64 :=
.seq RemovedBody267_253 RemovedBody267_526

def RemovedBody267_528 : StackLang.HolProg 64 :=
.seq RemovedBody267_252 RemovedBody267_527

def RemovedBody267_529 : StackLang.HolProg 64 :=
.seq RemovedBody267_195 RemovedBody267_528

def RemovedBody267_530 : StackLang.HolProg 64 :=
.seq RemovedBody267_192 RemovedBody267_529

def RemovedBody267_531 : StackLang.HolProg 64 :=
.seq RemovedBody267_191 RemovedBody267_530

def RemovedBody267_532 : StackLang.HolProg 64 :=
.seq RemovedBody267_190 RemovedBody267_531

def RemovedBody267_533 : StackLang.HolProg 64 :=
.seq RemovedBody267_189 RemovedBody267_532

def RemovedBody267_534 : StackLang.HolProg 64 :=
.seq RemovedBody267_188 RemovedBody267_533

def RemovedBody267_535 : StackLang.HolProg 64 :=
.seq RemovedBody267_187 RemovedBody267_534

def RemovedBody267_536 : StackLang.HolProg 64 :=
.seq RemovedBody267_186 RemovedBody267_535

def RemovedBody267_537 : StackLang.HolProg 64 :=
.seq RemovedBody267_185 RemovedBody267_536

def RemovedBody267_538 : StackLang.HolProg 64 :=
.seq RemovedBody267_128 RemovedBody267_537

def RemovedBody267_539 : StackLang.HolProg 64 :=
.seq RemovedBody267_125 RemovedBody267_538

def RemovedBody267_540 : StackLang.HolProg 64 :=
.seq RemovedBody267_124 RemovedBody267_539

def RemovedBody267_541 : StackLang.HolProg 64 :=
.seq RemovedBody267_123 RemovedBody267_540

def RemovedBody267_542 : StackLang.HolProg 64 :=
.seq RemovedBody267_122 RemovedBody267_541

def RemovedBody267_543 : StackLang.HolProg 64 :=
.seq RemovedBody267_67 RemovedBody267_542

def RemovedBody267_544 : StackLang.HolProg 64 :=
.seq RemovedBody267_66 RemovedBody267_543

def RemovedBody267_545 : StackLang.HolProg 64 :=
.seq RemovedBody267_65 RemovedBody267_544

def RemovedBody267_546 : StackLang.HolProg 64 :=
.seq RemovedBody267_64 RemovedBody267_545

def RemovedBody267_547 : StackLang.HolProg 64 :=
.seq RemovedBody267_11 RemovedBody267_546

def RemovedBody267_548 : StackLang.HolProg 64 :=
.seq RemovedBody267_6 RemovedBody267_547

def Removed267 : Nat × StackLang.HolProg 64 := (267, RemovedBody267_548)
theorem Removed267_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc267 = Removed267 := by
  kernel_rfl
#print axioms Removed267_eq
end InitECandidate.Proofs.BackendStages
