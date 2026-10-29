import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed342
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody342_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 168#64)))

def NamedBody342_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody342_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody342_3 : StackLang.HolProg 64 :=
.seq NamedBody342_1 NamedBody342_2

def NamedBody342_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody342_3 NamedBody342_4

def NamedBody342_6 : StackLang.HolProg 64 :=
.seq NamedBody342_0 NamedBody342_5

def NamedBody342_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody342_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody342_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody342_10 : StackLang.HolProg 64 :=
.seq NamedBody342_8 NamedBody342_9

def NamedBody342_11 : StackLang.HolProg 64 :=
.seq NamedBody342_7 NamedBody342_10

def NamedBody342_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 976#64)

def NamedBody342_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_15 : StackLang.HolProg 64 :=
.seq NamedBody342_13 NamedBody342_14

def NamedBody342_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody342_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody342_19 : StackLang.HolProg 64 :=
.seq NamedBody342_17 NamedBody342_18

def NamedBody342_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody342_19 NamedBody342_20

def NamedBody342_22 : StackLang.HolProg 64 :=
.seq NamedBody342_16 NamedBody342_21

def NamedBody342_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody342_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 3

def NamedBody342_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody342_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody342_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody342_32 : StackLang.HolProg 64 :=
.seq NamedBody342_30 NamedBody342_31

def NamedBody342_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody342_34 : StackLang.HolProg 64 :=
.seq NamedBody342_32 NamedBody342_33

def NamedBody342_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_36 : StackLang.HolProg 64 :=
.seq NamedBody342_34 NamedBody342_35

def NamedBody342_37 : StackLang.HolProg 64 :=
.seq NamedBody342_29 NamedBody342_36

def NamedBody342_38 : StackLang.HolProg 64 :=
.seq NamedBody342_28 NamedBody342_37

def NamedBody342_39 : StackLang.HolProg 64 :=
.seq NamedBody342_27 NamedBody342_38

def NamedBody342_40 : StackLang.HolProg 64 :=
.seq NamedBody342_26 NamedBody342_39

def NamedBody342_41 : StackLang.HolProg 64 :=
.seq NamedBody342_25 NamedBody342_40

def NamedBody342_42 : StackLang.HolProg 64 :=
.seq NamedBody342_24 NamedBody342_41

def NamedBody342_43 : StackLang.HolProg 64 :=
.seq NamedBody342_23 NamedBody342_42

def NamedBody342_44 : StackLang.HolProg 64 :=
.seq NamedBody342_22 NamedBody342_43

def NamedBody342_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody342_52 : StackLang.HolProg 64 :=
.seq NamedBody342_50 NamedBody342_51

def NamedBody342_53 : StackLang.HolProg 64 :=
.seq NamedBody342_49 NamedBody342_52

def NamedBody342_54 : StackLang.HolProg 64 :=
.seq NamedBody342_48 NamedBody342_53

def NamedBody342_55 : StackLang.HolProg 64 :=
.seq NamedBody342_47 NamedBody342_54

def NamedBody342_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody342_58 : StackLang.HolProg 64 :=
.seq NamedBody342_56 NamedBody342_57

def NamedBody342_59 : StackLang.HolProg 64 :=
.call (some (NamedBody342_55, 1, 342, 2)) (Sum.inl 169) (some (NamedBody342_58, 342, 3))

def NamedBody342_60 : StackLang.HolProg 64 :=
.seq NamedBody342_46 NamedBody342_59

def NamedBody342_61 : StackLang.HolProg 64 :=
.seq NamedBody342_45 NamedBody342_60

def NamedBody342_62 : StackLang.HolProg 64 :=
.seq NamedBody342_44 NamedBody342_61

def NamedBody342_63 : StackLang.HolProg 64 :=
.seq NamedBody342_15 NamedBody342_62

def NamedBody342_64 : StackLang.HolProg 64 :=
.seq NamedBody342_12 NamedBody342_63

def NamedBody342_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody342_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 24#64)

def NamedBody342_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody342_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody342_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody342_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody342_73 : StackLang.HolProg 64 :=
.seq NamedBody342_71 NamedBody342_72

def NamedBody342_74 : StackLang.HolProg 64 :=
.seq NamedBody342_70 NamedBody342_73

def NamedBody342_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 977#64)

def NamedBody342_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_78 : StackLang.HolProg 64 :=
.seq NamedBody342_76 NamedBody342_77

def NamedBody342_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody342_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody342_82 : StackLang.HolProg 64 :=
.seq NamedBody342_80 NamedBody342_81

def NamedBody342_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody342_82 NamedBody342_83

def NamedBody342_85 : StackLang.HolProg 64 :=
.seq NamedBody342_79 NamedBody342_84

def NamedBody342_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody342_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 5

def NamedBody342_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody342_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody342_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody342_95 : StackLang.HolProg 64 :=
.seq NamedBody342_93 NamedBody342_94

def NamedBody342_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody342_97 : StackLang.HolProg 64 :=
.seq NamedBody342_95 NamedBody342_96

def NamedBody342_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_99 : StackLang.HolProg 64 :=
.seq NamedBody342_97 NamedBody342_98

def NamedBody342_100 : StackLang.HolProg 64 :=
.seq NamedBody342_92 NamedBody342_99

def NamedBody342_101 : StackLang.HolProg 64 :=
.seq NamedBody342_91 NamedBody342_100

def NamedBody342_102 : StackLang.HolProg 64 :=
.seq NamedBody342_90 NamedBody342_101

def NamedBody342_103 : StackLang.HolProg 64 :=
.seq NamedBody342_89 NamedBody342_102

def NamedBody342_104 : StackLang.HolProg 64 :=
.seq NamedBody342_88 NamedBody342_103

def NamedBody342_105 : StackLang.HolProg 64 :=
.seq NamedBody342_87 NamedBody342_104

def NamedBody342_106 : StackLang.HolProg 64 :=
.seq NamedBody342_86 NamedBody342_105

def NamedBody342_107 : StackLang.HolProg 64 :=
.seq NamedBody342_85 NamedBody342_106

def NamedBody342_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody342_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody342_117 : StackLang.HolProg 64 :=
.seq NamedBody342_115 NamedBody342_116

def NamedBody342_118 : StackLang.HolProg 64 :=
.seq NamedBody342_114 NamedBody342_117

def NamedBody342_119 : StackLang.HolProg 64 :=
.seq NamedBody342_113 NamedBody342_118

def NamedBody342_120 : StackLang.HolProg 64 :=
.seq NamedBody342_112 NamedBody342_119

def NamedBody342_121 : StackLang.HolProg 64 :=
.seq NamedBody342_111 NamedBody342_120

def NamedBody342_122 : StackLang.HolProg 64 :=
.seq NamedBody342_110 NamedBody342_121

def NamedBody342_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody342_125 : StackLang.HolProg 64 :=
.seq NamedBody342_123 NamedBody342_124

def NamedBody342_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody342_127 : StackLang.HolProg 64 :=
.seq NamedBody342_125 NamedBody342_126

def NamedBody342_128 : StackLang.HolProg 64 :=
.call (some (NamedBody342_122, 1, 342, 4)) (Sum.inl 68) (some (NamedBody342_127, 342, 5))

def NamedBody342_129 : StackLang.HolProg 64 :=
.seq NamedBody342_109 NamedBody342_128

def NamedBody342_130 : StackLang.HolProg 64 :=
.seq NamedBody342_108 NamedBody342_129

def NamedBody342_131 : StackLang.HolProg 64 :=
.seq NamedBody342_107 NamedBody342_130

def NamedBody342_132 : StackLang.HolProg 64 :=
.seq NamedBody342_78 NamedBody342_131

def NamedBody342_133 : StackLang.HolProg 64 :=
.seq NamedBody342_75 NamedBody342_132

def NamedBody342_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody342_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody342_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody342_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody342_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody342_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody342_147 : StackLang.HolProg 64 :=
.seq NamedBody342_145 NamedBody342_146

def NamedBody342_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody342_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody342_151 : StackLang.HolProg 64 :=
.seq NamedBody342_149 NamedBody342_150

def NamedBody342_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_153 : StackLang.HolProg 64 :=
.seq NamedBody342_151 NamedBody342_152

def NamedBody342_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 978#64)

def NamedBody342_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_157 : StackLang.HolProg 64 :=
.seq NamedBody342_155 NamedBody342_156

