import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed332
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody332_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody332_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody332_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody332_3 : StackLang.HolProg 64 :=
.seq NamedBody332_1 NamedBody332_2

def NamedBody332_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody332_3 NamedBody332_4

def NamedBody332_6 : StackLang.HolProg 64 :=
.seq NamedBody332_0 NamedBody332_5

def NamedBody332_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody332_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody332_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody332_11 : StackLang.HolProg 64 :=
.seq NamedBody332_9 NamedBody332_10

def NamedBody332_12 : StackLang.HolProg 64 :=
.seq NamedBody332_8 NamedBody332_11

def NamedBody332_13 : StackLang.HolProg 64 :=
.seq NamedBody332_7 NamedBody332_12

def NamedBody332_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 940#64)

def NamedBody332_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody332_17 : StackLang.HolProg 64 :=
.seq NamedBody332_15 NamedBody332_16

def NamedBody332_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody332_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody332_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody332_21 : StackLang.HolProg 64 :=
.seq NamedBody332_19 NamedBody332_20

def NamedBody332_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody332_21 NamedBody332_22

def NamedBody332_24 : StackLang.HolProg 64 :=
.seq NamedBody332_18 NamedBody332_23

def NamedBody332_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody332_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody332_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 3

def NamedBody332_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody332_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody332_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody332_34 : StackLang.HolProg 64 :=
.seq NamedBody332_32 NamedBody332_33

def NamedBody332_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody332_36 : StackLang.HolProg 64 :=
.seq NamedBody332_34 NamedBody332_35

def NamedBody332_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_38 : StackLang.HolProg 64 :=
.seq NamedBody332_36 NamedBody332_37

def NamedBody332_39 : StackLang.HolProg 64 :=
.seq NamedBody332_31 NamedBody332_38

def NamedBody332_40 : StackLang.HolProg 64 :=
.seq NamedBody332_30 NamedBody332_39

def NamedBody332_41 : StackLang.HolProg 64 :=
.seq NamedBody332_29 NamedBody332_40

def NamedBody332_42 : StackLang.HolProg 64 :=
.seq NamedBody332_28 NamedBody332_41

def NamedBody332_43 : StackLang.HolProg 64 :=
.seq NamedBody332_27 NamedBody332_42

def NamedBody332_44 : StackLang.HolProg 64 :=
.seq NamedBody332_26 NamedBody332_43

def NamedBody332_45 : StackLang.HolProg 64 :=
.seq NamedBody332_25 NamedBody332_44

def NamedBody332_46 : StackLang.HolProg 64 :=
.seq NamedBody332_24 NamedBody332_45

def NamedBody332_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody332_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody332_54 : StackLang.HolProg 64 :=
.seq NamedBody332_52 NamedBody332_53

def NamedBody332_55 : StackLang.HolProg 64 :=
.seq NamedBody332_51 NamedBody332_54

def NamedBody332_56 : StackLang.HolProg 64 :=
.seq NamedBody332_50 NamedBody332_55

def NamedBody332_57 : StackLang.HolProg 64 :=
.seq NamedBody332_49 NamedBody332_56

def NamedBody332_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody332_60 : StackLang.HolProg 64 :=
.seq NamedBody332_58 NamedBody332_59

def NamedBody332_61 : StackLang.HolProg 64 :=
.call (some (NamedBody332_57, 1, 332, 2)) (Sum.inl 69) (some (NamedBody332_60, 332, 3))

def NamedBody332_62 : StackLang.HolProg 64 :=
.seq NamedBody332_48 NamedBody332_61

def NamedBody332_63 : StackLang.HolProg 64 :=
.seq NamedBody332_47 NamedBody332_62

def NamedBody332_64 : StackLang.HolProg 64 :=
.seq NamedBody332_46 NamedBody332_63

def NamedBody332_65 : StackLang.HolProg 64 :=
.seq NamedBody332_17 NamedBody332_64

def NamedBody332_66 : StackLang.HolProg 64 :=
.seq NamedBody332_14 NamedBody332_65

