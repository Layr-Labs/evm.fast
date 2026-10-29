import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed311
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody311_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody311_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody311_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody311_3 : StackLang.HolProg 64 :=
.seq NamedBody311_1 NamedBody311_2

def NamedBody311_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody311_3 NamedBody311_4

def NamedBody311_6 : StackLang.HolProg 64 :=
.seq NamedBody311_0 NamedBody311_5

def NamedBody311_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody311_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody311_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody311_11 : StackLang.HolProg 64 :=
.seq NamedBody311_9 NamedBody311_10

def NamedBody311_12 : StackLang.HolProg 64 :=
.seq NamedBody311_8 NamedBody311_11

def NamedBody311_13 : StackLang.HolProg 64 :=
.seq NamedBody311_7 NamedBody311_12

def NamedBody311_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 856#64)

def NamedBody311_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody311_17 : StackLang.HolProg 64 :=
.seq NamedBody311_15 NamedBody311_16

def NamedBody311_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody311_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody311_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody311_21 : StackLang.HolProg 64 :=
.seq NamedBody311_19 NamedBody311_20

def NamedBody311_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody311_21 NamedBody311_22

def NamedBody311_24 : StackLang.HolProg 64 :=
.seq NamedBody311_18 NamedBody311_23

def NamedBody311_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody311_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody311_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 3

def NamedBody311_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody311_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody311_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody311_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody311_34 : StackLang.HolProg 64 :=
.seq NamedBody311_32 NamedBody311_33

def NamedBody311_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody311_36 : StackLang.HolProg 64 :=
.seq NamedBody311_34 NamedBody311_35

def NamedBody311_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody311_38 : StackLang.HolProg 64 :=
.seq NamedBody311_36 NamedBody311_37

def NamedBody311_39 : StackLang.HolProg 64 :=
.seq NamedBody311_31 NamedBody311_38

def NamedBody311_40 : StackLang.HolProg 64 :=
.seq NamedBody311_30 NamedBody311_39

def NamedBody311_41 : StackLang.HolProg 64 :=
.seq NamedBody311_29 NamedBody311_40

def NamedBody311_42 : StackLang.HolProg 64 :=
.seq NamedBody311_28 NamedBody311_41

def NamedBody311_43 : StackLang.HolProg 64 :=
.seq NamedBody311_27 NamedBody311_42

def NamedBody311_44 : StackLang.HolProg 64 :=
.seq NamedBody311_26 NamedBody311_43

def NamedBody311_45 : StackLang.HolProg 64 :=
.seq NamedBody311_25 NamedBody311_44

def NamedBody311_46 : StackLang.HolProg 64 :=
.seq NamedBody311_24 NamedBody311_45

def NamedBody311_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody311_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody311_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody311_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody311_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody311_57 : StackLang.HolProg 64 :=
.seq NamedBody311_55 NamedBody311_56

def NamedBody311_58 : StackLang.HolProg 64 :=
.seq NamedBody311_54 NamedBody311_57

def NamedBody311_59 : StackLang.HolProg 64 :=
.seq NamedBody311_53 NamedBody311_58

def NamedBody311_60 : StackLang.HolProg 64 :=
.seq NamedBody311_52 NamedBody311_59

def NamedBody311_61 : StackLang.HolProg 64 :=
.seq NamedBody311_51 NamedBody311_60

def NamedBody311_62 : StackLang.HolProg 64 :=
.seq NamedBody311_50 NamedBody311_61

def NamedBody311_63 : StackLang.HolProg 64 :=
.seq NamedBody311_49 NamedBody311_62

def NamedBody311_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody311_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody311_67 : StackLang.HolProg 64 :=
.seq NamedBody311_65 NamedBody311_66

def NamedBody311_68 : StackLang.HolProg 64 :=
.seq NamedBody311_64 NamedBody311_67

