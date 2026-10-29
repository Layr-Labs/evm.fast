import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed135
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody135_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody135_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody135_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody135_3 : StackLang.HolProg 64 :=
.seq NamedBody135_1 NamedBody135_2

def NamedBody135_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody135_3 NamedBody135_4

def NamedBody135_6 : StackLang.HolProg 64 :=
.seq NamedBody135_0 NamedBody135_5

def NamedBody135_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 16 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody135_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 15 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody135_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody135_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 30 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody135_11 : StackLang.HolProg 64 :=
.seq NamedBody135_9 NamedBody135_10

def NamedBody135_12 : StackLang.HolProg 64 :=
.seq NamedBody135_8 NamedBody135_11

def NamedBody135_13 : StackLang.HolProg 64 :=
.seq NamedBody135_7 NamedBody135_12

def NamedBody135_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 29
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody135_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody135_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody135_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody135_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody135_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody135_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody135_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody135_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody135_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody135_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody135_28 : StackLang.HolProg 64 :=
.seq NamedBody135_26 NamedBody135_27

def NamedBody135_29 : StackLang.HolProg 64 :=
.seq NamedBody135_25 NamedBody135_28

def NamedBody135_30 : StackLang.HolProg 64 :=
.seq NamedBody135_24 NamedBody135_29

def NamedBody135_31 : StackLang.HolProg 64 :=
.seq NamedBody135_23 NamedBody135_30

def NamedBody135_32 : StackLang.HolProg 64 :=
.seq NamedBody135_22 NamedBody135_31

def NamedBody135_33 : StackLang.HolProg 64 :=
.seq NamedBody135_21 NamedBody135_32

def NamedBody135_34 : StackLang.HolProg 64 :=
.seq NamedBody135_20 NamedBody135_33

def NamedBody135_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody135_34 NamedBody135_35

def NamedBody135_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody135_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody135_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 16
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 16)))

def NamedBody135_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 15
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 15)))

def NamedBody135_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14)))

def NamedBody135_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 30
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 30)))

def NamedBody135_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody135_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody135_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody135_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody135_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody135_48 : StackLang.HolProg 64 :=
.seq NamedBody135_46 NamedBody135_47

def NamedBody135_49 : StackLang.HolProg 64 :=
.seq NamedBody135_45 NamedBody135_48

def NamedBody135_50 : StackLang.HolProg 64 :=
.seq NamedBody135_44 NamedBody135_49

def NamedBody135_51 : StackLang.HolProg 64 :=
.seq NamedBody135_43 NamedBody135_50

def NamedBody135_52 : StackLang.HolProg 64 :=
.seq NamedBody135_42 NamedBody135_51

def NamedBody135_53 : StackLang.HolProg 64 :=
.seq NamedBody135_41 NamedBody135_52

def NamedBody135_54 : StackLang.HolProg 64 :=
.seq NamedBody135_40 NamedBody135_53

def NamedBody135_55 : StackLang.HolProg 64 :=
.seq NamedBody135_39 NamedBody135_54

def NamedBody135_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 90#64)

def NamedBody135_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody135_59 : StackLang.HolProg 64 :=
.seq NamedBody135_57 NamedBody135_58

def NamedBody135_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody135_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody135_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody135_63 : StackLang.HolProg 64 :=
.seq NamedBody135_61 NamedBody135_62

def NamedBody135_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_65 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody135_63 NamedBody135_64

def NamedBody135_66 : StackLang.HolProg 64 :=
.seq NamedBody135_60 NamedBody135_65

def NamedBody135_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody135_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody135_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 135 3

def NamedBody135_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody135_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody135_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody135_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody135_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody135_76 : StackLang.HolProg 64 :=
.seq NamedBody135_74 NamedBody135_75

def NamedBody135_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody135_78 : StackLang.HolProg 64 :=
.seq NamedBody135_76 NamedBody135_77

def NamedBody135_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody135_80 : StackLang.HolProg 64 :=
.seq NamedBody135_78 NamedBody135_79

def NamedBody135_81 : StackLang.HolProg 64 :=
.seq NamedBody135_73 NamedBody135_80

def NamedBody135_82 : StackLang.HolProg 64 :=
.seq NamedBody135_72 NamedBody135_81

def NamedBody135_83 : StackLang.HolProg 64 :=
.seq NamedBody135_71 NamedBody135_82

def NamedBody135_84 : StackLang.HolProg 64 :=
.seq NamedBody135_70 NamedBody135_83

def NamedBody135_85 : StackLang.HolProg 64 :=
.seq NamedBody135_69 NamedBody135_84

def NamedBody135_86 : StackLang.HolProg 64 :=
.seq NamedBody135_68 NamedBody135_85

def NamedBody135_87 : StackLang.HolProg 64 :=
.seq NamedBody135_67 NamedBody135_86