def NamedBody342_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody342_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody342_161 : StackLang.HolProg 64 :=
.seq NamedBody342_159 NamedBody342_160

def NamedBody342_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_163 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody342_161 NamedBody342_162

def NamedBody342_164 : StackLang.HolProg 64 :=
.seq NamedBody342_158 NamedBody342_163

def NamedBody342_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody342_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 7

def NamedBody342_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody342_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody342_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody342_174 : StackLang.HolProg 64 :=
.seq NamedBody342_172 NamedBody342_173

def NamedBody342_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody342_176 : StackLang.HolProg 64 :=
.seq NamedBody342_174 NamedBody342_175

def NamedBody342_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_178 : StackLang.HolProg 64 :=
.seq NamedBody342_176 NamedBody342_177

def NamedBody342_179 : StackLang.HolProg 64 :=
.seq NamedBody342_171 NamedBody342_178

def NamedBody342_180 : StackLang.HolProg 64 :=
.seq NamedBody342_170 NamedBody342_179

def NamedBody342_181 : StackLang.HolProg 64 :=
.seq NamedBody342_169 NamedBody342_180

def NamedBody342_182 : StackLang.HolProg 64 :=
.seq NamedBody342_168 NamedBody342_181

def NamedBody342_183 : StackLang.HolProg 64 :=
.seq NamedBody342_167 NamedBody342_182

def NamedBody342_184 : StackLang.HolProg 64 :=
.seq NamedBody342_166 NamedBody342_183

def NamedBody342_185 : StackLang.HolProg 64 :=
.seq NamedBody342_165 NamedBody342_184

def NamedBody342_186 : StackLang.HolProg 64 :=
.seq NamedBody342_164 NamedBody342_185

def NamedBody342_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody342_194 : StackLang.HolProg 64 :=
.seq NamedBody342_192 NamedBody342_193

def NamedBody342_195 : StackLang.HolProg 64 :=
.seq NamedBody342_191 NamedBody342_194

def NamedBody342_196 : StackLang.HolProg 64 :=
.seq NamedBody342_190 NamedBody342_195

def NamedBody342_197 : StackLang.HolProg 64 :=
.seq NamedBody342_189 NamedBody342_196

def NamedBody342_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_199 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody342_200 : StackLang.HolProg 64 :=
.seq NamedBody342_198 NamedBody342_199

def NamedBody342_201 : StackLang.HolProg 64 :=
.call (some (NamedBody342_197, 1, 342, 6)) (Sum.inl 161) (some (NamedBody342_200, 342, 7))

def NamedBody342_202 : StackLang.HolProg 64 :=
.seq NamedBody342_188 NamedBody342_201

def NamedBody342_203 : StackLang.HolProg 64 :=
.seq NamedBody342_187 NamedBody342_202

def NamedBody342_204 : StackLang.HolProg 64 :=
.seq NamedBody342_186 NamedBody342_203

def NamedBody342_205 : StackLang.HolProg 64 :=
.seq NamedBody342_157 NamedBody342_204

def NamedBody342_206 : StackLang.HolProg 64 :=
.seq NamedBody342_154 NamedBody342_205

def NamedBody342_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody342_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 19#64)

def NamedBody342_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody342_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody342_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_216 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody342_217 : StackLang.HolProg 64 :=
.seq NamedBody342_215 NamedBody342_216

def NamedBody342_218 : StackLang.HolProg 64 :=
.seq NamedBody342_214 NamedBody342_217

def NamedBody342_219 : StackLang.HolProg 64 :=
.seq NamedBody342_213 NamedBody342_218

def NamedBody342_220 : StackLang.HolProg 64 :=
.seq NamedBody342_212 NamedBody342_219

def NamedBody342_221 : StackLang.HolProg 64 :=
.seq NamedBody342_211 NamedBody342_220

def NamedBody342_222 : StackLang.HolProg 64 :=
.seq NamedBody342_210 NamedBody342_221

def NamedBody342_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_224 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody342_222 NamedBody342_223

def NamedBody342_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody342_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody342_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody342_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody342_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody342_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody342_233 : StackLang.HolProg 64 :=
.seq NamedBody342_231 NamedBody342_232

def NamedBody342_234 : StackLang.HolProg 64 :=
.seq NamedBody342_230 NamedBody342_233

def NamedBody342_235 : StackLang.HolProg 64 :=
.seq NamedBody342_229 NamedBody342_234

def NamedBody342_236 : StackLang.HolProg 64 :=
.seq NamedBody342_228 NamedBody342_235

def NamedBody342_237 : StackLang.HolProg 64 :=
.seq NamedBody342_227 NamedBody342_236

def NamedBody342_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 979#64)

def NamedBody342_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_241 : StackLang.HolProg 64 :=
.seq NamedBody342_239 NamedBody342_240

def NamedBody342_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody342_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody342_245 : StackLang.HolProg 64 :=
.seq NamedBody342_243 NamedBody342_244

def NamedBody342_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_247 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody342_245 NamedBody342_246

def NamedBody342_248 : StackLang.HolProg 64 :=
.seq NamedBody342_242 NamedBody342_247

def NamedBody342_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody342_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 9

def NamedBody342_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody342_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody342_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody342_258 : StackLang.HolProg 64 :=
.seq NamedBody342_256 NamedBody342_257

def NamedBody342_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody342_260 : StackLang.HolProg 64 :=
.seq NamedBody342_258 NamedBody342_259

def NamedBody342_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_262 : StackLang.HolProg 64 :=
.seq NamedBody342_260 NamedBody342_261

def NamedBody342_263 : StackLang.HolProg 64 :=
.seq NamedBody342_255 NamedBody342_262

def NamedBody342_264 : StackLang.HolProg 64 :=
.seq NamedBody342_254 NamedBody342_263

def NamedBody342_265 : StackLang.HolProg 64 :=
.seq NamedBody342_253 NamedBody342_264

def NamedBody342_266 : StackLang.HolProg 64 :=
.seq NamedBody342_252 NamedBody342_265

def NamedBody342_267 : StackLang.HolProg 64 :=
.seq NamedBody342_251 NamedBody342_266

def NamedBody342_268 : StackLang.HolProg 64 :=
.seq NamedBody342_250 NamedBody342_267

def NamedBody342_269 : StackLang.HolProg 64 :=
.seq NamedBody342_249 NamedBody342_268

def NamedBody342_270 : StackLang.HolProg 64 :=
.seq NamedBody342_248 NamedBody342_269

def NamedBody342_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody342_278 : StackLang.HolProg 64 :=
.seq NamedBody342_276 NamedBody342_277

def NamedBody342_279 : StackLang.HolProg 64 :=
.seq NamedBody342_275 NamedBody342_278

def NamedBody342_280 : StackLang.HolProg 64 :=
.seq NamedBody342_274 NamedBody342_279

def NamedBody342_281 : StackLang.HolProg 64 :=
.seq NamedBody342_273 NamedBody342_280

def NamedBody342_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody342_284 : StackLang.HolProg 64 :=
.seq NamedBody342_282 NamedBody342_283

def NamedBody342_285 : StackLang.HolProg 64 :=
.call (some (NamedBody342_281, 1, 342, 8)) (Sum.inl 169) (some (NamedBody342_284, 342, 9))

def NamedBody342_286 : StackLang.HolProg 64 :=
.seq NamedBody342_272 NamedBody342_285

def NamedBody342_287 : StackLang.HolProg 64 :=
.seq NamedBody342_271 NamedBody342_286

def NamedBody342_288 : StackLang.HolProg 64 :=
.seq NamedBody342_270 NamedBody342_287

def NamedBody342_289 : StackLang.HolProg 64 :=
.seq NamedBody342_241 NamedBody342_288

def NamedBody342_290 : StackLang.HolProg 64 :=
.seq NamedBody342_238 NamedBody342_289

def NamedBody342_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody342_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody342_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 19#64)

def NamedBody342_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody342_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody342_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_300 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody342_301 : StackLang.HolProg 64 :=
.seq NamedBody342_299 NamedBody342_300

def NamedBody342_302 : StackLang.HolProg 64 :=
.seq NamedBody342_298 NamedBody342_301

def NamedBody342_303 : StackLang.HolProg 64 :=
.seq NamedBody342_297 NamedBody342_302

def NamedBody342_304 : StackLang.HolProg 64 :=
.seq NamedBody342_296 NamedBody342_303

