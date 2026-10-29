import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed133
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody133_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody133_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody133_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody133_3 : StackLang.HolProg 64 :=
.seq NamedBody133_1 NamedBody133_2

def NamedBody133_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody133_3 NamedBody133_4

def NamedBody133_6 : StackLang.HolProg 64 :=
.seq NamedBody133_0 NamedBody133_5

def NamedBody133_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 29 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody133_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 28 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody133_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody133_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody133_11 : StackLang.HolProg 64 :=
.seq NamedBody133_9 NamedBody133_10

def NamedBody133_12 : StackLang.HolProg 64 :=
.seq NamedBody133_8 NamedBody133_11

def NamedBody133_13 : StackLang.HolProg 64 :=
.seq NamedBody133_7 NamedBody133_12

def NamedBody133_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody133_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody133_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody133_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody133_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody133_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody133_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody133_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody133_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody133_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody133_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody133_28 : StackLang.HolProg 64 :=
.seq NamedBody133_26 NamedBody133_27

def NamedBody133_29 : StackLang.HolProg 64 :=
.seq NamedBody133_25 NamedBody133_28

def NamedBody133_30 : StackLang.HolProg 64 :=
.seq NamedBody133_24 NamedBody133_29

def NamedBody133_31 : StackLang.HolProg 64 :=
.seq NamedBody133_23 NamedBody133_30

def NamedBody133_32 : StackLang.HolProg 64 :=
.seq NamedBody133_22 NamedBody133_31

def NamedBody133_33 : StackLang.HolProg 64 :=
.seq NamedBody133_21 NamedBody133_32

def NamedBody133_34 : StackLang.HolProg 64 :=
.seq NamedBody133_20 NamedBody133_33

def NamedBody133_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody133_34 NamedBody133_35

def NamedBody133_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody133_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody133_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 29
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 29)))

def NamedBody133_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 28
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody133_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody133_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody133_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody133_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody133_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody133_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody133_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody133_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody133_49 : StackLang.HolProg 64 :=
.seq NamedBody133_47 NamedBody133_48

def NamedBody133_50 : StackLang.HolProg 64 :=
.seq NamedBody133_46 NamedBody133_49

def NamedBody133_51 : StackLang.HolProg 64 :=
.seq NamedBody133_45 NamedBody133_50

def NamedBody133_52 : StackLang.HolProg 64 :=
.seq NamedBody133_44 NamedBody133_51

def NamedBody133_53 : StackLang.HolProg 64 :=
.seq NamedBody133_43 NamedBody133_52

def NamedBody133_54 : StackLang.HolProg 64 :=
.seq NamedBody133_42 NamedBody133_53

def NamedBody133_55 : StackLang.HolProg 64 :=
.seq NamedBody133_41 NamedBody133_54

def NamedBody133_56 : StackLang.HolProg 64 :=
.seq NamedBody133_40 NamedBody133_55

def NamedBody133_57 : StackLang.HolProg 64 :=
.seq NamedBody133_39 NamedBody133_56

def NamedBody133_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 84#64)

def NamedBody133_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody133_61 : StackLang.HolProg 64 :=
.seq NamedBody133_59 NamedBody133_60

def NamedBody133_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody133_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody133_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody133_65 : StackLang.HolProg 64 :=
.seq NamedBody133_63 NamedBody133_64

def NamedBody133_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_67 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody133_65 NamedBody133_66

def NamedBody133_68 : StackLang.HolProg 64 :=
.seq NamedBody133_62 NamedBody133_67

def NamedBody133_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody133_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody133_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 133 3

def NamedBody133_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody133_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody133_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody133_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody133_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody133_78 : StackLang.HolProg 64 :=
.seq NamedBody133_76 NamedBody133_77

def NamedBody133_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody133_80 : StackLang.HolProg 64 :=
.seq NamedBody133_78 NamedBody133_79

def NamedBody133_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody133_82 : StackLang.HolProg 64 :=
.seq NamedBody133_80 NamedBody133_81

def NamedBody133_83 : StackLang.HolProg 64 :=
.seq NamedBody133_75 NamedBody133_82

def NamedBody133_84 : StackLang.HolProg 64 :=
.seq NamedBody133_74 NamedBody133_83

