import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed247
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody247_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody247_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody247_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody247_3 : StackLang.HolProg 64 :=
.seq NamedBody247_1 NamedBody247_2

def NamedBody247_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody247_3 NamedBody247_4

def NamedBody247_6 : StackLang.HolProg 64 :=
.seq NamedBody247_0 NamedBody247_5

def NamedBody247_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody247_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody247_9 : StackLang.HolProg 64 :=
.seq NamedBody247_7 NamedBody247_8

def NamedBody247_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 483#64)

def NamedBody247_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody247_13 : StackLang.HolProg 64 :=
.seq NamedBody247_11 NamedBody247_12

def NamedBody247_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody247_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody247_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody247_17 : StackLang.HolProg 64 :=
.seq NamedBody247_15 NamedBody247_16

def NamedBody247_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody247_17 NamedBody247_18

def NamedBody247_20 : StackLang.HolProg 64 :=
.seq NamedBody247_14 NamedBody247_19

def NamedBody247_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody247_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody247_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 3

def NamedBody247_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody247_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody247_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody247_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody247_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody247_30 : StackLang.HolProg 64 :=
.seq NamedBody247_28 NamedBody247_29

def NamedBody247_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody247_32 : StackLang.HolProg 64 :=
.seq NamedBody247_30 NamedBody247_31

def NamedBody247_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody247_34 : StackLang.HolProg 64 :=
.seq NamedBody247_32 NamedBody247_33

def NamedBody247_35 : StackLang.HolProg 64 :=
.seq NamedBody247_27 NamedBody247_34

def NamedBody247_36 : StackLang.HolProg 64 :=
.seq NamedBody247_26 NamedBody247_35

def NamedBody247_37 : StackLang.HolProg 64 :=
.seq NamedBody247_25 NamedBody247_36

def NamedBody247_38 : StackLang.HolProg 64 :=
.seq NamedBody247_24 NamedBody247_37

def NamedBody247_39 : StackLang.HolProg 64 :=
.seq NamedBody247_23 NamedBody247_38

def NamedBody247_40 : StackLang.HolProg 64 :=
.seq NamedBody247_22 NamedBody247_39

def NamedBody247_41 : StackLang.HolProg 64 :=
.seq NamedBody247_21 NamedBody247_40

def NamedBody247_42 : StackLang.HolProg 64 :=
.seq NamedBody247_20 NamedBody247_41

def NamedBody247_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody247_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody247_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody247_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody247_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody247_51 : StackLang.HolProg 64 :=
.seq NamedBody247_49 NamedBody247_50

def NamedBody247_52 : StackLang.HolProg 64 :=
.seq NamedBody247_48 NamedBody247_51

def NamedBody247_53 : StackLang.HolProg 64 :=
.seq NamedBody247_47 NamedBody247_52

def NamedBody247_54 : StackLang.HolProg 64 :=
.seq NamedBody247_46 NamedBody247_53

def NamedBody247_55 : StackLang.HolProg 64 :=
.seq NamedBody247_45 NamedBody247_54

def NamedBody247_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody247_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody247_58 : StackLang.HolProg 64 :=
.seq NamedBody247_56 NamedBody247_57

def NamedBody247_59 : StackLang.HolProg 64 :=
.call (some (NamedBody247_55, 1, 247, 2)) (Sum.inl 246) (some (NamedBody247_58, 247, 3))

def NamedBody247_60 : StackLang.HolProg 64 :=
.seq NamedBody247_44 NamedBody247_59

def NamedBody247_61 : StackLang.HolProg 64 :=
.seq NamedBody247_43 NamedBody247_60

def NamedBody247_62 : StackLang.HolProg 64 :=
.seq NamedBody247_42 NamedBody247_61

def NamedBody247_63 : StackLang.HolProg 64 :=
.seq NamedBody247_13 NamedBody247_62

def NamedBody247_64 : StackLang.HolProg 64 :=
.seq NamedBody247_10 NamedBody247_63