def NamedBody342_305 : StackLang.HolProg 64 :=
.seq NamedBody342_295 NamedBody342_304

def NamedBody342_306 : StackLang.HolProg 64 :=
.seq NamedBody342_294 NamedBody342_305

def NamedBody342_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_308 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody342_306 NamedBody342_307

def NamedBody342_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody342_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 20#64)

def NamedBody342_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody342_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody342_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody342_316 : StackLang.HolProg 64 :=
.seq NamedBody342_314 NamedBody342_315

def NamedBody342_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 980#64)

def NamedBody342_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_320 : StackLang.HolProg 64 :=
.seq NamedBody342_318 NamedBody342_319

def NamedBody342_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody342_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody342_324 : StackLang.HolProg 64 :=
.seq NamedBody342_322 NamedBody342_323

def NamedBody342_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_326 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody342_324 NamedBody342_325

def NamedBody342_327 : StackLang.HolProg 64 :=
.seq NamedBody342_321 NamedBody342_326

def NamedBody342_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody342_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 11

def NamedBody342_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody342_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody342_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody342_337 : StackLang.HolProg 64 :=
.seq NamedBody342_335 NamedBody342_336

def NamedBody342_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody342_339 : StackLang.HolProg 64 :=
.seq NamedBody342_337 NamedBody342_338

def NamedBody342_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_341 : StackLang.HolProg 64 :=
.seq NamedBody342_339 NamedBody342_340

def NamedBody342_342 : StackLang.HolProg 64 :=
.seq NamedBody342_334 NamedBody342_341

def NamedBody342_343 : StackLang.HolProg 64 :=
.seq NamedBody342_333 NamedBody342_342

def NamedBody342_344 : StackLang.HolProg 64 :=
.seq NamedBody342_332 NamedBody342_343

def NamedBody342_345 : StackLang.HolProg 64 :=
.seq NamedBody342_331 NamedBody342_344

def NamedBody342_346 : StackLang.HolProg 64 :=
.seq NamedBody342_330 NamedBody342_345

def NamedBody342_347 : StackLang.HolProg 64 :=
.seq NamedBody342_329 NamedBody342_346

def NamedBody342_348 : StackLang.HolProg 64 :=
.seq NamedBody342_328 NamedBody342_347

def NamedBody342_349 : StackLang.HolProg 64 :=
.seq NamedBody342_327 NamedBody342_348

def NamedBody342_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody342_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody342_358 : StackLang.HolProg 64 :=
.seq NamedBody342_356 NamedBody342_357

def NamedBody342_359 : StackLang.HolProg 64 :=
.seq NamedBody342_355 NamedBody342_358

def NamedBody342_360 : StackLang.HolProg 64 :=
.seq NamedBody342_354 NamedBody342_359

def NamedBody342_361 : StackLang.HolProg 64 :=
.seq NamedBody342_353 NamedBody342_360

def NamedBody342_362 : StackLang.HolProg 64 :=
.seq NamedBody342_352 NamedBody342_361

def NamedBody342_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody342_364 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody342_365 : StackLang.HolProg 64 :=
.seq NamedBody342_363 NamedBody342_364

def NamedBody342_366 : StackLang.HolProg 64 :=
.call (some (NamedBody342_362, 1, 342, 10)) (Sum.inl 339) (some (NamedBody342_365, 342, 11))

def NamedBody342_367 : StackLang.HolProg 64 :=
.seq NamedBody342_351 NamedBody342_366

def NamedBody342_368 : StackLang.HolProg 64 :=
.seq NamedBody342_350 NamedBody342_367

def NamedBody342_369 : StackLang.HolProg 64 :=
.seq NamedBody342_349 NamedBody342_368

def NamedBody342_370 : StackLang.HolProg 64 :=
.seq NamedBody342_320 NamedBody342_369

def NamedBody342_371 : StackLang.HolProg 64 :=
.seq NamedBody342_317 NamedBody342_370

def NamedBody342_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody342_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody342_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody342_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody342_377 : StackLang.HolProg 64 :=
.seq NamedBody342_375 NamedBody342_376

def NamedBody342_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 981#64)

def NamedBody342_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_381 : StackLang.HolProg 64 :=
.seq NamedBody342_379 NamedBody342_380

def NamedBody342_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody342_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody342_385 : StackLang.HolProg 64 :=
.seq NamedBody342_383 NamedBody342_384

def NamedBody342_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_387 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody342_385 NamedBody342_386

def NamedBody342_388 : StackLang.HolProg 64 :=
.seq NamedBody342_382 NamedBody342_387

def NamedBody342_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody342_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 13

def NamedBody342_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody342_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody342_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody342_398 : StackLang.HolProg 64 :=
.seq NamedBody342_396 NamedBody342_397

def NamedBody342_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody342_400 : StackLang.HolProg 64 :=
.seq NamedBody342_398 NamedBody342_399

def NamedBody342_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_402 : StackLang.HolProg 64 :=
.seq NamedBody342_400 NamedBody342_401

def NamedBody342_403 : StackLang.HolProg 64 :=
.seq NamedBody342_395 NamedBody342_402

def NamedBody342_404 : StackLang.HolProg 64 :=
.seq NamedBody342_394 NamedBody342_403

def NamedBody342_405 : StackLang.HolProg 64 :=
.seq NamedBody342_393 NamedBody342_404

def NamedBody342_406 : StackLang.HolProg 64 :=
.seq NamedBody342_392 NamedBody342_405

def NamedBody342_407 : StackLang.HolProg 64 :=
.seq NamedBody342_391 NamedBody342_406

def NamedBody342_408 : StackLang.HolProg 64 :=
.seq NamedBody342_390 NamedBody342_407

def NamedBody342_409 : StackLang.HolProg 64 :=
.seq NamedBody342_389 NamedBody342_408

def NamedBody342_410 : StackLang.HolProg 64 :=
.seq NamedBody342_388 NamedBody342_409

def NamedBody342_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody342_418 : StackLang.HolProg 64 :=
.seq NamedBody342_416 NamedBody342_417

def NamedBody342_419 : StackLang.HolProg 64 :=
.seq NamedBody342_415 NamedBody342_418

def NamedBody342_420 : StackLang.HolProg 64 :=
.seq NamedBody342_414 NamedBody342_419

def NamedBody342_421 : StackLang.HolProg 64 :=
.seq NamedBody342_413 NamedBody342_420

def NamedBody342_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_423 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody342_424 : StackLang.HolProg 64 :=
.seq NamedBody342_422 NamedBody342_423

def NamedBody342_425 : StackLang.HolProg 64 :=
.call (some (NamedBody342_421, 1, 342, 12)) (Sum.inl 341) (some (NamedBody342_424, 342, 13))

def NamedBody342_426 : StackLang.HolProg 64 :=
.seq NamedBody342_412 NamedBody342_425

def NamedBody342_427 : StackLang.HolProg 64 :=
.seq NamedBody342_411 NamedBody342_426

def NamedBody342_428 : StackLang.HolProg 64 :=
.seq NamedBody342_410 NamedBody342_427

def NamedBody342_429 : StackLang.HolProg 64 :=
.seq NamedBody342_381 NamedBody342_428

def NamedBody342_430 : StackLang.HolProg 64 :=
.seq NamedBody342_378 NamedBody342_429

def NamedBody342_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody342_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody342_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody342_435 : StackLang.HolProg 64 :=
.seq NamedBody342_433 NamedBody342_434

def NamedBody342_436 : StackLang.HolProg 64 :=
.seq NamedBody342_432 NamedBody342_435

def NamedBody342_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 982#64)

def NamedBody342_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_440 : StackLang.HolProg 64 :=
.seq NamedBody342_438 NamedBody342_439

def NamedBody342_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody342_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody342_444 : StackLang.HolProg 64 :=
.seq NamedBody342_442 NamedBody342_443

def NamedBody342_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_446 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody342_444 NamedBody342_445

def NamedBody342_447 : StackLang.HolProg 64 :=
.seq NamedBody342_441 NamedBody342_446

def NamedBody342_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody342_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 15

def NamedBody342_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody342_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody342_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody342_457 : StackLang.HolProg 64 :=
.seq NamedBody342_455 NamedBody342_456

def NamedBody342_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody342_459 : StackLang.HolProg 64 :=
.seq NamedBody342_457 NamedBody342_458

