import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed344
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody344_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody344_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody344_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody344_3 : StackLang.HolProg 64 :=
.seq NamedBody344_1 NamedBody344_2

def NamedBody344_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody344_3 NamedBody344_4

def NamedBody344_6 : StackLang.HolProg 64 :=
.seq NamedBody344_0 NamedBody344_5

def NamedBody344_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody344_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody344_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_10 : StackLang.HolProg 64 :=
.seq NamedBody344_8 NamedBody344_9

def NamedBody344_11 : StackLang.HolProg 64 :=
.seq NamedBody344_7 NamedBody344_10

def NamedBody344_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 990#64)

def NamedBody344_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_15 : StackLang.HolProg 64 :=
.seq NamedBody344_13 NamedBody344_14

def NamedBody344_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody344_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody344_19 : StackLang.HolProg 64 :=
.seq NamedBody344_17 NamedBody344_18

def NamedBody344_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody344_19 NamedBody344_20

def NamedBody344_22 : StackLang.HolProg 64 :=
.seq NamedBody344_16 NamedBody344_21

def NamedBody344_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody344_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 3

def NamedBody344_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody344_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody344_32 : StackLang.HolProg 64 :=
.seq NamedBody344_30 NamedBody344_31

def NamedBody344_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody344_34 : StackLang.HolProg 64 :=
.seq NamedBody344_32 NamedBody344_33

def NamedBody344_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_36 : StackLang.HolProg 64 :=
.seq NamedBody344_34 NamedBody344_35

def NamedBody344_37 : StackLang.HolProg 64 :=
.seq NamedBody344_29 NamedBody344_36

def NamedBody344_38 : StackLang.HolProg 64 :=
.seq NamedBody344_28 NamedBody344_37

def NamedBody344_39 : StackLang.HolProg 64 :=
.seq NamedBody344_27 NamedBody344_38

def NamedBody344_40 : StackLang.HolProg 64 :=
.seq NamedBody344_26 NamedBody344_39

def NamedBody344_41 : StackLang.HolProg 64 :=
.seq NamedBody344_25 NamedBody344_40

def NamedBody344_42 : StackLang.HolProg 64 :=
.seq NamedBody344_24 NamedBody344_41

def NamedBody344_43 : StackLang.HolProg 64 :=
.seq NamedBody344_23 NamedBody344_42

def NamedBody344_44 : StackLang.HolProg 64 :=
.seq NamedBody344_22 NamedBody344_43

def NamedBody344_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody344_52 : StackLang.HolProg 64 :=
.seq NamedBody344_50 NamedBody344_51

def NamedBody344_53 : StackLang.HolProg 64 :=
.seq NamedBody344_49 NamedBody344_52

def NamedBody344_54 : StackLang.HolProg 64 :=
.seq NamedBody344_48 NamedBody344_53

def NamedBody344_55 : StackLang.HolProg 64 :=
.seq NamedBody344_47 NamedBody344_54

def NamedBody344_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody344_58 : StackLang.HolProg 64 :=
.seq NamedBody344_56 NamedBody344_57

def NamedBody344_59 : StackLang.HolProg 64 :=
.call (some (NamedBody344_55, 1, 344, 2)) (Sum.inl 169) (some (NamedBody344_58, 344, 3))

def NamedBody344_60 : StackLang.HolProg 64 :=
.seq NamedBody344_46 NamedBody344_59

def NamedBody344_61 : StackLang.HolProg 64 :=
.seq NamedBody344_45 NamedBody344_60

def NamedBody344_62 : StackLang.HolProg 64 :=
.seq NamedBody344_44 NamedBody344_61

def NamedBody344_63 : StackLang.HolProg 64 :=
.seq NamedBody344_15 NamedBody344_62

def NamedBody344_64 : StackLang.HolProg 64 :=
.seq NamedBody344_12 NamedBody344_63

def NamedBody344_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody344_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 120#64)

def NamedBody344_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody344_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody344_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody344_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody344_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody344_73 : StackLang.HolProg 64 :=
.seq NamedBody344_71 NamedBody344_72

def NamedBody344_74 : StackLang.HolProg 64 :=
.seq NamedBody344_70 NamedBody344_73

def NamedBody344_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 991#64)

def NamedBody344_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_78 : StackLang.HolProg 64 :=
.seq NamedBody344_76 NamedBody344_77

def NamedBody344_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody344_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody344_82 : StackLang.HolProg 64 :=
.seq NamedBody344_80 NamedBody344_81

def NamedBody344_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody344_82 NamedBody344_83

def NamedBody344_85 : StackLang.HolProg 64 :=
.seq NamedBody344_79 NamedBody344_84

def NamedBody344_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody344_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 5

def NamedBody344_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody344_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody344_95 : StackLang.HolProg 64 :=
.seq NamedBody344_93 NamedBody344_94

def NamedBody344_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody344_97 : StackLang.HolProg 64 :=
.seq NamedBody344_95 NamedBody344_96

def NamedBody344_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_99 : StackLang.HolProg 64 :=
.seq NamedBody344_97 NamedBody344_98

def NamedBody344_100 : StackLang.HolProg 64 :=
.seq NamedBody344_92 NamedBody344_99

def NamedBody344_101 : StackLang.HolProg 64 :=
.seq NamedBody344_91 NamedBody344_100

def NamedBody344_102 : StackLang.HolProg 64 :=
.seq NamedBody344_90 NamedBody344_101

def NamedBody344_103 : StackLang.HolProg 64 :=
.seq NamedBody344_89 NamedBody344_102

def NamedBody344_104 : StackLang.HolProg 64 :=
.seq NamedBody344_88 NamedBody344_103

def NamedBody344_105 : StackLang.HolProg 64 :=
.seq NamedBody344_87 NamedBody344_104

def NamedBody344_106 : StackLang.HolProg 64 :=
.seq NamedBody344_86 NamedBody344_105

def NamedBody344_107 : StackLang.HolProg 64 :=
.seq NamedBody344_85 NamedBody344_106

def NamedBody344_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody344_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody344_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody344_117 : StackLang.HolProg 64 :=
.seq NamedBody344_115 NamedBody344_116

def NamedBody344_118 : StackLang.HolProg 64 :=
.seq NamedBody344_114 NamedBody344_117

def NamedBody344_119 : StackLang.HolProg 64 :=
.seq NamedBody344_113 NamedBody344_118

def NamedBody344_120 : StackLang.HolProg 64 :=
.seq NamedBody344_112 NamedBody344_119

def NamedBody344_121 : StackLang.HolProg 64 :=
.seq NamedBody344_111 NamedBody344_120

def NamedBody344_122 : StackLang.HolProg 64 :=
.seq NamedBody344_110 NamedBody344_121

def NamedBody344_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody344_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody344_125 : StackLang.HolProg 64 :=
.seq NamedBody344_123 NamedBody344_124

def NamedBody344_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody344_127 : StackLang.HolProg 64 :=
.seq NamedBody344_125 NamedBody344_126

def NamedBody344_128 : StackLang.HolProg 64 :=
.call (some (NamedBody344_122, 1, 344, 4)) (Sum.inl 68) (some (NamedBody344_127, 344, 5))

def NamedBody344_129 : StackLang.HolProg 64 :=
.seq NamedBody344_109 NamedBody344_128

def NamedBody344_130 : StackLang.HolProg 64 :=
.seq NamedBody344_108 NamedBody344_129

