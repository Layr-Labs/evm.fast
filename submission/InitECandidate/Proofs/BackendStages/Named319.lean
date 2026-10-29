import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed319
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody319_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody319_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody319_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody319_3 : StackLang.HolProg 64 :=
.seq NamedBody319_1 NamedBody319_2

def NamedBody319_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody319_3 NamedBody319_4

def NamedBody319_6 : StackLang.HolProg 64 :=
.seq NamedBody319_0 NamedBody319_5

def NamedBody319_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody319_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody319_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody319_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody319_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody319_12 : StackLang.HolProg 64 :=
.seq NamedBody319_10 NamedBody319_11

def NamedBody319_13 : StackLang.HolProg 64 :=
.seq NamedBody319_9 NamedBody319_12

def NamedBody319_14 : StackLang.HolProg 64 :=
.seq NamedBody319_8 NamedBody319_13

def NamedBody319_15 : StackLang.HolProg 64 :=
.seq NamedBody319_7 NamedBody319_14

def NamedBody319_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 892#64)

def NamedBody319_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody319_19 : StackLang.HolProg 64 :=
.seq NamedBody319_17 NamedBody319_18

def NamedBody319_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody319_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody319_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody319_23 : StackLang.HolProg 64 :=
.seq NamedBody319_21 NamedBody319_22

def NamedBody319_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody319_23 NamedBody319_24

def NamedBody319_26 : StackLang.HolProg 64 :=
.seq NamedBody319_20 NamedBody319_25

def NamedBody319_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody319_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody319_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 319 3

def NamedBody319_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody319_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody319_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody319_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody319_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody319_36 : StackLang.HolProg 64 :=
.seq NamedBody319_34 NamedBody319_35

def NamedBody319_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody319_38 : StackLang.HolProg 64 :=
.seq NamedBody319_36 NamedBody319_37

def NamedBody319_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody319_40 : StackLang.HolProg 64 :=
.seq NamedBody319_38 NamedBody319_39

def NamedBody319_41 : StackLang.HolProg 64 :=
.seq NamedBody319_33 NamedBody319_40

def NamedBody319_42 : StackLang.HolProg 64 :=
.seq NamedBody319_32 NamedBody319_41

def NamedBody319_43 : StackLang.HolProg 64 :=
.seq NamedBody319_31 NamedBody319_42

def NamedBody319_44 : StackLang.HolProg 64 :=
.seq NamedBody319_30 NamedBody319_43

def NamedBody319_45 : StackLang.HolProg 64 :=
.seq NamedBody319_29 NamedBody319_44

def NamedBody319_46 : StackLang.HolProg 64 :=
.seq NamedBody319_28 NamedBody319_45

def NamedBody319_47 : StackLang.HolProg 64 :=
.seq NamedBody319_27 NamedBody319_46

def NamedBody319_48 : StackLang.HolProg 64 :=
.seq NamedBody319_26 NamedBody319_47

def NamedBody319_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody319_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody319_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody319_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody319_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody319_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody319_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody319_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody319_60 : StackLang.HolProg 64 :=
.seq NamedBody319_58 NamedBody319_59

def NamedBody319_61 : StackLang.HolProg 64 :=
.seq NamedBody319_57 NamedBody319_60

def NamedBody319_62 : StackLang.HolProg 64 :=
.seq NamedBody319_56 NamedBody319_61

def NamedBody319_63 : StackLang.HolProg 64 :=
.seq NamedBody319_55 NamedBody319_62

def NamedBody319_64 : StackLang.HolProg 64 :=
.seq NamedBody319_54 NamedBody319_63

def NamedBody319_65 : StackLang.HolProg 64 :=
.seq NamedBody319_53 NamedBody319_64

def NamedBody319_66 : StackLang.HolProg 64 :=
.seq NamedBody319_52 NamedBody319_65

def NamedBody319_67 : StackLang.HolProg 64 :=
.seq NamedBody319_51 NamedBody319_66

