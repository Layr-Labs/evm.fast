import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed303
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody303_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody303_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody303_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody303_3 : StackLang.HolProg 64 :=
.seq NamedBody303_1 NamedBody303_2

def NamedBody303_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody303_3 NamedBody303_4

def NamedBody303_6 : StackLang.HolProg 64 :=
.seq NamedBody303_0 NamedBody303_5

def NamedBody303_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody303_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody303_9 : StackLang.HolProg 64 :=
.seq NamedBody303_7 NamedBody303_8

def NamedBody303_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 833#64)

def NamedBody303_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody303_13 : StackLang.HolProg 64 :=
.seq NamedBody303_11 NamedBody303_12

def NamedBody303_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody303_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody303_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody303_17 : StackLang.HolProg 64 :=
.seq NamedBody303_15 NamedBody303_16

def NamedBody303_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody303_17 NamedBody303_18

def NamedBody303_20 : StackLang.HolProg 64 :=
.seq NamedBody303_14 NamedBody303_19

def NamedBody303_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody303_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody303_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 303 5

def NamedBody303_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody303_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody303_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody303_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody303_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody303_30 : StackLang.HolProg 64 :=
.seq NamedBody303_28 NamedBody303_29

def NamedBody303_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody303_32 : StackLang.HolProg 64 :=
.seq NamedBody303_30 NamedBody303_31

def NamedBody303_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody303_34 : StackLang.HolProg 64 :=
.seq NamedBody303_32 NamedBody303_33

def NamedBody303_35 : StackLang.HolProg 64 :=
.seq NamedBody303_27 NamedBody303_34

def NamedBody303_36 : StackLang.HolProg 64 :=
.seq NamedBody303_26 NamedBody303_35

def NamedBody303_37 : StackLang.HolProg 64 :=
.seq NamedBody303_25 NamedBody303_36

def NamedBody303_38 : StackLang.HolProg 64 :=
.seq NamedBody303_24 NamedBody303_37

def NamedBody303_39 : StackLang.HolProg 64 :=
.seq NamedBody303_23 NamedBody303_38

def NamedBody303_40 : StackLang.HolProg 64 :=
.seq NamedBody303_22 NamedBody303_39

def NamedBody303_41 : StackLang.HolProg 64 :=
.seq NamedBody303_21 NamedBody303_40

def NamedBody303_42 : StackLang.HolProg 64 :=
.seq NamedBody303_20 NamedBody303_41

def NamedBody303_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody303_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody303_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody303_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody303_50 : StackLang.HolProg 64 :=
.seq NamedBody303_48 NamedBody303_49

def NamedBody303_51 : StackLang.HolProg 64 :=
.seq NamedBody303_47 NamedBody303_50

def NamedBody303_52 : StackLang.HolProg 64 :=
.seq NamedBody303_46 NamedBody303_51

def NamedBody303_53 : StackLang.HolProg 64 :=
.seq NamedBody303_45 NamedBody303_52

def NamedBody303_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody303_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody303_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody303_57 : StackLang.HolProg 64 :=
.seq NamedBody303_55 NamedBody303_56

def NamedBody303_58 : StackLang.HolProg 64 :=
.seq NamedBody303_54 NamedBody303_57

def NamedBody303_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody303_61 : StackLang.HolProg 64 :=
.seq NamedBody303_59 NamedBody303_60

def NamedBody303_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody303_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody303_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody303_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody303_66 : StackLang.HolProg 64 :=
.seq NamedBody303_64 NamedBody303_65

def NamedBody303_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 834#64)

def NamedBody303_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody303_70 : StackLang.HolProg 64 :=
.seq NamedBody303_68 NamedBody303_69

def NamedBody303_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody303_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody303_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody303_74 : StackLang.HolProg 64 :=
.seq NamedBody303_72 NamedBody303_73

def NamedBody303_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody303_74 NamedBody303_75

def NamedBody303_77 : StackLang.HolProg 64 :=
.seq NamedBody303_71 NamedBody303_76

def NamedBody303_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody303_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody303_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 303 4

def NamedBody303_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody303_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody303_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody303_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody303_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody303_87 : StackLang.HolProg 64 :=
.seq NamedBody303_85 NamedBody303_86

def NamedBody303_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody303_89 : StackLang.HolProg 64 :=
.seq NamedBody303_87 NamedBody303_88

def NamedBody303_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody303_91 : StackLang.HolProg 64 :=
.seq NamedBody303_89 NamedBody303_90

def NamedBody303_92 : StackLang.HolProg 64 :=
.seq NamedBody303_84 NamedBody303_91

def NamedBody303_93 : StackLang.HolProg 64 :=
.seq NamedBody303_83 NamedBody303_92

def NamedBody303_94 : StackLang.HolProg 64 :=
.seq NamedBody303_82 NamedBody303_93

def NamedBody303_95 : StackLang.HolProg 64 :=
.seq NamedBody303_81 NamedBody303_94

def NamedBody303_96 : StackLang.HolProg 64 :=
.seq NamedBody303_80 NamedBody303_95

def NamedBody303_97 : StackLang.HolProg 64 :=
.seq NamedBody303_79 NamedBody303_96