def NamedBody344_131 : StackLang.HolProg 64 :=
.seq NamedBody344_107 NamedBody344_130

def NamedBody344_132 : StackLang.HolProg 64 :=
.seq NamedBody344_78 NamedBody344_131

def NamedBody344_133 : StackLang.HolProg 64 :=
.seq NamedBody344_75 NamedBody344_132

def NamedBody344_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody344_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody344_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody344_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody344_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody344_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody344_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody344_147 : StackLang.HolProg 64 :=
.seq NamedBody344_145 NamedBody344_146

def NamedBody344_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 8#64))

def NamedBody344_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody344_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody344_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody344_152 : StackLang.HolProg 64 :=
.seq NamedBody344_150 NamedBody344_151

def NamedBody344_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody344_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody344_155 : StackLang.HolProg 64 :=
.seq NamedBody344_153 NamedBody344_154

def NamedBody344_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody344_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody344_158 : StackLang.HolProg 64 :=
.seq NamedBody344_156 NamedBody344_157

def NamedBody344_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody344_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody344_162 : StackLang.HolProg 64 :=
.seq NamedBody344_160 NamedBody344_161

def NamedBody344_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_164 : StackLang.HolProg 64 :=
.seq NamedBody344_162 NamedBody344_163

def NamedBody344_165 : StackLang.HolProg 64 :=
.seq NamedBody344_159 NamedBody344_164

def NamedBody344_166 : StackLang.HolProg 64 :=
.seq NamedBody344_158 NamedBody344_165

def NamedBody344_167 : StackLang.HolProg 64 :=
.seq NamedBody344_155 NamedBody344_166

def NamedBody344_168 : StackLang.HolProg 64 :=
.seq NamedBody344_152 NamedBody344_167

def NamedBody344_169 : StackLang.HolProg 64 :=
.seq NamedBody344_149 NamedBody344_168

def NamedBody344_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 992#64)

def NamedBody344_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_173 : StackLang.HolProg 64 :=
.seq NamedBody344_171 NamedBody344_172

def NamedBody344_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody344_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody344_177 : StackLang.HolProg 64 :=
.seq NamedBody344_175 NamedBody344_176

def NamedBody344_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody344_177 NamedBody344_178

def NamedBody344_180 : StackLang.HolProg 64 :=
.seq NamedBody344_174 NamedBody344_179

def NamedBody344_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody344_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 7

def NamedBody344_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody344_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody344_190 : StackLang.HolProg 64 :=
.seq NamedBody344_188 NamedBody344_189

def NamedBody344_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody344_192 : StackLang.HolProg 64 :=
.seq NamedBody344_190 NamedBody344_191

def NamedBody344_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_194 : StackLang.HolProg 64 :=
.seq NamedBody344_192 NamedBody344_193

def NamedBody344_195 : StackLang.HolProg 64 :=
.seq NamedBody344_187 NamedBody344_194

def NamedBody344_196 : StackLang.HolProg 64 :=
.seq NamedBody344_186 NamedBody344_195

def NamedBody344_197 : StackLang.HolProg 64 :=
.seq NamedBody344_185 NamedBody344_196

def NamedBody344_198 : StackLang.HolProg 64 :=
.seq NamedBody344_184 NamedBody344_197

def NamedBody344_199 : StackLang.HolProg 64 :=
.seq NamedBody344_183 NamedBody344_198

def NamedBody344_200 : StackLang.HolProg 64 :=
.seq NamedBody344_182 NamedBody344_199

def NamedBody344_201 : StackLang.HolProg 64 :=
.seq NamedBody344_181 NamedBody344_200

def NamedBody344_202 : StackLang.HolProg 64 :=
.seq NamedBody344_180 NamedBody344_201

def NamedBody344_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody344_210 : StackLang.HolProg 64 :=
.seq NamedBody344_208 NamedBody344_209

def NamedBody344_211 : StackLang.HolProg 64 :=
.seq NamedBody344_207 NamedBody344_210

def NamedBody344_212 : StackLang.HolProg 64 :=
.seq NamedBody344_206 NamedBody344_211

def NamedBody344_213 : StackLang.HolProg 64 :=
.seq NamedBody344_205 NamedBody344_212

def NamedBody344_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_215 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody344_216 : StackLang.HolProg 64 :=
.seq NamedBody344_214 NamedBody344_215

def NamedBody344_217 : StackLang.HolProg 64 :=
.call (some (NamedBody344_213, 1, 344, 6)) (Sum.inl 161) (some (NamedBody344_216, 344, 7))

def NamedBody344_218 : StackLang.HolProg 64 :=
.seq NamedBody344_204 NamedBody344_217

def NamedBody344_219 : StackLang.HolProg 64 :=
.seq NamedBody344_203 NamedBody344_218

def NamedBody344_220 : StackLang.HolProg 64 :=
.seq NamedBody344_202 NamedBody344_219

def NamedBody344_221 : StackLang.HolProg 64 :=
.seq NamedBody344_173 NamedBody344_220

def NamedBody344_222 : StackLang.HolProg 64 :=
.seq NamedBody344_170 NamedBody344_221

def NamedBody344_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody344_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def NamedBody344_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody344_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody344_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody344_233 : StackLang.HolProg 64 :=
.seq NamedBody344_231 NamedBody344_232

def NamedBody344_234 : StackLang.HolProg 64 :=
.seq NamedBody344_230 NamedBody344_233

def NamedBody344_235 : StackLang.HolProg 64 :=
.seq NamedBody344_229 NamedBody344_234

def NamedBody344_236 : StackLang.HolProg 64 :=
.seq NamedBody344_228 NamedBody344_235

def NamedBody344_237 : StackLang.HolProg 64 :=
.seq NamedBody344_227 NamedBody344_236

def NamedBody344_238 : StackLang.HolProg 64 :=
.seq NamedBody344_226 NamedBody344_237

def NamedBody344_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_240 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody344_238 NamedBody344_239

def NamedBody344_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody344_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody344_245 : StackLang.HolProg 64 :=
.seq NamedBody344_243 NamedBody344_244

def NamedBody344_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 993#64)

def NamedBody344_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_249 : StackLang.HolProg 64 :=
.seq NamedBody344_247 NamedBody344_248

def NamedBody344_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody344_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody344_253 : StackLang.HolProg 64 :=
.seq NamedBody344_251 NamedBody344_252

def NamedBody344_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_255 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody344_253 NamedBody344_254

def NamedBody344_256 : StackLang.HolProg 64 :=
.seq NamedBody344_250 NamedBody344_255

def NamedBody344_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody344_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 9

def NamedBody344_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody344_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody344_266 : StackLang.HolProg 64 :=
.seq NamedBody344_264 NamedBody344_265

def NamedBody344_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody344_268 : StackLang.HolProg 64 :=
.seq NamedBody344_266 NamedBody344_267

def NamedBody344_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_270 : StackLang.HolProg 64 :=
.seq NamedBody344_268 NamedBody344_269

def NamedBody344_271 : StackLang.HolProg 64 :=
.seq NamedBody344_263 NamedBody344_270

def NamedBody344_272 : StackLang.HolProg 64 :=
.seq NamedBody344_262 NamedBody344_271

def NamedBody344_273 : StackLang.HolProg 64 :=
.seq NamedBody344_261 NamedBody344_272

def NamedBody344_274 : StackLang.HolProg 64 :=
.seq NamedBody344_260 NamedBody344_273

def NamedBody344_275 : StackLang.HolProg 64 :=
.seq NamedBody344_259 NamedBody344_274