def NamedBody319_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody319_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody319_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody319_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody319_72 : StackLang.HolProg 64 :=
.seq NamedBody319_70 NamedBody319_71

def NamedBody319_73 : StackLang.HolProg 64 :=
.seq NamedBody319_69 NamedBody319_72

def NamedBody319_74 : StackLang.HolProg 64 :=
.seq NamedBody319_68 NamedBody319_73

def NamedBody319_75 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody319_76 : StackLang.HolProg 64 :=
.seq NamedBody319_74 NamedBody319_75

def NamedBody319_77 : StackLang.HolProg 64 :=
.call (some (NamedBody319_67, 1, 319, 2)) (Sum.inl 75) (some (NamedBody319_76, 319, 3))

def NamedBody319_78 : StackLang.HolProg 64 :=
.seq NamedBody319_50 NamedBody319_77

def NamedBody319_79 : StackLang.HolProg 64 :=
.seq NamedBody319_49 NamedBody319_78

def NamedBody319_80 : StackLang.HolProg 64 :=
.seq NamedBody319_48 NamedBody319_79

def NamedBody319_81 : StackLang.HolProg 64 :=
.seq NamedBody319_19 NamedBody319_80

def NamedBody319_82 : StackLang.HolProg 64 :=
.seq NamedBody319_16 NamedBody319_81

def NamedBody319_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody319_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody319_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody319_86 : StackLang.HolProg 64 :=
.seq NamedBody319_84 NamedBody319_85

def NamedBody319_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 893#64)

def NamedBody319_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody319_90 : StackLang.HolProg 64 :=
.seq NamedBody319_88 NamedBody319_89

def NamedBody319_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody319_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody319_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody319_94 : StackLang.HolProg 64 :=
.seq NamedBody319_92 NamedBody319_93

def NamedBody319_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody319_94 NamedBody319_95

def NamedBody319_97 : StackLang.HolProg 64 :=
.seq NamedBody319_91 NamedBody319_96

def NamedBody319_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody319_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody319_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 319 7

def NamedBody319_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody319_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody319_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody319_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody319_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody319_107 : StackLang.HolProg 64 :=
.seq NamedBody319_105 NamedBody319_106

def NamedBody319_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody319_109 : StackLang.HolProg 64 :=
.seq NamedBody319_107 NamedBody319_108

def NamedBody319_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody319_111 : StackLang.HolProg 64 :=
.seq NamedBody319_109 NamedBody319_110

def NamedBody319_112 : StackLang.HolProg 64 :=
.seq NamedBody319_104 NamedBody319_111

def NamedBody319_113 : StackLang.HolProg 64 :=
.seq NamedBody319_103 NamedBody319_112

def NamedBody319_114 : StackLang.HolProg 64 :=
.seq NamedBody319_102 NamedBody319_113

def NamedBody319_115 : StackLang.HolProg 64 :=
.seq NamedBody319_101 NamedBody319_114

def NamedBody319_116 : StackLang.HolProg 64 :=
.seq NamedBody319_100 NamedBody319_115

def NamedBody319_117 : StackLang.HolProg 64 :=
.seq NamedBody319_99 NamedBody319_116

def NamedBody319_118 : StackLang.HolProg 64 :=
.seq NamedBody319_98 NamedBody319_117

def NamedBody319_119 : StackLang.HolProg 64 :=
.seq NamedBody319_97 NamedBody319_118

def NamedBody319_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody319_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody319_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody319_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody319_127 : StackLang.HolProg 64 :=
.seq NamedBody319_125 NamedBody319_126

def NamedBody319_128 : StackLang.HolProg 64 :=
.seq NamedBody319_124 NamedBody319_127

def NamedBody319_129 : StackLang.HolProg 64 :=
.seq NamedBody319_123 NamedBody319_128

def NamedBody319_130 : StackLang.HolProg 64 :=
.seq NamedBody319_122 NamedBody319_129

