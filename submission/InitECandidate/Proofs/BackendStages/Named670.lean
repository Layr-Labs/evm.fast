import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed670
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody670_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody670_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody670_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody670_3 : StackLang.HolProg 64 :=
.seq NamedBody670_1 NamedBody670_2

def NamedBody670_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody670_3 NamedBody670_4

def NamedBody670_6 : StackLang.HolProg 64 :=
.seq NamedBody670_0 NamedBody670_5

def NamedBody670_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody670_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody670_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody670_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody670_11 : StackLang.HolProg 64 :=
.seq NamedBody670_9 NamedBody670_10

def NamedBody670_12 : StackLang.HolProg 64 :=
.seq NamedBody670_8 NamedBody670_11

def NamedBody670_13 : StackLang.HolProg 64 :=
.seq NamedBody670_7 NamedBody670_12

def NamedBody670_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody670_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody670_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody670_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 8#64))

def NamedBody670_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 16#64))

def NamedBody670_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 24#64))

def NamedBody670_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody670_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def NamedBody670_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def NamedBody670_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def NamedBody670_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody670_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody670_34 : StackLang.HolProg 64 :=
.seq NamedBody670_32 NamedBody670_33

def NamedBody670_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2783#64)

def NamedBody670_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody670_38 : StackLang.HolProg 64 :=
.seq NamedBody670_36 NamedBody670_37

def NamedBody670_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody670_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody670_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody670_42 : StackLang.HolProg 64 :=
.seq NamedBody670_40 NamedBody670_41

def NamedBody670_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_44 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody670_42 NamedBody670_43

def NamedBody670_45 : StackLang.HolProg 64 :=
.seq NamedBody670_39 NamedBody670_44

def NamedBody670_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody670_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody670_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 670 3

def NamedBody670_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody670_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody670_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody670_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody670_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody670_55 : StackLang.HolProg 64 :=
.seq NamedBody670_53 NamedBody670_54

def NamedBody670_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody670_57 : StackLang.HolProg 64 :=
.seq NamedBody670_55 NamedBody670_56

def NamedBody670_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody670_59 : StackLang.HolProg 64 :=
.seq NamedBody670_57 NamedBody670_58

def NamedBody670_60 : StackLang.HolProg 64 :=
.seq NamedBody670_52 NamedBody670_59

def NamedBody670_61 : StackLang.HolProg 64 :=
.seq NamedBody670_51 NamedBody670_60

def NamedBody670_62 : StackLang.HolProg 64 :=
.seq NamedBody670_50 NamedBody670_61

def NamedBody670_63 : StackLang.HolProg 64 :=
.seq NamedBody670_49 NamedBody670_62

def NamedBody670_64 : StackLang.HolProg 64 :=
.seq NamedBody670_48 NamedBody670_63

def NamedBody670_65 : StackLang.HolProg 64 :=
.seq NamedBody670_47 NamedBody670_64

def NamedBody670_66 : StackLang.HolProg 64 :=
.seq NamedBody670_46 NamedBody670_65

def NamedBody670_67 : StackLang.HolProg 64 :=
.seq NamedBody670_45 NamedBody670_66

def NamedBody670_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody670_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody670_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody670_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody670_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody670_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody670_77 : StackLang.HolProg 64 :=
.seq NamedBody670_75 NamedBody670_76

def NamedBody670_78 : StackLang.HolProg 64 :=
.seq NamedBody670_74 NamedBody670_77

def NamedBody670_79 : StackLang.HolProg 64 :=
.seq NamedBody670_73 NamedBody670_78

def NamedBody670_80 : StackLang.HolProg 64 :=
.seq NamedBody670_72 NamedBody670_79

def NamedBody670_81 : StackLang.HolProg 64 :=
.seq NamedBody670_71 NamedBody670_80

def NamedBody670_82 : StackLang.HolProg 64 :=
.seq NamedBody670_70 NamedBody670_81