def NamedBody344_276 : StackLang.HolProg 64 :=
.seq NamedBody344_258 NamedBody344_275

def NamedBody344_277 : StackLang.HolProg 64 :=
.seq NamedBody344_257 NamedBody344_276

def NamedBody344_278 : StackLang.HolProg 64 :=
.seq NamedBody344_256 NamedBody344_277

def NamedBody344_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody344_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody344_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody344_288 : StackLang.HolProg 64 :=
.seq NamedBody344_286 NamedBody344_287

def NamedBody344_289 : StackLang.HolProg 64 :=
.seq NamedBody344_285 NamedBody344_288

def NamedBody344_290 : StackLang.HolProg 64 :=
.seq NamedBody344_284 NamedBody344_289

def NamedBody344_291 : StackLang.HolProg 64 :=
.seq NamedBody344_283 NamedBody344_290

def NamedBody344_292 : StackLang.HolProg 64 :=
.seq NamedBody344_282 NamedBody344_291

def NamedBody344_293 : StackLang.HolProg 64 :=
.seq NamedBody344_281 NamedBody344_292

def NamedBody344_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody344_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody344_296 : StackLang.HolProg 64 :=
.seq NamedBody344_294 NamedBody344_295

def NamedBody344_297 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody344_298 : StackLang.HolProg 64 :=
.seq NamedBody344_296 NamedBody344_297

def NamedBody344_299 : StackLang.HolProg 64 :=
.call (some (NamedBody344_293, 1, 344, 8)) (Sum.inl 169) (some (NamedBody344_298, 344, 9))

def NamedBody344_300 : StackLang.HolProg 64 :=
.seq NamedBody344_280 NamedBody344_299

def NamedBody344_301 : StackLang.HolProg 64 :=
.seq NamedBody344_279 NamedBody344_300

def NamedBody344_302 : StackLang.HolProg 64 :=
.seq NamedBody344_278 NamedBody344_301

def NamedBody344_303 : StackLang.HolProg 64 :=
.seq NamedBody344_249 NamedBody344_302

def NamedBody344_304 : StackLang.HolProg 64 :=
.seq NamedBody344_246 NamedBody344_303

def NamedBody344_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def NamedBody344_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def NamedBody344_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody344_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody344_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody344_315 : StackLang.HolProg 64 :=
.seq NamedBody344_313 NamedBody344_314

def NamedBody344_316 : StackLang.HolProg 64 :=
.seq NamedBody344_312 NamedBody344_315

def NamedBody344_317 : StackLang.HolProg 64 :=
.seq NamedBody344_311 NamedBody344_316

def NamedBody344_318 : StackLang.HolProg 64 :=
.seq NamedBody344_310 NamedBody344_317

def NamedBody344_319 : StackLang.HolProg 64 :=
.seq NamedBody344_309 NamedBody344_318

def NamedBody344_320 : StackLang.HolProg 64 :=
.seq NamedBody344_308 NamedBody344_319

def NamedBody344_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_322 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody344_320 NamedBody344_321

def NamedBody344_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 120#64)

def NamedBody344_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody344_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody344_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody344_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody344_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody344_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody344_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody344_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody344_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_338 : StackLang.HolProg 64 :=
.seq NamedBody344_336 NamedBody344_337

def NamedBody344_339 : StackLang.HolProg 64 :=
.seq NamedBody344_335 NamedBody344_338

def NamedBody344_340 : StackLang.HolProg 64 :=
.seq NamedBody344_334 NamedBody344_339

def NamedBody344_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 994#64)

def NamedBody344_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_344 : StackLang.HolProg 64 :=
.seq NamedBody344_342 NamedBody344_343

def NamedBody344_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody344_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody344_348 : StackLang.HolProg 64 :=
.seq NamedBody344_346 NamedBody344_347

def NamedBody344_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_350 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody344_348 NamedBody344_349

def NamedBody344_351 : StackLang.HolProg 64 :=
.seq NamedBody344_345 NamedBody344_350

def NamedBody344_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody344_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 11

def NamedBody344_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody344_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody344_361 : StackLang.HolProg 64 :=
.seq NamedBody344_359 NamedBody344_360

def NamedBody344_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody344_363 : StackLang.HolProg 64 :=
.seq NamedBody344_361 NamedBody344_362

def NamedBody344_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_365 : StackLang.HolProg 64 :=
.seq NamedBody344_363 NamedBody344_364

def NamedBody344_366 : StackLang.HolProg 64 :=
.seq NamedBody344_358 NamedBody344_365

def NamedBody344_367 : StackLang.HolProg 64 :=
.seq NamedBody344_357 NamedBody344_366

def NamedBody344_368 : StackLang.HolProg 64 :=
.seq NamedBody344_356 NamedBody344_367

def NamedBody344_369 : StackLang.HolProg 64 :=
.seq NamedBody344_355 NamedBody344_368

def NamedBody344_370 : StackLang.HolProg 64 :=
.seq NamedBody344_354 NamedBody344_369

def NamedBody344_371 : StackLang.HolProg 64 :=
.seq NamedBody344_353 NamedBody344_370

def NamedBody344_372 : StackLang.HolProg 64 :=
.seq NamedBody344_352 NamedBody344_371

def NamedBody344_373 : StackLang.HolProg 64 :=
.seq NamedBody344_351 NamedBody344_372

def NamedBody344_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody344_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_383 : StackLang.HolProg 64 :=
.seq NamedBody344_381 NamedBody344_382

def NamedBody344_384 : StackLang.HolProg 64 :=
.seq NamedBody344_380 NamedBody344_383

def NamedBody344_385 : StackLang.HolProg 64 :=
.seq NamedBody344_379 NamedBody344_384

def NamedBody344_386 : StackLang.HolProg 64 :=
.seq NamedBody344_378 NamedBody344_385

def NamedBody344_387 : StackLang.HolProg 64 :=
.seq NamedBody344_377 NamedBody344_386

def NamedBody344_388 : StackLang.HolProg 64 :=
.seq NamedBody344_376 NamedBody344_387

def NamedBody344_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_391 : StackLang.HolProg 64 :=
.seq NamedBody344_389 NamedBody344_390

def NamedBody344_392 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody344_393 : StackLang.HolProg 64 :=
.seq NamedBody344_391 NamedBody344_392

def NamedBody344_394 : StackLang.HolProg 64 :=
.call (some (NamedBody344_388, 1, 344, 10)) (Sum.inl 336) (some (NamedBody344_393, 344, 11))

def NamedBody344_395 : StackLang.HolProg 64 :=
.seq NamedBody344_375 NamedBody344_394

def NamedBody344_396 : StackLang.HolProg 64 :=
.seq NamedBody344_374 NamedBody344_395

def NamedBody344_397 : StackLang.HolProg 64 :=
.seq NamedBody344_373 NamedBody344_396

def NamedBody344_398 : StackLang.HolProg 64 :=
.seq NamedBody344_344 NamedBody344_397

def NamedBody344_399 : StackLang.HolProg 64 :=
.seq NamedBody344_341 NamedBody344_398

def NamedBody344_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody344_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody344_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody344_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody344_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody344_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 20#64)

def NamedBody344_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody344_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_414 : StackLang.HolProg 64 :=
.seq NamedBody344_412 NamedBody344_413

def NamedBody344_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 995#64)

def NamedBody344_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_418 : StackLang.HolProg 64 :=
.seq NamedBody344_416 NamedBody344_417