def NamedBody311_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody311_70 : StackLang.HolProg 64 :=
.seq NamedBody311_68 NamedBody311_69

def NamedBody311_71 : StackLang.HolProg 64 :=
.call (some (NamedBody311_63, 1, 311, 2)) (Sum.inl 69) (some (NamedBody311_70, 311, 3))

def NamedBody311_72 : StackLang.HolProg 64 :=
.seq NamedBody311_48 NamedBody311_71

def NamedBody311_73 : StackLang.HolProg 64 :=
.seq NamedBody311_47 NamedBody311_72

def NamedBody311_74 : StackLang.HolProg 64 :=
.seq NamedBody311_46 NamedBody311_73

def NamedBody311_75 : StackLang.HolProg 64 :=
.seq NamedBody311_17 NamedBody311_74

def NamedBody311_76 : StackLang.HolProg 64 :=
.seq NamedBody311_14 NamedBody311_75

def NamedBody311_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody311_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody311_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody311_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_81 : StackLang.HolProg 64 :=
.seq NamedBody311_79 NamedBody311_80

def NamedBody311_82 : StackLang.HolProg 64 :=
.seq NamedBody311_78 NamedBody311_81

def NamedBody311_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 857#64)

def NamedBody311_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody311_86 : StackLang.HolProg 64 :=
.seq NamedBody311_84 NamedBody311_85

def NamedBody311_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody311_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody311_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody311_90 : StackLang.HolProg 64 :=
.seq NamedBody311_88 NamedBody311_89

def NamedBody311_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody311_90 NamedBody311_91

def NamedBody311_93 : StackLang.HolProg 64 :=
.seq NamedBody311_87 NamedBody311_92

def NamedBody311_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody311_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody311_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 5

def NamedBody311_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody311_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody311_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody311_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody311_103 : StackLang.HolProg 64 :=
.seq NamedBody311_101 NamedBody311_102

def NamedBody311_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody311_105 : StackLang.HolProg 64 :=
.seq NamedBody311_103 NamedBody311_104

def NamedBody311_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody311_107 : StackLang.HolProg 64 :=
.seq NamedBody311_105 NamedBody311_106

def NamedBody311_108 : StackLang.HolProg 64 :=
.seq NamedBody311_100 NamedBody311_107

def NamedBody311_109 : StackLang.HolProg 64 :=
.seq NamedBody311_99 NamedBody311_108

def NamedBody311_110 : StackLang.HolProg 64 :=
.seq NamedBody311_98 NamedBody311_109

def NamedBody311_111 : StackLang.HolProg 64 :=
.seq NamedBody311_97 NamedBody311_110

def NamedBody311_112 : StackLang.HolProg 64 :=
.seq NamedBody311_96 NamedBody311_111

def NamedBody311_113 : StackLang.HolProg 64 :=
.seq NamedBody311_95 NamedBody311_112

def NamedBody311_114 : StackLang.HolProg 64 :=
.seq NamedBody311_94 NamedBody311_113

def NamedBody311_115 : StackLang.HolProg 64 :=
.seq NamedBody311_93 NamedBody311_114

def NamedBody311_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody311_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody311_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody311_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody311_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody311_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody311_127 : StackLang.HolProg 64 :=
.seq NamedBody311_125 NamedBody311_126

def NamedBody311_128 : StackLang.HolProg 64 :=
.seq NamedBody311_124 NamedBody311_127

def NamedBody311_129 : StackLang.HolProg 64 :=
.seq NamedBody311_123 NamedBody311_128

def NamedBody311_130 : StackLang.HolProg 64 :=
.seq NamedBody311_122 NamedBody311_129

def NamedBody311_131 : StackLang.HolProg 64 :=
.seq NamedBody311_121 NamedBody311_130

def NamedBody311_132 : StackLang.HolProg 64 :=
.seq NamedBody311_120 NamedBody311_131