def NamedBody247_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody247_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody247_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody247_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody247_70 : StackLang.HolProg 64 :=
.seq NamedBody247_68 NamedBody247_69

def NamedBody247_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 484#64)

def NamedBody247_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody247_74 : StackLang.HolProg 64 :=
.seq NamedBody247_72 NamedBody247_73

def NamedBody247_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody247_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody247_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody247_78 : StackLang.HolProg 64 :=
.seq NamedBody247_76 NamedBody247_77

def NamedBody247_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody247_78 NamedBody247_79

def NamedBody247_81 : StackLang.HolProg 64 :=
.seq NamedBody247_75 NamedBody247_80

def NamedBody247_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody247_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody247_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 5

def NamedBody247_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody247_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody247_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody247_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody247_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody247_91 : StackLang.HolProg 64 :=
.seq NamedBody247_89 NamedBody247_90

def NamedBody247_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody247_93 : StackLang.HolProg 64 :=
.seq NamedBody247_91 NamedBody247_92

def NamedBody247_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody247_95 : StackLang.HolProg 64 :=
.seq NamedBody247_93 NamedBody247_94

def NamedBody247_96 : StackLang.HolProg 64 :=
.seq NamedBody247_88 NamedBody247_95

def NamedBody247_97 : StackLang.HolProg 64 :=
.seq NamedBody247_87 NamedBody247_96

def NamedBody247_98 : StackLang.HolProg 64 :=
.seq NamedBody247_86 NamedBody247_97

def NamedBody247_99 : StackLang.HolProg 64 :=
.seq NamedBody247_85 NamedBody247_98

def NamedBody247_100 : StackLang.HolProg 64 :=
.seq NamedBody247_84 NamedBody247_99

def NamedBody247_101 : StackLang.HolProg 64 :=
.seq NamedBody247_83 NamedBody247_100

def NamedBody247_102 : StackLang.HolProg 64 :=
.seq NamedBody247_82 NamedBody247_101

def NamedBody247_103 : StackLang.HolProg 64 :=
.seq NamedBody247_81 NamedBody247_102

def NamedBody247_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody247_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody247_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody247_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody247_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody247_112 : StackLang.HolProg 64 :=
.seq NamedBody247_110 NamedBody247_111

def NamedBody247_113 : StackLang.HolProg 64 :=
.seq NamedBody247_109 NamedBody247_112

def NamedBody247_114 : StackLang.HolProg 64 :=
.seq NamedBody247_108 NamedBody247_113

def NamedBody247_115 : StackLang.HolProg 64 :=
.seq NamedBody247_107 NamedBody247_114

def NamedBody247_116 : StackLang.HolProg 64 :=
.seq NamedBody247_106 NamedBody247_115

def NamedBody247_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody247_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody247_119 : StackLang.HolProg 64 :=
.seq NamedBody247_117 NamedBody247_118

def NamedBody247_120 : StackLang.HolProg 64 :=
.call (some (NamedBody247_116, 1, 247, 4)) (Sum.inl 246) (some (NamedBody247_119, 247, 5))

def NamedBody247_121 : StackLang.HolProg 64 :=
.seq NamedBody247_105 NamedBody247_120

def NamedBody247_122 : StackLang.HolProg 64 :=
.seq NamedBody247_104 NamedBody247_121

def NamedBody247_123 : StackLang.HolProg 64 :=
.seq NamedBody247_103 NamedBody247_122

def NamedBody247_124 : StackLang.HolProg 64 :=
.seq NamedBody247_74 NamedBody247_123

def NamedBody247_125 : StackLang.HolProg 64 :=
.seq NamedBody247_71 NamedBody247_124

def NamedBody247_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody247_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody247_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody247_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody247_131 : StackLang.HolProg 64 :=
.seq NamedBody247_129 NamedBody247_130

def NamedBody247_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 485#64)