def NamedBody344_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody344_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody344_422 : StackLang.HolProg 64 :=
.seq NamedBody344_420 NamedBody344_421

def NamedBody344_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_424 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody344_422 NamedBody344_423

def NamedBody344_425 : StackLang.HolProg 64 :=
.seq NamedBody344_419 NamedBody344_424

def NamedBody344_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody344_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 13

def NamedBody344_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody344_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody344_435 : StackLang.HolProg 64 :=
.seq NamedBody344_433 NamedBody344_434

def NamedBody344_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody344_437 : StackLang.HolProg 64 :=
.seq NamedBody344_435 NamedBody344_436

def NamedBody344_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_439 : StackLang.HolProg 64 :=
.seq NamedBody344_437 NamedBody344_438

def NamedBody344_440 : StackLang.HolProg 64 :=
.seq NamedBody344_432 NamedBody344_439

def NamedBody344_441 : StackLang.HolProg 64 :=
.seq NamedBody344_431 NamedBody344_440

def NamedBody344_442 : StackLang.HolProg 64 :=
.seq NamedBody344_430 NamedBody344_441

def NamedBody344_443 : StackLang.HolProg 64 :=
.seq NamedBody344_429 NamedBody344_442

def NamedBody344_444 : StackLang.HolProg 64 :=
.seq NamedBody344_428 NamedBody344_443

def NamedBody344_445 : StackLang.HolProg 64 :=
.seq NamedBody344_427 NamedBody344_444

def NamedBody344_446 : StackLang.HolProg 64 :=
.seq NamedBody344_426 NamedBody344_445

def NamedBody344_447 : StackLang.HolProg 64 :=
.seq NamedBody344_425 NamedBody344_446

def NamedBody344_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody344_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_457 : StackLang.HolProg 64 :=
.seq NamedBody344_455 NamedBody344_456

def NamedBody344_458 : StackLang.HolProg 64 :=
.seq NamedBody344_454 NamedBody344_457

def NamedBody344_459 : StackLang.HolProg 64 :=
.seq NamedBody344_453 NamedBody344_458

def NamedBody344_460 : StackLang.HolProg 64 :=
.seq NamedBody344_452 NamedBody344_459

def NamedBody344_461 : StackLang.HolProg 64 :=
.seq NamedBody344_451 NamedBody344_460

def NamedBody344_462 : StackLang.HolProg 64 :=
.seq NamedBody344_450 NamedBody344_461

def NamedBody344_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_465 : StackLang.HolProg 64 :=
.seq NamedBody344_463 NamedBody344_464

def NamedBody344_466 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody344_467 : StackLang.HolProg 64 :=
.seq NamedBody344_465 NamedBody344_466

def NamedBody344_468 : StackLang.HolProg 64 :=
.call (some (NamedBody344_462, 1, 344, 12)) (Sum.inl 339) (some (NamedBody344_467, 344, 13))

def NamedBody344_469 : StackLang.HolProg 64 :=
.seq NamedBody344_449 NamedBody344_468

def NamedBody344_470 : StackLang.HolProg 64 :=
.seq NamedBody344_448 NamedBody344_469

def NamedBody344_471 : StackLang.HolProg 64 :=
.seq NamedBody344_447 NamedBody344_470

def NamedBody344_472 : StackLang.HolProg 64 :=
.seq NamedBody344_418 NamedBody344_471

def NamedBody344_473 : StackLang.HolProg 64 :=
.seq NamedBody344_415 NamedBody344_472

def NamedBody344_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody344_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody344_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody344_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 12#64)

def NamedBody344_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 8#64)

def NamedBody344_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 2#64)

def NamedBody344_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_485 : StackLang.HolProg 64 :=
.seq NamedBody344_483 NamedBody344_484

def NamedBody344_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 996#64)

def NamedBody344_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_489 : StackLang.HolProg 64 :=
.seq NamedBody344_487 NamedBody344_488

def NamedBody344_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody344_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody344_493 : StackLang.HolProg 64 :=
.seq NamedBody344_491 NamedBody344_492

def NamedBody344_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_495 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody344_493 NamedBody344_494

def NamedBody344_496 : StackLang.HolProg 64 :=
.seq NamedBody344_490 NamedBody344_495

def NamedBody344_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody344_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 15

def NamedBody344_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody344_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody344_506 : StackLang.HolProg 64 :=
.seq NamedBody344_504 NamedBody344_505

def NamedBody344_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody344_508 : StackLang.HolProg 64 :=
.seq NamedBody344_506 NamedBody344_507

def NamedBody344_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_510 : StackLang.HolProg 64 :=
.seq NamedBody344_508 NamedBody344_509

def NamedBody344_511 : StackLang.HolProg 64 :=
.seq NamedBody344_503 NamedBody344_510

def NamedBody344_512 : StackLang.HolProg 64 :=
.seq NamedBody344_502 NamedBody344_511

def NamedBody344_513 : StackLang.HolProg 64 :=
.seq NamedBody344_501 NamedBody344_512

def NamedBody344_514 : StackLang.HolProg 64 :=
.seq NamedBody344_500 NamedBody344_513

def NamedBody344_515 : StackLang.HolProg 64 :=
.seq NamedBody344_499 NamedBody344_514

def NamedBody344_516 : StackLang.HolProg 64 :=
.seq NamedBody344_498 NamedBody344_515

def NamedBody344_517 : StackLang.HolProg 64 :=
.seq NamedBody344_497 NamedBody344_516

def NamedBody344_518 : StackLang.HolProg 64 :=
.seq NamedBody344_496 NamedBody344_517

def NamedBody344_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody344_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_528 : StackLang.HolProg 64 :=
.seq NamedBody344_526 NamedBody344_527

def NamedBody344_529 : StackLang.HolProg 64 :=
.seq NamedBody344_525 NamedBody344_528

def NamedBody344_530 : StackLang.HolProg 64 :=
.seq NamedBody344_524 NamedBody344_529

def NamedBody344_531 : StackLang.HolProg 64 :=
.seq NamedBody344_523 NamedBody344_530

def NamedBody344_532 : StackLang.HolProg 64 :=
.seq NamedBody344_522 NamedBody344_531

def NamedBody344_533 : StackLang.HolProg 64 :=
.seq NamedBody344_521 NamedBody344_532

def NamedBody344_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_536 : StackLang.HolProg 64 :=
.seq NamedBody344_534 NamedBody344_535

def NamedBody344_537 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody344_538 : StackLang.HolProg 64 :=
.seq NamedBody344_536 NamedBody344_537

def NamedBody344_539 : StackLang.HolProg 64 :=
.call (some (NamedBody344_533, 1, 344, 14)) (Sum.inl 337) (some (NamedBody344_538, 344, 15))

def NamedBody344_540 : StackLang.HolProg 64 :=
.seq NamedBody344_520 NamedBody344_539

def NamedBody344_541 : StackLang.HolProg 64 :=
.seq NamedBody344_519 NamedBody344_540

def NamedBody344_542 : StackLang.HolProg 64 :=
.seq NamedBody344_518 NamedBody344_541

def NamedBody344_543 : StackLang.HolProg 64 :=
.seq NamedBody344_489 NamedBody344_542

def NamedBody344_544 : StackLang.HolProg 64 :=
.seq NamedBody344_486 NamedBody344_543

def NamedBody344_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody344_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody344_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody344_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 12#64)

def NamedBody344_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody344_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 3#64)

def NamedBody344_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_556 : StackLang.HolProg 64 :=
.seq NamedBody344_554 NamedBody344_555