def NamedBody133_85 : StackLang.HolProg 64 :=
.seq NamedBody133_73 NamedBody133_84

def NamedBody133_86 : StackLang.HolProg 64 :=
.seq NamedBody133_72 NamedBody133_85

def NamedBody133_87 : StackLang.HolProg 64 :=
.seq NamedBody133_71 NamedBody133_86

def NamedBody133_88 : StackLang.HolProg 64 :=
.seq NamedBody133_70 NamedBody133_87

def NamedBody133_89 : StackLang.HolProg 64 :=
.seq NamedBody133_69 NamedBody133_88

def NamedBody133_90 : StackLang.HolProg 64 :=
.seq NamedBody133_68 NamedBody133_89

def NamedBody133_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody133_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody133_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody133_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody133_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody133_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody133_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody133_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody133_102 : StackLang.HolProg 64 :=
.seq NamedBody133_100 NamedBody133_101

def NamedBody133_103 : StackLang.HolProg 64 :=
.seq NamedBody133_99 NamedBody133_102

def NamedBody133_104 : StackLang.HolProg 64 :=
.seq NamedBody133_98 NamedBody133_103

def NamedBody133_105 : StackLang.HolProg 64 :=
.seq NamedBody133_97 NamedBody133_104

def NamedBody133_106 : StackLang.HolProg 64 :=
.seq NamedBody133_96 NamedBody133_105

def NamedBody133_107 : StackLang.HolProg 64 :=
.seq NamedBody133_95 NamedBody133_106

def NamedBody133_108 : StackLang.HolProg 64 :=
.seq NamedBody133_94 NamedBody133_107

def NamedBody133_109 : StackLang.HolProg 64 :=
.seq NamedBody133_93 NamedBody133_108

def NamedBody133_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody133_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody133_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody133_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody133_114 : StackLang.HolProg 64 :=
.seq NamedBody133_112 NamedBody133_113

def NamedBody133_115 : StackLang.HolProg 64 :=
.seq NamedBody133_111 NamedBody133_114

def NamedBody133_116 : StackLang.HolProg 64 :=
.seq NamedBody133_110 NamedBody133_115

def NamedBody133_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody133_118 : StackLang.HolProg 64 :=
.seq NamedBody133_116 NamedBody133_117

def NamedBody133_119 : StackLang.HolProg 64 :=
.call (some (NamedBody133_109, 1, 133, 2)) (Sum.inl 132) (some (NamedBody133_118, 133, 3))

def NamedBody133_120 : StackLang.HolProg 64 :=
.seq NamedBody133_92 NamedBody133_119

def NamedBody133_121 : StackLang.HolProg 64 :=
.seq NamedBody133_91 NamedBody133_120

def NamedBody133_122 : StackLang.HolProg 64 :=
.seq NamedBody133_90 NamedBody133_121

def NamedBody133_123 : StackLang.HolProg 64 :=
.seq NamedBody133_61 NamedBody133_122

def NamedBody133_124 : StackLang.HolProg 64 :=
.seq NamedBody133_58 NamedBody133_123

def NamedBody133_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody133_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody133_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody133_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody133_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody133_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody133_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody133_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody133_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody133_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody133_135 : StackLang.HolProg 64 :=
.seq NamedBody133_133 NamedBody133_134

def NamedBody133_136 : StackLang.HolProg 64 :=
.seq NamedBody133_132 NamedBody133_135

def NamedBody133_137 : StackLang.HolProg 64 :=
.seq NamedBody133_131 NamedBody133_136

def NamedBody133_138 : StackLang.HolProg 64 :=
.seq NamedBody133_130 NamedBody133_137

def NamedBody133_139 : StackLang.HolProg 64 :=
.seq NamedBody133_129 NamedBody133_138

def NamedBody133_140 : StackLang.HolProg 64 :=
.seq NamedBody133_128 NamedBody133_139

def NamedBody133_141 : StackLang.HolProg 64 :=
.seq NamedBody133_127 NamedBody133_140

def NamedBody133_142 : StackLang.HolProg 64 :=
.seq NamedBody133_126 NamedBody133_141

def NamedBody133_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 85#64)

def NamedBody133_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody133_146 : StackLang.HolProg 64 :=
.seq NamedBody133_144 NamedBody133_145