def NamedBody247_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody247_135 : StackLang.HolProg 64 :=
.seq NamedBody247_133 NamedBody247_134

def NamedBody247_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody247_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody247_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody247_139 : StackLang.HolProg 64 :=
.seq NamedBody247_137 NamedBody247_138

def NamedBody247_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_141 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody247_139 NamedBody247_140

def NamedBody247_142 : StackLang.HolProg 64 :=
.seq NamedBody247_136 NamedBody247_141

def NamedBody247_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody247_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody247_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 7

def NamedBody247_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody247_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody247_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody247_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody247_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody247_152 : StackLang.HolProg 64 :=
.seq NamedBody247_150 NamedBody247_151

def NamedBody247_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody247_154 : StackLang.HolProg 64 :=
.seq NamedBody247_152 NamedBody247_153

def NamedBody247_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody247_156 : StackLang.HolProg 64 :=
.seq NamedBody247_154 NamedBody247_155

def NamedBody247_157 : StackLang.HolProg 64 :=
.seq NamedBody247_149 NamedBody247_156

def NamedBody247_158 : StackLang.HolProg 64 :=
.seq NamedBody247_148 NamedBody247_157

def NamedBody247_159 : StackLang.HolProg 64 :=
.seq NamedBody247_147 NamedBody247_158

def NamedBody247_160 : StackLang.HolProg 64 :=
.seq NamedBody247_146 NamedBody247_159

def NamedBody247_161 : StackLang.HolProg 64 :=
.seq NamedBody247_145 NamedBody247_160

def NamedBody247_162 : StackLang.HolProg 64 :=
.seq NamedBody247_144 NamedBody247_161

def NamedBody247_163 : StackLang.HolProg 64 :=
.seq NamedBody247_143 NamedBody247_162

def NamedBody247_164 : StackLang.HolProg 64 :=
.seq NamedBody247_142 NamedBody247_163

def NamedBody247_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody247_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody247_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody247_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody247_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody247_173 : StackLang.HolProg 64 :=
.seq NamedBody247_171 NamedBody247_172

def NamedBody247_174 : StackLang.HolProg 64 :=
.seq NamedBody247_170 NamedBody247_173

def NamedBody247_175 : StackLang.HolProg 64 :=
.seq NamedBody247_169 NamedBody247_174

def NamedBody247_176 : StackLang.HolProg 64 :=
.seq NamedBody247_168 NamedBody247_175

def NamedBody247_177 : StackLang.HolProg 64 :=
.seq NamedBody247_167 NamedBody247_176

def NamedBody247_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody247_179 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody247_180 : StackLang.HolProg 64 :=
.seq NamedBody247_178 NamedBody247_179

def NamedBody247_181 : StackLang.HolProg 64 :=
.call (some (NamedBody247_177, 1, 247, 6)) (Sum.inl 246) (some (NamedBody247_180, 247, 7))

def NamedBody247_182 : StackLang.HolProg 64 :=
.seq NamedBody247_166 NamedBody247_181

def NamedBody247_183 : StackLang.HolProg 64 :=
.seq NamedBody247_165 NamedBody247_182

def NamedBody247_184 : StackLang.HolProg 64 :=
.seq NamedBody247_164 NamedBody247_183

def NamedBody247_185 : StackLang.HolProg 64 :=
.seq NamedBody247_135 NamedBody247_184

def NamedBody247_186 : StackLang.HolProg 64 :=
.seq NamedBody247_132 NamedBody247_185

def NamedBody247_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody247_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody247_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody247_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 486#64)

def NamedBody247_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody247_194 : StackLang.HolProg 64 :=
.seq NamedBody247_192 NamedBody247_193

def NamedBody247_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody247_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody247_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody247_198 : StackLang.HolProg 64 :=
.seq NamedBody247_196 NamedBody247_197

def NamedBody247_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody247_198 NamedBody247_199