def NamedBody670_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody670_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody670_85 : StackLang.HolProg 64 :=
.seq NamedBody670_83 NamedBody670_84

def NamedBody670_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody670_87 : StackLang.HolProg 64 :=
.seq NamedBody670_85 NamedBody670_86

def NamedBody670_88 : StackLang.HolProg 64 :=
.call (some (NamedBody670_82, 1, 670, 2)) (Sum.inl 661) (some (NamedBody670_87, 670, 3))

def NamedBody670_89 : StackLang.HolProg 64 :=
.seq NamedBody670_69 NamedBody670_88

def NamedBody670_90 : StackLang.HolProg 64 :=
.seq NamedBody670_68 NamedBody670_89

def NamedBody670_91 : StackLang.HolProg 64 :=
.seq NamedBody670_67 NamedBody670_90

def NamedBody670_92 : StackLang.HolProg 64 :=
.seq NamedBody670_38 NamedBody670_91

def NamedBody670_93 : StackLang.HolProg 64 :=
.seq NamedBody670_35 NamedBody670_92

def NamedBody670_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody670_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody670_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody670_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody670_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody670_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody670_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody670_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 27

def NamedBody670_107 : StackLang.HolProg 64 :=
.seq NamedBody670_105 NamedBody670_106

def NamedBody670_108 : StackLang.HolProg 64 :=
.seq NamedBody670_104 NamedBody670_107

def NamedBody670_109 : StackLang.HolProg 64 :=
.seq NamedBody670_103 NamedBody670_108

def NamedBody670_110 : StackLang.HolProg 64 :=
.seq NamedBody670_102 NamedBody670_109

def NamedBody670_111 : StackLang.HolProg 64 :=
.seq NamedBody670_101 NamedBody670_110

def NamedBody670_112 : StackLang.HolProg 64 :=
.seq NamedBody670_100 NamedBody670_111

def NamedBody670_113 : StackLang.HolProg 64 :=
.seq NamedBody670_99 NamedBody670_112

def NamedBody670_114 : StackLang.HolProg 64 :=
.seq NamedBody670_98 NamedBody670_113

def NamedBody670_115 : StackLang.HolProg 64 :=
.seq NamedBody670_97 NamedBody670_114

def NamedBody670_116 : StackLang.HolProg 64 :=
.seq NamedBody670_96 NamedBody670_115

def NamedBody670_117 : StackLang.HolProg 64 :=
.seq NamedBody670_95 NamedBody670_116

def NamedBody670_118 : StackLang.HolProg 64 :=
.seq NamedBody670_94 NamedBody670_117

def NamedBody670_119 : StackLang.HolProg 64 :=
.seq NamedBody670_93 NamedBody670_118

def NamedBody670_120 : StackLang.HolProg 64 :=
.seq NamedBody670_34 NamedBody670_119

def NamedBody670_121 : StackLang.HolProg 64 :=
.seq NamedBody670_31 NamedBody670_120

def NamedBody670_122 : StackLang.HolProg 64 :=
.seq NamedBody670_30 NamedBody670_121

def NamedBody670_123 : StackLang.HolProg 64 :=
.seq NamedBody670_29 NamedBody670_122

def NamedBody670_124 : StackLang.HolProg 64 :=
.seq NamedBody670_28 NamedBody670_123

def NamedBody670_125 : StackLang.HolProg 64 :=
.seq NamedBody670_27 NamedBody670_124

def NamedBody670_126 : StackLang.HolProg 64 :=
.seq NamedBody670_26 NamedBody670_125

def NamedBody670_127 : StackLang.HolProg 64 :=
.seq NamedBody670_25 NamedBody670_126

def NamedBody670_128 : StackLang.HolProg 64 :=
.seq NamedBody670_24 NamedBody670_127

def NamedBody670_129 : StackLang.HolProg 64 :=
.seq NamedBody670_23 NamedBody670_128

def NamedBody670_130 : StackLang.HolProg 64 :=
.seq NamedBody670_22 NamedBody670_129

