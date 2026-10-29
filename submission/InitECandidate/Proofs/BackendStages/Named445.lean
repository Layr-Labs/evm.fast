import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed445
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody445_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody445_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody445_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody445_3 : StackLang.HolProg 64 :=
.seq NamedBody445_1 NamedBody445_2

def NamedBody445_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody445_3 NamedBody445_4

def NamedBody445_6 : StackLang.HolProg 64 :=
.seq NamedBody445_0 NamedBody445_5

def NamedBody445_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody445_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody445_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody445_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody445_11 : StackLang.HolProg 64 :=
.seq NamedBody445_9 NamedBody445_10

def NamedBody445_12 : StackLang.HolProg 64 :=
.seq NamedBody445_8 NamedBody445_11

def NamedBody445_13 : StackLang.HolProg 64 :=
.seq NamedBody445_7 NamedBody445_12

def NamedBody445_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1343#64)

def NamedBody445_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody445_17 : StackLang.HolProg 64 :=
.seq NamedBody445_15 NamedBody445_16

def NamedBody445_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody445_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody445_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody445_21 : StackLang.HolProg 64 :=
.seq NamedBody445_19 NamedBody445_20

def NamedBody445_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody445_21 NamedBody445_22

def NamedBody445_24 : StackLang.HolProg 64 :=
.seq NamedBody445_18 NamedBody445_23

def NamedBody445_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody445_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody445_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 445 3

def NamedBody445_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody445_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody445_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody445_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody445_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody445_34 : StackLang.HolProg 64 :=
.seq NamedBody445_32 NamedBody445_33

def NamedBody445_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody445_36 : StackLang.HolProg 64 :=
.seq NamedBody445_34 NamedBody445_35

def NamedBody445_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody445_38 : StackLang.HolProg 64 :=
.seq NamedBody445_36 NamedBody445_37

def NamedBody445_39 : StackLang.HolProg 64 :=
.seq NamedBody445_31 NamedBody445_38

def NamedBody445_40 : StackLang.HolProg 64 :=
.seq NamedBody445_30 NamedBody445_39

def NamedBody445_41 : StackLang.HolProg 64 :=
.seq NamedBody445_29 NamedBody445_40

def NamedBody445_42 : StackLang.HolProg 64 :=
.seq NamedBody445_28 NamedBody445_41

def NamedBody445_43 : StackLang.HolProg 64 :=
.seq NamedBody445_27 NamedBody445_42

def NamedBody445_44 : StackLang.HolProg 64 :=
.seq NamedBody445_26 NamedBody445_43

def NamedBody445_45 : StackLang.HolProg 64 :=
.seq NamedBody445_25 NamedBody445_44

def NamedBody445_46 : StackLang.HolProg 64 :=
.seq NamedBody445_24 NamedBody445_45

def NamedBody445_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody445_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody445_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody445_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody445_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody445_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody445_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody445_57 : StackLang.HolProg 64 :=
.seq NamedBody445_55 NamedBody445_56

def NamedBody445_58 : StackLang.HolProg 64 :=
.seq NamedBody445_54 NamedBody445_57

def NamedBody445_59 : StackLang.HolProg 64 :=
.seq NamedBody445_53 NamedBody445_58

def NamedBody445_60 : StackLang.HolProg 64 :=
.seq NamedBody445_52 NamedBody445_59

def NamedBody445_61 : StackLang.HolProg 64 :=
.seq NamedBody445_51 NamedBody445_60

def NamedBody445_62 : StackLang.HolProg 64 :=
.seq NamedBody445_50 NamedBody445_61

def NamedBody445_63 : StackLang.HolProg 64 :=
.seq NamedBody445_49 NamedBody445_62

def NamedBody445_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody445_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody445_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody445_67 : StackLang.HolProg 64 :=
.seq NamedBody445_65 NamedBody445_66

def NamedBody445_68 : StackLang.HolProg 64 :=
.seq NamedBody445_64 NamedBody445_67