def NamedBody332_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody332_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody332_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody332_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody332_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 941#64)

def NamedBody332_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody332_74 : StackLang.HolProg 64 :=
.seq NamedBody332_72 NamedBody332_73

def NamedBody332_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody332_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody332_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody332_78 : StackLang.HolProg 64 :=
.seq NamedBody332_76 NamedBody332_77

def NamedBody332_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody332_78 NamedBody332_79

def NamedBody332_81 : StackLang.HolProg 64 :=
.seq NamedBody332_75 NamedBody332_80

def NamedBody332_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody332_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody332_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 5

def NamedBody332_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody332_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody332_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody332_91 : StackLang.HolProg 64 :=
.seq NamedBody332_89 NamedBody332_90

def NamedBody332_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody332_93 : StackLang.HolProg 64 :=
.seq NamedBody332_91 NamedBody332_92

def NamedBody332_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_95 : StackLang.HolProg 64 :=
.seq NamedBody332_93 NamedBody332_94

def NamedBody332_96 : StackLang.HolProg 64 :=
.seq NamedBody332_88 NamedBody332_95

def NamedBody332_97 : StackLang.HolProg 64 :=
.seq NamedBody332_87 NamedBody332_96

def NamedBody332_98 : StackLang.HolProg 64 :=
.seq NamedBody332_86 NamedBody332_97

def NamedBody332_99 : StackLang.HolProg 64 :=
.seq NamedBody332_85 NamedBody332_98

def NamedBody332_100 : StackLang.HolProg 64 :=
.seq NamedBody332_84 NamedBody332_99

def NamedBody332_101 : StackLang.HolProg 64 :=
.seq NamedBody332_83 NamedBody332_100

def NamedBody332_102 : StackLang.HolProg 64 :=
.seq NamedBody332_82 NamedBody332_101

def NamedBody332_103 : StackLang.HolProg 64 :=
.seq NamedBody332_81 NamedBody332_102

def NamedBody332_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody332_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody332_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_112 : StackLang.HolProg 64 :=
.seq NamedBody332_110 NamedBody332_111

def NamedBody332_113 : StackLang.HolProg 64 :=
.seq NamedBody332_109 NamedBody332_112

def NamedBody332_114 : StackLang.HolProg 64 :=
.seq NamedBody332_108 NamedBody332_113

def NamedBody332_115 : StackLang.HolProg 64 :=
.seq NamedBody332_107 NamedBody332_114

def NamedBody332_116 : StackLang.HolProg 64 :=
.seq NamedBody332_106 NamedBody332_115

def NamedBody332_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody332_119 : StackLang.HolProg 64 :=
.seq NamedBody332_117 NamedBody332_118

def NamedBody332_120 : StackLang.HolProg 64 :=
.call (some (NamedBody332_116, 1, 332, 4)) (Sum.inl 308) (some (NamedBody332_119, 332, 5))

def NamedBody332_121 : StackLang.HolProg 64 :=
.seq NamedBody332_105 NamedBody332_120

def NamedBody332_122 : StackLang.HolProg 64 :=
.seq NamedBody332_104 NamedBody332_121

def NamedBody332_123 : StackLang.HolProg 64 :=
.seq NamedBody332_103 NamedBody332_122

def NamedBody332_124 : StackLang.HolProg 64 :=
.seq NamedBody332_74 NamedBody332_123

def NamedBody332_125 : StackLang.HolProg 64 :=
.seq NamedBody332_71 NamedBody332_124

def NamedBody332_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody332_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody332_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody332_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody332_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody332_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody332_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody332_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551456#64))

def NamedBody332_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody332_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_138 : StackLang.HolProg 64 :=
.seq NamedBody332_136 NamedBody332_137

def NamedBody332_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody332_141 : StackLang.HolProg 64 :=
.seq NamedBody332_139 NamedBody332_140

def NamedBody332_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody332_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody332_145 : StackLang.HolProg 64 :=
.seq NamedBody332_143 NamedBody332_144

def NamedBody332_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody332_147 : StackLang.HolProg 64 :=
.seq NamedBody332_145 NamedBody332_146