def NamedBody135_88 : StackLang.HolProg 64 :=
.seq NamedBody135_66 NamedBody135_87

def NamedBody135_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody135_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody135_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody135_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody135_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody135_97 : StackLang.HolProg 64 :=
.seq NamedBody135_95 NamedBody135_96

def NamedBody135_98 : StackLang.HolProg 64 :=
.seq NamedBody135_94 NamedBody135_97

def NamedBody135_99 : StackLang.HolProg 64 :=
.seq NamedBody135_93 NamedBody135_98

def NamedBody135_100 : StackLang.HolProg 64 :=
.seq NamedBody135_92 NamedBody135_99

def NamedBody135_101 : StackLang.HolProg 64 :=
.seq NamedBody135_91 NamedBody135_100

def NamedBody135_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody135_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody135_104 : StackLang.HolProg 64 :=
.seq NamedBody135_102 NamedBody135_103

def NamedBody135_105 : StackLang.HolProg 64 :=
.call (some (NamedBody135_101, 1, 135, 2)) (Sum.inl 115) (some (NamedBody135_104, 135, 3))

def NamedBody135_106 : StackLang.HolProg 64 :=
.seq NamedBody135_90 NamedBody135_105

def NamedBody135_107 : StackLang.HolProg 64 :=
.seq NamedBody135_89 NamedBody135_106

def NamedBody135_108 : StackLang.HolProg 64 :=
.seq NamedBody135_88 NamedBody135_107

def NamedBody135_109 : StackLang.HolProg 64 :=
.seq NamedBody135_59 NamedBody135_108

def NamedBody135_110 : StackLang.HolProg 64 :=
.seq NamedBody135_56 NamedBody135_109

def NamedBody135_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody135_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody135_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody135_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody135_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody135_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody135_117 : StackLang.HolProg 64 :=
.seq NamedBody135_115 NamedBody135_116

def NamedBody135_118 : StackLang.HolProg 64 :=
.seq NamedBody135_114 NamedBody135_117

def NamedBody135_119 : StackLang.HolProg 64 :=
.seq NamedBody135_113 NamedBody135_118

def NamedBody135_120 : StackLang.HolProg 64 :=
.seq NamedBody135_112 NamedBody135_119

def NamedBody135_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody135_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody135_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody135_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody135_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody135_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody135_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody135_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody135_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody135_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody135_131 : StackLang.HolProg 64 :=
.seq NamedBody135_129 NamedBody135_130

def NamedBody135_132 : StackLang.HolProg 64 :=
.seq NamedBody135_128 NamedBody135_131

def NamedBody135_133 : StackLang.HolProg 64 :=
.seq NamedBody135_127 NamedBody135_132

def NamedBody135_134 : StackLang.HolProg 64 :=
.seq NamedBody135_126 NamedBody135_133

def NamedBody135_135 : StackLang.HolProg 64 :=
.seq NamedBody135_125 NamedBody135_134

def NamedBody135_136 : StackLang.HolProg 64 :=
.seq NamedBody135_124 NamedBody135_135

def NamedBody135_137 : StackLang.HolProg 64 :=
.seq NamedBody135_123 NamedBody135_136

def NamedBody135_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody135_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 131

def NamedBody135_141 : StackLang.HolProg 64 :=
.seq NamedBody135_139 NamedBody135_140

def NamedBody135_142 : StackLang.HolProg 64 :=
.seq NamedBody135_138 NamedBody135_141

def NamedBody135_143 : StackLang.HolProg 64 :=
.seq NamedBody135_137 NamedBody135_142

def NamedBody135_144 : StackLang.HolProg 64 :=
.seq NamedBody135_122 NamedBody135_143

def NamedBody135_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody135_144 NamedBody135_145

def NamedBody135_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody135_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody135_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody135_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody135_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody135_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551576#64))

def NamedBody135_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 424#64)))

def NamedBody135_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody135_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody135_156 : StackLang.HolProg 64 :=
.seq NamedBody135_154 NamedBody135_155

def NamedBody135_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 91#64)

def NamedBody135_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody135_160 : StackLang.HolProg 64 :=
.seq NamedBody135_158 NamedBody135_159

def NamedBody135_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody135_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody135_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody135_164 : StackLang.HolProg 64 :=
.seq NamedBody135_162 NamedBody135_163

def NamedBody135_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_166 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody135_164 NamedBody135_165

def NamedBody135_167 : StackLang.HolProg 64 :=
.seq NamedBody135_161 NamedBody135_166

def NamedBody135_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody135_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody135_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 135 5

def NamedBody135_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody135_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody135_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody135_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody135_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody135_177 : StackLang.HolProg 64 :=
.seq NamedBody135_175 NamedBody135_176