def NamedBody342_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_461 : StackLang.HolProg 64 :=
.seq NamedBody342_459 NamedBody342_460

def NamedBody342_462 : StackLang.HolProg 64 :=
.seq NamedBody342_454 NamedBody342_461

def NamedBody342_463 : StackLang.HolProg 64 :=
.seq NamedBody342_453 NamedBody342_462

def NamedBody342_464 : StackLang.HolProg 64 :=
.seq NamedBody342_452 NamedBody342_463

def NamedBody342_465 : StackLang.HolProg 64 :=
.seq NamedBody342_451 NamedBody342_464

def NamedBody342_466 : StackLang.HolProg 64 :=
.seq NamedBody342_450 NamedBody342_465

def NamedBody342_467 : StackLang.HolProg 64 :=
.seq NamedBody342_449 NamedBody342_466

def NamedBody342_468 : StackLang.HolProg 64 :=
.seq NamedBody342_448 NamedBody342_467

def NamedBody342_469 : StackLang.HolProg 64 :=
.seq NamedBody342_447 NamedBody342_468

def NamedBody342_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody342_477 : StackLang.HolProg 64 :=
.seq NamedBody342_475 NamedBody342_476

def NamedBody342_478 : StackLang.HolProg 64 :=
.seq NamedBody342_474 NamedBody342_477

def NamedBody342_479 : StackLang.HolProg 64 :=
.seq NamedBody342_473 NamedBody342_478

def NamedBody342_480 : StackLang.HolProg 64 :=
.seq NamedBody342_472 NamedBody342_479

def NamedBody342_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_482 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody342_483 : StackLang.HolProg 64 :=
.seq NamedBody342_481 NamedBody342_482

def NamedBody342_484 : StackLang.HolProg 64 :=
.call (some (NamedBody342_480, 1, 342, 14)) (Sum.inl 169) (some (NamedBody342_483, 342, 15))

def NamedBody342_485 : StackLang.HolProg 64 :=
.seq NamedBody342_471 NamedBody342_484

def NamedBody342_486 : StackLang.HolProg 64 :=
.seq NamedBody342_470 NamedBody342_485

def NamedBody342_487 : StackLang.HolProg 64 :=
.seq NamedBody342_469 NamedBody342_486

def NamedBody342_488 : StackLang.HolProg 64 :=
.seq NamedBody342_440 NamedBody342_487

def NamedBody342_489 : StackLang.HolProg 64 :=
.seq NamedBody342_437 NamedBody342_488

def NamedBody342_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody342_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody342_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody342_495 : StackLang.HolProg 64 :=
.seq NamedBody342_493 NamedBody342_494

def NamedBody342_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 983#64)

def NamedBody342_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_499 : StackLang.HolProg 64 :=
.seq NamedBody342_497 NamedBody342_498

def NamedBody342_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody342_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody342_503 : StackLang.HolProg 64 :=
.seq NamedBody342_501 NamedBody342_502

def NamedBody342_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_505 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody342_503 NamedBody342_504

def NamedBody342_506 : StackLang.HolProg 64 :=
.seq NamedBody342_500 NamedBody342_505

def NamedBody342_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody342_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 17

def NamedBody342_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody342_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody342_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody342_516 : StackLang.HolProg 64 :=
.seq NamedBody342_514 NamedBody342_515

def NamedBody342_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody342_518 : StackLang.HolProg 64 :=
.seq NamedBody342_516 NamedBody342_517

def NamedBody342_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_520 : StackLang.HolProg 64 :=
.seq NamedBody342_518 NamedBody342_519

def NamedBody342_521 : StackLang.HolProg 64 :=
.seq NamedBody342_513 NamedBody342_520

def NamedBody342_522 : StackLang.HolProg 64 :=
.seq NamedBody342_512 NamedBody342_521

def NamedBody342_523 : StackLang.HolProg 64 :=
.seq NamedBody342_511 NamedBody342_522

def NamedBody342_524 : StackLang.HolProg 64 :=
.seq NamedBody342_510 NamedBody342_523

def NamedBody342_525 : StackLang.HolProg 64 :=
.seq NamedBody342_509 NamedBody342_524

def NamedBody342_526 : StackLang.HolProg 64 :=
.seq NamedBody342_508 NamedBody342_525

def NamedBody342_527 : StackLang.HolProg 64 :=
.seq NamedBody342_507 NamedBody342_526

def NamedBody342_528 : StackLang.HolProg 64 :=
.seq NamedBody342_506 NamedBody342_527

def NamedBody342_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody342_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody342_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody342_538 : StackLang.HolProg 64 :=
.seq NamedBody342_536 NamedBody342_537

def NamedBody342_539 : StackLang.HolProg 64 :=
.seq NamedBody342_535 NamedBody342_538

def NamedBody342_540 : StackLang.HolProg 64 :=
.seq NamedBody342_534 NamedBody342_539

def NamedBody342_541 : StackLang.HolProg 64 :=
.seq NamedBody342_533 NamedBody342_540

def NamedBody342_542 : StackLang.HolProg 64 :=
.seq NamedBody342_532 NamedBody342_541

def NamedBody342_543 : StackLang.HolProg 64 :=
.seq NamedBody342_531 NamedBody342_542

def NamedBody342_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody342_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody342_546 : StackLang.HolProg 64 :=
.seq NamedBody342_544 NamedBody342_545

def NamedBody342_547 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody342_548 : StackLang.HolProg 64 :=
.seq NamedBody342_546 NamedBody342_547

def NamedBody342_549 : StackLang.HolProg 64 :=
.call (some (NamedBody342_543, 1, 342, 16)) (Sum.inl 68) (some (NamedBody342_548, 342, 17))

def NamedBody342_550 : StackLang.HolProg 64 :=
.seq NamedBody342_530 NamedBody342_549

def NamedBody342_551 : StackLang.HolProg 64 :=
.seq NamedBody342_529 NamedBody342_550

def NamedBody342_552 : StackLang.HolProg 64 :=
.seq NamedBody342_528 NamedBody342_551

def NamedBody342_553 : StackLang.HolProg 64 :=
.seq NamedBody342_499 NamedBody342_552

def NamedBody342_554 : StackLang.HolProg 64 :=
.seq NamedBody342_496 NamedBody342_553

def NamedBody342_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody342_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody342_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody342_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody342_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody342_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_565 : StackLang.HolProg 64 :=
.seq NamedBody342_563 NamedBody342_564

def NamedBody342_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody342_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody342_568 : StackLang.HolProg 64 :=
.seq NamedBody342_566 NamedBody342_567

def NamedBody342_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody342_571 : StackLang.HolProg 64 :=
.seq NamedBody342_569 NamedBody342_570

def NamedBody342_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody342_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_574 : StackLang.HolProg 64 :=
.seq NamedBody342_572 NamedBody342_573

def NamedBody342_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody342_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody342_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody342_578 : StackLang.HolProg 64 :=
.seq NamedBody342_576 NamedBody342_577

def NamedBody342_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody342_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody342_581 : StackLang.HolProg 64 :=
.seq NamedBody342_579 NamedBody342_580

def NamedBody342_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody342_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody342_584 : StackLang.HolProg 64 :=
.seq NamedBody342_582 NamedBody342_583

def NamedBody342_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody342_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody342_587 : StackLang.HolProg 64 :=
.seq NamedBody342_585 NamedBody342_586

def NamedBody342_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody342_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody342_590 : StackLang.HolProg 64 :=
.seq NamedBody342_588 NamedBody342_589

def NamedBody342_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody342_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody342_593 : StackLang.HolProg 64 :=
.seq NamedBody342_591 NamedBody342_592

def NamedBody342_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody342_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody342_596 : StackLang.HolProg 64 :=
.seq NamedBody342_594 NamedBody342_595

def NamedBody342_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody342_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody342_599 : StackLang.HolProg 64 :=
.seq NamedBody342_597 NamedBody342_598

def NamedBody342_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody342_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody342_602 : StackLang.HolProg 64 :=
.seq NamedBody342_600 NamedBody342_601

def NamedBody342_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody342_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody342_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody342_606 : StackLang.HolProg 64 :=
.seq NamedBody342_604 NamedBody342_605

def NamedBody342_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody342_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody342_609 : StackLang.HolProg 64 :=
.seq NamedBody342_607 NamedBody342_608