def NamedBody332_148 : StackLang.HolProg 64 :=
.seq NamedBody332_142 NamedBody332_147

def NamedBody332_149 : StackLang.HolProg 64 :=
.seq NamedBody332_141 NamedBody332_148

def NamedBody332_150 : StackLang.HolProg 64 :=
.seq NamedBody332_138 NamedBody332_149

def NamedBody332_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 942#64)

def NamedBody332_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody332_154 : StackLang.HolProg 64 :=
.seq NamedBody332_152 NamedBody332_153

def NamedBody332_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody332_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody332_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody332_158 : StackLang.HolProg 64 :=
.seq NamedBody332_156 NamedBody332_157

def NamedBody332_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_160 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody332_158 NamedBody332_159

def NamedBody332_161 : StackLang.HolProg 64 :=
.seq NamedBody332_155 NamedBody332_160

def NamedBody332_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody332_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody332_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 7

def NamedBody332_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody332_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody332_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody332_171 : StackLang.HolProg 64 :=
.seq NamedBody332_169 NamedBody332_170

def NamedBody332_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody332_173 : StackLang.HolProg 64 :=
.seq NamedBody332_171 NamedBody332_172

def NamedBody332_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_175 : StackLang.HolProg 64 :=
.seq NamedBody332_173 NamedBody332_174

def NamedBody332_176 : StackLang.HolProg 64 :=
.seq NamedBody332_168 NamedBody332_175

def NamedBody332_177 : StackLang.HolProg 64 :=
.seq NamedBody332_167 NamedBody332_176

def NamedBody332_178 : StackLang.HolProg 64 :=
.seq NamedBody332_166 NamedBody332_177

def NamedBody332_179 : StackLang.HolProg 64 :=
.seq NamedBody332_165 NamedBody332_178

def NamedBody332_180 : StackLang.HolProg 64 :=
.seq NamedBody332_164 NamedBody332_179

def NamedBody332_181 : StackLang.HolProg 64 :=
.seq NamedBody332_163 NamedBody332_180

def NamedBody332_182 : StackLang.HolProg 64 :=
.seq NamedBody332_162 NamedBody332_181

def NamedBody332_183 : StackLang.HolProg 64 :=
.seq NamedBody332_161 NamedBody332_182

def NamedBody332_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody332_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody332_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody332_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody332_194 : StackLang.HolProg 64 :=
.seq NamedBody332_192 NamedBody332_193

def NamedBody332_195 : StackLang.HolProg 64 :=
.seq NamedBody332_191 NamedBody332_194

def NamedBody332_196 : StackLang.HolProg 64 :=
.seq NamedBody332_190 NamedBody332_195

def NamedBody332_197 : StackLang.HolProg 64 :=
.seq NamedBody332_189 NamedBody332_196

def NamedBody332_198 : StackLang.HolProg 64 :=
.seq NamedBody332_188 NamedBody332_197

def NamedBody332_199 : StackLang.HolProg 64 :=
.seq NamedBody332_187 NamedBody332_198

def NamedBody332_200 : StackLang.HolProg 64 :=
.seq NamedBody332_186 NamedBody332_199

def NamedBody332_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody332_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody332_204 : StackLang.HolProg 64 :=
.seq NamedBody332_202 NamedBody332_203

def NamedBody332_205 : StackLang.HolProg 64 :=
.seq NamedBody332_201 NamedBody332_204

def NamedBody332_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody332_207 : StackLang.HolProg 64 :=
.seq NamedBody332_205 NamedBody332_206

def NamedBody332_208 : StackLang.HolProg 64 :=
.call (some (NamedBody332_200, 1, 332, 6)) (Sum.inl 177) (some (NamedBody332_207, 332, 7))

def NamedBody332_209 : StackLang.HolProg 64 :=
.seq NamedBody332_185 NamedBody332_208

def NamedBody332_210 : StackLang.HolProg 64 :=
.seq NamedBody332_184 NamedBody332_209

def NamedBody332_211 : StackLang.HolProg 64 :=
.seq NamedBody332_183 NamedBody332_210