def NamedBody135_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody135_179 : StackLang.HolProg 64 :=
.seq NamedBody135_177 NamedBody135_178

def NamedBody135_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody135_181 : StackLang.HolProg 64 :=
.seq NamedBody135_179 NamedBody135_180

def NamedBody135_182 : StackLang.HolProg 64 :=
.seq NamedBody135_174 NamedBody135_181

def NamedBody135_183 : StackLang.HolProg 64 :=
.seq NamedBody135_173 NamedBody135_182

def NamedBody135_184 : StackLang.HolProg 64 :=
.seq NamedBody135_172 NamedBody135_183

def NamedBody135_185 : StackLang.HolProg 64 :=
.seq NamedBody135_171 NamedBody135_184

def NamedBody135_186 : StackLang.HolProg 64 :=
.seq NamedBody135_170 NamedBody135_185

def NamedBody135_187 : StackLang.HolProg 64 :=
.seq NamedBody135_169 NamedBody135_186

def NamedBody135_188 : StackLang.HolProg 64 :=
.seq NamedBody135_168 NamedBody135_187

def NamedBody135_189 : StackLang.HolProg 64 :=
.seq NamedBody135_167 NamedBody135_188

def NamedBody135_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody135_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody135_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody135_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody135_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody135_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody135_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody135_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody135_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody135_202 : StackLang.HolProg 64 :=
.seq NamedBody135_200 NamedBody135_201

def NamedBody135_203 : StackLang.HolProg 64 :=
.seq NamedBody135_199 NamedBody135_202

def NamedBody135_204 : StackLang.HolProg 64 :=
.seq NamedBody135_198 NamedBody135_203

def NamedBody135_205 : StackLang.HolProg 64 :=
.seq NamedBody135_197 NamedBody135_204

def NamedBody135_206 : StackLang.HolProg 64 :=
.seq NamedBody135_196 NamedBody135_205

def NamedBody135_207 : StackLang.HolProg 64 :=
.seq NamedBody135_195 NamedBody135_206

def NamedBody135_208 : StackLang.HolProg 64 :=
.seq NamedBody135_194 NamedBody135_207

def NamedBody135_209 : StackLang.HolProg 64 :=
.seq NamedBody135_193 NamedBody135_208

def NamedBody135_210 : StackLang.HolProg 64 :=
.seq NamedBody135_192 NamedBody135_209

def NamedBody135_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody135_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody135_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody135_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody135_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody135_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody135_217 : StackLang.HolProg 64 :=
.seq NamedBody135_215 NamedBody135_216

def NamedBody135_218 : StackLang.HolProg 64 :=
.seq NamedBody135_214 NamedBody135_217

def NamedBody135_219 : StackLang.HolProg 64 :=
.seq NamedBody135_213 NamedBody135_218

def NamedBody135_220 : StackLang.HolProg 64 :=
.seq NamedBody135_212 NamedBody135_219

def NamedBody135_221 : StackLang.HolProg 64 :=
.seq NamedBody135_211 NamedBody135_220

def NamedBody135_222 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody135_223 : StackLang.HolProg 64 :=
.seq NamedBody135_221 NamedBody135_222

def NamedBody135_224 : StackLang.HolProg 64 :=
.call (some (NamedBody135_210, 1, 135, 4)) (Sum.inl 124) (some (NamedBody135_223, 135, 5))

def NamedBody135_225 : StackLang.HolProg 64 :=
.seq NamedBody135_191 NamedBody135_224

def NamedBody135_226 : StackLang.HolProg 64 :=
.seq NamedBody135_190 NamedBody135_225

def NamedBody135_227 : StackLang.HolProg 64 :=
.seq NamedBody135_189 NamedBody135_226

def NamedBody135_228 : StackLang.HolProg 64 :=
.seq NamedBody135_160 NamedBody135_227

def NamedBody135_229 : StackLang.HolProg 64 :=
.seq NamedBody135_157 NamedBody135_228

def NamedBody135_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody135_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody135_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody135_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1#64)

def NamedBody135_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody135_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody135_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody135_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody135_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 10#64)

def NamedBody135_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody135_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody135_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody135_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody135_249 : StackLang.HolProg 64 :=
.seq NamedBody135_247 NamedBody135_248

def NamedBody135_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody135_251 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody135_249 NamedBody135_250

def NamedBody135_252 : StackLang.HolProg 64 :=
.seq NamedBody135_246 NamedBody135_251

def NamedBody135_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 128

def NamedBody135_254 : StackLang.HolProg 64 :=
.seq NamedBody135_252 NamedBody135_253

def NamedBody135_255 : StackLang.HolProg 64 :=
.seq NamedBody135_245 NamedBody135_254

def NamedBody135_256 : StackLang.HolProg 64 :=
.seq NamedBody135_244 NamedBody135_255

def NamedBody135_257 : StackLang.HolProg 64 :=
.seq NamedBody135_243 NamedBody135_256

