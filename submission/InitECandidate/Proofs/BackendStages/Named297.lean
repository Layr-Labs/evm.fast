import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed297
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody297_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody297_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody297_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody297_3 : StackLang.HolProg 64 :=
.seq NamedBody297_1 NamedBody297_2

def NamedBody297_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody297_3 NamedBody297_4

def NamedBody297_6 : StackLang.HolProg 64 :=
.seq NamedBody297_0 NamedBody297_5

def NamedBody297_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody297_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 56#64)

def NamedBody297_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody297_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody297_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody297_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody297_13 : StackLang.HolProg 64 :=
.seq NamedBody297_11 NamedBody297_12

def NamedBody297_14 : StackLang.HolProg 64 :=
.seq NamedBody297_10 NamedBody297_13

def NamedBody297_15 : StackLang.HolProg 64 :=
.seq NamedBody297_9 NamedBody297_14

def NamedBody297_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 803#64)

def NamedBody297_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody297_19 : StackLang.HolProg 64 :=
.seq NamedBody297_17 NamedBody297_18

def NamedBody297_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody297_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody297_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody297_23 : StackLang.HolProg 64 :=
.seq NamedBody297_21 NamedBody297_22

def NamedBody297_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody297_23 NamedBody297_24

def NamedBody297_26 : StackLang.HolProg 64 :=
.seq NamedBody297_20 NamedBody297_25

def NamedBody297_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody297_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody297_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 297 3

def NamedBody297_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody297_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody297_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody297_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody297_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody297_36 : StackLang.HolProg 64 :=
.seq NamedBody297_34 NamedBody297_35

def NamedBody297_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody297_38 : StackLang.HolProg 64 :=
.seq NamedBody297_36 NamedBody297_37

def NamedBody297_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody297_40 : StackLang.HolProg 64 :=
.seq NamedBody297_38 NamedBody297_39

def NamedBody297_41 : StackLang.HolProg 64 :=
.seq NamedBody297_33 NamedBody297_40

def NamedBody297_42 : StackLang.HolProg 64 :=
.seq NamedBody297_32 NamedBody297_41

def NamedBody297_43 : StackLang.HolProg 64 :=
.seq NamedBody297_31 NamedBody297_42

def NamedBody297_44 : StackLang.HolProg 64 :=
.seq NamedBody297_30 NamedBody297_43

def NamedBody297_45 : StackLang.HolProg 64 :=
.seq NamedBody297_29 NamedBody297_44

def NamedBody297_46 : StackLang.HolProg 64 :=
.seq NamedBody297_28 NamedBody297_45

def NamedBody297_47 : StackLang.HolProg 64 :=
.seq NamedBody297_27 NamedBody297_46

def NamedBody297_48 : StackLang.HolProg 64 :=
.seq NamedBody297_26 NamedBody297_47

def NamedBody297_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody297_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody297_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody297_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody297_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody297_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody297_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody297_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody297_60 : StackLang.HolProg 64 :=
.seq NamedBody297_58 NamedBody297_59

def NamedBody297_61 : StackLang.HolProg 64 :=
.seq NamedBody297_57 NamedBody297_60

def NamedBody297_62 : StackLang.HolProg 64 :=
.seq NamedBody297_56 NamedBody297_61

def NamedBody297_63 : StackLang.HolProg 64 :=
.seq NamedBody297_55 NamedBody297_62

def NamedBody297_64 : StackLang.HolProg 64 :=
.seq NamedBody297_54 NamedBody297_63

def NamedBody297_65 : StackLang.HolProg 64 :=
.seq NamedBody297_53 NamedBody297_64

def NamedBody297_66 : StackLang.HolProg 64 :=
.seq NamedBody297_52 NamedBody297_65

def NamedBody297_67 : StackLang.HolProg 64 :=
.seq NamedBody297_51 NamedBody297_66

def NamedBody297_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody297_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody297_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody297_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody297_72 : StackLang.HolProg 64 :=
.seq NamedBody297_70 NamedBody297_71

def NamedBody297_73 : StackLang.HolProg 64 :=
.seq NamedBody297_69 NamedBody297_72

def NamedBody297_74 : StackLang.HolProg 64 :=
.seq NamedBody297_68 NamedBody297_73

def NamedBody297_75 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody297_76 : StackLang.HolProg 64 :=
.seq NamedBody297_74 NamedBody297_75

def NamedBody297_77 : StackLang.HolProg 64 :=
.call (some (NamedBody297_67, 1, 297, 2)) (Sum.inl 68) (some (NamedBody297_76, 297, 3))

def NamedBody297_78 : StackLang.HolProg 64 :=
.seq NamedBody297_50 NamedBody297_77

def NamedBody297_79 : StackLang.HolProg 64 :=
.seq NamedBody297_49 NamedBody297_78

def NamedBody297_80 : StackLang.HolProg 64 :=
.seq NamedBody297_48 NamedBody297_79

def NamedBody297_81 : StackLang.HolProg 64 :=
.seq NamedBody297_19 NamedBody297_80

def NamedBody297_82 : StackLang.HolProg 64 :=
.seq NamedBody297_16 NamedBody297_81