def NamedBody332_212 : StackLang.HolProg 64 :=
.seq NamedBody332_154 NamedBody332_211

def NamedBody332_213 : StackLang.HolProg 64 :=
.seq NamedBody332_151 NamedBody332_212

def NamedBody332_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody332_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody332_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody332_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody332_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody332_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551456#64))

def NamedBody332_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody332_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody332_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody332_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody332_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_227 : StackLang.HolProg 64 :=
.seq NamedBody332_225 NamedBody332_226

def NamedBody332_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody332_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody332_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 943#64)

def NamedBody332_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody332_233 : StackLang.HolProg 64 :=
.seq NamedBody332_231 NamedBody332_232

def NamedBody332_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody332_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody332_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody332_237 : StackLang.HolProg 64 :=
.seq NamedBody332_235 NamedBody332_236

def NamedBody332_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody332_237 NamedBody332_238

def NamedBody332_240 : StackLang.HolProg 64 :=
.seq NamedBody332_234 NamedBody332_239

def NamedBody332_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody332_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody332_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 9

def NamedBody332_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody332_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody332_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody332_250 : StackLang.HolProg 64 :=
.seq NamedBody332_248 NamedBody332_249

def NamedBody332_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody332_252 : StackLang.HolProg 64 :=
.seq NamedBody332_250 NamedBody332_251

def NamedBody332_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_254 : StackLang.HolProg 64 :=
.seq NamedBody332_252 NamedBody332_253

def NamedBody332_255 : StackLang.HolProg 64 :=
.seq NamedBody332_247 NamedBody332_254

def NamedBody332_256 : StackLang.HolProg 64 :=
.seq NamedBody332_246 NamedBody332_255

def NamedBody332_257 : StackLang.HolProg 64 :=
.seq NamedBody332_245 NamedBody332_256

def NamedBody332_258 : StackLang.HolProg 64 :=
.seq NamedBody332_244 NamedBody332_257

def NamedBody332_259 : StackLang.HolProg 64 :=
.seq NamedBody332_243 NamedBody332_258

def NamedBody332_260 : StackLang.HolProg 64 :=
.seq NamedBody332_242 NamedBody332_259

def NamedBody332_261 : StackLang.HolProg 64 :=
.seq NamedBody332_241 NamedBody332_260

def NamedBody332_262 : StackLang.HolProg 64 :=
.seq NamedBody332_240 NamedBody332_261

def NamedBody332_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody332_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody332_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody332_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody332_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody332_275 : StackLang.HolProg 64 :=
.seq NamedBody332_273 NamedBody332_274

def NamedBody332_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody332_277 : StackLang.HolProg 64 :=
.seq NamedBody332_275 NamedBody332_276

def NamedBody332_278 : StackLang.HolProg 64 :=
.seq NamedBody332_272 NamedBody332_277

def NamedBody332_279 : StackLang.HolProg 64 :=
.seq NamedBody332_271 NamedBody332_278

def NamedBody332_280 : StackLang.HolProg 64 :=
.seq NamedBody332_270 NamedBody332_279

def NamedBody332_281 : StackLang.HolProg 64 :=
.seq NamedBody332_269 NamedBody332_280

def NamedBody332_282 : StackLang.HolProg 64 :=
.seq NamedBody332_268 NamedBody332_281

def NamedBody332_283 : StackLang.HolProg 64 :=
.seq NamedBody332_267 NamedBody332_282

def NamedBody332_284 : StackLang.HolProg 64 :=
.seq NamedBody332_266 NamedBody332_283

def NamedBody332_285 : StackLang.HolProg 64 :=
.seq NamedBody332_265 NamedBody332_284

def NamedBody332_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody332_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody332_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody332_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody332_292 : StackLang.HolProg 64 :=
.seq NamedBody332_290 NamedBody332_291

def NamedBody332_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody332_294 : StackLang.HolProg 64 :=
.seq NamedBody332_292 NamedBody332_293

