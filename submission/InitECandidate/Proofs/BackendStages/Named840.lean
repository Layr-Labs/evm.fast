import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed840
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody840_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody840_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody840_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody840_3 : StackLang.HolProg 64 :=
.seq NamedBody840_1 NamedBody840_2

def NamedBody840_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody840_3 NamedBody840_4

def NamedBody840_6 : StackLang.HolProg 64 :=
.seq NamedBody840_0 NamedBody840_5

def NamedBody840_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody840_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def NamedBody840_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody840_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody840_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody840_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_13 : StackLang.HolProg 64 :=
.seq NamedBody840_11 NamedBody840_12

def NamedBody840_14 : StackLang.HolProg 64 :=
.seq NamedBody840_10 NamedBody840_13

def NamedBody840_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4206#64)

def NamedBody840_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody840_18 : StackLang.HolProg 64 :=
.seq NamedBody840_16 NamedBody840_17

def NamedBody840_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody840_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody840_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody840_22 : StackLang.HolProg 64 :=
.seq NamedBody840_20 NamedBody840_21

def NamedBody840_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody840_22 NamedBody840_23

def NamedBody840_25 : StackLang.HolProg 64 :=
.seq NamedBody840_19 NamedBody840_24

def NamedBody840_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody840_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody840_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 840 3

def NamedBody840_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody840_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody840_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody840_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody840_35 : StackLang.HolProg 64 :=
.seq NamedBody840_33 NamedBody840_34

def NamedBody840_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody840_37 : StackLang.HolProg 64 :=
.seq NamedBody840_35 NamedBody840_36

def NamedBody840_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody840_39 : StackLang.HolProg 64 :=
.seq NamedBody840_37 NamedBody840_38

def NamedBody840_40 : StackLang.HolProg 64 :=
.seq NamedBody840_32 NamedBody840_39

def NamedBody840_41 : StackLang.HolProg 64 :=
.seq NamedBody840_31 NamedBody840_40

def NamedBody840_42 : StackLang.HolProg 64 :=
.seq NamedBody840_30 NamedBody840_41

def NamedBody840_43 : StackLang.HolProg 64 :=
.seq NamedBody840_29 NamedBody840_42

def NamedBody840_44 : StackLang.HolProg 64 :=
.seq NamedBody840_28 NamedBody840_43

def NamedBody840_45 : StackLang.HolProg 64 :=
.seq NamedBody840_27 NamedBody840_44

def NamedBody840_46 : StackLang.HolProg 64 :=
.seq NamedBody840_26 NamedBody840_45

def NamedBody840_47 : StackLang.HolProg 64 :=
.seq NamedBody840_25 NamedBody840_46

def NamedBody840_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody840_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody840_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody840_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody840_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_57 : StackLang.HolProg 64 :=
.seq NamedBody840_55 NamedBody840_56

def NamedBody840_58 : StackLang.HolProg 64 :=
.seq NamedBody840_54 NamedBody840_57

def NamedBody840_59 : StackLang.HolProg 64 :=
.seq NamedBody840_53 NamedBody840_58

def NamedBody840_60 : StackLang.HolProg 64 :=
.seq NamedBody840_52 NamedBody840_59

def NamedBody840_61 : StackLang.HolProg 64 :=
.seq NamedBody840_51 NamedBody840_60

def NamedBody840_62 : StackLang.HolProg 64 :=
.seq NamedBody840_50 NamedBody840_61

def NamedBody840_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody840_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_65 : StackLang.HolProg 64 :=
.seq NamedBody840_63 NamedBody840_64

def NamedBody840_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody840_67 : StackLang.HolProg 64 :=
.seq NamedBody840_65 NamedBody840_66

def NamedBody840_68 : StackLang.HolProg 64 :=
.call (some (NamedBody840_62, 1, 840, 2)) (Sum.inl 180) (some (NamedBody840_67, 840, 3))

def NamedBody840_69 : StackLang.HolProg 64 :=
.seq NamedBody840_49 NamedBody840_68

def NamedBody840_70 : StackLang.HolProg 64 :=
.seq NamedBody840_48 NamedBody840_69

def NamedBody840_71 : StackLang.HolProg 64 :=
.seq NamedBody840_47 NamedBody840_70

def NamedBody840_72 : StackLang.HolProg 64 :=
.seq NamedBody840_18 NamedBody840_71

def NamedBody840_73 : StackLang.HolProg 64 :=
.seq NamedBody840_15 NamedBody840_72

def NamedBody840_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody840_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody840_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def NamedBody840_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody840_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody840_82 : StackLang.HolProg 64 :=
.seq NamedBody840_80 NamedBody840_81

def NamedBody840_83 : StackLang.HolProg 64 :=
.seq NamedBody840_79 NamedBody840_82

def NamedBody840_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4207#64)

def NamedBody840_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody840_87 : StackLang.HolProg 64 :=
.seq NamedBody840_85 NamedBody840_86

def NamedBody840_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody840_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody840_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody840_91 : StackLang.HolProg 64 :=
.seq NamedBody840_89 NamedBody840_90