def NamedBody319_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody319_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody319_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody319_134 : StackLang.HolProg 64 :=
.seq NamedBody319_132 NamedBody319_133

def NamedBody319_135 : StackLang.HolProg 64 :=
.seq NamedBody319_131 NamedBody319_134

def NamedBody319_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody319_138 : StackLang.HolProg 64 :=
.seq NamedBody319_136 NamedBody319_137

def NamedBody319_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody319_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody319_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody319_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody319_143 : StackLang.HolProg 64 :=
.seq NamedBody319_141 NamedBody319_142

def NamedBody319_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 894#64)

def NamedBody319_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody319_147 : StackLang.HolProg 64 :=
.seq NamedBody319_145 NamedBody319_146

def NamedBody319_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody319_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody319_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody319_151 : StackLang.HolProg 64 :=
.seq NamedBody319_149 NamedBody319_150

def NamedBody319_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_153 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody319_151 NamedBody319_152

def NamedBody319_154 : StackLang.HolProg 64 :=
.seq NamedBody319_148 NamedBody319_153

def NamedBody319_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody319_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody319_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 319 6

def NamedBody319_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody319_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody319_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody319_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody319_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody319_164 : StackLang.HolProg 64 :=
.seq NamedBody319_162 NamedBody319_163

def NamedBody319_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody319_166 : StackLang.HolProg 64 :=
.seq NamedBody319_164 NamedBody319_165

def NamedBody319_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody319_168 : StackLang.HolProg 64 :=
.seq NamedBody319_166 NamedBody319_167

def NamedBody319_169 : StackLang.HolProg 64 :=
.seq NamedBody319_161 NamedBody319_168

def NamedBody319_170 : StackLang.HolProg 64 :=
.seq NamedBody319_160 NamedBody319_169

def NamedBody319_171 : StackLang.HolProg 64 :=
.seq NamedBody319_159 NamedBody319_170

def NamedBody319_172 : StackLang.HolProg 64 :=
.seq NamedBody319_158 NamedBody319_171

def NamedBody319_173 : StackLang.HolProg 64 :=
.seq NamedBody319_157 NamedBody319_172

def NamedBody319_174 : StackLang.HolProg 64 :=
.seq NamedBody319_156 NamedBody319_173

def NamedBody319_175 : StackLang.HolProg 64 :=
.seq NamedBody319_155 NamedBody319_174

def NamedBody319_176 : StackLang.HolProg 64 :=
.seq NamedBody319_154 NamedBody319_175

def NamedBody319_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody319_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody319_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody319_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody319_184 : StackLang.HolProg 64 :=
.seq NamedBody319_182 NamedBody319_183

def NamedBody319_185 : StackLang.HolProg 64 :=
.seq NamedBody319_181 NamedBody319_184

def NamedBody319_186 : StackLang.HolProg 64 :=
.seq NamedBody319_180 NamedBody319_185

def NamedBody319_187 : StackLang.HolProg 64 :=
.seq NamedBody319_179 NamedBody319_186

def NamedBody319_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody319_189 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody319_190 : StackLang.HolProg 64 :=
.seq NamedBody319_188 NamedBody319_189

def NamedBody319_191 : StackLang.HolProg 64 :=
.call (some (NamedBody319_187, 1, 319, 5)) (Sum.inl 76) (some (NamedBody319_190, 319, 6))

def NamedBody319_192 : StackLang.HolProg 64 :=
.seq NamedBody319_178 NamedBody319_191

def NamedBody319_193 : StackLang.HolProg 64 :=
.seq NamedBody319_177 NamedBody319_192

def NamedBody319_194 : StackLang.HolProg 64 :=
.seq NamedBody319_176 NamedBody319_193

def NamedBody319_195 : StackLang.HolProg 64 :=
.seq NamedBody319_147 NamedBody319_194

def NamedBody319_196 : StackLang.HolProg 64 :=
.seq NamedBody319_144 NamedBody319_195

def NamedBody319_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody319_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody319_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 5#64)