def NamedBody332_295 : StackLang.HolProg 64 :=
.seq NamedBody332_289 NamedBody332_294

def NamedBody332_296 : StackLang.HolProg 64 :=
.seq NamedBody332_288 NamedBody332_295

def NamedBody332_297 : StackLang.HolProg 64 :=
.seq NamedBody332_287 NamedBody332_296

def NamedBody332_298 : StackLang.HolProg 64 :=
.seq NamedBody332_286 NamedBody332_297

def NamedBody332_299 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody332_300 : StackLang.HolProg 64 :=
.seq NamedBody332_298 NamedBody332_299

def NamedBody332_301 : StackLang.HolProg 64 :=
.call (some (NamedBody332_285, 1, 332, 8)) (Sum.inl 320) (some (NamedBody332_300, 332, 9))

def NamedBody332_302 : StackLang.HolProg 64 :=
.seq NamedBody332_264 NamedBody332_301

def NamedBody332_303 : StackLang.HolProg 64 :=
.seq NamedBody332_263 NamedBody332_302

def NamedBody332_304 : StackLang.HolProg 64 :=
.seq NamedBody332_262 NamedBody332_303

def NamedBody332_305 : StackLang.HolProg 64 :=
.seq NamedBody332_233 NamedBody332_304

def NamedBody332_306 : StackLang.HolProg 64 :=
.seq NamedBody332_230 NamedBody332_305

def NamedBody332_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody332_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody332_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody332_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody332_313 : StackLang.HolProg 64 :=
.seq NamedBody332_311 NamedBody332_312

def NamedBody332_314 : StackLang.HolProg 64 :=
.seq NamedBody332_310 NamedBody332_313

def NamedBody332_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody332_316 : StackLang.HolProg 64 :=
.seq NamedBody332_314 NamedBody332_315

def NamedBody332_317 : StackLang.HolProg 64 :=
.seq NamedBody332_309 NamedBody332_316

def NamedBody332_318 : StackLang.HolProg 64 :=
.seq NamedBody332_308 NamedBody332_317

def NamedBody332_319 : StackLang.HolProg 64 :=
.seq NamedBody332_307 NamedBody332_318

def NamedBody332_320 : StackLang.HolProg 64 :=
.seq NamedBody332_306 NamedBody332_319

def NamedBody332_321 : StackLang.HolProg 64 :=
.seq NamedBody332_229 NamedBody332_320

def NamedBody332_322 : StackLang.HolProg 64 :=
.seq NamedBody332_228 NamedBody332_321

def NamedBody332_323 : StackLang.HolProg 64 :=
.seq NamedBody332_227 NamedBody332_322

def NamedBody332_324 : StackLang.HolProg 64 :=
.seq NamedBody332_224 NamedBody332_323

def NamedBody332_325 : StackLang.HolProg 64 :=
.seq NamedBody332_223 NamedBody332_324

def NamedBody332_326 : StackLang.HolProg 64 :=
.seq NamedBody332_222 NamedBody332_325

def NamedBody332_327 : StackLang.HolProg 64 :=
.seq NamedBody332_221 NamedBody332_326

def NamedBody332_328 : StackLang.HolProg 64 :=
.seq NamedBody332_220 NamedBody332_327

def NamedBody332_329 : StackLang.HolProg 64 :=
.seq NamedBody332_219 NamedBody332_328

def NamedBody332_330 : StackLang.HolProg 64 :=
.seq NamedBody332_218 NamedBody332_329

def NamedBody332_331 : StackLang.HolProg 64 :=
.seq NamedBody332_217 NamedBody332_330

def NamedBody332_332 : StackLang.HolProg 64 :=
.seq NamedBody332_216 NamedBody332_331

def NamedBody332_333 : StackLang.HolProg 64 :=
.seq NamedBody332_215 NamedBody332_332

def NamedBody332_334 : StackLang.HolProg 64 :=
.seq NamedBody332_214 NamedBody332_333

def NamedBody332_335 : StackLang.HolProg 64 :=
.seq NamedBody332_213 NamedBody332_334

def NamedBody332_336 : StackLang.HolProg 64 :=
.seq NamedBody332_150 NamedBody332_335