def NamedBody342_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody342_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody342_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody342_613 : StackLang.HolProg 64 :=
.seq NamedBody342_611 NamedBody342_612

def NamedBody342_614 : StackLang.HolProg 64 :=
.seq NamedBody342_610 NamedBody342_613

def NamedBody342_615 : StackLang.HolProg 64 :=
.seq NamedBody342_609 NamedBody342_614

def NamedBody342_616 : StackLang.HolProg 64 :=
.seq NamedBody342_606 NamedBody342_615

def NamedBody342_617 : StackLang.HolProg 64 :=
.seq NamedBody342_603 NamedBody342_616

def NamedBody342_618 : StackLang.HolProg 64 :=
.seq NamedBody342_602 NamedBody342_617

def NamedBody342_619 : StackLang.HolProg 64 :=
.seq NamedBody342_599 NamedBody342_618

def NamedBody342_620 : StackLang.HolProg 64 :=
.seq NamedBody342_596 NamedBody342_619

def NamedBody342_621 : StackLang.HolProg 64 :=
.seq NamedBody342_593 NamedBody342_620

def NamedBody342_622 : StackLang.HolProg 64 :=
.seq NamedBody342_590 NamedBody342_621

def NamedBody342_623 : StackLang.HolProg 64 :=
.seq NamedBody342_587 NamedBody342_622

def NamedBody342_624 : StackLang.HolProg 64 :=
.seq NamedBody342_584 NamedBody342_623

def NamedBody342_625 : StackLang.HolProg 64 :=
.seq NamedBody342_581 NamedBody342_624

def NamedBody342_626 : StackLang.HolProg 64 :=
.seq NamedBody342_578 NamedBody342_625

def NamedBody342_627 : StackLang.HolProg 64 :=
.seq NamedBody342_575 NamedBody342_626

def NamedBody342_628 : StackLang.HolProg 64 :=
.seq NamedBody342_574 NamedBody342_627

def NamedBody342_629 : StackLang.HolProg 64 :=
.seq NamedBody342_571 NamedBody342_628

def NamedBody342_630 : StackLang.HolProg 64 :=
.seq NamedBody342_568 NamedBody342_629

def NamedBody342_631 : StackLang.HolProg 64 :=
.seq NamedBody342_565 NamedBody342_630

def NamedBody342_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 984#64)

def NamedBody342_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_635 : StackLang.HolProg 64 :=
.seq NamedBody342_633 NamedBody342_634

def NamedBody342_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody342_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody342_639 : StackLang.HolProg 64 :=
.seq NamedBody342_637 NamedBody342_638

def NamedBody342_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_641 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody342_639 NamedBody342_640

def NamedBody342_642 : StackLang.HolProg 64 :=
.seq NamedBody342_636 NamedBody342_641

def NamedBody342_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody342_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 19

def NamedBody342_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody342_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody342_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody342_652 : StackLang.HolProg 64 :=
.seq NamedBody342_650 NamedBody342_651

def NamedBody342_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody342_654 : StackLang.HolProg 64 :=
.seq NamedBody342_652 NamedBody342_653

def NamedBody342_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_656 : StackLang.HolProg 64 :=
.seq NamedBody342_654 NamedBody342_655

def NamedBody342_657 : StackLang.HolProg 64 :=
.seq NamedBody342_649 NamedBody342_656

def NamedBody342_658 : StackLang.HolProg 64 :=
.seq NamedBody342_648 NamedBody342_657

def NamedBody342_659 : StackLang.HolProg 64 :=
.seq NamedBody342_647 NamedBody342_658

def NamedBody342_660 : StackLang.HolProg 64 :=
.seq NamedBody342_646 NamedBody342_659

def NamedBody342_661 : StackLang.HolProg 64 :=
.seq NamedBody342_645 NamedBody342_660

def NamedBody342_662 : StackLang.HolProg 64 :=
.seq NamedBody342_644 NamedBody342_661

def NamedBody342_663 : StackLang.HolProg 64 :=
.seq NamedBody342_643 NamedBody342_662

def NamedBody342_664 : StackLang.HolProg 64 :=
.seq NamedBody342_642 NamedBody342_663

def NamedBody342_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody342_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody342_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody342_674 : StackLang.HolProg 64 :=
.seq NamedBody342_672 NamedBody342_673

def NamedBody342_675 : StackLang.HolProg 64 :=
.seq NamedBody342_671 NamedBody342_674

def NamedBody342_676 : StackLang.HolProg 64 :=
.seq NamedBody342_670 NamedBody342_675

def NamedBody342_677 : StackLang.HolProg 64 :=
.seq NamedBody342_669 NamedBody342_676

def NamedBody342_678 : StackLang.HolProg 64 :=
.seq NamedBody342_668 NamedBody342_677

def NamedBody342_679 : StackLang.HolProg 64 :=
.seq NamedBody342_667 NamedBody342_678

def NamedBody342_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody342_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody342_682 : StackLang.HolProg 64 :=
.seq NamedBody342_680 NamedBody342_681

def NamedBody342_683 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody342_684 : StackLang.HolProg 64 :=
.seq NamedBody342_682 NamedBody342_683

def NamedBody342_685 : StackLang.HolProg 64 :=
.call (some (NamedBody342_679, 1, 342, 18)) (Sum.inl 339) (some (NamedBody342_684, 342, 19))

def NamedBody342_686 : StackLang.HolProg 64 :=
.seq NamedBody342_666 NamedBody342_685

def NamedBody342_687 : StackLang.HolProg 64 :=
.seq NamedBody342_665 NamedBody342_686

def NamedBody342_688 : StackLang.HolProg 64 :=
.seq NamedBody342_664 NamedBody342_687

def NamedBody342_689 : StackLang.HolProg 64 :=
.seq NamedBody342_635 NamedBody342_688

def NamedBody342_690 : StackLang.HolProg 64 :=
.seq NamedBody342_632 NamedBody342_689

def NamedBody342_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody342_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody342_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody342_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody342_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody342_700 : StackLang.HolProg 64 :=
.seq NamedBody342_698 NamedBody342_699

def NamedBody342_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 985#64)

def NamedBody342_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_704 : StackLang.HolProg 64 :=
.seq NamedBody342_702 NamedBody342_703

def NamedBody342_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody342_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody342_708 : StackLang.HolProg 64 :=
.seq NamedBody342_706 NamedBody342_707

def NamedBody342_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_710 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody342_708 NamedBody342_709

def NamedBody342_711 : StackLang.HolProg 64 :=
.seq NamedBody342_705 NamedBody342_710

def NamedBody342_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody342_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody342_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 21

def NamedBody342_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody342_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody342_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody342_721 : StackLang.HolProg 64 :=
.seq NamedBody342_719 NamedBody342_720

def NamedBody342_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody342_723 : StackLang.HolProg 64 :=
.seq NamedBody342_721 NamedBody342_722

def NamedBody342_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_725 : StackLang.HolProg 64 :=
.seq NamedBody342_723 NamedBody342_724

def NamedBody342_726 : StackLang.HolProg 64 :=
.seq NamedBody342_718 NamedBody342_725

def NamedBody342_727 : StackLang.HolProg 64 :=
.seq NamedBody342_717 NamedBody342_726

def NamedBody342_728 : StackLang.HolProg 64 :=
.seq NamedBody342_716 NamedBody342_727

def NamedBody342_729 : StackLang.HolProg 64 :=
.seq NamedBody342_715 NamedBody342_728

def NamedBody342_730 : StackLang.HolProg 64 :=
.seq NamedBody342_714 NamedBody342_729

def NamedBody342_731 : StackLang.HolProg 64 :=
.seq NamedBody342_713 NamedBody342_730

def NamedBody342_732 : StackLang.HolProg 64 :=
.seq NamedBody342_712 NamedBody342_731

def NamedBody342_733 : StackLang.HolProg 64 :=
.seq NamedBody342_711 NamedBody342_732

def NamedBody342_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody342_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody342_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody342_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody342_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody342_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody342_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody342_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody342_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody342_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody342_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody342_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody342_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody342_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody342_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody342_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody342_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody342_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody342_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody342_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 20
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody342_760 : StackLang.HolProg 64 :=
.seq NamedBody342_758 NamedBody342_759

def NamedBody342_761 : StackLang.HolProg 64 :=
.seq NamedBody342_757 NamedBody342_760

