import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed167
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody167_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody167_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody167_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody167_3 : StackLang.HolProg 64 :=
.seq NamedBody167_1 NamedBody167_2

def NamedBody167_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody167_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody167_3 NamedBody167_4

def NamedBody167_6 : StackLang.HolProg 64 :=
.seq NamedBody167_0 NamedBody167_5

def NamedBody167_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody167_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody167_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody167_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody167_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody167_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody167_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody167_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody167_15 : StackLang.HolProg 64 :=
.seq NamedBody167_13 NamedBody167_14

def NamedBody167_16 : StackLang.HolProg 64 :=
.seq NamedBody167_12 NamedBody167_15

def NamedBody167_17 : StackLang.HolProg 64 :=
.seq NamedBody167_11 NamedBody167_16

def NamedBody167_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody167_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody167_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody167_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody167_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody167_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody167_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody167_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody167_26 : StackLang.HolProg 64 :=
.seq NamedBody167_24 NamedBody167_25

def NamedBody167_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody167_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody167_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody167_30 : StackLang.HolProg 64 :=
.seq NamedBody167_28 NamedBody167_29

def NamedBody167_31 : StackLang.HolProg 64 :=
.seq NamedBody167_27 NamedBody167_30

def NamedBody167_32 : StackLang.HolProg 64 :=
.seq NamedBody167_26 NamedBody167_31

def NamedBody167_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody167_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 184#64)

def NamedBody167_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody167_36 : StackLang.HolProg 64 :=
.seq NamedBody167_34 NamedBody167_35

def NamedBody167_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody167_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody167_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody167_40 : StackLang.HolProg 64 :=
.seq NamedBody167_38 NamedBody167_39

def NamedBody167_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody167_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody167_40 NamedBody167_41

def NamedBody167_43 : StackLang.HolProg 64 :=
.seq NamedBody167_37 NamedBody167_42

def NamedBody167_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody167_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody167_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 167 3

def NamedBody167_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody167_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody167_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody167_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody167_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody167_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody167_53 : StackLang.HolProg 64 :=
.seq NamedBody167_51 NamedBody167_52

def NamedBody167_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody167_55 : StackLang.HolProg 64 :=
.seq NamedBody167_53 NamedBody167_54

def NamedBody167_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody167_57 : StackLang.HolProg 64 :=
.seq NamedBody167_55 NamedBody167_56

def NamedBody167_58 : StackLang.HolProg 64 :=
.seq NamedBody167_50 NamedBody167_57

def NamedBody167_59 : StackLang.HolProg 64 :=
.seq NamedBody167_49 NamedBody167_58

def NamedBody167_60 : StackLang.HolProg 64 :=
.seq NamedBody167_48 NamedBody167_59

def NamedBody167_61 : StackLang.HolProg 64 :=
.seq NamedBody167_47 NamedBody167_60

def NamedBody167_62 : StackLang.HolProg 64 :=
.seq NamedBody167_46 NamedBody167_61

def NamedBody167_63 : StackLang.HolProg 64 :=
.seq NamedBody167_45 NamedBody167_62

def NamedBody167_64 : StackLang.HolProg 64 :=
.seq NamedBody167_44 NamedBody167_63

def NamedBody167_65 : StackLang.HolProg 64 :=
.seq NamedBody167_43 NamedBody167_64

def NamedBody167_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody167_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody167_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody167_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody167_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody167_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody167_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody167_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody167_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody167_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody167_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody167_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody167_78 : StackLang.HolProg 64 :=
.seq NamedBody167_76 NamedBody167_77

def NamedBody167_79 : StackLang.HolProg 64 :=
.seq NamedBody167_75 NamedBody167_78

def NamedBody167_80 : StackLang.HolProg 64 :=
.seq NamedBody167_74 NamedBody167_79

def NamedBody167_81 : StackLang.HolProg 64 :=
.seq NamedBody167_73 NamedBody167_80

def NamedBody167_82 : StackLang.HolProg 64 :=
.seq NamedBody167_72 NamedBody167_81

def NamedBody167_83 : StackLang.HolProg 64 :=
.seq NamedBody167_71 NamedBody167_82

def NamedBody167_84 : StackLang.HolProg 64 :=
.seq NamedBody167_70 NamedBody167_83

def NamedBody167_85 : StackLang.HolProg 64 :=
.seq NamedBody167_69 NamedBody167_84

def NamedBody167_86 : StackLang.HolProg 64 :=
.seq NamedBody167_68 NamedBody167_85

def NamedBody167_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody167_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody167_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody167_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody167_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody167_92 : StackLang.HolProg 64 :=
.seq NamedBody167_90 NamedBody167_91

def NamedBody167_93 : StackLang.HolProg 64 :=
.seq NamedBody167_89 NamedBody167_92

def NamedBody167_94 : StackLang.HolProg 64 :=
.seq NamedBody167_88 NamedBody167_93

def NamedBody167_95 : StackLang.HolProg 64 :=
.seq NamedBody167_87 NamedBody167_94