def NamedBody133_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody133_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody133_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody133_150 : StackLang.HolProg 64 :=
.seq NamedBody133_148 NamedBody133_149

def NamedBody133_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody133_150 NamedBody133_151

def NamedBody133_153 : StackLang.HolProg 64 :=
.seq NamedBody133_147 NamedBody133_152

def NamedBody133_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody133_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody133_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 133 5

def NamedBody133_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody133_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody133_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody133_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody133_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody133_163 : StackLang.HolProg 64 :=
.seq NamedBody133_161 NamedBody133_162

def NamedBody133_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody133_165 : StackLang.HolProg 64 :=
.seq NamedBody133_163 NamedBody133_164

def NamedBody133_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody133_167 : StackLang.HolProg 64 :=
.seq NamedBody133_165 NamedBody133_166

def NamedBody133_168 : StackLang.HolProg 64 :=
.seq NamedBody133_160 NamedBody133_167

def NamedBody133_169 : StackLang.HolProg 64 :=
.seq NamedBody133_159 NamedBody133_168

def NamedBody133_170 : StackLang.HolProg 64 :=
.seq NamedBody133_158 NamedBody133_169

def NamedBody133_171 : StackLang.HolProg 64 :=
.seq NamedBody133_157 NamedBody133_170

def NamedBody133_172 : StackLang.HolProg 64 :=
.seq NamedBody133_156 NamedBody133_171

def NamedBody133_173 : StackLang.HolProg 64 :=
.seq NamedBody133_155 NamedBody133_172

def NamedBody133_174 : StackLang.HolProg 64 :=
.seq NamedBody133_154 NamedBody133_173

def NamedBody133_175 : StackLang.HolProg 64 :=
.seq NamedBody133_153 NamedBody133_174

def NamedBody133_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody133_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody133_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody133_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody133_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody133_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody133_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody133_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody133_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody133_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody133_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody133_190 : StackLang.HolProg 64 :=
.seq NamedBody133_188 NamedBody133_189

def NamedBody133_191 : StackLang.HolProg 64 :=
.seq NamedBody133_187 NamedBody133_190

def NamedBody133_192 : StackLang.HolProg 64 :=
.seq NamedBody133_186 NamedBody133_191

def NamedBody133_193 : StackLang.HolProg 64 :=
.seq NamedBody133_185 NamedBody133_192

def NamedBody133_194 : StackLang.HolProg 64 :=
.seq NamedBody133_184 NamedBody133_193

def NamedBody133_195 : StackLang.HolProg 64 :=
.seq NamedBody133_183 NamedBody133_194

def NamedBody133_196 : StackLang.HolProg 64 :=
.seq NamedBody133_182 NamedBody133_195

def NamedBody133_197 : StackLang.HolProg 64 :=
.seq NamedBody133_181 NamedBody133_196

def NamedBody133_198 : StackLang.HolProg 64 :=
.seq NamedBody133_180 NamedBody133_197

def NamedBody133_199 : StackLang.HolProg 64 :=
.seq NamedBody133_179 NamedBody133_198

def NamedBody133_200 : StackLang.HolProg 64 :=
.seq NamedBody133_178 NamedBody133_199

def NamedBody133_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody133_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody133_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody133_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody133_205 : StackLang.HolProg 64 :=
.seq NamedBody133_203 NamedBody133_204

def NamedBody133_206 : StackLang.HolProg 64 :=
.seq NamedBody133_202 NamedBody133_205

def NamedBody133_207 : StackLang.HolProg 64 :=
.seq NamedBody133_201 NamedBody133_206

def NamedBody133_208 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody133_209 : StackLang.HolProg 64 :=
.seq NamedBody133_207 NamedBody133_208

def NamedBody133_210 : StackLang.HolProg 64 :=
.call (some (NamedBody133_200, 1, 133, 4)) (Sum.inl 132) (some (NamedBody133_209, 133, 5))

def NamedBody133_211 : StackLang.HolProg 64 :=
.seq NamedBody133_177 NamedBody133_210

def NamedBody133_212 : StackLang.HolProg 64 :=
.seq NamedBody133_176 NamedBody133_211

def NamedBody133_213 : StackLang.HolProg 64 :=
.seq NamedBody133_175 NamedBody133_212

def NamedBody133_214 : StackLang.HolProg 64 :=
.seq NamedBody133_146 NamedBody133_213