def NamedBody344_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 997#64)

def NamedBody344_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_560 : StackLang.HolProg 64 :=
.seq NamedBody344_558 NamedBody344_559

def NamedBody344_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody344_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody344_564 : StackLang.HolProg 64 :=
.seq NamedBody344_562 NamedBody344_563

def NamedBody344_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_566 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody344_564 NamedBody344_565

def NamedBody344_567 : StackLang.HolProg 64 :=
.seq NamedBody344_561 NamedBody344_566

def NamedBody344_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody344_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 17

def NamedBody344_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody344_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody344_577 : StackLang.HolProg 64 :=
.seq NamedBody344_575 NamedBody344_576

def NamedBody344_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody344_579 : StackLang.HolProg 64 :=
.seq NamedBody344_577 NamedBody344_578

def NamedBody344_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_581 : StackLang.HolProg 64 :=
.seq NamedBody344_579 NamedBody344_580

def NamedBody344_582 : StackLang.HolProg 64 :=
.seq NamedBody344_574 NamedBody344_581

def NamedBody344_583 : StackLang.HolProg 64 :=
.seq NamedBody344_573 NamedBody344_582

def NamedBody344_584 : StackLang.HolProg 64 :=
.seq NamedBody344_572 NamedBody344_583

def NamedBody344_585 : StackLang.HolProg 64 :=
.seq NamedBody344_571 NamedBody344_584

def NamedBody344_586 : StackLang.HolProg 64 :=
.seq NamedBody344_570 NamedBody344_585

def NamedBody344_587 : StackLang.HolProg 64 :=
.seq NamedBody344_569 NamedBody344_586

def NamedBody344_588 : StackLang.HolProg 64 :=
.seq NamedBody344_568 NamedBody344_587

def NamedBody344_589 : StackLang.HolProg 64 :=
.seq NamedBody344_567 NamedBody344_588

def NamedBody344_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody344_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_599 : StackLang.HolProg 64 :=
.seq NamedBody344_597 NamedBody344_598

def NamedBody344_600 : StackLang.HolProg 64 :=
.seq NamedBody344_596 NamedBody344_599

def NamedBody344_601 : StackLang.HolProg 64 :=
.seq NamedBody344_595 NamedBody344_600

def NamedBody344_602 : StackLang.HolProg 64 :=
.seq NamedBody344_594 NamedBody344_601

def NamedBody344_603 : StackLang.HolProg 64 :=
.seq NamedBody344_593 NamedBody344_602

def NamedBody344_604 : StackLang.HolProg 64 :=
.seq NamedBody344_592 NamedBody344_603

def NamedBody344_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_607 : StackLang.HolProg 64 :=
.seq NamedBody344_605 NamedBody344_606

def NamedBody344_608 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody344_609 : StackLang.HolProg 64 :=
.seq NamedBody344_607 NamedBody344_608

def NamedBody344_610 : StackLang.HolProg 64 :=
.call (some (NamedBody344_604, 1, 344, 16)) (Sum.inl 337) (some (NamedBody344_609, 344, 17))

def NamedBody344_611 : StackLang.HolProg 64 :=
.seq NamedBody344_591 NamedBody344_610

def NamedBody344_612 : StackLang.HolProg 64 :=
.seq NamedBody344_590 NamedBody344_611

def NamedBody344_613 : StackLang.HolProg 64 :=
.seq NamedBody344_589 NamedBody344_612

def NamedBody344_614 : StackLang.HolProg 64 :=
.seq NamedBody344_560 NamedBody344_613

def NamedBody344_615 : StackLang.HolProg 64 :=
.seq NamedBody344_557 NamedBody344_614

def NamedBody344_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody344_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody344_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody344_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody344_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 4#64)

def NamedBody344_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_626 : StackLang.HolProg 64 :=
.seq NamedBody344_624 NamedBody344_625

def NamedBody344_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 998#64)

def NamedBody344_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_630 : StackLang.HolProg 64 :=
.seq NamedBody344_628 NamedBody344_629

def NamedBody344_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody344_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody344_634 : StackLang.HolProg 64 :=
.seq NamedBody344_632 NamedBody344_633

def NamedBody344_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_636 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody344_634 NamedBody344_635

def NamedBody344_637 : StackLang.HolProg 64 :=
.seq NamedBody344_631 NamedBody344_636

def NamedBody344_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody344_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 19

def NamedBody344_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody344_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody344_647 : StackLang.HolProg 64 :=
.seq NamedBody344_645 NamedBody344_646

def NamedBody344_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody344_649 : StackLang.HolProg 64 :=
.seq NamedBody344_647 NamedBody344_648

def NamedBody344_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_651 : StackLang.HolProg 64 :=
.seq NamedBody344_649 NamedBody344_650

def NamedBody344_652 : StackLang.HolProg 64 :=
.seq NamedBody344_644 NamedBody344_651

def NamedBody344_653 : StackLang.HolProg 64 :=
.seq NamedBody344_643 NamedBody344_652

def NamedBody344_654 : StackLang.HolProg 64 :=
.seq NamedBody344_642 NamedBody344_653

def NamedBody344_655 : StackLang.HolProg 64 :=
.seq NamedBody344_641 NamedBody344_654

def NamedBody344_656 : StackLang.HolProg 64 :=
.seq NamedBody344_640 NamedBody344_655

def NamedBody344_657 : StackLang.HolProg 64 :=
.seq NamedBody344_639 NamedBody344_656

def NamedBody344_658 : StackLang.HolProg 64 :=
.seq NamedBody344_638 NamedBody344_657

def NamedBody344_659 : StackLang.HolProg 64 :=
.seq NamedBody344_637 NamedBody344_658

def NamedBody344_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody344_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_669 : StackLang.HolProg 64 :=
.seq NamedBody344_667 NamedBody344_668

def NamedBody344_670 : StackLang.HolProg 64 :=
.seq NamedBody344_666 NamedBody344_669

def NamedBody344_671 : StackLang.HolProg 64 :=
.seq NamedBody344_665 NamedBody344_670

def NamedBody344_672 : StackLang.HolProg 64 :=
.seq NamedBody344_664 NamedBody344_671

def NamedBody344_673 : StackLang.HolProg 64 :=
.seq NamedBody344_663 NamedBody344_672

def NamedBody344_674 : StackLang.HolProg 64 :=
.seq NamedBody344_662 NamedBody344_673

def NamedBody344_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_677 : StackLang.HolProg 64 :=
.seq NamedBody344_675 NamedBody344_676

def NamedBody344_678 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody344_679 : StackLang.HolProg 64 :=
.seq NamedBody344_677 NamedBody344_678

def NamedBody344_680 : StackLang.HolProg 64 :=
.call (some (NamedBody344_674, 1, 344, 18)) (Sum.inl 336) (some (NamedBody344_679, 344, 19))

def NamedBody344_681 : StackLang.HolProg 64 :=
.seq NamedBody344_661 NamedBody344_680

def NamedBody344_682 : StackLang.HolProg 64 :=
.seq NamedBody344_660 NamedBody344_681

def NamedBody344_683 : StackLang.HolProg 64 :=
.seq NamedBody344_659 NamedBody344_682

def NamedBody344_684 : StackLang.HolProg 64 :=
.seq NamedBody344_630 NamedBody344_683

def NamedBody344_685 : StackLang.HolProg 64 :=
.seq NamedBody344_627 NamedBody344_684