def NamedBody135_258 : StackLang.HolProg 64 :=
.seq NamedBody135_242 NamedBody135_257

def NamedBody135_259 : StackLang.HolProg 64 :=
.seq NamedBody135_241 NamedBody135_258

def NamedBody135_260 : StackLang.HolProg 64 :=
.seq NamedBody135_240 NamedBody135_259

def NamedBody135_261 : StackLang.HolProg 64 :=
.seq NamedBody135_239 NamedBody135_260

def NamedBody135_262 : StackLang.HolProg 64 :=
.seq NamedBody135_238 NamedBody135_261

def NamedBody135_263 : StackLang.HolProg 64 :=
.seq NamedBody135_237 NamedBody135_262

def NamedBody135_264 : StackLang.HolProg 64 :=
.seq NamedBody135_236 NamedBody135_263

def NamedBody135_265 : StackLang.HolProg 64 :=
.seq NamedBody135_235 NamedBody135_264

def NamedBody135_266 : StackLang.HolProg 64 :=
.seq NamedBody135_234 NamedBody135_265

def NamedBody135_267 : StackLang.HolProg 64 :=
.seq NamedBody135_233 NamedBody135_266

def NamedBody135_268 : StackLang.HolProg 64 :=
.seq NamedBody135_232 NamedBody135_267

def NamedBody135_269 : StackLang.HolProg 64 :=
.seq NamedBody135_231 NamedBody135_268

def NamedBody135_270 : StackLang.HolProg 64 :=
.seq NamedBody135_230 NamedBody135_269

def NamedBody135_271 : StackLang.HolProg 64 :=
.seq NamedBody135_229 NamedBody135_270

def NamedBody135_272 : StackLang.HolProg 64 :=
.seq NamedBody135_156 NamedBody135_271

def NamedBody135_273 : StackLang.HolProg 64 :=
.seq NamedBody135_153 NamedBody135_272

def NamedBody135_274 : StackLang.HolProg 64 :=
.seq NamedBody135_152 NamedBody135_273

def NamedBody135_275 : StackLang.HolProg 64 :=
.seq NamedBody135_151 NamedBody135_274

def NamedBody135_276 : StackLang.HolProg 64 :=
.seq NamedBody135_150 NamedBody135_275

def NamedBody135_277 : StackLang.HolProg 64 :=
.seq NamedBody135_149 NamedBody135_276

def NamedBody135_278 : StackLang.HolProg 64 :=
.seq NamedBody135_148 NamedBody135_277

def NamedBody135_279 : StackLang.HolProg 64 :=
.seq NamedBody135_147 NamedBody135_278

def NamedBody135_280 : StackLang.HolProg 64 :=
.seq NamedBody135_146 NamedBody135_279

def NamedBody135_281 : StackLang.HolProg 64 :=
.seq NamedBody135_121 NamedBody135_280

def NamedBody135_282 : StackLang.HolProg 64 :=
.seq NamedBody135_120 NamedBody135_281

def NamedBody135_283 : StackLang.HolProg 64 :=
.seq NamedBody135_111 NamedBody135_282

def NamedBody135_284 : StackLang.HolProg 64 :=
.seq NamedBody135_110 NamedBody135_283

def NamedBody135_285 : StackLang.HolProg 64 :=
.seq NamedBody135_55 NamedBody135_284

def NamedBody135_286 : StackLang.HolProg 64 :=
.seq NamedBody135_38 NamedBody135_285

def NamedBody135_287 : StackLang.HolProg 64 :=
.seq NamedBody135_37 NamedBody135_286

def NamedBody135_288 : StackLang.HolProg 64 :=
.seq NamedBody135_36 NamedBody135_287

def NamedBody135_289 : StackLang.HolProg 64 :=
.seq NamedBody135_19 NamedBody135_288

def NamedBody135_290 : StackLang.HolProg 64 :=
.seq NamedBody135_18 NamedBody135_289

def NamedBody135_291 : StackLang.HolProg 64 :=
.seq NamedBody135_17 NamedBody135_290

def NamedBody135_292 : StackLang.HolProg 64 :=
.seq NamedBody135_16 NamedBody135_291

def NamedBody135_293 : StackLang.HolProg 64 :=
.seq NamedBody135_15 NamedBody135_292

def NamedBody135_294 : StackLang.HolProg 64 :=
.seq NamedBody135_14 NamedBody135_293

def NamedBody135_295 : StackLang.HolProg 64 :=
.seq NamedBody135_13 NamedBody135_294

def NamedBody135_296 : StackLang.HolProg 64 :=
.seq NamedBody135_6 NamedBody135_295

def Named135 : Nat × StackLang.HolProg 64 := (135, NamedBody135_296)
theorem Named135_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed135 = Named135 := by
  kernel_rfl
#print axioms Named135_eq
end InitECandidate.Proofs.BackendStages