def NamedBody133_215 : StackLang.HolProg 64 :=
.seq NamedBody133_143 NamedBody133_214

def NamedBody133_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody133_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody133_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 86#64)

def NamedBody133_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody133_221 : StackLang.HolProg 64 :=
.seq NamedBody133_219 NamedBody133_220

def NamedBody133_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody133_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody133_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody133_225 : StackLang.HolProg 64 :=
.seq NamedBody133_223 NamedBody133_224

def NamedBody133_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_227 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody133_225 NamedBody133_226

def NamedBody133_228 : StackLang.HolProg 64 :=
.seq NamedBody133_222 NamedBody133_227

def NamedBody133_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody133_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody133_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 133 7

def NamedBody133_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody133_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody133_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody133_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody133_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody133_238 : StackLang.HolProg 64 :=
.seq NamedBody133_236 NamedBody133_237

def NamedBody133_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody133_240 : StackLang.HolProg 64 :=
.seq NamedBody133_238 NamedBody133_239

def NamedBody133_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody133_242 : StackLang.HolProg 64 :=
.seq NamedBody133_240 NamedBody133_241

def NamedBody133_243 : StackLang.HolProg 64 :=
.seq NamedBody133_235 NamedBody133_242

def NamedBody133_244 : StackLang.HolProg 64 :=
.seq NamedBody133_234 NamedBody133_243

def NamedBody133_245 : StackLang.HolProg 64 :=
.seq NamedBody133_233 NamedBody133_244

def NamedBody133_246 : StackLang.HolProg 64 :=
.seq NamedBody133_232 NamedBody133_245

def NamedBody133_247 : StackLang.HolProg 64 :=
.seq NamedBody133_231 NamedBody133_246

def NamedBody133_248 : StackLang.HolProg 64 :=
.seq NamedBody133_230 NamedBody133_247

def NamedBody133_249 : StackLang.HolProg 64 :=
.seq NamedBody133_229 NamedBody133_248

def NamedBody133_250 : StackLang.HolProg 64 :=
.seq NamedBody133_228 NamedBody133_249

def NamedBody133_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody133_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody133_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody133_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody133_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody133_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody133_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody133_261 : StackLang.HolProg 64 :=
.seq NamedBody133_259 NamedBody133_260

def NamedBody133_262 : StackLang.HolProg 64 :=
.seq NamedBody133_258 NamedBody133_261

def NamedBody133_263 : StackLang.HolProg 64 :=
.seq NamedBody133_257 NamedBody133_262

def NamedBody133_264 : StackLang.HolProg 64 :=
.seq NamedBody133_256 NamedBody133_263

def NamedBody133_265 : StackLang.HolProg 64 :=
.seq NamedBody133_255 NamedBody133_264

def NamedBody133_266 : StackLang.HolProg 64 :=
.seq NamedBody133_254 NamedBody133_265

def NamedBody133_267 : StackLang.HolProg 64 :=
.seq NamedBody133_253 NamedBody133_266

def NamedBody133_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody133_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody133_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody133_271 : StackLang.HolProg 64 :=
.seq NamedBody133_269 NamedBody133_270

def NamedBody133_272 : StackLang.HolProg 64 :=
.seq NamedBody133_268 NamedBody133_271

def NamedBody133_273 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody133_274 : StackLang.HolProg 64 :=
.seq NamedBody133_272 NamedBody133_273

def NamedBody133_275 : StackLang.HolProg 64 :=
.call (some (NamedBody133_267, 1, 133, 6)) (Sum.inl 130) (some (NamedBody133_274, 133, 7))

def NamedBody133_276 : StackLang.HolProg 64 :=
.seq NamedBody133_252 NamedBody133_275

def NamedBody133_277 : StackLang.HolProg 64 :=
.seq NamedBody133_251 NamedBody133_276

def NamedBody133_278 : StackLang.HolProg 64 :=
.seq NamedBody133_250 NamedBody133_277

def NamedBody133_279 : StackLang.HolProg 64 :=
.seq NamedBody133_221 NamedBody133_278

def NamedBody133_280 : StackLang.HolProg 64 :=
.seq NamedBody133_218 NamedBody133_279

def NamedBody133_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody133_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody133_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody133_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def NamedBody133_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody133_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody133_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody133_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 118