def NamedBody247_201 : StackLang.HolProg 64 :=
.seq NamedBody247_195 NamedBody247_200

def NamedBody247_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody247_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody247_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 9

def NamedBody247_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody247_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody247_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody247_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody247_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody247_211 : StackLang.HolProg 64 :=
.seq NamedBody247_209 NamedBody247_210

def NamedBody247_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody247_213 : StackLang.HolProg 64 :=
.seq NamedBody247_211 NamedBody247_212

def NamedBody247_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody247_215 : StackLang.HolProg 64 :=
.seq NamedBody247_213 NamedBody247_214

def NamedBody247_216 : StackLang.HolProg 64 :=
.seq NamedBody247_208 NamedBody247_215

def NamedBody247_217 : StackLang.HolProg 64 :=
.seq NamedBody247_207 NamedBody247_216

def NamedBody247_218 : StackLang.HolProg 64 :=
.seq NamedBody247_206 NamedBody247_217

def NamedBody247_219 : StackLang.HolProg 64 :=
.seq NamedBody247_205 NamedBody247_218

def NamedBody247_220 : StackLang.HolProg 64 :=
.seq NamedBody247_204 NamedBody247_219

def NamedBody247_221 : StackLang.HolProg 64 :=
.seq NamedBody247_203 NamedBody247_220

def NamedBody247_222 : StackLang.HolProg 64 :=
.seq NamedBody247_202 NamedBody247_221

def NamedBody247_223 : StackLang.HolProg 64 :=
.seq NamedBody247_201 NamedBody247_222

def NamedBody247_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody247_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody247_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody247_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody247_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody247_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody247_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody247_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody247_235 : StackLang.HolProg 64 :=
.seq NamedBody247_233 NamedBody247_234

def NamedBody247_236 : StackLang.HolProg 64 :=
.seq NamedBody247_232 NamedBody247_235

def NamedBody247_237 : StackLang.HolProg 64 :=
.seq NamedBody247_231 NamedBody247_236

def NamedBody247_238 : StackLang.HolProg 64 :=
.seq NamedBody247_230 NamedBody247_237

def NamedBody247_239 : StackLang.HolProg 64 :=
.seq NamedBody247_229 NamedBody247_238

def NamedBody247_240 : StackLang.HolProg 64 :=
.seq NamedBody247_228 NamedBody247_239

def NamedBody247_241 : StackLang.HolProg 64 :=
.seq NamedBody247_227 NamedBody247_240

def NamedBody247_242 : StackLang.HolProg 64 :=
.seq NamedBody247_226 NamedBody247_241

def NamedBody247_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody247_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody247_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody247_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody247_247 : StackLang.HolProg 64 :=
.seq NamedBody247_245 NamedBody247_246

def NamedBody247_248 : StackLang.HolProg 64 :=
.seq NamedBody247_244 NamedBody247_247

def NamedBody247_249 : StackLang.HolProg 64 :=
.seq NamedBody247_243 NamedBody247_248

def NamedBody247_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody247_251 : StackLang.HolProg 64 :=
.seq NamedBody247_249 NamedBody247_250

def NamedBody247_252 : StackLang.HolProg 64 :=
.call (some (NamedBody247_242, 1, 247, 8)) (Sum.inl 246) (some (NamedBody247_251, 247, 9))

def NamedBody247_253 : StackLang.HolProg 64 :=
.seq NamedBody247_225 NamedBody247_252

def NamedBody247_254 : StackLang.HolProg 64 :=
.seq NamedBody247_224 NamedBody247_253

def NamedBody247_255 : StackLang.HolProg 64 :=
.seq NamedBody247_223 NamedBody247_254

def NamedBody247_256 : StackLang.HolProg 64 :=
.seq NamedBody247_194 NamedBody247_255

def NamedBody247_257 : StackLang.HolProg 64 :=
.seq NamedBody247_191 NamedBody247_256