def NamedBody342_762 : StackLang.HolProg 64 :=
.seq NamedBody342_756 NamedBody342_761

def NamedBody342_763 : StackLang.HolProg 64 :=
.seq NamedBody342_755 NamedBody342_762

def NamedBody342_764 : StackLang.HolProg 64 :=
.seq NamedBody342_754 NamedBody342_763

def NamedBody342_765 : StackLang.HolProg 64 :=
.seq NamedBody342_753 NamedBody342_764

def NamedBody342_766 : StackLang.HolProg 64 :=
.seq NamedBody342_752 NamedBody342_765

def NamedBody342_767 : StackLang.HolProg 64 :=
.seq NamedBody342_751 NamedBody342_766

def NamedBody342_768 : StackLang.HolProg 64 :=
.seq NamedBody342_750 NamedBody342_767

def NamedBody342_769 : StackLang.HolProg 64 :=
.seq NamedBody342_749 NamedBody342_768

def NamedBody342_770 : StackLang.HolProg 64 :=
.seq NamedBody342_748 NamedBody342_769

def NamedBody342_771 : StackLang.HolProg 64 :=
.seq NamedBody342_747 NamedBody342_770

def NamedBody342_772 : StackLang.HolProg 64 :=
.seq NamedBody342_746 NamedBody342_771

def NamedBody342_773 : StackLang.HolProg 64 :=
.seq NamedBody342_745 NamedBody342_772

def NamedBody342_774 : StackLang.HolProg 64 :=
.seq NamedBody342_744 NamedBody342_773

def NamedBody342_775 : StackLang.HolProg 64 :=
.seq NamedBody342_743 NamedBody342_774

def NamedBody342_776 : StackLang.HolProg 64 :=
.seq NamedBody342_742 NamedBody342_775

def NamedBody342_777 : StackLang.HolProg 64 :=
.seq NamedBody342_741 NamedBody342_776

def NamedBody342_778 : StackLang.HolProg 64 :=
.seq NamedBody342_740 NamedBody342_777

def NamedBody342_779 : StackLang.HolProg 64 :=
.seq NamedBody342_739 NamedBody342_778

def NamedBody342_780 : StackLang.HolProg 64 :=
.seq NamedBody342_738 NamedBody342_779

def NamedBody342_781 : StackLang.HolProg 64 :=
.seq NamedBody342_737 NamedBody342_780

def NamedBody342_782 : StackLang.HolProg 64 :=
.seq NamedBody342_736 NamedBody342_781

def NamedBody342_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody342_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody342_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody342_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody342_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody342_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody342_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody342_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody342_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody342_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody342_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody342_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody342_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody342_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody342_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody342_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody342_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody342_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 20
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody342_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody342_803 : StackLang.HolProg 64 :=
.seq NamedBody342_801 NamedBody342_802

def NamedBody342_804 : StackLang.HolProg 64 :=
.seq NamedBody342_800 NamedBody342_803

def NamedBody342_805 : StackLang.HolProg 64 :=
.seq NamedBody342_799 NamedBody342_804

def NamedBody342_806 : StackLang.HolProg 64 :=
.seq NamedBody342_798 NamedBody342_805

def NamedBody342_807 : StackLang.HolProg 64 :=
.seq NamedBody342_797 NamedBody342_806

def NamedBody342_808 : StackLang.HolProg 64 :=
.seq NamedBody342_796 NamedBody342_807

def NamedBody342_809 : StackLang.HolProg 64 :=
.seq NamedBody342_795 NamedBody342_808

def NamedBody342_810 : StackLang.HolProg 64 :=
.seq NamedBody342_794 NamedBody342_809

def NamedBody342_811 : StackLang.HolProg 64 :=
.seq NamedBody342_793 NamedBody342_810

def NamedBody342_812 : StackLang.HolProg 64 :=
.seq NamedBody342_792 NamedBody342_811

def NamedBody342_813 : StackLang.HolProg 64 :=
.seq NamedBody342_791 NamedBody342_812

def NamedBody342_814 : StackLang.HolProg 64 :=
.seq NamedBody342_790 NamedBody342_813

def NamedBody342_815 : StackLang.HolProg 64 :=
.seq NamedBody342_789 NamedBody342_814

def NamedBody342_816 : StackLang.HolProg 64 :=
.seq NamedBody342_788 NamedBody342_815

def NamedBody342_817 : StackLang.HolProg 64 :=
.seq NamedBody342_787 NamedBody342_816

def NamedBody342_818 : StackLang.HolProg 64 :=
.seq NamedBody342_786 NamedBody342_817

def NamedBody342_819 : StackLang.HolProg 64 :=
.seq NamedBody342_785 NamedBody342_818

def NamedBody342_820 : StackLang.HolProg 64 :=
.seq NamedBody342_784 NamedBody342_819

def NamedBody342_821 : StackLang.HolProg 64 :=
.seq NamedBody342_783 NamedBody342_820

def NamedBody342_822 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody342_823 : StackLang.HolProg 64 :=
.seq NamedBody342_821 NamedBody342_822

def NamedBody342_824 : StackLang.HolProg 64 :=
.call (some (NamedBody342_782, 1, 342, 20)) (Sum.inl 77) (some (NamedBody342_823, 342, 21))

def NamedBody342_825 : StackLang.HolProg 64 :=
.seq NamedBody342_735 NamedBody342_824

def NamedBody342_826 : StackLang.HolProg 64 :=
.seq NamedBody342_734 NamedBody342_825

def NamedBody342_827 : StackLang.HolProg 64 :=
.seq NamedBody342_733 NamedBody342_826

def NamedBody342_828 : StackLang.HolProg 64 :=
.seq NamedBody342_704 NamedBody342_827

def NamedBody342_829 : StackLang.HolProg 64 :=
.seq NamedBody342_701 NamedBody342_828

def NamedBody342_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody342_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody342_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody342_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody342_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody342_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody342_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody342_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody342_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody342_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody342_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody342_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody342_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody342_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody342_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody342_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody342_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 20
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody342_850 : StackLang.HolProg 64 :=
.seq NamedBody342_848 NamedBody342_849

def NamedBody342_851 : StackLang.HolProg 64 :=
.seq NamedBody342_847 NamedBody342_850

def NamedBody342_852 : StackLang.HolProg 64 :=
.seq NamedBody342_846 NamedBody342_851

def NamedBody342_853 : StackLang.HolProg 64 :=
.seq NamedBody342_845 NamedBody342_852

def NamedBody342_854 : StackLang.HolProg 64 :=
.seq NamedBody342_844 NamedBody342_853

def NamedBody342_855 : StackLang.HolProg 64 :=
.seq NamedBody342_843 NamedBody342_854

def NamedBody342_856 : StackLang.HolProg 64 :=
.seq NamedBody342_842 NamedBody342_855

def NamedBody342_857 : StackLang.HolProg 64 :=
.seq NamedBody342_841 NamedBody342_856

def NamedBody342_858 : StackLang.HolProg 64 :=
.seq NamedBody342_840 NamedBody342_857

def NamedBody342_859 : StackLang.HolProg 64 :=
.seq NamedBody342_839 NamedBody342_858

def NamedBody342_860 : StackLang.HolProg 64 :=
.seq NamedBody342_838 NamedBody342_859

def NamedBody342_861 : StackLang.HolProg 64 :=
.seq NamedBody342_837 NamedBody342_860

def NamedBody342_862 : StackLang.HolProg 64 :=
.seq NamedBody342_836 NamedBody342_861

def NamedBody342_863 : StackLang.HolProg 64 :=
.seq NamedBody342_835 NamedBody342_862

def NamedBody342_864 : StackLang.HolProg 64 :=
.seq NamedBody342_834 NamedBody342_863

def NamedBody342_865 : StackLang.HolProg 64 :=
.seq NamedBody342_833 NamedBody342_864

def NamedBody342_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody342_867 : StackLang.HolProg 64 :=
.seq NamedBody342_865 NamedBody342_866

def NamedBody342_868 : StackLang.HolProg 64 :=
.seq NamedBody342_832 NamedBody342_867

def NamedBody342_869 : StackLang.HolProg 64 :=
.seq NamedBody342_831 NamedBody342_868

def NamedBody342_870 : StackLang.HolProg 64 :=
.seq NamedBody342_830 NamedBody342_869