def NamedBody344_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody344_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody344_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody344_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody344_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody344_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody344_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody344_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 5#64)

def NamedBody344_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 999#64)

def NamedBody344_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_704 : StackLang.HolProg 64 :=
.seq NamedBody344_702 NamedBody344_703

def NamedBody344_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody344_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody344_708 : StackLang.HolProg 64 :=
.seq NamedBody344_706 NamedBody344_707

def NamedBody344_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_710 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody344_708 NamedBody344_709

def NamedBody344_711 : StackLang.HolProg 64 :=
.seq NamedBody344_705 NamedBody344_710

def NamedBody344_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody344_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody344_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 21

def NamedBody344_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody344_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody344_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody344_721 : StackLang.HolProg 64 :=
.seq NamedBody344_719 NamedBody344_720

def NamedBody344_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody344_723 : StackLang.HolProg 64 :=
.seq NamedBody344_721 NamedBody344_722

def NamedBody344_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_725 : StackLang.HolProg 64 :=
.seq NamedBody344_723 NamedBody344_724

def NamedBody344_726 : StackLang.HolProg 64 :=
.seq NamedBody344_718 NamedBody344_725

def NamedBody344_727 : StackLang.HolProg 64 :=
.seq NamedBody344_717 NamedBody344_726

def NamedBody344_728 : StackLang.HolProg 64 :=
.seq NamedBody344_716 NamedBody344_727

def NamedBody344_729 : StackLang.HolProg 64 :=
.seq NamedBody344_715 NamedBody344_728

def NamedBody344_730 : StackLang.HolProg 64 :=
.seq NamedBody344_714 NamedBody344_729

def NamedBody344_731 : StackLang.HolProg 64 :=
.seq NamedBody344_713 NamedBody344_730

def NamedBody344_732 : StackLang.HolProg 64 :=
.seq NamedBody344_712 NamedBody344_731

def NamedBody344_733 : StackLang.HolProg 64 :=
.seq NamedBody344_711 NamedBody344_732

def NamedBody344_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody344_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody344_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody344_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody344_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody344_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody344_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody344_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody344_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody344_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_749 : StackLang.HolProg 64 :=
.seq NamedBody344_747 NamedBody344_748

def NamedBody344_750 : StackLang.HolProg 64 :=
.seq NamedBody344_746 NamedBody344_749

def NamedBody344_751 : StackLang.HolProg 64 :=
.seq NamedBody344_745 NamedBody344_750

def NamedBody344_752 : StackLang.HolProg 64 :=
.seq NamedBody344_744 NamedBody344_751

def NamedBody344_753 : StackLang.HolProg 64 :=
.seq NamedBody344_743 NamedBody344_752

def NamedBody344_754 : StackLang.HolProg 64 :=
.seq NamedBody344_742 NamedBody344_753

def NamedBody344_755 : StackLang.HolProg 64 :=
.seq NamedBody344_741 NamedBody344_754

def NamedBody344_756 : StackLang.HolProg 64 :=
.seq NamedBody344_740 NamedBody344_755

def NamedBody344_757 : StackLang.HolProg 64 :=
.seq NamedBody344_739 NamedBody344_756

def NamedBody344_758 : StackLang.HolProg 64 :=
.seq NamedBody344_738 NamedBody344_757

def NamedBody344_759 : StackLang.HolProg 64 :=
.seq NamedBody344_737 NamedBody344_758

def NamedBody344_760 : StackLang.HolProg 64 :=
.seq NamedBody344_736 NamedBody344_759

def NamedBody344_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody344_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody344_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody344_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody344_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody344_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody344_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody344_769 : StackLang.HolProg 64 :=
.seq NamedBody344_767 NamedBody344_768

def NamedBody344_770 : StackLang.HolProg 64 :=
.seq NamedBody344_766 NamedBody344_769

def NamedBody344_771 : StackLang.HolProg 64 :=
.seq NamedBody344_765 NamedBody344_770

def NamedBody344_772 : StackLang.HolProg 64 :=
.seq NamedBody344_764 NamedBody344_771

def NamedBody344_773 : StackLang.HolProg 64 :=
.seq NamedBody344_763 NamedBody344_772

def NamedBody344_774 : StackLang.HolProg 64 :=
.seq NamedBody344_762 NamedBody344_773

def NamedBody344_775 : StackLang.HolProg 64 :=
.seq NamedBody344_761 NamedBody344_774

def NamedBody344_776 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody344_777 : StackLang.HolProg 64 :=
.seq NamedBody344_775 NamedBody344_776

def NamedBody344_778 : StackLang.HolProg 64 :=
.call (some (NamedBody344_760, 1, 344, 20)) (Sum.inl 336) (some (NamedBody344_777, 344, 21))

def NamedBody344_779 : StackLang.HolProg 64 :=
.seq NamedBody344_735 NamedBody344_778

def NamedBody344_780 : StackLang.HolProg 64 :=
.seq NamedBody344_734 NamedBody344_779

def NamedBody344_781 : StackLang.HolProg 64 :=
.seq NamedBody344_733 NamedBody344_780

def NamedBody344_782 : StackLang.HolProg 64 :=
.seq NamedBody344_704 NamedBody344_781

def NamedBody344_783 : StackLang.HolProg 64 :=
.seq NamedBody344_701 NamedBody344_782

def NamedBody344_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody344_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody344_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody344_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody344_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody344_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody344_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody344_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody344_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody344_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_801 : StackLang.HolProg 64 :=
.seq NamedBody344_799 NamedBody344_800

def NamedBody344_802 : StackLang.HolProg 64 :=
.seq NamedBody344_798 NamedBody344_801

def NamedBody344_803 : StackLang.HolProg 64 :=
.seq NamedBody344_797 NamedBody344_802

def NamedBody344_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody344_805 : StackLang.HolProg 64 :=
.seq NamedBody344_803 NamedBody344_804

def NamedBody344_806 : StackLang.HolProg 64 :=
.seq NamedBody344_796 NamedBody344_805

def NamedBody344_807 : StackLang.HolProg 64 :=
.seq NamedBody344_795 NamedBody344_806

def NamedBody344_808 : StackLang.HolProg 64 :=
.seq NamedBody344_794 NamedBody344_807

def NamedBody344_809 : StackLang.HolProg 64 :=
.seq NamedBody344_793 NamedBody344_808

def NamedBody344_810 : StackLang.HolProg 64 :=
.seq NamedBody344_792 NamedBody344_809

def NamedBody344_811 : StackLang.HolProg 64 :=
.seq NamedBody344_791 NamedBody344_810

def NamedBody344_812 : StackLang.HolProg 64 :=
.seq NamedBody344_790 NamedBody344_811

def NamedBody344_813 : StackLang.HolProg 64 :=
.seq NamedBody344_789 NamedBody344_812

def NamedBody344_814 : StackLang.HolProg 64 :=
.seq NamedBody344_788 NamedBody344_813

def NamedBody344_815 : StackLang.HolProg 64 :=
.seq NamedBody344_787 NamedBody344_814

def NamedBody344_816 : StackLang.HolProg 64 :=
.seq NamedBody344_786 NamedBody344_815

def NamedBody344_817 : StackLang.HolProg 64 :=
.seq NamedBody344_785 NamedBody344_816

def NamedBody344_818 : StackLang.HolProg 64 :=
.seq NamedBody344_784 NamedBody344_817

def NamedBody344_819 : StackLang.HolProg 64 :=
.seq NamedBody344_783 NamedBody344_818