def NamedBody670_131 : StackLang.HolProg 64 :=
.seq NamedBody670_21 NamedBody670_130

def NamedBody670_132 : StackLang.HolProg 64 :=
.seq NamedBody670_20 NamedBody670_131

def NamedBody670_133 : StackLang.HolProg 64 :=
.seq NamedBody670_19 NamedBody670_132

def NamedBody670_134 : StackLang.HolProg 64 :=
.seq NamedBody670_18 NamedBody670_133

def NamedBody670_135 : StackLang.HolProg 64 :=
.seq NamedBody670_17 NamedBody670_134

def NamedBody670_136 : StackLang.HolProg 64 :=
.seq NamedBody670_16 NamedBody670_135

def NamedBody670_137 : StackLang.HolProg 64 :=
.seq NamedBody670_15 NamedBody670_136

def NamedBody670_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody670_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody670_137 NamedBody670_138

def NamedBody670_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody670_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody670_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def NamedBody670_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody670_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody670_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody670_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody670_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody670_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody670_150 : StackLang.HolProg 64 :=
.seq NamedBody670_148 NamedBody670_149

def NamedBody670_151 : StackLang.HolProg 64 :=
.seq NamedBody670_147 NamedBody670_150

def NamedBody670_152 : StackLang.HolProg 64 :=
.seq NamedBody670_146 NamedBody670_151

def NamedBody670_153 : StackLang.HolProg 64 :=
.seq NamedBody670_145 NamedBody670_152

def NamedBody670_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2784#64)

def NamedBody670_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody670_157 : StackLang.HolProg 64 :=
.seq NamedBody670_155 NamedBody670_156

def NamedBody670_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody670_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody670_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody670_161 : StackLang.HolProg 64 :=
.seq NamedBody670_159 NamedBody670_160

def NamedBody670_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_163 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody670_161 NamedBody670_162

def NamedBody670_164 : StackLang.HolProg 64 :=
.seq NamedBody670_158 NamedBody670_163

def NamedBody670_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody670_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody670_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 670 5

def NamedBody670_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody670_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody670_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody670_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody670_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody670_174 : StackLang.HolProg 64 :=
.seq NamedBody670_172 NamedBody670_173

def NamedBody670_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody670_176 : StackLang.HolProg 64 :=
.seq NamedBody670_174 NamedBody670_175

def NamedBody670_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody670_178 : StackLang.HolProg 64 :=
.seq NamedBody670_176 NamedBody670_177

def NamedBody670_179 : StackLang.HolProg 64 :=
.seq NamedBody670_171 NamedBody670_178

def NamedBody670_180 : StackLang.HolProg 64 :=
.seq NamedBody670_170 NamedBody670_179

def NamedBody670_181 : StackLang.HolProg 64 :=
.seq NamedBody670_169 NamedBody670_180

def NamedBody670_182 : StackLang.HolProg 64 :=
.seq NamedBody670_168 NamedBody670_181

def NamedBody670_183 : StackLang.HolProg 64 :=
.seq NamedBody670_167 NamedBody670_182

def NamedBody670_184 : StackLang.HolProg 64 :=
.seq NamedBody670_166 NamedBody670_183

def NamedBody670_185 : StackLang.HolProg 64 :=
.seq NamedBody670_165 NamedBody670_184

def NamedBody670_186 : StackLang.HolProg 64 :=
.seq NamedBody670_164 NamedBody670_185

def NamedBody670_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody670_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody670_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody670_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody670_194 : StackLang.HolProg 64 :=
.seq NamedBody670_192 NamedBody670_193

def NamedBody670_195 : StackLang.HolProg 64 :=
.seq NamedBody670_191 NamedBody670_194

def NamedBody670_196 : StackLang.HolProg 64 :=
.seq NamedBody670_190 NamedBody670_195

def NamedBody670_197 : StackLang.HolProg 64 :=
.seq NamedBody670_189 NamedBody670_196