def NamedBody342_871 : StackLang.HolProg 64 :=
.seq NamedBody342_829 NamedBody342_870

def NamedBody342_872 : StackLang.HolProg 64 :=
.seq NamedBody342_700 NamedBody342_871

def NamedBody342_873 : StackLang.HolProg 64 :=
.seq NamedBody342_697 NamedBody342_872

def NamedBody342_874 : StackLang.HolProg 64 :=
.seq NamedBody342_696 NamedBody342_873

def NamedBody342_875 : StackLang.HolProg 64 :=
.seq NamedBody342_695 NamedBody342_874

def NamedBody342_876 : StackLang.HolProg 64 :=
.seq NamedBody342_694 NamedBody342_875

def NamedBody342_877 : StackLang.HolProg 64 :=
.seq NamedBody342_693 NamedBody342_876

def NamedBody342_878 : StackLang.HolProg 64 :=
.seq NamedBody342_692 NamedBody342_877

def NamedBody342_879 : StackLang.HolProg 64 :=
.seq NamedBody342_691 NamedBody342_878

def NamedBody342_880 : StackLang.HolProg 64 :=
.seq NamedBody342_690 NamedBody342_879

def NamedBody342_881 : StackLang.HolProg 64 :=
.seq NamedBody342_631 NamedBody342_880

def NamedBody342_882 : StackLang.HolProg 64 :=
.seq NamedBody342_562 NamedBody342_881

def NamedBody342_883 : StackLang.HolProg 64 :=
.seq NamedBody342_561 NamedBody342_882

def NamedBody342_884 : StackLang.HolProg 64 :=
.seq NamedBody342_560 NamedBody342_883

def NamedBody342_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_887 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody342_888 : StackLang.HolProg 64 :=
.seq NamedBody342_886 NamedBody342_887

def NamedBody342_889 : StackLang.HolProg 64 :=
.seq NamedBody342_885 NamedBody342_888

def NamedBody342_890 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody342_884 NamedBody342_889

def NamedBody342_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody342_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody342_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody342_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody342_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody342_897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody342_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody342_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody342_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody342_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody342_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody342_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody342_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody342_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody342_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody342_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody342_909 : StackLang.HolProg 64 :=
.seq NamedBody342_907 NamedBody342_908

def NamedBody342_910 : StackLang.HolProg 64 :=
.seq NamedBody342_906 NamedBody342_909

def NamedBody342_911 : StackLang.HolProg 64 :=
.seq NamedBody342_905 NamedBody342_910

def NamedBody342_912 : StackLang.HolProg 64 :=
.seq NamedBody342_904 NamedBody342_911

def NamedBody342_913 : StackLang.HolProg 64 :=
.seq NamedBody342_903 NamedBody342_912

def NamedBody342_914 : StackLang.HolProg 64 :=
.seq NamedBody342_902 NamedBody342_913

def NamedBody342_915 : StackLang.HolProg 64 :=
.seq NamedBody342_901 NamedBody342_914

def NamedBody342_916 : StackLang.HolProg 64 :=
.seq NamedBody342_900 NamedBody342_915

def NamedBody342_917 : StackLang.HolProg 64 :=
.seq NamedBody342_899 NamedBody342_916

def NamedBody342_918 : StackLang.HolProg 64 :=
.seq NamedBody342_898 NamedBody342_917

def NamedBody342_919 : StackLang.HolProg 64 :=
.seq NamedBody342_897 NamedBody342_918

def NamedBody342_920 : StackLang.HolProg 64 :=
.seq NamedBody342_896 NamedBody342_919

def NamedBody342_921 : StackLang.HolProg 64 :=
.seq NamedBody342_895 NamedBody342_920

def NamedBody342_922 : StackLang.HolProg 64 :=
.seq NamedBody342_894 NamedBody342_921

def NamedBody342_923 : StackLang.HolProg 64 :=
.seq NamedBody342_893 NamedBody342_922

def NamedBody342_924 : StackLang.HolProg 64 :=
.seq NamedBody342_892 NamedBody342_923

def NamedBody342_925 : StackLang.HolProg 64 :=
.seq NamedBody342_891 NamedBody342_924

def NamedBody342_926 : StackLang.HolProg 64 :=
.seq NamedBody342_890 NamedBody342_925

def NamedBody342_927 : StackLang.HolProg 64 :=
.seq NamedBody342_559 NamedBody342_926

def NamedBody342_928 : StackLang.HolProg 64 :=
.loop NamedBody342_927

def NamedBody342_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody342_931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 24#64)

def NamedBody342_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody342_933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody342_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody342_935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody342_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody342_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody342_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody342_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody342_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody342_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody342_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody342_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody342_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody342_951 : StackLang.HolProg 64 :=
.seq NamedBody342_949 NamedBody342_950

def NamedBody342_952 : StackLang.HolProg 64 :=
.seq NamedBody342_948 NamedBody342_951

def NamedBody342_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody342_954 : StackLang.HolProg 64 :=
.seq NamedBody342_952 NamedBody342_953

def NamedBody342_955 : StackLang.HolProg 64 :=
.seq NamedBody342_947 NamedBody342_954

def NamedBody342_956 : StackLang.HolProg 64 :=
.seq NamedBody342_946 NamedBody342_955

def NamedBody342_957 : StackLang.HolProg 64 :=
.seq NamedBody342_945 NamedBody342_956

def NamedBody342_958 : StackLang.HolProg 64 :=
.seq NamedBody342_944 NamedBody342_957

def NamedBody342_959 : StackLang.HolProg 64 :=
.seq NamedBody342_943 NamedBody342_958

def NamedBody342_960 : StackLang.HolProg 64 :=
.seq NamedBody342_942 NamedBody342_959

def NamedBody342_961 : StackLang.HolProg 64 :=
.seq NamedBody342_941 NamedBody342_960

def NamedBody342_962 : StackLang.HolProg 64 :=
.seq NamedBody342_940 NamedBody342_961

def NamedBody342_963 : StackLang.HolProg 64 :=
.seq NamedBody342_939 NamedBody342_962

def NamedBody342_964 : StackLang.HolProg 64 :=
.seq NamedBody342_938 NamedBody342_963

def NamedBody342_965 : StackLang.HolProg 64 :=
.seq NamedBody342_937 NamedBody342_964

def NamedBody342_966 : StackLang.HolProg 64 :=
.seq NamedBody342_936 NamedBody342_965

def NamedBody342_967 : StackLang.HolProg 64 :=
.seq NamedBody342_935 NamedBody342_966

def NamedBody342_968 : StackLang.HolProg 64 :=
.seq NamedBody342_934 NamedBody342_967

def NamedBody342_969 : StackLang.HolProg 64 :=
.seq NamedBody342_933 NamedBody342_968

def NamedBody342_970 : StackLang.HolProg 64 :=
.seq NamedBody342_932 NamedBody342_969

def NamedBody342_971 : StackLang.HolProg 64 :=
.seq NamedBody342_931 NamedBody342_970

def NamedBody342_972 : StackLang.HolProg 64 :=
.seq NamedBody342_930 NamedBody342_971

def NamedBody342_973 : StackLang.HolProg 64 :=
.seq NamedBody342_929 NamedBody342_972

def NamedBody342_974 : StackLang.HolProg 64 :=
.seq NamedBody342_928 NamedBody342_973

def NamedBody342_975 : StackLang.HolProg 64 :=
.seq NamedBody342_558 NamedBody342_974

def NamedBody342_976 : StackLang.HolProg 64 :=
.seq NamedBody342_557 NamedBody342_975

def NamedBody342_977 : StackLang.HolProg 64 :=
.seq NamedBody342_556 NamedBody342_976

def NamedBody342_978 : StackLang.HolProg 64 :=
.seq NamedBody342_555 NamedBody342_977

def NamedBody342_979 : StackLang.HolProg 64 :=
.seq NamedBody342_554 NamedBody342_978

def NamedBody342_980 : StackLang.HolProg 64 :=
.seq NamedBody342_495 NamedBody342_979

def NamedBody342_981 : StackLang.HolProg 64 :=
.seq NamedBody342_492 NamedBody342_980

def NamedBody342_982 : StackLang.HolProg 64 :=
.seq NamedBody342_491 NamedBody342_981

def NamedBody342_983 : StackLang.HolProg 64 :=
.seq NamedBody342_490 NamedBody342_982