def NamedBody319_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody319_203 : StackLang.HolProg 64 :=
.seq NamedBody319_201 NamedBody319_202

def NamedBody319_204 : StackLang.HolProg 64 :=
.seq NamedBody319_200 NamedBody319_203

def NamedBody319_205 : StackLang.HolProg 64 :=
.seq NamedBody319_199 NamedBody319_204

def NamedBody319_206 : StackLang.HolProg 64 :=
.seq NamedBody319_198 NamedBody319_205

def NamedBody319_207 : StackLang.HolProg 64 :=
.seq NamedBody319_197 NamedBody319_206

def NamedBody319_208 : StackLang.HolProg 64 :=
.seq NamedBody319_196 NamedBody319_207

def NamedBody319_209 : StackLang.HolProg 64 :=
.seq NamedBody319_143 NamedBody319_208

def NamedBody319_210 : StackLang.HolProg 64 :=
.seq NamedBody319_140 NamedBody319_209

def NamedBody319_211 : StackLang.HolProg 64 :=
.seq NamedBody319_139 NamedBody319_210

def NamedBody319_212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64) NamedBody319_138 NamedBody319_211

def NamedBody319_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody319_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody319_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody319_216 : StackLang.HolProg 64 :=
.seq NamedBody319_214 NamedBody319_215

def NamedBody319_217 : StackLang.HolProg 64 :=
.seq NamedBody319_213 NamedBody319_216

def NamedBody319_218 : StackLang.HolProg 64 :=
.seq NamedBody319_212 NamedBody319_217

def NamedBody319_219 : StackLang.HolProg 64 :=
.seq NamedBody319_135 NamedBody319_218

def NamedBody319_220 : StackLang.HolProg 64 :=
.call (some (NamedBody319_130, 1, 319, 4)) (Sum.inl 318) (some (NamedBody319_219, 319, 7))

def NamedBody319_221 : StackLang.HolProg 64 :=
.seq NamedBody319_121 NamedBody319_220

def NamedBody319_222 : StackLang.HolProg 64 :=
.seq NamedBody319_120 NamedBody319_221

def NamedBody319_223 : StackLang.HolProg 64 :=
.seq NamedBody319_119 NamedBody319_222

def NamedBody319_224 : StackLang.HolProg 64 :=
.seq NamedBody319_90 NamedBody319_223

def NamedBody319_225 : StackLang.HolProg 64 :=
.seq NamedBody319_87 NamedBody319_224

def NamedBody319_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody319_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody319_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody319_229 : StackLang.HolProg 64 :=
.seq NamedBody319_227 NamedBody319_228

def NamedBody319_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 895#64)

def NamedBody319_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody319_233 : StackLang.HolProg 64 :=
.seq NamedBody319_231 NamedBody319_232

def NamedBody319_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody319_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody319_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody319_237 : StackLang.HolProg 64 :=
.seq NamedBody319_235 NamedBody319_236

def NamedBody319_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody319_237 NamedBody319_238

def NamedBody319_240 : StackLang.HolProg 64 :=
.seq NamedBody319_234 NamedBody319_239

def NamedBody319_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody319_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody319_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 319 9

def NamedBody319_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody319_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody319_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody319_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody319_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody319_250 : StackLang.HolProg 64 :=
.seq NamedBody319_248 NamedBody319_249

def NamedBody319_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody319_252 : StackLang.HolProg 64 :=
.seq NamedBody319_250 NamedBody319_251

def NamedBody319_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody319_254 : StackLang.HolProg 64 :=
.seq NamedBody319_252 NamedBody319_253

def NamedBody319_255 : StackLang.HolProg 64 :=
.seq NamedBody319_247 NamedBody319_254

def NamedBody319_256 : StackLang.HolProg 64 :=
.seq NamedBody319_246 NamedBody319_255

def NamedBody319_257 : StackLang.HolProg 64 :=
.seq NamedBody319_245 NamedBody319_256