def NamedBody332_337 : StackLang.HolProg 64 :=
.seq NamedBody332_135 NamedBody332_336

def NamedBody332_338 : StackLang.HolProg 64 :=
.seq NamedBody332_134 NamedBody332_337

def NamedBody332_339 : StackLang.HolProg 64 :=
.seq NamedBody332_133 NamedBody332_338

def NamedBody332_340 : StackLang.HolProg 64 :=
.seq NamedBody332_132 NamedBody332_339

def NamedBody332_341 : StackLang.HolProg 64 :=
.seq NamedBody332_131 NamedBody332_340

def NamedBody332_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody332_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody332_344 : StackLang.HolProg 64 :=
.seq NamedBody332_342 NamedBody332_343

def NamedBody332_345 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody332_341 NamedBody332_344

def NamedBody332_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody332_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody332_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody332_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody332_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody332_352 : StackLang.HolProg 64 :=
.seq NamedBody332_350 NamedBody332_351

def NamedBody332_353 : StackLang.HolProg 64 :=
.seq NamedBody332_349 NamedBody332_352

def NamedBody332_354 : StackLang.HolProg 64 :=
.seq NamedBody332_348 NamedBody332_353

def NamedBody332_355 : StackLang.HolProg 64 :=
.seq NamedBody332_347 NamedBody332_354

def NamedBody332_356 : StackLang.HolProg 64 :=
.seq NamedBody332_346 NamedBody332_355

def NamedBody332_357 : StackLang.HolProg 64 :=
.seq NamedBody332_345 NamedBody332_356

def NamedBody332_358 : StackLang.HolProg 64 :=
.seq NamedBody332_130 NamedBody332_357

def NamedBody332_359 : StackLang.HolProg 64 :=
.loop NamedBody332_358

def NamedBody332_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody332_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody332_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody332_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_365 : StackLang.HolProg 64 :=
.seq NamedBody332_363 NamedBody332_364

def NamedBody332_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody332_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody332_368 : StackLang.HolProg 64 :=
.seq NamedBody332_366 NamedBody332_367

def NamedBody332_369 : StackLang.HolProg 64 :=
.seq NamedBody332_365 NamedBody332_368

def NamedBody332_370 : StackLang.HolProg 64 :=
.seq NamedBody332_362 NamedBody332_369

def NamedBody332_371 : StackLang.HolProg 64 :=
.seq NamedBody332_361 NamedBody332_370

def NamedBody332_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 944#64)

def NamedBody332_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody332_375 : StackLang.HolProg 64 :=
.seq NamedBody332_373 NamedBody332_374

def NamedBody332_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody332_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody332_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody332_379 : StackLang.HolProg 64 :=
.seq NamedBody332_377 NamedBody332_378

def NamedBody332_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_381 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody332_379 NamedBody332_380

def NamedBody332_382 : StackLang.HolProg 64 :=
.seq NamedBody332_376 NamedBody332_381

def NamedBody332_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody332_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody332_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 11

def NamedBody332_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody332_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody332_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody332_392 : StackLang.HolProg 64 :=
.seq NamedBody332_390 NamedBody332_391

def NamedBody332_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody332_394 : StackLang.HolProg 64 :=
.seq NamedBody332_392 NamedBody332_393

def NamedBody332_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_396 : StackLang.HolProg 64 :=
.seq NamedBody332_394 NamedBody332_395

def NamedBody332_397 : StackLang.HolProg 64 :=
.seq NamedBody332_389 NamedBody332_396

def NamedBody332_398 : StackLang.HolProg 64 :=
.seq NamedBody332_388 NamedBody332_397

def NamedBody332_399 : StackLang.HolProg 64 :=
.seq NamedBody332_387 NamedBody332_398

def NamedBody332_400 : StackLang.HolProg 64 :=
.seq NamedBody332_386 NamedBody332_399

def NamedBody332_401 : StackLang.HolProg 64 :=
.seq NamedBody332_385 NamedBody332_400