def NamedBody311_133 : StackLang.HolProg 64 :=
.seq NamedBody311_119 NamedBody311_132

def NamedBody311_134 : StackLang.HolProg 64 :=
.seq NamedBody311_118 NamedBody311_133

def NamedBody311_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody311_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody311_138 : StackLang.HolProg 64 :=
.seq NamedBody311_136 NamedBody311_137

def NamedBody311_139 : StackLang.HolProg 64 :=
.seq NamedBody311_135 NamedBody311_138

def NamedBody311_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody311_141 : StackLang.HolProg 64 :=
.seq NamedBody311_139 NamedBody311_140

def NamedBody311_142 : StackLang.HolProg 64 :=
.call (some (NamedBody311_134, 1, 311, 4)) (Sum.inl 310) (some (NamedBody311_141, 311, 5))

def NamedBody311_143 : StackLang.HolProg 64 :=
.seq NamedBody311_117 NamedBody311_142

def NamedBody311_144 : StackLang.HolProg 64 :=
.seq NamedBody311_116 NamedBody311_143

def NamedBody311_145 : StackLang.HolProg 64 :=
.seq NamedBody311_115 NamedBody311_144

def NamedBody311_146 : StackLang.HolProg 64 :=
.seq NamedBody311_86 NamedBody311_145

def NamedBody311_147 : StackLang.HolProg 64 :=
.seq NamedBody311_83 NamedBody311_146

def NamedBody311_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody311_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody311_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 858#64)

def NamedBody311_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody311_155 : StackLang.HolProg 64 :=
.seq NamedBody311_153 NamedBody311_154

def NamedBody311_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody311_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody311_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody311_159 : StackLang.HolProg 64 :=
.seq NamedBody311_157 NamedBody311_158

def NamedBody311_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody311_159 NamedBody311_160

def NamedBody311_162 : StackLang.HolProg 64 :=
.seq NamedBody311_156 NamedBody311_161

def NamedBody311_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody311_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody311_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 7

def NamedBody311_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody311_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody311_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody311_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody311_172 : StackLang.HolProg 64 :=
.seq NamedBody311_170 NamedBody311_171

def NamedBody311_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody311_174 : StackLang.HolProg 64 :=
.seq NamedBody311_172 NamedBody311_173

def NamedBody311_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody311_176 : StackLang.HolProg 64 :=
.seq NamedBody311_174 NamedBody311_175

def NamedBody311_177 : StackLang.HolProg 64 :=
.seq NamedBody311_169 NamedBody311_176

def NamedBody311_178 : StackLang.HolProg 64 :=
.seq NamedBody311_168 NamedBody311_177

def NamedBody311_179 : StackLang.HolProg 64 :=
.seq NamedBody311_167 NamedBody311_178

def NamedBody311_180 : StackLang.HolProg 64 :=
.seq NamedBody311_166 NamedBody311_179

def NamedBody311_181 : StackLang.HolProg 64 :=
.seq NamedBody311_165 NamedBody311_180

def NamedBody311_182 : StackLang.HolProg 64 :=
.seq NamedBody311_164 NamedBody311_181

def NamedBody311_183 : StackLang.HolProg 64 :=
.seq NamedBody311_163 NamedBody311_182

def NamedBody311_184 : StackLang.HolProg 64 :=
.seq NamedBody311_162 NamedBody311_183

def NamedBody311_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody311_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody311_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody311_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody311_193 : StackLang.HolProg 64 :=
.seq NamedBody311_191 NamedBody311_192

def NamedBody311_194 : StackLang.HolProg 64 :=
.seq NamedBody311_190 NamedBody311_193

def NamedBody311_195 : StackLang.HolProg 64 :=
.seq NamedBody311_189 NamedBody311_194

def NamedBody311_196 : StackLang.HolProg 64 :=
.seq NamedBody311_188 NamedBody311_195

def NamedBody311_197 : StackLang.HolProg 64 :=
.seq NamedBody311_187 NamedBody311_196