def NamedBody445_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody445_70 : StackLang.HolProg 64 :=
.seq NamedBody445_68 NamedBody445_69

def NamedBody445_71 : StackLang.HolProg 64 :=
.call (some (NamedBody445_63, 1, 445, 2)) (Sum.inl 439) (some (NamedBody445_70, 445, 3))

def NamedBody445_72 : StackLang.HolProg 64 :=
.seq NamedBody445_48 NamedBody445_71

def NamedBody445_73 : StackLang.HolProg 64 :=
.seq NamedBody445_47 NamedBody445_72

def NamedBody445_74 : StackLang.HolProg 64 :=
.seq NamedBody445_46 NamedBody445_73

def NamedBody445_75 : StackLang.HolProg 64 :=
.seq NamedBody445_17 NamedBody445_74

def NamedBody445_76 : StackLang.HolProg 64 :=
.seq NamedBody445_14 NamedBody445_75

def NamedBody445_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody445_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody445_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 24#64)

def NamedBody445_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1344#64)

def NamedBody445_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody445_86 : StackLang.HolProg 64 :=
.seq NamedBody445_84 NamedBody445_85

def NamedBody445_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody445_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody445_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody445_90 : StackLang.HolProg 64 :=
.seq NamedBody445_88 NamedBody445_89

def NamedBody445_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody445_90 NamedBody445_91

def NamedBody445_93 : StackLang.HolProg 64 :=
.seq NamedBody445_87 NamedBody445_92

def NamedBody445_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody445_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody445_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 445 5

def NamedBody445_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody445_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody445_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody445_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody445_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody445_103 : StackLang.HolProg 64 :=
.seq NamedBody445_101 NamedBody445_102

def NamedBody445_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody445_105 : StackLang.HolProg 64 :=
.seq NamedBody445_103 NamedBody445_104

def NamedBody445_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody445_107 : StackLang.HolProg 64 :=
.seq NamedBody445_105 NamedBody445_106

def NamedBody445_108 : StackLang.HolProg 64 :=
.seq NamedBody445_100 NamedBody445_107

def NamedBody445_109 : StackLang.HolProg 64 :=
.seq NamedBody445_99 NamedBody445_108

def NamedBody445_110 : StackLang.HolProg 64 :=
.seq NamedBody445_98 NamedBody445_109

def NamedBody445_111 : StackLang.HolProg 64 :=
.seq NamedBody445_97 NamedBody445_110

def NamedBody445_112 : StackLang.HolProg 64 :=
.seq NamedBody445_96 NamedBody445_111

def NamedBody445_113 : StackLang.HolProg 64 :=
.seq NamedBody445_95 NamedBody445_112

def NamedBody445_114 : StackLang.HolProg 64 :=
.seq NamedBody445_94 NamedBody445_113

def NamedBody445_115 : StackLang.HolProg 64 :=
.seq NamedBody445_93 NamedBody445_114

def NamedBody445_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody445_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody445_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody445_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody445_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody445_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody445_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody445_126 : StackLang.HolProg 64 :=
.seq NamedBody445_124 NamedBody445_125

def NamedBody445_127 : StackLang.HolProg 64 :=
.seq NamedBody445_123 NamedBody445_126

def NamedBody445_128 : StackLang.HolProg 64 :=
.seq NamedBody445_122 NamedBody445_127

def NamedBody445_129 : StackLang.HolProg 64 :=
.seq NamedBody445_121 NamedBody445_128

def NamedBody445_130 : StackLang.HolProg 64 :=
.seq NamedBody445_120 NamedBody445_129

def NamedBody445_131 : StackLang.HolProg 64 :=
.seq NamedBody445_119 NamedBody445_130

def NamedBody445_132 : StackLang.HolProg 64 :=
.seq NamedBody445_118 NamedBody445_131

def NamedBody445_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody445_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody445_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody445_136 : StackLang.HolProg 64 :=
.seq NamedBody445_134 NamedBody445_135