def NamedBody133_291 : StackLang.HolProg 64 :=
.seq NamedBody133_289 NamedBody133_290

def NamedBody133_292 : StackLang.HolProg 64 :=
.seq NamedBody133_288 NamedBody133_291

def NamedBody133_293 : StackLang.HolProg 64 :=
.seq NamedBody133_287 NamedBody133_292

def NamedBody133_294 : StackLang.HolProg 64 :=
.seq NamedBody133_286 NamedBody133_293

def NamedBody133_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody133_296 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody133_294 NamedBody133_295

def NamedBody133_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody133_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody133_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody133_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody133_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody133_302 : StackLang.HolProg 64 :=
.seq NamedBody133_300 NamedBody133_301

def NamedBody133_303 : StackLang.HolProg 64 :=
.seq NamedBody133_299 NamedBody133_302

def NamedBody133_304 : StackLang.HolProg 64 :=
.seq NamedBody133_298 NamedBody133_303

def NamedBody133_305 : StackLang.HolProg 64 :=
.seq NamedBody133_297 NamedBody133_304

def NamedBody133_306 : StackLang.HolProg 64 :=
.seq NamedBody133_296 NamedBody133_305

def NamedBody133_307 : StackLang.HolProg 64 :=
.seq NamedBody133_285 NamedBody133_306

def NamedBody133_308 : StackLang.HolProg 64 :=
.seq NamedBody133_284 NamedBody133_307

def NamedBody133_309 : StackLang.HolProg 64 :=
.seq NamedBody133_283 NamedBody133_308

def NamedBody133_310 : StackLang.HolProg 64 :=
.seq NamedBody133_282 NamedBody133_309

def NamedBody133_311 : StackLang.HolProg 64 :=
.seq NamedBody133_281 NamedBody133_310

def NamedBody133_312 : StackLang.HolProg 64 :=
.seq NamedBody133_280 NamedBody133_311

def NamedBody133_313 : StackLang.HolProg 64 :=
.seq NamedBody133_217 NamedBody133_312

def NamedBody133_314 : StackLang.HolProg 64 :=
.seq NamedBody133_216 NamedBody133_313

def NamedBody133_315 : StackLang.HolProg 64 :=
.seq NamedBody133_215 NamedBody133_314

def NamedBody133_316 : StackLang.HolProg 64 :=
.seq NamedBody133_142 NamedBody133_315

def NamedBody133_317 : StackLang.HolProg 64 :=
.seq NamedBody133_125 NamedBody133_316

def NamedBody133_318 : StackLang.HolProg 64 :=
.seq NamedBody133_124 NamedBody133_317

def NamedBody133_319 : StackLang.HolProg 64 :=
.seq NamedBody133_57 NamedBody133_318

def NamedBody133_320 : StackLang.HolProg 64 :=
.seq NamedBody133_38 NamedBody133_319

def NamedBody133_321 : StackLang.HolProg 64 :=
.seq NamedBody133_37 NamedBody133_320

def NamedBody133_322 : StackLang.HolProg 64 :=
.seq NamedBody133_36 NamedBody133_321

def NamedBody133_323 : StackLang.HolProg 64 :=
.seq NamedBody133_19 NamedBody133_322

def NamedBody133_324 : StackLang.HolProg 64 :=
.seq NamedBody133_18 NamedBody133_323

def NamedBody133_325 : StackLang.HolProg 64 :=
.seq NamedBody133_17 NamedBody133_324

def NamedBody133_326 : StackLang.HolProg 64 :=
.seq NamedBody133_16 NamedBody133_325

def NamedBody133_327 : StackLang.HolProg 64 :=
.seq NamedBody133_15 NamedBody133_326

def NamedBody133_328 : StackLang.HolProg 64 :=
.seq NamedBody133_14 NamedBody133_327

def NamedBody133_329 : StackLang.HolProg 64 :=
.seq NamedBody133_13 NamedBody133_328

def NamedBody133_330 : StackLang.HolProg 64 :=
.seq NamedBody133_6 NamedBody133_329

def Named133 : Nat × StackLang.HolProg 64 := (133, NamedBody133_330)
theorem Named133_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed133 = Named133 := by
  kernel_rfl
#print axioms Named133_eq
end InitECandidate.Proofs.BackendStages