def NamedBody332_402 : StackLang.HolProg 64 :=
.seq NamedBody332_384 NamedBody332_401

def NamedBody332_403 : StackLang.HolProg 64 :=
.seq NamedBody332_383 NamedBody332_402

def NamedBody332_404 : StackLang.HolProg 64 :=
.seq NamedBody332_382 NamedBody332_403

def NamedBody332_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody332_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody332_412 : StackLang.HolProg 64 :=
.seq NamedBody332_410 NamedBody332_411

def NamedBody332_413 : StackLang.HolProg 64 :=
.seq NamedBody332_409 NamedBody332_412

def NamedBody332_414 : StackLang.HolProg 64 :=
.seq NamedBody332_408 NamedBody332_413

def NamedBody332_415 : StackLang.HolProg 64 :=
.seq NamedBody332_407 NamedBody332_414

def NamedBody332_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody332_417 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody332_418 : StackLang.HolProg 64 :=
.seq NamedBody332_416 NamedBody332_417

def NamedBody332_419 : StackLang.HolProg 64 :=
.call (some (NamedBody332_415, 1, 332, 10)) (Sum.inl 331) (some (NamedBody332_418, 332, 11))

def NamedBody332_420 : StackLang.HolProg 64 :=
.seq NamedBody332_406 NamedBody332_419

def NamedBody332_421 : StackLang.HolProg 64 :=
.seq NamedBody332_405 NamedBody332_420

def NamedBody332_422 : StackLang.HolProg 64 :=
.seq NamedBody332_404 NamedBody332_421

def NamedBody332_423 : StackLang.HolProg 64 :=
.seq NamedBody332_375 NamedBody332_422

def NamedBody332_424 : StackLang.HolProg 64 :=
.seq NamedBody332_372 NamedBody332_423

def NamedBody332_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody332_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody332_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 945#64)

def NamedBody332_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody332_430 : StackLang.HolProg 64 :=
.seq NamedBody332_428 NamedBody332_429

def NamedBody332_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody332_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody332_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody332_434 : StackLang.HolProg 64 :=
.seq NamedBody332_432 NamedBody332_433

def NamedBody332_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_436 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody332_434 NamedBody332_435

def NamedBody332_437 : StackLang.HolProg 64 :=
.seq NamedBody332_431 NamedBody332_436

def NamedBody332_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody332_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody332_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 13

def NamedBody332_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody332_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody332_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody332_447 : StackLang.HolProg 64 :=
.seq NamedBody332_445 NamedBody332_446

def NamedBody332_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody332_449 : StackLang.HolProg 64 :=
.seq NamedBody332_447 NamedBody332_448

def NamedBody332_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_451 : StackLang.HolProg 64 :=
.seq NamedBody332_449 NamedBody332_450

def NamedBody332_452 : StackLang.HolProg 64 :=
.seq NamedBody332_444 NamedBody332_451

def NamedBody332_453 : StackLang.HolProg 64 :=
.seq NamedBody332_443 NamedBody332_452

def NamedBody332_454 : StackLang.HolProg 64 :=
.seq NamedBody332_442 NamedBody332_453

def NamedBody332_455 : StackLang.HolProg 64 :=
.seq NamedBody332_441 NamedBody332_454

def NamedBody332_456 : StackLang.HolProg 64 :=
.seq NamedBody332_440 NamedBody332_455

def NamedBody332_457 : StackLang.HolProg 64 :=
.seq NamedBody332_439 NamedBody332_456

def NamedBody332_458 : StackLang.HolProg 64 :=
.seq NamedBody332_438 NamedBody332_457

def NamedBody332_459 : StackLang.HolProg 64 :=
.seq NamedBody332_437 NamedBody332_458

def NamedBody332_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody332_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody332_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody332_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_467 : StackLang.HolProg 64 :=
.seq NamedBody332_465 NamedBody332_466

def NamedBody332_468 : StackLang.HolProg 64 :=
.seq NamedBody332_464 NamedBody332_467

def NamedBody332_469 : StackLang.HolProg 64 :=
.seq NamedBody332_463 NamedBody332_468