def NamedBody342_984 : StackLang.HolProg 64 :=
.seq NamedBody342_489 NamedBody342_983

def NamedBody342_985 : StackLang.HolProg 64 :=
.seq NamedBody342_436 NamedBody342_984

def NamedBody342_986 : StackLang.HolProg 64 :=
.seq NamedBody342_431 NamedBody342_985

def NamedBody342_987 : StackLang.HolProg 64 :=
.seq NamedBody342_430 NamedBody342_986

def NamedBody342_988 : StackLang.HolProg 64 :=
.seq NamedBody342_377 NamedBody342_987

def NamedBody342_989 : StackLang.HolProg 64 :=
.seq NamedBody342_374 NamedBody342_988

def NamedBody342_990 : StackLang.HolProg 64 :=
.seq NamedBody342_373 NamedBody342_989

def NamedBody342_991 : StackLang.HolProg 64 :=
.seq NamedBody342_372 NamedBody342_990

def NamedBody342_992 : StackLang.HolProg 64 :=
.seq NamedBody342_371 NamedBody342_991

def NamedBody342_993 : StackLang.HolProg 64 :=
.seq NamedBody342_316 NamedBody342_992

def NamedBody342_994 : StackLang.HolProg 64 :=
.seq NamedBody342_313 NamedBody342_993

def NamedBody342_995 : StackLang.HolProg 64 :=
.seq NamedBody342_312 NamedBody342_994

def NamedBody342_996 : StackLang.HolProg 64 :=
.seq NamedBody342_311 NamedBody342_995

def NamedBody342_997 : StackLang.HolProg 64 :=
.seq NamedBody342_310 NamedBody342_996

def NamedBody342_998 : StackLang.HolProg 64 :=
.seq NamedBody342_309 NamedBody342_997

def NamedBody342_999 : StackLang.HolProg 64 :=
.seq NamedBody342_308 NamedBody342_998

def NamedBody342_1000 : StackLang.HolProg 64 :=
.seq NamedBody342_293 NamedBody342_999

def NamedBody342_1001 : StackLang.HolProg 64 :=
.seq NamedBody342_292 NamedBody342_1000

def NamedBody342_1002 : StackLang.HolProg 64 :=
.seq NamedBody342_291 NamedBody342_1001

def NamedBody342_1003 : StackLang.HolProg 64 :=
.seq NamedBody342_290 NamedBody342_1002

def NamedBody342_1004 : StackLang.HolProg 64 :=
.seq NamedBody342_237 NamedBody342_1003

def NamedBody342_1005 : StackLang.HolProg 64 :=
.seq NamedBody342_226 NamedBody342_1004

def NamedBody342_1006 : StackLang.HolProg 64 :=
.seq NamedBody342_225 NamedBody342_1005

def NamedBody342_1007 : StackLang.HolProg 64 :=
.seq NamedBody342_224 NamedBody342_1006

def NamedBody342_1008 : StackLang.HolProg 64 :=
.seq NamedBody342_209 NamedBody342_1007

def NamedBody342_1009 : StackLang.HolProg 64 :=
.seq NamedBody342_208 NamedBody342_1008

def NamedBody342_1010 : StackLang.HolProg 64 :=
.seq NamedBody342_207 NamedBody342_1009

def NamedBody342_1011 : StackLang.HolProg 64 :=
.seq NamedBody342_206 NamedBody342_1010

def NamedBody342_1012 : StackLang.HolProg 64 :=
.seq NamedBody342_153 NamedBody342_1011

def NamedBody342_1013 : StackLang.HolProg 64 :=
.seq NamedBody342_148 NamedBody342_1012

def NamedBody342_1014 : StackLang.HolProg 64 :=
.seq NamedBody342_147 NamedBody342_1013

def NamedBody342_1015 : StackLang.HolProg 64 :=
.seq NamedBody342_144 NamedBody342_1014

def NamedBody342_1016 : StackLang.HolProg 64 :=
.seq NamedBody342_143 NamedBody342_1015

def NamedBody342_1017 : StackLang.HolProg 64 :=
.seq NamedBody342_142 NamedBody342_1016

def NamedBody342_1018 : StackLang.HolProg 64 :=
.seq NamedBody342_141 NamedBody342_1017

def NamedBody342_1019 : StackLang.HolProg 64 :=
.seq NamedBody342_140 NamedBody342_1018

def NamedBody342_1020 : StackLang.HolProg 64 :=
.seq NamedBody342_139 NamedBody342_1019

def NamedBody342_1021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_1022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody342_1023 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody342_1024 : StackLang.HolProg 64 :=
.seq NamedBody342_1022 NamedBody342_1023

def NamedBody342_1025 : StackLang.HolProg 64 :=
.seq NamedBody342_1021 NamedBody342_1024

def NamedBody342_1026 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody342_1020 NamedBody342_1025

def NamedBody342_1027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_1028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody342_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody342_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody342_1032 : StackLang.HolProg 64 :=
.seq NamedBody342_1030 NamedBody342_1031

def NamedBody342_1033 : StackLang.HolProg 64 :=
.seq NamedBody342_1029 NamedBody342_1032

def NamedBody342_1034 : StackLang.HolProg 64 :=
.seq NamedBody342_1028 NamedBody342_1033

def NamedBody342_1035 : StackLang.HolProg 64 :=
.seq NamedBody342_1027 NamedBody342_1034

def NamedBody342_1036 : StackLang.HolProg 64 :=
.seq NamedBody342_1026 NamedBody342_1035

def NamedBody342_1037 : StackLang.HolProg 64 :=
.seq NamedBody342_138 NamedBody342_1036

def NamedBody342_1038 : StackLang.HolProg 64 :=
.loop NamedBody342_1037

def NamedBody342_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody342_1040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody342_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody342_1042 : StackLang.HolProg 64 :=
.seq NamedBody342_1040 NamedBody342_1041

def NamedBody342_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody342_1044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 168#64)))

def NamedBody342_1045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody342_1046 : StackLang.HolProg 64 :=
.seq NamedBody342_1044 NamedBody342_1045

def NamedBody342_1047 : StackLang.HolProg 64 :=
.seq NamedBody342_1043 NamedBody342_1046

def NamedBody342_1048 : StackLang.HolProg 64 :=
.seq NamedBody342_1042 NamedBody342_1047

def NamedBody342_1049 : StackLang.HolProg 64 :=
.seq NamedBody342_1039 NamedBody342_1048

def NamedBody342_1050 : StackLang.HolProg 64 :=
.seq NamedBody342_1038 NamedBody342_1049

def NamedBody342_1051 : StackLang.HolProg 64 :=
.seq NamedBody342_137 NamedBody342_1050

def NamedBody342_1052 : StackLang.HolProg 64 :=
.seq NamedBody342_136 NamedBody342_1051

def NamedBody342_1053 : StackLang.HolProg 64 :=
.seq NamedBody342_135 NamedBody342_1052

def NamedBody342_1054 : StackLang.HolProg 64 :=
.seq NamedBody342_134 NamedBody342_1053

def NamedBody342_1055 : StackLang.HolProg 64 :=
.seq NamedBody342_133 NamedBody342_1054

def NamedBody342_1056 : StackLang.HolProg 64 :=
.seq NamedBody342_74 NamedBody342_1055

def NamedBody342_1057 : StackLang.HolProg 64 :=
.seq NamedBody342_69 NamedBody342_1056

def NamedBody342_1058 : StackLang.HolProg 64 :=
.seq NamedBody342_68 NamedBody342_1057

def NamedBody342_1059 : StackLang.HolProg 64 :=
.seq NamedBody342_67 NamedBody342_1058

def NamedBody342_1060 : StackLang.HolProg 64 :=
.seq NamedBody342_66 NamedBody342_1059

def NamedBody342_1061 : StackLang.HolProg 64 :=
.seq NamedBody342_65 NamedBody342_1060

def NamedBody342_1062 : StackLang.HolProg 64 :=
.seq NamedBody342_64 NamedBody342_1061

def NamedBody342_1063 : StackLang.HolProg 64 :=
.seq NamedBody342_11 NamedBody342_1062

def NamedBody342_1064 : StackLang.HolProg 64 :=
.seq NamedBody342_6 NamedBody342_1063

def Named342 : Nat × StackLang.HolProg 64 := (342, NamedBody342_1064)
theorem Named342_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed342 = Named342 := by
  kernel_rfl
#print axioms Named342_eq
end InitECandidate.Proofs.BackendStages