def NamedBody344_820 : StackLang.HolProg 64 :=
.seq NamedBody344_700 NamedBody344_819

def NamedBody344_821 : StackLang.HolProg 64 :=
.seq NamedBody344_699 NamedBody344_820

def NamedBody344_822 : StackLang.HolProg 64 :=
.seq NamedBody344_698 NamedBody344_821

def NamedBody344_823 : StackLang.HolProg 64 :=
.seq NamedBody344_697 NamedBody344_822

def NamedBody344_824 : StackLang.HolProg 64 :=
.seq NamedBody344_696 NamedBody344_823

def NamedBody344_825 : StackLang.HolProg 64 :=
.seq NamedBody344_695 NamedBody344_824

def NamedBody344_826 : StackLang.HolProg 64 :=
.seq NamedBody344_694 NamedBody344_825

def NamedBody344_827 : StackLang.HolProg 64 :=
.seq NamedBody344_693 NamedBody344_826

def NamedBody344_828 : StackLang.HolProg 64 :=
.seq NamedBody344_692 NamedBody344_827

def NamedBody344_829 : StackLang.HolProg 64 :=
.seq NamedBody344_691 NamedBody344_828

def NamedBody344_830 : StackLang.HolProg 64 :=
.seq NamedBody344_690 NamedBody344_829

def NamedBody344_831 : StackLang.HolProg 64 :=
.seq NamedBody344_689 NamedBody344_830

def NamedBody344_832 : StackLang.HolProg 64 :=
.seq NamedBody344_688 NamedBody344_831

def NamedBody344_833 : StackLang.HolProg 64 :=
.seq NamedBody344_687 NamedBody344_832

def NamedBody344_834 : StackLang.HolProg 64 :=
.seq NamedBody344_686 NamedBody344_833

def NamedBody344_835 : StackLang.HolProg 64 :=
.seq NamedBody344_685 NamedBody344_834

def NamedBody344_836 : StackLang.HolProg 64 :=
.seq NamedBody344_626 NamedBody344_835

def NamedBody344_837 : StackLang.HolProg 64 :=
.seq NamedBody344_623 NamedBody344_836

def NamedBody344_838 : StackLang.HolProg 64 :=
.seq NamedBody344_622 NamedBody344_837

def NamedBody344_839 : StackLang.HolProg 64 :=
.seq NamedBody344_621 NamedBody344_838

def NamedBody344_840 : StackLang.HolProg 64 :=
.seq NamedBody344_620 NamedBody344_839

def NamedBody344_841 : StackLang.HolProg 64 :=
.seq NamedBody344_619 NamedBody344_840

def NamedBody344_842 : StackLang.HolProg 64 :=
.seq NamedBody344_618 NamedBody344_841

def NamedBody344_843 : StackLang.HolProg 64 :=
.seq NamedBody344_617 NamedBody344_842

def NamedBody344_844 : StackLang.HolProg 64 :=
.seq NamedBody344_616 NamedBody344_843

def NamedBody344_845 : StackLang.HolProg 64 :=
.seq NamedBody344_615 NamedBody344_844

def NamedBody344_846 : StackLang.HolProg 64 :=
.seq NamedBody344_556 NamedBody344_845

def NamedBody344_847 : StackLang.HolProg 64 :=
.seq NamedBody344_553 NamedBody344_846

def NamedBody344_848 : StackLang.HolProg 64 :=
.seq NamedBody344_552 NamedBody344_847

def NamedBody344_849 : StackLang.HolProg 64 :=
.seq NamedBody344_551 NamedBody344_848

def NamedBody344_850 : StackLang.HolProg 64 :=
.seq NamedBody344_550 NamedBody344_849

def NamedBody344_851 : StackLang.HolProg 64 :=
.seq NamedBody344_549 NamedBody344_850

def NamedBody344_852 : StackLang.HolProg 64 :=
.seq NamedBody344_548 NamedBody344_851

def NamedBody344_853 : StackLang.HolProg 64 :=
.seq NamedBody344_547 NamedBody344_852

def NamedBody344_854 : StackLang.HolProg 64 :=
.seq NamedBody344_546 NamedBody344_853

def NamedBody344_855 : StackLang.HolProg 64 :=
.seq NamedBody344_545 NamedBody344_854

def NamedBody344_856 : StackLang.HolProg 64 :=
.seq NamedBody344_544 NamedBody344_855

def NamedBody344_857 : StackLang.HolProg 64 :=
.seq NamedBody344_485 NamedBody344_856

def NamedBody344_858 : StackLang.HolProg 64 :=
.seq NamedBody344_482 NamedBody344_857

def NamedBody344_859 : StackLang.HolProg 64 :=
.seq NamedBody344_481 NamedBody344_858

def NamedBody344_860 : StackLang.HolProg 64 :=
.seq NamedBody344_480 NamedBody344_859

def NamedBody344_861 : StackLang.HolProg 64 :=
.seq NamedBody344_479 NamedBody344_860

def NamedBody344_862 : StackLang.HolProg 64 :=
.seq NamedBody344_478 NamedBody344_861

def NamedBody344_863 : StackLang.HolProg 64 :=
.seq NamedBody344_477 NamedBody344_862

def NamedBody344_864 : StackLang.HolProg 64 :=
.seq NamedBody344_476 NamedBody344_863

def NamedBody344_865 : StackLang.HolProg 64 :=
.seq NamedBody344_475 NamedBody344_864

def NamedBody344_866 : StackLang.HolProg 64 :=
.seq NamedBody344_474 NamedBody344_865

def NamedBody344_867 : StackLang.HolProg 64 :=
.seq NamedBody344_473 NamedBody344_866

def NamedBody344_868 : StackLang.HolProg 64 :=
.seq NamedBody344_414 NamedBody344_867

def NamedBody344_869 : StackLang.HolProg 64 :=
.seq NamedBody344_411 NamedBody344_868

def NamedBody344_870 : StackLang.HolProg 64 :=
.seq NamedBody344_410 NamedBody344_869

def NamedBody344_871 : StackLang.HolProg 64 :=
.seq NamedBody344_409 NamedBody344_870

def NamedBody344_872 : StackLang.HolProg 64 :=
.seq NamedBody344_408 NamedBody344_871

def NamedBody344_873 : StackLang.HolProg 64 :=
.seq NamedBody344_407 NamedBody344_872

def NamedBody344_874 : StackLang.HolProg 64 :=
.seq NamedBody344_406 NamedBody344_873

def NamedBody344_875 : StackLang.HolProg 64 :=
.seq NamedBody344_405 NamedBody344_874

def NamedBody344_876 : StackLang.HolProg 64 :=
.seq NamedBody344_404 NamedBody344_875

def NamedBody344_877 : StackLang.HolProg 64 :=
.seq NamedBody344_403 NamedBody344_876

def NamedBody344_878 : StackLang.HolProg 64 :=
.seq NamedBody344_402 NamedBody344_877

def NamedBody344_879 : StackLang.HolProg 64 :=
.seq NamedBody344_401 NamedBody344_878

def NamedBody344_880 : StackLang.HolProg 64 :=
.seq NamedBody344_400 NamedBody344_879

def NamedBody344_881 : StackLang.HolProg 64 :=
.seq NamedBody344_399 NamedBody344_880

def NamedBody344_882 : StackLang.HolProg 64 :=
.seq NamedBody344_340 NamedBody344_881

def NamedBody344_883 : StackLang.HolProg 64 :=
.seq NamedBody344_333 NamedBody344_882