def NamedBody332_470 : StackLang.HolProg 64 :=
.seq NamedBody332_462 NamedBody332_469

def NamedBody332_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody332_472 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody332_473 : StackLang.HolProg 64 :=
.seq NamedBody332_471 NamedBody332_472

def NamedBody332_474 : StackLang.HolProg 64 :=
.call (some (NamedBody332_470, 1, 332, 12)) (Sum.inl 70) (some (NamedBody332_473, 332, 13))

def NamedBody332_475 : StackLang.HolProg 64 :=
.seq NamedBody332_461 NamedBody332_474

def NamedBody332_476 : StackLang.HolProg 64 :=
.seq NamedBody332_460 NamedBody332_475

def NamedBody332_477 : StackLang.HolProg 64 :=
.seq NamedBody332_459 NamedBody332_476

def NamedBody332_478 : StackLang.HolProg 64 :=
.seq NamedBody332_430 NamedBody332_477

def NamedBody332_479 : StackLang.HolProg 64 :=
.seq NamedBody332_427 NamedBody332_478

def NamedBody332_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody332_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody332_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody332_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody332_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody332_485 : StackLang.HolProg 64 :=
.seq NamedBody332_483 NamedBody332_484

def NamedBody332_486 : StackLang.HolProg 64 :=
.seq NamedBody332_482 NamedBody332_485

def NamedBody332_487 : StackLang.HolProg 64 :=
.seq NamedBody332_481 NamedBody332_486

def NamedBody332_488 : StackLang.HolProg 64 :=
.seq NamedBody332_480 NamedBody332_487

def NamedBody332_489 : StackLang.HolProg 64 :=
.seq NamedBody332_479 NamedBody332_488

def NamedBody332_490 : StackLang.HolProg 64 :=
.seq NamedBody332_426 NamedBody332_489

def NamedBody332_491 : StackLang.HolProg 64 :=
.seq NamedBody332_425 NamedBody332_490

def NamedBody332_492 : StackLang.HolProg 64 :=
.seq NamedBody332_424 NamedBody332_491

def NamedBody332_493 : StackLang.HolProg 64 :=
.seq NamedBody332_371 NamedBody332_492

def NamedBody332_494 : StackLang.HolProg 64 :=
.seq NamedBody332_360 NamedBody332_493

def NamedBody332_495 : StackLang.HolProg 64 :=
.seq NamedBody332_359 NamedBody332_494

def NamedBody332_496 : StackLang.HolProg 64 :=
.seq NamedBody332_129 NamedBody332_495

def NamedBody332_497 : StackLang.HolProg 64 :=
.seq NamedBody332_128 NamedBody332_496

def NamedBody332_498 : StackLang.HolProg 64 :=
.seq NamedBody332_127 NamedBody332_497

def NamedBody332_499 : StackLang.HolProg 64 :=
.seq NamedBody332_126 NamedBody332_498

def NamedBody332_500 : StackLang.HolProg 64 :=
.seq NamedBody332_125 NamedBody332_499

def NamedBody332_501 : StackLang.HolProg 64 :=
.seq NamedBody332_70 NamedBody332_500

def NamedBody332_502 : StackLang.HolProg 64 :=
.seq NamedBody332_69 NamedBody332_501

def NamedBody332_503 : StackLang.HolProg 64 :=
.seq NamedBody332_68 NamedBody332_502

def NamedBody332_504 : StackLang.HolProg 64 :=
.seq NamedBody332_67 NamedBody332_503

def NamedBody332_505 : StackLang.HolProg 64 :=
.seq NamedBody332_66 NamedBody332_504

def NamedBody332_506 : StackLang.HolProg 64 :=
.seq NamedBody332_13 NamedBody332_505

def NamedBody332_507 : StackLang.HolProg 64 :=
.seq NamedBody332_6 NamedBody332_506

def Named332 : Nat × StackLang.HolProg 64 := (332, NamedBody332_507)
theorem Named332_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed332 = Named332 := by
  kernel_rfl
#print axioms Named332_eq
end InitECandidate.Proofs.BackendStages