def NamedBody670_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody670_199 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody670_200 : StackLang.HolProg 64 :=
.seq NamedBody670_198 NamedBody670_199

def NamedBody670_201 : StackLang.HolProg 64 :=
.call (some (NamedBody670_197, 1, 670, 4)) (Sum.inl 666) (some (NamedBody670_200, 670, 5))

def NamedBody670_202 : StackLang.HolProg 64 :=
.seq NamedBody670_188 NamedBody670_201

def NamedBody670_203 : StackLang.HolProg 64 :=
.seq NamedBody670_187 NamedBody670_202

def NamedBody670_204 : StackLang.HolProg 64 :=
.seq NamedBody670_186 NamedBody670_203

def NamedBody670_205 : StackLang.HolProg 64 :=
.seq NamedBody670_157 NamedBody670_204

def NamedBody670_206 : StackLang.HolProg 64 :=
.seq NamedBody670_154 NamedBody670_205

def NamedBody670_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody670_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody670_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody670_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody670_212 : StackLang.HolProg 64 :=
.seq NamedBody670_210 NamedBody670_211

def NamedBody670_213 : StackLang.HolProg 64 :=
.seq NamedBody670_209 NamedBody670_212

def NamedBody670_214 : StackLang.HolProg 64 :=
.seq NamedBody670_208 NamedBody670_213

def NamedBody670_215 : StackLang.HolProg 64 :=
.seq NamedBody670_207 NamedBody670_214

def NamedBody670_216 : StackLang.HolProg 64 :=
.seq NamedBody670_206 NamedBody670_215

def NamedBody670_217 : StackLang.HolProg 64 :=
.seq NamedBody670_153 NamedBody670_216

def NamedBody670_218 : StackLang.HolProg 64 :=
.seq NamedBody670_144 NamedBody670_217

def NamedBody670_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_220 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody670_218 NamedBody670_219

def NamedBody670_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody670_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody670_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody670_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody670_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody670_226 : StackLang.HolProg 64 :=
.seq NamedBody670_224 NamedBody670_225

def NamedBody670_227 : StackLang.HolProg 64 :=
.seq NamedBody670_223 NamedBody670_226

def NamedBody670_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2785#64)

def NamedBody670_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody670_231 : StackLang.HolProg 64 :=
.seq NamedBody670_229 NamedBody670_230

def NamedBody670_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody670_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody670_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody670_235 : StackLang.HolProg 64 :=
.seq NamedBody670_233 NamedBody670_234

def NamedBody670_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_237 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody670_235 NamedBody670_236

def NamedBody670_238 : StackLang.HolProg 64 :=
.seq NamedBody670_232 NamedBody670_237

def NamedBody670_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody670_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody670_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 670 7

def NamedBody670_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody670_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody670_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody670_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody670_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody670_248 : StackLang.HolProg 64 :=
.seq NamedBody670_246 NamedBody670_247

def NamedBody670_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody670_250 : StackLang.HolProg 64 :=
.seq NamedBody670_248 NamedBody670_249

def NamedBody670_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody670_252 : StackLang.HolProg 64 :=
.seq NamedBody670_250 NamedBody670_251

def NamedBody670_253 : StackLang.HolProg 64 :=
.seq NamedBody670_245 NamedBody670_252

def NamedBody670_254 : StackLang.HolProg 64 :=
.seq NamedBody670_244 NamedBody670_253

def NamedBody670_255 : StackLang.HolProg 64 :=
.seq NamedBody670_243 NamedBody670_254

def NamedBody670_256 : StackLang.HolProg 64 :=
.seq NamedBody670_242 NamedBody670_255

def NamedBody670_257 : StackLang.HolProg 64 :=
.seq NamedBody670_241 NamedBody670_256

def NamedBody670_258 : StackLang.HolProg 64 :=
.seq NamedBody670_240 NamedBody670_257