def NamedBody311_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody311_199 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody311_200 : StackLang.HolProg 64 :=
.seq NamedBody311_198 NamedBody311_199

def NamedBody311_201 : StackLang.HolProg 64 :=
.call (some (NamedBody311_197, 1, 311, 6)) (Sum.inl 306) (some (NamedBody311_200, 311, 7))

def NamedBody311_202 : StackLang.HolProg 64 :=
.seq NamedBody311_186 NamedBody311_201

def NamedBody311_203 : StackLang.HolProg 64 :=
.seq NamedBody311_185 NamedBody311_202

def NamedBody311_204 : StackLang.HolProg 64 :=
.seq NamedBody311_184 NamedBody311_203

def NamedBody311_205 : StackLang.HolProg 64 :=
.seq NamedBody311_155 NamedBody311_204

def NamedBody311_206 : StackLang.HolProg 64 :=
.seq NamedBody311_152 NamedBody311_205

def NamedBody311_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody311_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody311_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody311_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody311_212 : StackLang.HolProg 64 :=
.seq NamedBody311_210 NamedBody311_211

def NamedBody311_213 : StackLang.HolProg 64 :=
.seq NamedBody311_209 NamedBody311_212

def NamedBody311_214 : StackLang.HolProg 64 :=
.seq NamedBody311_208 NamedBody311_213

def NamedBody311_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 859#64)

def NamedBody311_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody311_218 : StackLang.HolProg 64 :=
.seq NamedBody311_216 NamedBody311_217

def NamedBody311_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody311_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody311_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody311_222 : StackLang.HolProg 64 :=
.seq NamedBody311_220 NamedBody311_221

def NamedBody311_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_224 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody311_222 NamedBody311_223

def NamedBody311_225 : StackLang.HolProg 64 :=
.seq NamedBody311_219 NamedBody311_224

def NamedBody311_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody311_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody311_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 9

def NamedBody311_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody311_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody311_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody311_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody311_235 : StackLang.HolProg 64 :=
.seq NamedBody311_233 NamedBody311_234

def NamedBody311_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody311_237 : StackLang.HolProg 64 :=
.seq NamedBody311_235 NamedBody311_236

def NamedBody311_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody311_239 : StackLang.HolProg 64 :=
.seq NamedBody311_237 NamedBody311_238

def NamedBody311_240 : StackLang.HolProg 64 :=
.seq NamedBody311_232 NamedBody311_239

def NamedBody311_241 : StackLang.HolProg 64 :=
.seq NamedBody311_231 NamedBody311_240

def NamedBody311_242 : StackLang.HolProg 64 :=
.seq NamedBody311_230 NamedBody311_241

def NamedBody311_243 : StackLang.HolProg 64 :=
.seq NamedBody311_229 NamedBody311_242

def NamedBody311_244 : StackLang.HolProg 64 :=
.seq NamedBody311_228 NamedBody311_243

def NamedBody311_245 : StackLang.HolProg 64 :=
.seq NamedBody311_227 NamedBody311_244

def NamedBody311_246 : StackLang.HolProg 64 :=
.seq NamedBody311_226 NamedBody311_245

def NamedBody311_247 : StackLang.HolProg 64 :=
.seq NamedBody311_225 NamedBody311_246

def NamedBody311_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody311_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody311_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody311_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody311_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody311_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody311_258 : StackLang.HolProg 64 :=
.seq NamedBody311_256 NamedBody311_257

def NamedBody311_259 : StackLang.HolProg 64 :=
.seq NamedBody311_255 NamedBody311_258

def NamedBody311_260 : StackLang.HolProg 64 :=
.seq NamedBody311_254 NamedBody311_259

def NamedBody311_261 : StackLang.HolProg 64 :=
.seq NamedBody311_253 NamedBody311_260