def NamedBody344_884 : StackLang.HolProg 64 :=
.seq NamedBody344_332 NamedBody344_883

def NamedBody344_885 : StackLang.HolProg 64 :=
.seq NamedBody344_331 NamedBody344_884

def NamedBody344_886 : StackLang.HolProg 64 :=
.seq NamedBody344_330 NamedBody344_885

def NamedBody344_887 : StackLang.HolProg 64 :=
.seq NamedBody344_329 NamedBody344_886

def NamedBody344_888 : StackLang.HolProg 64 :=
.seq NamedBody344_328 NamedBody344_887

def NamedBody344_889 : StackLang.HolProg 64 :=
.seq NamedBody344_327 NamedBody344_888

def NamedBody344_890 : StackLang.HolProg 64 :=
.seq NamedBody344_326 NamedBody344_889

def NamedBody344_891 : StackLang.HolProg 64 :=
.seq NamedBody344_325 NamedBody344_890

def NamedBody344_892 : StackLang.HolProg 64 :=
.seq NamedBody344_324 NamedBody344_891

def NamedBody344_893 : StackLang.HolProg 64 :=
.seq NamedBody344_323 NamedBody344_892

def NamedBody344_894 : StackLang.HolProg 64 :=
.seq NamedBody344_322 NamedBody344_893

def NamedBody344_895 : StackLang.HolProg 64 :=
.seq NamedBody344_307 NamedBody344_894

def NamedBody344_896 : StackLang.HolProg 64 :=
.seq NamedBody344_306 NamedBody344_895

def NamedBody344_897 : StackLang.HolProg 64 :=
.seq NamedBody344_305 NamedBody344_896

def NamedBody344_898 : StackLang.HolProg 64 :=
.seq NamedBody344_304 NamedBody344_897

def NamedBody344_899 : StackLang.HolProg 64 :=
.seq NamedBody344_245 NamedBody344_898

def NamedBody344_900 : StackLang.HolProg 64 :=
.seq NamedBody344_242 NamedBody344_899

def NamedBody344_901 : StackLang.HolProg 64 :=
.seq NamedBody344_241 NamedBody344_900

def NamedBody344_902 : StackLang.HolProg 64 :=
.seq NamedBody344_240 NamedBody344_901

def NamedBody344_903 : StackLang.HolProg 64 :=
.seq NamedBody344_225 NamedBody344_902

def NamedBody344_904 : StackLang.HolProg 64 :=
.seq NamedBody344_224 NamedBody344_903

def NamedBody344_905 : StackLang.HolProg 64 :=
.seq NamedBody344_223 NamedBody344_904

def NamedBody344_906 : StackLang.HolProg 64 :=
.seq NamedBody344_222 NamedBody344_905

def NamedBody344_907 : StackLang.HolProg 64 :=
.seq NamedBody344_169 NamedBody344_906

def NamedBody344_908 : StackLang.HolProg 64 :=
.seq NamedBody344_148 NamedBody344_907

def NamedBody344_909 : StackLang.HolProg 64 :=
.seq NamedBody344_147 NamedBody344_908

def NamedBody344_910 : StackLang.HolProg 64 :=
.seq NamedBody344_144 NamedBody344_909

def NamedBody344_911 : StackLang.HolProg 64 :=
.seq NamedBody344_143 NamedBody344_910

def NamedBody344_912 : StackLang.HolProg 64 :=
.seq NamedBody344_142 NamedBody344_911

def NamedBody344_913 : StackLang.HolProg 64 :=
.seq NamedBody344_141 NamedBody344_912

def NamedBody344_914 : StackLang.HolProg 64 :=
.seq NamedBody344_140 NamedBody344_913

def NamedBody344_915 : StackLang.HolProg 64 :=
.seq NamedBody344_139 NamedBody344_914

def NamedBody344_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody344_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody344_919 : StackLang.HolProg 64 :=
.seq NamedBody344_917 NamedBody344_918

def NamedBody344_920 : StackLang.HolProg 64 :=
.seq NamedBody344_916 NamedBody344_919

def NamedBody344_921 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) NamedBody344_915 NamedBody344_920

def NamedBody344_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody344_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody344_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody344_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody344_927 : StackLang.HolProg 64 :=
.seq NamedBody344_925 NamedBody344_926

def NamedBody344_928 : StackLang.HolProg 64 :=
.seq NamedBody344_924 NamedBody344_927

def NamedBody344_929 : StackLang.HolProg 64 :=
.seq NamedBody344_923 NamedBody344_928

def NamedBody344_930 : StackLang.HolProg 64 :=
.seq NamedBody344_922 NamedBody344_929

def NamedBody344_931 : StackLang.HolProg 64 :=
.seq NamedBody344_921 NamedBody344_930

def NamedBody344_932 : StackLang.HolProg 64 :=
.seq NamedBody344_138 NamedBody344_931

def NamedBody344_933 : StackLang.HolProg 64 :=
.loop NamedBody344_932

def NamedBody344_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody344_935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody344_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody344_937 : StackLang.HolProg 64 :=
.seq NamedBody344_935 NamedBody344_936

def NamedBody344_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody344_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody344_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody344_941 : StackLang.HolProg 64 :=
.seq NamedBody344_939 NamedBody344_940

def NamedBody344_942 : StackLang.HolProg 64 :=
.seq NamedBody344_938 NamedBody344_941

def NamedBody344_943 : StackLang.HolProg 64 :=
.seq NamedBody344_937 NamedBody344_942

def NamedBody344_944 : StackLang.HolProg 64 :=
.seq NamedBody344_934 NamedBody344_943

def NamedBody344_945 : StackLang.HolProg 64 :=
.seq NamedBody344_933 NamedBody344_944

def NamedBody344_946 : StackLang.HolProg 64 :=
.seq NamedBody344_137 NamedBody344_945

def NamedBody344_947 : StackLang.HolProg 64 :=
.seq NamedBody344_136 NamedBody344_946

def NamedBody344_948 : StackLang.HolProg 64 :=
.seq NamedBody344_135 NamedBody344_947

def NamedBody344_949 : StackLang.HolProg 64 :=
.seq NamedBody344_134 NamedBody344_948

def NamedBody344_950 : StackLang.HolProg 64 :=
.seq NamedBody344_133 NamedBody344_949

def NamedBody344_951 : StackLang.HolProg 64 :=
.seq NamedBody344_74 NamedBody344_950

def NamedBody344_952 : StackLang.HolProg 64 :=
.seq NamedBody344_69 NamedBody344_951

def NamedBody344_953 : StackLang.HolProg 64 :=
.seq NamedBody344_68 NamedBody344_952

def NamedBody344_954 : StackLang.HolProg 64 :=
.seq NamedBody344_67 NamedBody344_953

def NamedBody344_955 : StackLang.HolProg 64 :=
.seq NamedBody344_66 NamedBody344_954

def NamedBody344_956 : StackLang.HolProg 64 :=
.seq NamedBody344_65 NamedBody344_955

def NamedBody344_957 : StackLang.HolProg 64 :=
.seq NamedBody344_64 NamedBody344_956

def NamedBody344_958 : StackLang.HolProg 64 :=
.seq NamedBody344_11 NamedBody344_957

def NamedBody344_959 : StackLang.HolProg 64 :=
.seq NamedBody344_6 NamedBody344_958

def Named344 : Nat × StackLang.HolProg 64 := (344, NamedBody344_959)
theorem Named344_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed344 = Named344 := by
  kernel_rfl
#print axioms Named344_eq
end InitECandidate.Proofs.BackendStages