def NamedBody445_137 : StackLang.HolProg 64 :=
.seq NamedBody445_133 NamedBody445_136

def NamedBody445_138 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody445_139 : StackLang.HolProg 64 :=
.seq NamedBody445_137 NamedBody445_138

def NamedBody445_140 : StackLang.HolProg 64 :=
.call (some (NamedBody445_132, 1, 445, 4)) (Sum.inl 440) (some (NamedBody445_139, 445, 5))

def NamedBody445_141 : StackLang.HolProg 64 :=
.seq NamedBody445_117 NamedBody445_140

def NamedBody445_142 : StackLang.HolProg 64 :=
.seq NamedBody445_116 NamedBody445_141

def NamedBody445_143 : StackLang.HolProg 64 :=
.seq NamedBody445_115 NamedBody445_142

def NamedBody445_144 : StackLang.HolProg 64 :=
.seq NamedBody445_86 NamedBody445_143

def NamedBody445_145 : StackLang.HolProg 64 :=
.seq NamedBody445_83 NamedBody445_144

def NamedBody445_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody445_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody445_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody445_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody445_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody445_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody445_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody445_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody445_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody445_159 : StackLang.HolProg 64 :=
.seq NamedBody445_157 NamedBody445_158

def NamedBody445_160 : StackLang.HolProg 64 :=
.seq NamedBody445_156 NamedBody445_159

def NamedBody445_161 : StackLang.HolProg 64 :=
.seq NamedBody445_155 NamedBody445_160

def NamedBody445_162 : StackLang.HolProg 64 :=
.seq NamedBody445_154 NamedBody445_161

def NamedBody445_163 : StackLang.HolProg 64 :=
.seq NamedBody445_153 NamedBody445_162

def NamedBody445_164 : StackLang.HolProg 64 :=
.seq NamedBody445_152 NamedBody445_163

def NamedBody445_165 : StackLang.HolProg 64 :=
.seq NamedBody445_151 NamedBody445_164

def NamedBody445_166 : StackLang.HolProg 64 :=
.seq NamedBody445_150 NamedBody445_165

def NamedBody445_167 : StackLang.HolProg 64 :=
.seq NamedBody445_149 NamedBody445_166

def NamedBody445_168 : StackLang.HolProg 64 :=
.seq NamedBody445_148 NamedBody445_167

def NamedBody445_169 : StackLang.HolProg 64 :=
.seq NamedBody445_147 NamedBody445_168

def NamedBody445_170 : StackLang.HolProg 64 :=
.seq NamedBody445_146 NamedBody445_169

def NamedBody445_171 : StackLang.HolProg 64 :=
.seq NamedBody445_145 NamedBody445_170

def NamedBody445_172 : StackLang.HolProg 64 :=
.seq NamedBody445_82 NamedBody445_171

def NamedBody445_173 : StackLang.HolProg 64 :=
.seq NamedBody445_81 NamedBody445_172

def NamedBody445_174 : StackLang.HolProg 64 :=
.seq NamedBody445_80 NamedBody445_173

def NamedBody445_175 : StackLang.HolProg 64 :=
.seq NamedBody445_79 NamedBody445_174

def NamedBody445_176 : StackLang.HolProg 64 :=
.seq NamedBody445_78 NamedBody445_175

def NamedBody445_177 : StackLang.HolProg 64 :=
.seq NamedBody445_77 NamedBody445_176

def NamedBody445_178 : StackLang.HolProg 64 :=
.seq NamedBody445_76 NamedBody445_177

def NamedBody445_179 : StackLang.HolProg 64 :=
.seq NamedBody445_13 NamedBody445_178

def NamedBody445_180 : StackLang.HolProg 64 :=
.seq NamedBody445_6 NamedBody445_179

def Named445 : Nat × StackLang.HolProg 64 := (445, NamedBody445_180)
theorem Named445_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed445 = Named445 := by
  kernel_rfl
#print axioms Named445_eq
end InitECandidate.Proofs.BackendStages