def NamedBody311_262 : StackLang.HolProg 64 :=
.seq NamedBody311_252 NamedBody311_261

def NamedBody311_263 : StackLang.HolProg 64 :=
.seq NamedBody311_251 NamedBody311_262

def NamedBody311_264 : StackLang.HolProg 64 :=
.seq NamedBody311_250 NamedBody311_263

def NamedBody311_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody311_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody311_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody311_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody311_269 : StackLang.HolProg 64 :=
.seq NamedBody311_267 NamedBody311_268

def NamedBody311_270 : StackLang.HolProg 64 :=
.seq NamedBody311_266 NamedBody311_269

def NamedBody311_271 : StackLang.HolProg 64 :=
.seq NamedBody311_265 NamedBody311_270

def NamedBody311_272 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody311_273 : StackLang.HolProg 64 :=
.seq NamedBody311_271 NamedBody311_272

def NamedBody311_274 : StackLang.HolProg 64 :=
.call (some (NamedBody311_264, 1, 311, 8)) (Sum.inl 70) (some (NamedBody311_273, 311, 9))

def NamedBody311_275 : StackLang.HolProg 64 :=
.seq NamedBody311_249 NamedBody311_274

def NamedBody311_276 : StackLang.HolProg 64 :=
.seq NamedBody311_248 NamedBody311_275

def NamedBody311_277 : StackLang.HolProg 64 :=
.seq NamedBody311_247 NamedBody311_276

def NamedBody311_278 : StackLang.HolProg 64 :=
.seq NamedBody311_218 NamedBody311_277

def NamedBody311_279 : StackLang.HolProg 64 :=
.seq NamedBody311_215 NamedBody311_278

def NamedBody311_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody311_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody311_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody311_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody311_284 : StackLang.HolProg 64 :=
.seq NamedBody311_282 NamedBody311_283

def NamedBody311_285 : StackLang.HolProg 64 :=
.seq NamedBody311_281 NamedBody311_284

def NamedBody311_286 : StackLang.HolProg 64 :=
.seq NamedBody311_280 NamedBody311_285

def NamedBody311_287 : StackLang.HolProg 64 :=
.seq NamedBody311_279 NamedBody311_286

def NamedBody311_288 : StackLang.HolProg 64 :=
.seq NamedBody311_214 NamedBody311_287

def NamedBody311_289 : StackLang.HolProg 64 :=
.seq NamedBody311_207 NamedBody311_288

def NamedBody311_290 : StackLang.HolProg 64 :=
.seq NamedBody311_206 NamedBody311_289

def NamedBody311_291 : StackLang.HolProg 64 :=
.seq NamedBody311_151 NamedBody311_290

def NamedBody311_292 : StackLang.HolProg 64 :=
.seq NamedBody311_150 NamedBody311_291

def NamedBody311_293 : StackLang.HolProg 64 :=
.seq NamedBody311_149 NamedBody311_292

def NamedBody311_294 : StackLang.HolProg 64 :=
.seq NamedBody311_148 NamedBody311_293

def NamedBody311_295 : StackLang.HolProg 64 :=
.seq NamedBody311_147 NamedBody311_294

def NamedBody311_296 : StackLang.HolProg 64 :=
.seq NamedBody311_82 NamedBody311_295

def NamedBody311_297 : StackLang.HolProg 64 :=
.seq NamedBody311_77 NamedBody311_296

def NamedBody311_298 : StackLang.HolProg 64 :=
.seq NamedBody311_76 NamedBody311_297

def NamedBody311_299 : StackLang.HolProg 64 :=
.seq NamedBody311_13 NamedBody311_298

def NamedBody311_300 : StackLang.HolProg 64 :=
.seq NamedBody311_6 NamedBody311_299

def Named311 : Nat × StackLang.HolProg 64 := (311, NamedBody311_300)
theorem Named311_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed311 = Named311 := by
  kernel_rfl
#print axioms Named311_eq
end InitECandidate.Proofs.BackendStages