def NamedBody297_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody297_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody297_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody297_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody297_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody297_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody297_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody297_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody297_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody297_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody297_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody297_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody297_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody297_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody297_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody297_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody297_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody297_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody297_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody297_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody297_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody297_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody297_118 : StackLang.HolProg 64 :=
.seq NamedBody297_116 NamedBody297_117

def NamedBody297_119 : StackLang.HolProg 64 :=
.seq NamedBody297_115 NamedBody297_118

def NamedBody297_120 : StackLang.HolProg 64 :=
.seq NamedBody297_114 NamedBody297_119

def NamedBody297_121 : StackLang.HolProg 64 :=
.seq NamedBody297_113 NamedBody297_120

def NamedBody297_122 : StackLang.HolProg 64 :=
.seq NamedBody297_112 NamedBody297_121

def NamedBody297_123 : StackLang.HolProg 64 :=
.seq NamedBody297_111 NamedBody297_122

def NamedBody297_124 : StackLang.HolProg 64 :=
.seq NamedBody297_110 NamedBody297_123

def NamedBody297_125 : StackLang.HolProg 64 :=
.seq NamedBody297_109 NamedBody297_124

def NamedBody297_126 : StackLang.HolProg 64 :=
.seq NamedBody297_108 NamedBody297_125

def NamedBody297_127 : StackLang.HolProg 64 :=
.seq NamedBody297_107 NamedBody297_126

def NamedBody297_128 : StackLang.HolProg 64 :=
.seq NamedBody297_106 NamedBody297_127

def NamedBody297_129 : StackLang.HolProg 64 :=
.seq NamedBody297_105 NamedBody297_128

def NamedBody297_130 : StackLang.HolProg 64 :=
.seq NamedBody297_104 NamedBody297_129

def NamedBody297_131 : StackLang.HolProg 64 :=
.seq NamedBody297_103 NamedBody297_130

def NamedBody297_132 : StackLang.HolProg 64 :=
.seq NamedBody297_102 NamedBody297_131

def NamedBody297_133 : StackLang.HolProg 64 :=
.seq NamedBody297_101 NamedBody297_132

def NamedBody297_134 : StackLang.HolProg 64 :=
.seq NamedBody297_100 NamedBody297_133

def NamedBody297_135 : StackLang.HolProg 64 :=
.seq NamedBody297_99 NamedBody297_134

def NamedBody297_136 : StackLang.HolProg 64 :=
.seq NamedBody297_98 NamedBody297_135

def NamedBody297_137 : StackLang.HolProg 64 :=
.seq NamedBody297_97 NamedBody297_136

def NamedBody297_138 : StackLang.HolProg 64 :=
.seq NamedBody297_96 NamedBody297_137

def NamedBody297_139 : StackLang.HolProg 64 :=
.seq NamedBody297_95 NamedBody297_138

def NamedBody297_140 : StackLang.HolProg 64 :=
.seq NamedBody297_94 NamedBody297_139

def NamedBody297_141 : StackLang.HolProg 64 :=
.seq NamedBody297_93 NamedBody297_140

def NamedBody297_142 : StackLang.HolProg 64 :=
.seq NamedBody297_92 NamedBody297_141

def NamedBody297_143 : StackLang.HolProg 64 :=
.seq NamedBody297_91 NamedBody297_142

def NamedBody297_144 : StackLang.HolProg 64 :=
.seq NamedBody297_90 NamedBody297_143

def NamedBody297_145 : StackLang.HolProg 64 :=
.seq NamedBody297_89 NamedBody297_144

def NamedBody297_146 : StackLang.HolProg 64 :=
.seq NamedBody297_88 NamedBody297_145

def NamedBody297_147 : StackLang.HolProg 64 :=
.seq NamedBody297_87 NamedBody297_146

def NamedBody297_148 : StackLang.HolProg 64 :=
.seq NamedBody297_86 NamedBody297_147

def NamedBody297_149 : StackLang.HolProg 64 :=
.seq NamedBody297_85 NamedBody297_148

def NamedBody297_150 : StackLang.HolProg 64 :=
.seq NamedBody297_84 NamedBody297_149

def NamedBody297_151 : StackLang.HolProg 64 :=
.seq NamedBody297_83 NamedBody297_150

def NamedBody297_152 : StackLang.HolProg 64 :=
.seq NamedBody297_82 NamedBody297_151

def NamedBody297_153 : StackLang.HolProg 64 :=
.seq NamedBody297_15 NamedBody297_152

def NamedBody297_154 : StackLang.HolProg 64 :=
.seq NamedBody297_8 NamedBody297_153

def NamedBody297_155 : StackLang.HolProg 64 :=
.seq NamedBody297_7 NamedBody297_154

def NamedBody297_156 : StackLang.HolProg 64 :=
.seq NamedBody297_6 NamedBody297_155

def Named297 : Nat × StackLang.HolProg 64 := (297, NamedBody297_156)
theorem Named297_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed297 = Named297 := by
  kernel_rfl
#print axioms Named297_eq
end InitECandidate.Proofs.BackendStages