def NamedBody840_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody840_91 NamedBody840_92

def NamedBody840_94 : StackLang.HolProg 64 :=
.seq NamedBody840_88 NamedBody840_93

def NamedBody840_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody840_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody840_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 840 5

def NamedBody840_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody840_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody840_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody840_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody840_104 : StackLang.HolProg 64 :=
.seq NamedBody840_102 NamedBody840_103

def NamedBody840_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody840_106 : StackLang.HolProg 64 :=
.seq NamedBody840_104 NamedBody840_105

def NamedBody840_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody840_108 : StackLang.HolProg 64 :=
.seq NamedBody840_106 NamedBody840_107

def NamedBody840_109 : StackLang.HolProg 64 :=
.seq NamedBody840_101 NamedBody840_108

def NamedBody840_110 : StackLang.HolProg 64 :=
.seq NamedBody840_100 NamedBody840_109

def NamedBody840_111 : StackLang.HolProg 64 :=
.seq NamedBody840_99 NamedBody840_110

def NamedBody840_112 : StackLang.HolProg 64 :=
.seq NamedBody840_98 NamedBody840_111

def NamedBody840_113 : StackLang.HolProg 64 :=
.seq NamedBody840_97 NamedBody840_112

def NamedBody840_114 : StackLang.HolProg 64 :=
.seq NamedBody840_96 NamedBody840_113

def NamedBody840_115 : StackLang.HolProg 64 :=
.seq NamedBody840_95 NamedBody840_114

def NamedBody840_116 : StackLang.HolProg 64 :=
.seq NamedBody840_94 NamedBody840_115

def NamedBody840_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody840_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody840_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody840_125 : StackLang.HolProg 64 :=
.seq NamedBody840_123 NamedBody840_124

def NamedBody840_126 : StackLang.HolProg 64 :=
.seq NamedBody840_122 NamedBody840_125

def NamedBody840_127 : StackLang.HolProg 64 :=
.seq NamedBody840_121 NamedBody840_126

def NamedBody840_128 : StackLang.HolProg 64 :=
.seq NamedBody840_120 NamedBody840_127

def NamedBody840_129 : StackLang.HolProg 64 :=
.seq NamedBody840_119 NamedBody840_128

def NamedBody840_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody840_132 : StackLang.HolProg 64 :=
.seq NamedBody840_130 NamedBody840_131

def NamedBody840_133 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody840_134 : StackLang.HolProg 64 :=
.seq NamedBody840_132 NamedBody840_133

def NamedBody840_135 : StackLang.HolProg 64 :=
.call (some (NamedBody840_129, 1, 840, 4)) (Sum.inl 77) (some (NamedBody840_134, 840, 5))

def NamedBody840_136 : StackLang.HolProg 64 :=
.seq NamedBody840_118 NamedBody840_135

def NamedBody840_137 : StackLang.HolProg 64 :=
.seq NamedBody840_117 NamedBody840_136

def NamedBody840_138 : StackLang.HolProg 64 :=
.seq NamedBody840_116 NamedBody840_137

def NamedBody840_139 : StackLang.HolProg 64 :=
.seq NamedBody840_87 NamedBody840_138

def NamedBody840_140 : StackLang.HolProg 64 :=
.seq NamedBody840_84 NamedBody840_139

def NamedBody840_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody840_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody840_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_144 : StackLang.HolProg 64 :=
.seq NamedBody840_142 NamedBody840_143

def NamedBody840_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4208#64)

def NamedBody840_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody840_148 : StackLang.HolProg 64 :=
.seq NamedBody840_146 NamedBody840_147

def NamedBody840_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody840_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody840_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody840_152 : StackLang.HolProg 64 :=
.seq NamedBody840_150 NamedBody840_151

def NamedBody840_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_154 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody840_152 NamedBody840_153

def NamedBody840_155 : StackLang.HolProg 64 :=
.seq NamedBody840_149 NamedBody840_154

def NamedBody840_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody840_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody840_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 840 7

def NamedBody840_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody840_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody840_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody840_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody840_165 : StackLang.HolProg 64 :=
.seq NamedBody840_163 NamedBody840_164

def NamedBody840_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody840_167 : StackLang.HolProg 64 :=
.seq NamedBody840_165 NamedBody840_166

def NamedBody840_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody840_169 : StackLang.HolProg 64 :=
.seq NamedBody840_167 NamedBody840_168

def NamedBody840_170 : StackLang.HolProg 64 :=
.seq NamedBody840_162 NamedBody840_169

def NamedBody840_171 : StackLang.HolProg 64 :=
.seq NamedBody840_161 NamedBody840_170

def NamedBody840_172 : StackLang.HolProg 64 :=
.seq NamedBody840_160 NamedBody840_171

def NamedBody840_173 : StackLang.HolProg 64 :=
.seq NamedBody840_159 NamedBody840_172

def NamedBody840_174 : StackLang.HolProg 64 :=
.seq NamedBody840_158 NamedBody840_173