def NamedBody167_96 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody167_97 : StackLang.HolProg 64 :=
.seq NamedBody167_95 NamedBody167_96

def NamedBody167_98 : StackLang.HolProg 64 :=
.call (some (NamedBody167_86, 1, 167, 2)) (Sum.inl 166) (some (NamedBody167_97, 167, 3))

def NamedBody167_99 : StackLang.HolProg 64 :=
.seq NamedBody167_67 NamedBody167_98

def NamedBody167_100 : StackLang.HolProg 64 :=
.seq NamedBody167_66 NamedBody167_99

def NamedBody167_101 : StackLang.HolProg 64 :=
.seq NamedBody167_65 NamedBody167_100

def NamedBody167_102 : StackLang.HolProg 64 :=
.seq NamedBody167_36 NamedBody167_101

def NamedBody167_103 : StackLang.HolProg 64 :=
.seq NamedBody167_33 NamedBody167_102

def NamedBody167_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody167_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody167_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody167_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody167_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody167_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody167_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody167_111 : StackLang.HolProg 64 :=
.seq NamedBody167_109 NamedBody167_110

def NamedBody167_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody167_113 : StackLang.HolProg 64 :=
.seq NamedBody167_111 NamedBody167_112

def NamedBody167_114 : StackLang.HolProg 64 :=
.seq NamedBody167_108 NamedBody167_113

def NamedBody167_115 : StackLang.HolProg 64 :=
.seq NamedBody167_107 NamedBody167_114

def NamedBody167_116 : StackLang.HolProg 64 :=
.seq NamedBody167_106 NamedBody167_115

def NamedBody167_117 : StackLang.HolProg 64 :=
.seq NamedBody167_105 NamedBody167_116

def NamedBody167_118 : StackLang.HolProg 64 :=
.seq NamedBody167_104 NamedBody167_117

def NamedBody167_119 : StackLang.HolProg 64 :=
.seq NamedBody167_103 NamedBody167_118

def NamedBody167_120 : StackLang.HolProg 64 :=
.seq NamedBody167_32 NamedBody167_119

def NamedBody167_121 : StackLang.HolProg 64 :=
.seq NamedBody167_23 NamedBody167_120

def NamedBody167_122 : StackLang.HolProg 64 :=
.seq NamedBody167_22 NamedBody167_121

def NamedBody167_123 : StackLang.HolProg 64 :=
.seq NamedBody167_21 NamedBody167_122

def NamedBody167_124 : StackLang.HolProg 64 :=
.seq NamedBody167_20 NamedBody167_123

def NamedBody167_125 : StackLang.HolProg 64 :=
.seq NamedBody167_19 NamedBody167_124

def NamedBody167_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody167_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody167_128 : StackLang.HolProg 64 :=
.seq NamedBody167_126 NamedBody167_127

def NamedBody167_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody167_125 NamedBody167_128

def NamedBody167_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody167_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody167_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody167_133 : StackLang.HolProg 64 :=
.seq NamedBody167_131 NamedBody167_132

def NamedBody167_134 : StackLang.HolProg 64 :=
.seq NamedBody167_130 NamedBody167_133

def NamedBody167_135 : StackLang.HolProg 64 :=
.seq NamedBody167_129 NamedBody167_134

def NamedBody167_136 : StackLang.HolProg 64 :=
.seq NamedBody167_18 NamedBody167_135

def NamedBody167_137 : StackLang.HolProg 64 :=
.loop NamedBody167_136

def NamedBody167_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody167_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody167_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody167_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody167_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody167_143 : StackLang.HolProg 64 :=
.seq NamedBody167_141 NamedBody167_142

def NamedBody167_144 : StackLang.HolProg 64 :=
.seq NamedBody167_140 NamedBody167_143

def NamedBody167_145 : StackLang.HolProg 64 :=
.seq NamedBody167_139 NamedBody167_144

def NamedBody167_146 : StackLang.HolProg 64 :=
.seq NamedBody167_138 NamedBody167_145

def NamedBody167_147 : StackLang.HolProg 64 :=
.seq NamedBody167_137 NamedBody167_146

def NamedBody167_148 : StackLang.HolProg 64 :=
.seq NamedBody167_17 NamedBody167_147

def NamedBody167_149 : StackLang.HolProg 64 :=
.seq NamedBody167_10 NamedBody167_148

def NamedBody167_150 : StackLang.HolProg 64 :=
.seq NamedBody167_9 NamedBody167_149

def NamedBody167_151 : StackLang.HolProg 64 :=
.seq NamedBody167_8 NamedBody167_150

def NamedBody167_152 : StackLang.HolProg 64 :=
.seq NamedBody167_7 NamedBody167_151

def NamedBody167_153 : StackLang.HolProg 64 :=
.seq NamedBody167_6 NamedBody167_152

def Named167 : Nat × StackLang.HolProg 64 := (167, NamedBody167_153)
theorem Named167_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed167 = Named167 := by
  kernel_rfl
#print axioms Named167_eq
end InitECandidate.Proofs.BackendStages