def NamedBody247_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody247_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody247_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody247_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody247_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody247_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody247_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody247_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody247_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody247_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody247_272 : StackLang.HolProg 64 :=
.seq NamedBody247_270 NamedBody247_271

def NamedBody247_273 : StackLang.HolProg 64 :=
.seq NamedBody247_269 NamedBody247_272

def NamedBody247_274 : StackLang.HolProg 64 :=
.seq NamedBody247_268 NamedBody247_273

def NamedBody247_275 : StackLang.HolProg 64 :=
.seq NamedBody247_267 NamedBody247_274

def NamedBody247_276 : StackLang.HolProg 64 :=
.seq NamedBody247_266 NamedBody247_275

def NamedBody247_277 : StackLang.HolProg 64 :=
.seq NamedBody247_265 NamedBody247_276

def NamedBody247_278 : StackLang.HolProg 64 :=
.seq NamedBody247_264 NamedBody247_277

def NamedBody247_279 : StackLang.HolProg 64 :=
.seq NamedBody247_263 NamedBody247_278

def NamedBody247_280 : StackLang.HolProg 64 :=
.seq NamedBody247_262 NamedBody247_279

def NamedBody247_281 : StackLang.HolProg 64 :=
.seq NamedBody247_261 NamedBody247_280

def NamedBody247_282 : StackLang.HolProg 64 :=
.seq NamedBody247_260 NamedBody247_281

def NamedBody247_283 : StackLang.HolProg 64 :=
.seq NamedBody247_259 NamedBody247_282

def NamedBody247_284 : StackLang.HolProg 64 :=
.seq NamedBody247_258 NamedBody247_283

def NamedBody247_285 : StackLang.HolProg 64 :=
.seq NamedBody247_257 NamedBody247_284

def NamedBody247_286 : StackLang.HolProg 64 :=
.seq NamedBody247_190 NamedBody247_285

def NamedBody247_287 : StackLang.HolProg 64 :=
.seq NamedBody247_189 NamedBody247_286

def NamedBody247_288 : StackLang.HolProg 64 :=
.seq NamedBody247_188 NamedBody247_287

def NamedBody247_289 : StackLang.HolProg 64 :=
.seq NamedBody247_187 NamedBody247_288

def NamedBody247_290 : StackLang.HolProg 64 :=
.seq NamedBody247_186 NamedBody247_289

def NamedBody247_291 : StackLang.HolProg 64 :=
.seq NamedBody247_131 NamedBody247_290

def NamedBody247_292 : StackLang.HolProg 64 :=
.seq NamedBody247_128 NamedBody247_291

def NamedBody247_293 : StackLang.HolProg 64 :=
.seq NamedBody247_127 NamedBody247_292

def NamedBody247_294 : StackLang.HolProg 64 :=
.seq NamedBody247_126 NamedBody247_293

def NamedBody247_295 : StackLang.HolProg 64 :=
.seq NamedBody247_125 NamedBody247_294

def NamedBody247_296 : StackLang.HolProg 64 :=
.seq NamedBody247_70 NamedBody247_295

def NamedBody247_297 : StackLang.HolProg 64 :=
.seq NamedBody247_67 NamedBody247_296

def NamedBody247_298 : StackLang.HolProg 64 :=
.seq NamedBody247_66 NamedBody247_297

def NamedBody247_299 : StackLang.HolProg 64 :=
.seq NamedBody247_65 NamedBody247_298

def NamedBody247_300 : StackLang.HolProg 64 :=
.seq NamedBody247_64 NamedBody247_299

def NamedBody247_301 : StackLang.HolProg 64 :=
.seq NamedBody247_9 NamedBody247_300

def NamedBody247_302 : StackLang.HolProg 64 :=
.seq NamedBody247_6 NamedBody247_301

def Named247 : Nat × StackLang.HolProg 64 := (247, NamedBody247_302)
theorem Named247_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed247 = Named247 := by
  kernel_rfl
#print axioms Named247_eq
end InitECandidate.Proofs.BackendStages