def NamedBody303_98 : StackLang.HolProg 64 :=
.seq NamedBody303_78 NamedBody303_97

def NamedBody303_99 : StackLang.HolProg 64 :=
.seq NamedBody303_77 NamedBody303_98

def NamedBody303_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody303_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody303_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody303_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody303_107 : StackLang.HolProg 64 :=
.seq NamedBody303_105 NamedBody303_106

def NamedBody303_108 : StackLang.HolProg 64 :=
.seq NamedBody303_104 NamedBody303_107

def NamedBody303_109 : StackLang.HolProg 64 :=
.seq NamedBody303_103 NamedBody303_108

def NamedBody303_110 : StackLang.HolProg 64 :=
.seq NamedBody303_102 NamedBody303_109

def NamedBody303_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody303_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody303_113 : StackLang.HolProg 64 :=
.seq NamedBody303_111 NamedBody303_112

def NamedBody303_114 : StackLang.HolProg 64 :=
.call (some (NamedBody303_110, 1, 303, 3)) (Sum.inl 76) (some (NamedBody303_113, 303, 4))

def NamedBody303_115 : StackLang.HolProg 64 :=
.seq NamedBody303_101 NamedBody303_114

def NamedBody303_116 : StackLang.HolProg 64 :=
.seq NamedBody303_100 NamedBody303_115

def NamedBody303_117 : StackLang.HolProg 64 :=
.seq NamedBody303_99 NamedBody303_116

def NamedBody303_118 : StackLang.HolProg 64 :=
.seq NamedBody303_70 NamedBody303_117

def NamedBody303_119 : StackLang.HolProg 64 :=
.seq NamedBody303_67 NamedBody303_118

def NamedBody303_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody303_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody303_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 5#64)

def NamedBody303_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody303_126 : StackLang.HolProg 64 :=
.seq NamedBody303_124 NamedBody303_125

def NamedBody303_127 : StackLang.HolProg 64 :=
.seq NamedBody303_123 NamedBody303_126

def NamedBody303_128 : StackLang.HolProg 64 :=
.seq NamedBody303_122 NamedBody303_127

def NamedBody303_129 : StackLang.HolProg 64 :=
.seq NamedBody303_121 NamedBody303_128

def NamedBody303_130 : StackLang.HolProg 64 :=
.seq NamedBody303_120 NamedBody303_129

def NamedBody303_131 : StackLang.HolProg 64 :=
.seq NamedBody303_119 NamedBody303_130

def NamedBody303_132 : StackLang.HolProg 64 :=
.seq NamedBody303_66 NamedBody303_131

def NamedBody303_133 : StackLang.HolProg 64 :=
.seq NamedBody303_63 NamedBody303_132

def NamedBody303_134 : StackLang.HolProg 64 :=
.seq NamedBody303_62 NamedBody303_133

def NamedBody303_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64) NamedBody303_61 NamedBody303_134

def NamedBody303_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody303_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody303_139 : StackLang.HolProg 64 :=
.seq NamedBody303_137 NamedBody303_138

def NamedBody303_140 : StackLang.HolProg 64 :=
.seq NamedBody303_136 NamedBody303_139

def NamedBody303_141 : StackLang.HolProg 64 :=
.seq NamedBody303_135 NamedBody303_140

def NamedBody303_142 : StackLang.HolProg 64 :=
.seq NamedBody303_58 NamedBody303_141

def NamedBody303_143 : StackLang.HolProg 64 :=
.call (some (NamedBody303_53, 1, 303, 2)) (Sum.inl 302) (some (NamedBody303_142, 303, 5))

def NamedBody303_144 : StackLang.HolProg 64 :=
.seq NamedBody303_44 NamedBody303_143

def NamedBody303_145 : StackLang.HolProg 64 :=
.seq NamedBody303_43 NamedBody303_144

def NamedBody303_146 : StackLang.HolProg 64 :=
.seq NamedBody303_42 NamedBody303_145

def NamedBody303_147 : StackLang.HolProg 64 :=
.seq NamedBody303_13 NamedBody303_146

def NamedBody303_148 : StackLang.HolProg 64 :=
.seq NamedBody303_10 NamedBody303_147

def NamedBody303_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody303_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody303_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody303_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody303_153 : StackLang.HolProg 64 :=
.seq NamedBody303_151 NamedBody303_152

def NamedBody303_154 : StackLang.HolProg 64 :=
.seq NamedBody303_150 NamedBody303_153

def NamedBody303_155 : StackLang.HolProg 64 :=
.seq NamedBody303_149 NamedBody303_154

def NamedBody303_156 : StackLang.HolProg 64 :=
.seq NamedBody303_148 NamedBody303_155

def NamedBody303_157 : StackLang.HolProg 64 :=
.seq NamedBody303_9 NamedBody303_156

def NamedBody303_158 : StackLang.HolProg 64 :=
.seq NamedBody303_6 NamedBody303_157

def Named303 : Nat × StackLang.HolProg 64 := (303, NamedBody303_158)
theorem Named303_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed303 = Named303 := by
  kernel_rfl
#print axioms Named303_eq
end InitECandidate.Proofs.BackendStages