def NamedBody319_258 : StackLang.HolProg 64 :=
.seq NamedBody319_244 NamedBody319_257

def NamedBody319_259 : StackLang.HolProg 64 :=
.seq NamedBody319_243 NamedBody319_258

def NamedBody319_260 : StackLang.HolProg 64 :=
.seq NamedBody319_242 NamedBody319_259

def NamedBody319_261 : StackLang.HolProg 64 :=
.seq NamedBody319_241 NamedBody319_260

def NamedBody319_262 : StackLang.HolProg 64 :=
.seq NamedBody319_240 NamedBody319_261

def NamedBody319_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody319_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody319_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody319_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody319_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody319_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody319_271 : StackLang.HolProg 64 :=
.seq NamedBody319_269 NamedBody319_270

def NamedBody319_272 : StackLang.HolProg 64 :=
.seq NamedBody319_268 NamedBody319_271

def NamedBody319_273 : StackLang.HolProg 64 :=
.seq NamedBody319_267 NamedBody319_272

def NamedBody319_274 : StackLang.HolProg 64 :=
.seq NamedBody319_266 NamedBody319_273

def NamedBody319_275 : StackLang.HolProg 64 :=
.seq NamedBody319_265 NamedBody319_274

def NamedBody319_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody319_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody319_278 : StackLang.HolProg 64 :=
.seq NamedBody319_276 NamedBody319_277

def NamedBody319_279 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody319_280 : StackLang.HolProg 64 :=
.seq NamedBody319_278 NamedBody319_279

def NamedBody319_281 : StackLang.HolProg 64 :=
.call (some (NamedBody319_275, 1, 319, 8)) (Sum.inl 76) (some (NamedBody319_280, 319, 9))

def NamedBody319_282 : StackLang.HolProg 64 :=
.seq NamedBody319_264 NamedBody319_281

def NamedBody319_283 : StackLang.HolProg 64 :=
.seq NamedBody319_263 NamedBody319_282

def NamedBody319_284 : StackLang.HolProg 64 :=
.seq NamedBody319_262 NamedBody319_283

def NamedBody319_285 : StackLang.HolProg 64 :=
.seq NamedBody319_233 NamedBody319_284

def NamedBody319_286 : StackLang.HolProg 64 :=
.seq NamedBody319_230 NamedBody319_285

def NamedBody319_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody319_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody319_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody319_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody319_291 : StackLang.HolProg 64 :=
.seq NamedBody319_289 NamedBody319_290

def NamedBody319_292 : StackLang.HolProg 64 :=
.seq NamedBody319_288 NamedBody319_291

def NamedBody319_293 : StackLang.HolProg 64 :=
.seq NamedBody319_287 NamedBody319_292

def NamedBody319_294 : StackLang.HolProg 64 :=
.seq NamedBody319_286 NamedBody319_293

def NamedBody319_295 : StackLang.HolProg 64 :=
.seq NamedBody319_229 NamedBody319_294

def NamedBody319_296 : StackLang.HolProg 64 :=
.seq NamedBody319_226 NamedBody319_295

def NamedBody319_297 : StackLang.HolProg 64 :=
.seq NamedBody319_225 NamedBody319_296

def NamedBody319_298 : StackLang.HolProg 64 :=
.seq NamedBody319_86 NamedBody319_297

def NamedBody319_299 : StackLang.HolProg 64 :=
.seq NamedBody319_83 NamedBody319_298

def NamedBody319_300 : StackLang.HolProg 64 :=
.seq NamedBody319_82 NamedBody319_299

def NamedBody319_301 : StackLang.HolProg 64 :=
.seq NamedBody319_15 NamedBody319_300

def NamedBody319_302 : StackLang.HolProg 64 :=
.seq NamedBody319_6 NamedBody319_301

def Named319 : Nat × StackLang.HolProg 64 := (319, NamedBody319_302)
theorem Named319_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed319 = Named319 := by
  kernel_rfl
#print axioms Named319_eq
end InitECandidate.Proofs.BackendStages