def NamedBody670_259 : StackLang.HolProg 64 :=
.seq NamedBody670_239 NamedBody670_258

def NamedBody670_260 : StackLang.HolProg 64 :=
.seq NamedBody670_238 NamedBody670_259

def NamedBody670_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody670_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody670_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody670_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody670_268 : StackLang.HolProg 64 :=
.seq NamedBody670_266 NamedBody670_267

def NamedBody670_269 : StackLang.HolProg 64 :=
.seq NamedBody670_265 NamedBody670_268

def NamedBody670_270 : StackLang.HolProg 64 :=
.seq NamedBody670_264 NamedBody670_269

def NamedBody670_271 : StackLang.HolProg 64 :=
.seq NamedBody670_263 NamedBody670_270

def NamedBody670_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody670_273 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody670_274 : StackLang.HolProg 64 :=
.seq NamedBody670_272 NamedBody670_273

def NamedBody670_275 : StackLang.HolProg 64 :=
.call (some (NamedBody670_271, 1, 670, 6)) (Sum.inl 668) (some (NamedBody670_274, 670, 7))

def NamedBody670_276 : StackLang.HolProg 64 :=
.seq NamedBody670_262 NamedBody670_275

def NamedBody670_277 : StackLang.HolProg 64 :=
.seq NamedBody670_261 NamedBody670_276

def NamedBody670_278 : StackLang.HolProg 64 :=
.seq NamedBody670_260 NamedBody670_277

def NamedBody670_279 : StackLang.HolProg 64 :=
.seq NamedBody670_231 NamedBody670_278

def NamedBody670_280 : StackLang.HolProg 64 :=
.seq NamedBody670_228 NamedBody670_279

def NamedBody670_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody670_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody670_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody670_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody670_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody670_286 : StackLang.HolProg 64 :=
.seq NamedBody670_284 NamedBody670_285

def NamedBody670_287 : StackLang.HolProg 64 :=
.seq NamedBody670_283 NamedBody670_286

def NamedBody670_288 : StackLang.HolProg 64 :=
.seq NamedBody670_282 NamedBody670_287

def NamedBody670_289 : StackLang.HolProg 64 :=
.seq NamedBody670_281 NamedBody670_288

def NamedBody670_290 : StackLang.HolProg 64 :=
.seq NamedBody670_280 NamedBody670_289

def NamedBody670_291 : StackLang.HolProg 64 :=
.seq NamedBody670_227 NamedBody670_290

def NamedBody670_292 : StackLang.HolProg 64 :=
.seq NamedBody670_222 NamedBody670_291

def NamedBody670_293 : StackLang.HolProg 64 :=
.seq NamedBody670_221 NamedBody670_292

def NamedBody670_294 : StackLang.HolProg 64 :=
.seq NamedBody670_220 NamedBody670_293

def NamedBody670_295 : StackLang.HolProg 64 :=
.seq NamedBody670_143 NamedBody670_294

def NamedBody670_296 : StackLang.HolProg 64 :=
.seq NamedBody670_142 NamedBody670_295

def NamedBody670_297 : StackLang.HolProg 64 :=
.seq NamedBody670_141 NamedBody670_296

def NamedBody670_298 : StackLang.HolProg 64 :=
.seq NamedBody670_140 NamedBody670_297

def NamedBody670_299 : StackLang.HolProg 64 :=
.seq NamedBody670_139 NamedBody670_298

def NamedBody670_300 : StackLang.HolProg 64 :=
.seq NamedBody670_14 NamedBody670_299

def NamedBody670_301 : StackLang.HolProg 64 :=
.seq NamedBody670_13 NamedBody670_300

def NamedBody670_302 : StackLang.HolProg 64 :=
.seq NamedBody670_6 NamedBody670_301

def Named670 : Nat × StackLang.HolProg 64 := (670, NamedBody670_302)
theorem Named670_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed670 = Named670 := by
  kernel_rfl
#print axioms Named670_eq
end InitECandidate.Proofs.BackendStages