def NamedBody840_175 : StackLang.HolProg 64 :=
.seq NamedBody840_157 NamedBody840_174

def NamedBody840_176 : StackLang.HolProg 64 :=
.seq NamedBody840_156 NamedBody840_175

def NamedBody840_177 : StackLang.HolProg 64 :=
.seq NamedBody840_155 NamedBody840_176

def NamedBody840_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody840_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody840_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody840_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody840_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_187 : StackLang.HolProg 64 :=
.seq NamedBody840_185 NamedBody840_186

def NamedBody840_188 : StackLang.HolProg 64 :=
.seq NamedBody840_184 NamedBody840_187

def NamedBody840_189 : StackLang.HolProg 64 :=
.seq NamedBody840_183 NamedBody840_188

def NamedBody840_190 : StackLang.HolProg 64 :=
.seq NamedBody840_182 NamedBody840_189

def NamedBody840_191 : StackLang.HolProg 64 :=
.seq NamedBody840_181 NamedBody840_190

def NamedBody840_192 : StackLang.HolProg 64 :=
.seq NamedBody840_180 NamedBody840_191

def NamedBody840_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody840_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody840_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody840_196 : StackLang.HolProg 64 :=
.seq NamedBody840_194 NamedBody840_195

def NamedBody840_197 : StackLang.HolProg 64 :=
.seq NamedBody840_193 NamedBody840_196

def NamedBody840_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody840_199 : StackLang.HolProg 64 :=
.seq NamedBody840_197 NamedBody840_198

def NamedBody840_200 : StackLang.HolProg 64 :=
.call (some (NamedBody840_192, 1, 840, 6)) (Sum.inl 178) (some (NamedBody840_199, 840, 7))

def NamedBody840_201 : StackLang.HolProg 64 :=
.seq NamedBody840_179 NamedBody840_200

def NamedBody840_202 : StackLang.HolProg 64 :=
.seq NamedBody840_178 NamedBody840_201

def NamedBody840_203 : StackLang.HolProg 64 :=
.seq NamedBody840_177 NamedBody840_202

def NamedBody840_204 : StackLang.HolProg 64 :=
.seq NamedBody840_148 NamedBody840_203

def NamedBody840_205 : StackLang.HolProg 64 :=
.seq NamedBody840_145 NamedBody840_204

def NamedBody840_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody840_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody840_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody840_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody840_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody840_212 : StackLang.HolProg 64 :=
.seq NamedBody840_210 NamedBody840_211

def NamedBody840_213 : StackLang.HolProg 64 :=
.seq NamedBody840_209 NamedBody840_212

def NamedBody840_214 : StackLang.HolProg 64 :=
.seq NamedBody840_208 NamedBody840_213

def NamedBody840_215 : StackLang.HolProg 64 :=
.seq NamedBody840_207 NamedBody840_214

def NamedBody840_216 : StackLang.HolProg 64 :=
.seq NamedBody840_206 NamedBody840_215

def NamedBody840_217 : StackLang.HolProg 64 :=
.seq NamedBody840_205 NamedBody840_216

def NamedBody840_218 : StackLang.HolProg 64 :=
.seq NamedBody840_144 NamedBody840_217

def NamedBody840_219 : StackLang.HolProg 64 :=
.seq NamedBody840_141 NamedBody840_218

def NamedBody840_220 : StackLang.HolProg 64 :=
.seq NamedBody840_140 NamedBody840_219

def NamedBody840_221 : StackLang.HolProg 64 :=
.seq NamedBody840_83 NamedBody840_220

def NamedBody840_222 : StackLang.HolProg 64 :=
.seq NamedBody840_78 NamedBody840_221

def NamedBody840_223 : StackLang.HolProg 64 :=
.seq NamedBody840_77 NamedBody840_222

def NamedBody840_224 : StackLang.HolProg 64 :=
.seq NamedBody840_76 NamedBody840_223

def NamedBody840_225 : StackLang.HolProg 64 :=
.seq NamedBody840_75 NamedBody840_224

def NamedBody840_226 : StackLang.HolProg 64 :=
.seq NamedBody840_74 NamedBody840_225

def NamedBody840_227 : StackLang.HolProg 64 :=
.seq NamedBody840_73 NamedBody840_226

def NamedBody840_228 : StackLang.HolProg 64 :=
.seq NamedBody840_14 NamedBody840_227

def NamedBody840_229 : StackLang.HolProg 64 :=
.seq NamedBody840_9 NamedBody840_228

def NamedBody840_230 : StackLang.HolProg 64 :=
.seq NamedBody840_8 NamedBody840_229

def NamedBody840_231 : StackLang.HolProg 64 :=
.seq NamedBody840_7 NamedBody840_230

def NamedBody840_232 : StackLang.HolProg 64 :=
.seq NamedBody840_6 NamedBody840_231

def Named840 : Nat × StackLang.HolProg 64 := (840, NamedBody840_232)
theorem Named840_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed840 = Named840 := by
  kernel_rfl
#print axioms Named840_eq
end InitECandidate.Proofs.BackendStages
