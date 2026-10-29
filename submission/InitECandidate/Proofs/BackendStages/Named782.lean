import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed782
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody782_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody782_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_3 : StackLang.HolProg 64 :=
.seq NamedBody782_1 NamedBody782_2

def NamedBody782_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_3 NamedBody782_4

def NamedBody782_6 : StackLang.HolProg 64 :=
.seq NamedBody782_0 NamedBody782_5

def NamedBody782_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody782_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_10 : StackLang.HolProg 64 :=
.seq NamedBody782_8 NamedBody782_9

def NamedBody782_11 : StackLang.HolProg 64 :=
.seq NamedBody782_7 NamedBody782_10

def NamedBody782_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3550#64)

def NamedBody782_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_15 : StackLang.HolProg 64 :=
.seq NamedBody782_13 NamedBody782_14

def NamedBody782_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_19 : StackLang.HolProg 64 :=
.seq NamedBody782_17 NamedBody782_18

def NamedBody782_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_19 NamedBody782_20

def NamedBody782_22 : StackLang.HolProg 64 :=
.seq NamedBody782_16 NamedBody782_21

def NamedBody782_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 3

def NamedBody782_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_32 : StackLang.HolProg 64 :=
.seq NamedBody782_30 NamedBody782_31

def NamedBody782_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_34 : StackLang.HolProg 64 :=
.seq NamedBody782_32 NamedBody782_33

def NamedBody782_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_36 : StackLang.HolProg 64 :=
.seq NamedBody782_34 NamedBody782_35

def NamedBody782_37 : StackLang.HolProg 64 :=
.seq NamedBody782_29 NamedBody782_36

def NamedBody782_38 : StackLang.HolProg 64 :=
.seq NamedBody782_28 NamedBody782_37

def NamedBody782_39 : StackLang.HolProg 64 :=
.seq NamedBody782_27 NamedBody782_38

def NamedBody782_40 : StackLang.HolProg 64 :=
.seq NamedBody782_26 NamedBody782_39

def NamedBody782_41 : StackLang.HolProg 64 :=
.seq NamedBody782_25 NamedBody782_40

def NamedBody782_42 : StackLang.HolProg 64 :=
.seq NamedBody782_24 NamedBody782_41

def NamedBody782_43 : StackLang.HolProg 64 :=
.seq NamedBody782_23 NamedBody782_42

def NamedBody782_44 : StackLang.HolProg 64 :=
.seq NamedBody782_22 NamedBody782_43

def NamedBody782_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody782_52 : StackLang.HolProg 64 :=
.seq NamedBody782_50 NamedBody782_51

def NamedBody782_53 : StackLang.HolProg 64 :=
.seq NamedBody782_49 NamedBody782_52

def NamedBody782_54 : StackLang.HolProg 64 :=
.seq NamedBody782_48 NamedBody782_53

def NamedBody782_55 : StackLang.HolProg 64 :=
.seq NamedBody782_47 NamedBody782_54

def NamedBody782_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_58 : StackLang.HolProg 64 :=
.seq NamedBody782_56 NamedBody782_57

def NamedBody782_59 : StackLang.HolProg 64 :=
.call (some (NamedBody782_55, 1, 782, 2)) (Sum.inl 69) (some (NamedBody782_58, 782, 3))

def NamedBody782_60 : StackLang.HolProg 64 :=
.seq NamedBody782_46 NamedBody782_59

def NamedBody782_61 : StackLang.HolProg 64 :=
.seq NamedBody782_45 NamedBody782_60

def NamedBody782_62 : StackLang.HolProg 64 :=
.seq NamedBody782_44 NamedBody782_61

def NamedBody782_63 : StackLang.HolProg 64 :=
.seq NamedBody782_15 NamedBody782_62

def NamedBody782_64 : StackLang.HolProg 64 :=
.seq NamedBody782_12 NamedBody782_63

def NamedBody782_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 768#64)

def NamedBody782_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3551#64)

def NamedBody782_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_71 : StackLang.HolProg 64 :=
.seq NamedBody782_69 NamedBody782_70

def NamedBody782_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_75 : StackLang.HolProg 64 :=
.seq NamedBody782_73 NamedBody782_74

def NamedBody782_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_75 NamedBody782_76

def NamedBody782_78 : StackLang.HolProg 64 :=
.seq NamedBody782_72 NamedBody782_77

def NamedBody782_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 5

def NamedBody782_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_88 : StackLang.HolProg 64 :=
.seq NamedBody782_86 NamedBody782_87

def NamedBody782_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_90 : StackLang.HolProg 64 :=
.seq NamedBody782_88 NamedBody782_89

def NamedBody782_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_92 : StackLang.HolProg 64 :=
.seq NamedBody782_90 NamedBody782_91

def NamedBody782_93 : StackLang.HolProg 64 :=
.seq NamedBody782_85 NamedBody782_92

def NamedBody782_94 : StackLang.HolProg 64 :=
.seq NamedBody782_84 NamedBody782_93

def NamedBody782_95 : StackLang.HolProg 64 :=
.seq NamedBody782_83 NamedBody782_94

def NamedBody782_96 : StackLang.HolProg 64 :=
.seq NamedBody782_82 NamedBody782_95

def NamedBody782_97 : StackLang.HolProg 64 :=
.seq NamedBody782_81 NamedBody782_96

def NamedBody782_98 : StackLang.HolProg 64 :=
.seq NamedBody782_80 NamedBody782_97

def NamedBody782_99 : StackLang.HolProg 64 :=
.seq NamedBody782_79 NamedBody782_98

def NamedBody782_100 : StackLang.HolProg 64 :=
.seq NamedBody782_78 NamedBody782_99

def NamedBody782_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody782_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_109 : StackLang.HolProg 64 :=
.seq NamedBody782_107 NamedBody782_108

def NamedBody782_110 : StackLang.HolProg 64 :=
.seq NamedBody782_106 NamedBody782_109

def NamedBody782_111 : StackLang.HolProg 64 :=
.seq NamedBody782_105 NamedBody782_110

def NamedBody782_112 : StackLang.HolProg 64 :=
.seq NamedBody782_104 NamedBody782_111

def NamedBody782_113 : StackLang.HolProg 64 :=
.seq NamedBody782_103 NamedBody782_112

def NamedBody782_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_116 : StackLang.HolProg 64 :=
.seq NamedBody782_114 NamedBody782_115

def NamedBody782_117 : StackLang.HolProg 64 :=
.call (some (NamedBody782_113, 1, 782, 4)) (Sum.inl 68) (some (NamedBody782_116, 782, 5))

def NamedBody782_118 : StackLang.HolProg 64 :=
.seq NamedBody782_102 NamedBody782_117

def NamedBody782_119 : StackLang.HolProg 64 :=
.seq NamedBody782_101 NamedBody782_118

def NamedBody782_120 : StackLang.HolProg 64 :=
.seq NamedBody782_100 NamedBody782_119

def NamedBody782_121 : StackLang.HolProg 64 :=
.seq NamedBody782_71 NamedBody782_120

def NamedBody782_122 : StackLang.HolProg 64 :=
.seq NamedBody782_68 NamedBody782_121

def NamedBody782_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody782_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody782_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody782_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def NamedBody782_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 384#64)))

def NamedBody782_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 480#64)))

def NamedBody782_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 576#64)))

def NamedBody782_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 672#64)))

def NamedBody782_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody782_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 27 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody782_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody782_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody782_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_153 : StackLang.HolProg 64 :=
.seq NamedBody782_151 NamedBody782_152

def NamedBody782_154 : StackLang.HolProg 64 :=
.seq NamedBody782_150 NamedBody782_153

def NamedBody782_155 : StackLang.HolProg 64 :=
.seq NamedBody782_149 NamedBody782_154

def NamedBody782_156 : StackLang.HolProg 64 :=
.seq NamedBody782_148 NamedBody782_155

def NamedBody782_157 : StackLang.HolProg 64 :=
.seq NamedBody782_147 NamedBody782_156

def NamedBody782_158 : StackLang.HolProg 64 :=
.seq NamedBody782_146 NamedBody782_157

def NamedBody782_159 : StackLang.HolProg 64 :=
.seq NamedBody782_145 NamedBody782_158

def NamedBody782_160 : StackLang.HolProg 64 :=
.seq NamedBody782_144 NamedBody782_159

def NamedBody782_161 : StackLang.HolProg 64 :=
.seq NamedBody782_143 NamedBody782_160

def NamedBody782_162 : StackLang.HolProg 64 :=
.seq NamedBody782_142 NamedBody782_161

def NamedBody782_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3552#64)

def NamedBody782_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_166 : StackLang.HolProg 64 :=
.seq NamedBody782_164 NamedBody782_165

def NamedBody782_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_170 : StackLang.HolProg 64 :=
.seq NamedBody782_168 NamedBody782_169

def NamedBody782_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_172 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_170 NamedBody782_171

def NamedBody782_173 : StackLang.HolProg 64 :=
.seq NamedBody782_167 NamedBody782_172

def NamedBody782_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 7

def NamedBody782_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_183 : StackLang.HolProg 64 :=
.seq NamedBody782_181 NamedBody782_182

def NamedBody782_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_185 : StackLang.HolProg 64 :=
.seq NamedBody782_183 NamedBody782_184

def NamedBody782_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_187 : StackLang.HolProg 64 :=
.seq NamedBody782_185 NamedBody782_186

def NamedBody782_188 : StackLang.HolProg 64 :=
.seq NamedBody782_180 NamedBody782_187

def NamedBody782_189 : StackLang.HolProg 64 :=
.seq NamedBody782_179 NamedBody782_188

def NamedBody782_190 : StackLang.HolProg 64 :=
.seq NamedBody782_178 NamedBody782_189

def NamedBody782_191 : StackLang.HolProg 64 :=
.seq NamedBody782_177 NamedBody782_190

def NamedBody782_192 : StackLang.HolProg 64 :=
.seq NamedBody782_176 NamedBody782_191

def NamedBody782_193 : StackLang.HolProg 64 :=
.seq NamedBody782_175 NamedBody782_192

def NamedBody782_194 : StackLang.HolProg 64 :=
.seq NamedBody782_174 NamedBody782_193

def NamedBody782_195 : StackLang.HolProg 64 :=
.seq NamedBody782_173 NamedBody782_194

def NamedBody782_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody782_204 : StackLang.HolProg 64 :=
.seq NamedBody782_202 NamedBody782_203

def NamedBody782_205 : StackLang.HolProg 64 :=
.seq NamedBody782_201 NamedBody782_204

def NamedBody782_206 : StackLang.HolProg 64 :=
.seq NamedBody782_200 NamedBody782_205

def NamedBody782_207 : StackLang.HolProg 64 :=
.seq NamedBody782_199 NamedBody782_206

def NamedBody782_208 : StackLang.HolProg 64 :=
.seq NamedBody782_198 NamedBody782_207

def NamedBody782_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody782_211 : StackLang.HolProg 64 :=
.seq NamedBody782_209 NamedBody782_210

def NamedBody782_212 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_213 : StackLang.HolProg 64 :=
.seq NamedBody782_211 NamedBody782_212

def NamedBody782_214 : StackLang.HolProg 64 :=
.call (some (NamedBody782_208, 1, 782, 6)) (Sum.inl 740) (some (NamedBody782_213, 782, 7))

def NamedBody782_215 : StackLang.HolProg 64 :=
.seq NamedBody782_197 NamedBody782_214

def NamedBody782_216 : StackLang.HolProg 64 :=
.seq NamedBody782_196 NamedBody782_215

def NamedBody782_217 : StackLang.HolProg 64 :=
.seq NamedBody782_195 NamedBody782_216

def NamedBody782_218 : StackLang.HolProg 64 :=
.seq NamedBody782_166 NamedBody782_217

def NamedBody782_219 : StackLang.HolProg 64 :=
.seq NamedBody782_163 NamedBody782_218

def NamedBody782_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody782_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody782_225 : StackLang.HolProg 64 :=
.seq NamedBody782_223 NamedBody782_224

def NamedBody782_226 : StackLang.HolProg 64 :=
.seq NamedBody782_222 NamedBody782_225

def NamedBody782_227 : StackLang.HolProg 64 :=
.seq NamedBody782_221 NamedBody782_226

def NamedBody782_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3553#64)

def NamedBody782_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_231 : StackLang.HolProg 64 :=
.seq NamedBody782_229 NamedBody782_230

def NamedBody782_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_235 : StackLang.HolProg 64 :=
.seq NamedBody782_233 NamedBody782_234

def NamedBody782_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_237 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_235 NamedBody782_236

def NamedBody782_238 : StackLang.HolProg 64 :=
.seq NamedBody782_232 NamedBody782_237

def NamedBody782_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 9

def NamedBody782_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_248 : StackLang.HolProg 64 :=
.seq NamedBody782_246 NamedBody782_247

def NamedBody782_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_250 : StackLang.HolProg 64 :=
.seq NamedBody782_248 NamedBody782_249

def NamedBody782_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_252 : StackLang.HolProg 64 :=
.seq NamedBody782_250 NamedBody782_251

def NamedBody782_253 : StackLang.HolProg 64 :=
.seq NamedBody782_245 NamedBody782_252

def NamedBody782_254 : StackLang.HolProg 64 :=
.seq NamedBody782_244 NamedBody782_253

def NamedBody782_255 : StackLang.HolProg 64 :=
.seq NamedBody782_243 NamedBody782_254

def NamedBody782_256 : StackLang.HolProg 64 :=
.seq NamedBody782_242 NamedBody782_255

def NamedBody782_257 : StackLang.HolProg 64 :=
.seq NamedBody782_241 NamedBody782_256

def NamedBody782_258 : StackLang.HolProg 64 :=
.seq NamedBody782_240 NamedBody782_257

def NamedBody782_259 : StackLang.HolProg 64 :=
.seq NamedBody782_239 NamedBody782_258

def NamedBody782_260 : StackLang.HolProg 64 :=
.seq NamedBody782_238 NamedBody782_259

def NamedBody782_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody782_269 : StackLang.HolProg 64 :=
.seq NamedBody782_267 NamedBody782_268

def NamedBody782_270 : StackLang.HolProg 64 :=
.seq NamedBody782_266 NamedBody782_269

def NamedBody782_271 : StackLang.HolProg 64 :=
.seq NamedBody782_265 NamedBody782_270

def NamedBody782_272 : StackLang.HolProg 64 :=
.seq NamedBody782_264 NamedBody782_271

def NamedBody782_273 : StackLang.HolProg 64 :=
.seq NamedBody782_263 NamedBody782_272

def NamedBody782_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody782_276 : StackLang.HolProg 64 :=
.seq NamedBody782_274 NamedBody782_275

def NamedBody782_277 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_278 : StackLang.HolProg 64 :=
.seq NamedBody782_276 NamedBody782_277

def NamedBody782_279 : StackLang.HolProg 64 :=
.call (some (NamedBody782_273, 1, 782, 8)) (Sum.inl 734) (some (NamedBody782_278, 782, 9))

def NamedBody782_280 : StackLang.HolProg 64 :=
.seq NamedBody782_262 NamedBody782_279

def NamedBody782_281 : StackLang.HolProg 64 :=
.seq NamedBody782_261 NamedBody782_280

def NamedBody782_282 : StackLang.HolProg 64 :=
.seq NamedBody782_260 NamedBody782_281

def NamedBody782_283 : StackLang.HolProg 64 :=
.seq NamedBody782_231 NamedBody782_282

def NamedBody782_284 : StackLang.HolProg 64 :=
.seq NamedBody782_228 NamedBody782_283

def NamedBody782_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody782_289 : StackLang.HolProg 64 :=
.seq NamedBody782_287 NamedBody782_288

def NamedBody782_290 : StackLang.HolProg 64 :=
.seq NamedBody782_286 NamedBody782_289

def NamedBody782_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3554#64)

def NamedBody782_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_294 : StackLang.HolProg 64 :=
.seq NamedBody782_292 NamedBody782_293

def NamedBody782_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_298 : StackLang.HolProg 64 :=
.seq NamedBody782_296 NamedBody782_297

def NamedBody782_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_300 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_298 NamedBody782_299

def NamedBody782_301 : StackLang.HolProg 64 :=
.seq NamedBody782_295 NamedBody782_300

def NamedBody782_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 11

def NamedBody782_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_311 : StackLang.HolProg 64 :=
.seq NamedBody782_309 NamedBody782_310

def NamedBody782_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_313 : StackLang.HolProg 64 :=
.seq NamedBody782_311 NamedBody782_312

def NamedBody782_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_315 : StackLang.HolProg 64 :=
.seq NamedBody782_313 NamedBody782_314

def NamedBody782_316 : StackLang.HolProg 64 :=
.seq NamedBody782_308 NamedBody782_315

def NamedBody782_317 : StackLang.HolProg 64 :=
.seq NamedBody782_307 NamedBody782_316

def NamedBody782_318 : StackLang.HolProg 64 :=
.seq NamedBody782_306 NamedBody782_317

def NamedBody782_319 : StackLang.HolProg 64 :=
.seq NamedBody782_305 NamedBody782_318

def NamedBody782_320 : StackLang.HolProg 64 :=
.seq NamedBody782_304 NamedBody782_319

def NamedBody782_321 : StackLang.HolProg 64 :=
.seq NamedBody782_303 NamedBody782_320

def NamedBody782_322 : StackLang.HolProg 64 :=
.seq NamedBody782_302 NamedBody782_321

def NamedBody782_323 : StackLang.HolProg 64 :=
.seq NamedBody782_301 NamedBody782_322

def NamedBody782_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody782_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_335 : StackLang.HolProg 64 :=
.seq NamedBody782_333 NamedBody782_334

def NamedBody782_336 : StackLang.HolProg 64 :=
.seq NamedBody782_332 NamedBody782_335

def NamedBody782_337 : StackLang.HolProg 64 :=
.seq NamedBody782_331 NamedBody782_336

def NamedBody782_338 : StackLang.HolProg 64 :=
.seq NamedBody782_330 NamedBody782_337

def NamedBody782_339 : StackLang.HolProg 64 :=
.seq NamedBody782_329 NamedBody782_338

def NamedBody782_340 : StackLang.HolProg 64 :=
.seq NamedBody782_328 NamedBody782_339

def NamedBody782_341 : StackLang.HolProg 64 :=
.seq NamedBody782_327 NamedBody782_340

def NamedBody782_342 : StackLang.HolProg 64 :=
.seq NamedBody782_326 NamedBody782_341

def NamedBody782_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody782_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_348 : StackLang.HolProg 64 :=
.seq NamedBody782_346 NamedBody782_347

def NamedBody782_349 : StackLang.HolProg 64 :=
.seq NamedBody782_345 NamedBody782_348

def NamedBody782_350 : StackLang.HolProg 64 :=
.seq NamedBody782_344 NamedBody782_349

def NamedBody782_351 : StackLang.HolProg 64 :=
.seq NamedBody782_343 NamedBody782_350

def NamedBody782_352 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_353 : StackLang.HolProg 64 :=
.seq NamedBody782_351 NamedBody782_352

def NamedBody782_354 : StackLang.HolProg 64 :=
.call (some (NamedBody782_342, 1, 782, 10)) (Sum.inl 734) (some (NamedBody782_353, 782, 11))

def NamedBody782_355 : StackLang.HolProg 64 :=
.seq NamedBody782_325 NamedBody782_354

def NamedBody782_356 : StackLang.HolProg 64 :=
.seq NamedBody782_324 NamedBody782_355

def NamedBody782_357 : StackLang.HolProg 64 :=
.seq NamedBody782_323 NamedBody782_356

def NamedBody782_358 : StackLang.HolProg 64 :=
.seq NamedBody782_294 NamedBody782_357

def NamedBody782_359 : StackLang.HolProg 64 :=
.seq NamedBody782_291 NamedBody782_358

def NamedBody782_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody782_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody782_364 : StackLang.HolProg 64 :=
.seq NamedBody782_362 NamedBody782_363

def NamedBody782_365 : StackLang.HolProg 64 :=
.seq NamedBody782_361 NamedBody782_364

def NamedBody782_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3555#64)

def NamedBody782_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_369 : StackLang.HolProg 64 :=
.seq NamedBody782_367 NamedBody782_368

def NamedBody782_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_373 : StackLang.HolProg 64 :=
.seq NamedBody782_371 NamedBody782_372

def NamedBody782_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_375 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_373 NamedBody782_374

def NamedBody782_376 : StackLang.HolProg 64 :=
.seq NamedBody782_370 NamedBody782_375

def NamedBody782_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 13

def NamedBody782_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_386 : StackLang.HolProg 64 :=
.seq NamedBody782_384 NamedBody782_385

def NamedBody782_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_388 : StackLang.HolProg 64 :=
.seq NamedBody782_386 NamedBody782_387

def NamedBody782_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_390 : StackLang.HolProg 64 :=
.seq NamedBody782_388 NamedBody782_389

def NamedBody782_391 : StackLang.HolProg 64 :=
.seq NamedBody782_383 NamedBody782_390

def NamedBody782_392 : StackLang.HolProg 64 :=
.seq NamedBody782_382 NamedBody782_391

def NamedBody782_393 : StackLang.HolProg 64 :=
.seq NamedBody782_381 NamedBody782_392

def NamedBody782_394 : StackLang.HolProg 64 :=
.seq NamedBody782_380 NamedBody782_393

def NamedBody782_395 : StackLang.HolProg 64 :=
.seq NamedBody782_379 NamedBody782_394

def NamedBody782_396 : StackLang.HolProg 64 :=
.seq NamedBody782_378 NamedBody782_395

def NamedBody782_397 : StackLang.HolProg 64 :=
.seq NamedBody782_377 NamedBody782_396

def NamedBody782_398 : StackLang.HolProg 64 :=
.seq NamedBody782_376 NamedBody782_397

def NamedBody782_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_410 : StackLang.HolProg 64 :=
.seq NamedBody782_408 NamedBody782_409

def NamedBody782_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_413 : StackLang.HolProg 64 :=
.seq NamedBody782_411 NamedBody782_412

def NamedBody782_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody782_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_416 : StackLang.HolProg 64 :=
.seq NamedBody782_414 NamedBody782_415

def NamedBody782_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody782_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody782_419 : StackLang.HolProg 64 :=
.seq NamedBody782_417 NamedBody782_418

def NamedBody782_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody782_422 : StackLang.HolProg 64 :=
.seq NamedBody782_420 NamedBody782_421

def NamedBody782_423 : StackLang.HolProg 64 :=
.seq NamedBody782_419 NamedBody782_422

def NamedBody782_424 : StackLang.HolProg 64 :=
.seq NamedBody782_416 NamedBody782_423

def NamedBody782_425 : StackLang.HolProg 64 :=
.seq NamedBody782_413 NamedBody782_424

def NamedBody782_426 : StackLang.HolProg 64 :=
.seq NamedBody782_410 NamedBody782_425

def NamedBody782_427 : StackLang.HolProg 64 :=
.seq NamedBody782_407 NamedBody782_426

def NamedBody782_428 : StackLang.HolProg 64 :=
.seq NamedBody782_406 NamedBody782_427

def NamedBody782_429 : StackLang.HolProg 64 :=
.seq NamedBody782_405 NamedBody782_428

def NamedBody782_430 : StackLang.HolProg 64 :=
.seq NamedBody782_404 NamedBody782_429

def NamedBody782_431 : StackLang.HolProg 64 :=
.seq NamedBody782_403 NamedBody782_430

def NamedBody782_432 : StackLang.HolProg 64 :=
.seq NamedBody782_402 NamedBody782_431

def NamedBody782_433 : StackLang.HolProg 64 :=
.seq NamedBody782_401 NamedBody782_432

def NamedBody782_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_439 : StackLang.HolProg 64 :=
.seq NamedBody782_437 NamedBody782_438

def NamedBody782_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_442 : StackLang.HolProg 64 :=
.seq NamedBody782_440 NamedBody782_441

def NamedBody782_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody782_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_445 : StackLang.HolProg 64 :=
.seq NamedBody782_443 NamedBody782_444

def NamedBody782_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody782_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody782_448 : StackLang.HolProg 64 :=
.seq NamedBody782_446 NamedBody782_447

def NamedBody782_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody782_451 : StackLang.HolProg 64 :=
.seq NamedBody782_449 NamedBody782_450

def NamedBody782_452 : StackLang.HolProg 64 :=
.seq NamedBody782_448 NamedBody782_451

def NamedBody782_453 : StackLang.HolProg 64 :=
.seq NamedBody782_445 NamedBody782_452

def NamedBody782_454 : StackLang.HolProg 64 :=
.seq NamedBody782_442 NamedBody782_453

def NamedBody782_455 : StackLang.HolProg 64 :=
.seq NamedBody782_439 NamedBody782_454

def NamedBody782_456 : StackLang.HolProg 64 :=
.seq NamedBody782_436 NamedBody782_455

def NamedBody782_457 : StackLang.HolProg 64 :=
.seq NamedBody782_435 NamedBody782_456

def NamedBody782_458 : StackLang.HolProg 64 :=
.seq NamedBody782_434 NamedBody782_457

def NamedBody782_459 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_460 : StackLang.HolProg 64 :=
.seq NamedBody782_458 NamedBody782_459

def NamedBody782_461 : StackLang.HolProg 64 :=
.call (some (NamedBody782_433, 1, 782, 12)) (Sum.inl 739) (some (NamedBody782_460, 782, 13))

def NamedBody782_462 : StackLang.HolProg 64 :=
.seq NamedBody782_400 NamedBody782_461

def NamedBody782_463 : StackLang.HolProg 64 :=
.seq NamedBody782_399 NamedBody782_462

def NamedBody782_464 : StackLang.HolProg 64 :=
.seq NamedBody782_398 NamedBody782_463

def NamedBody782_465 : StackLang.HolProg 64 :=
.seq NamedBody782_369 NamedBody782_464

def NamedBody782_466 : StackLang.HolProg 64 :=
.seq NamedBody782_366 NamedBody782_465

def NamedBody782_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody782_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_471 : StackLang.HolProg 64 :=
.seq NamedBody782_469 NamedBody782_470

def NamedBody782_472 : StackLang.HolProg 64 :=
.seq NamedBody782_468 NamedBody782_471

def NamedBody782_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3556#64)

def NamedBody782_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_476 : StackLang.HolProg 64 :=
.seq NamedBody782_474 NamedBody782_475

def NamedBody782_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_480 : StackLang.HolProg 64 :=
.seq NamedBody782_478 NamedBody782_479

def NamedBody782_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_482 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_480 NamedBody782_481

def NamedBody782_483 : StackLang.HolProg 64 :=
.seq NamedBody782_477 NamedBody782_482

def NamedBody782_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 15

def NamedBody782_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_493 : StackLang.HolProg 64 :=
.seq NamedBody782_491 NamedBody782_492

def NamedBody782_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_495 : StackLang.HolProg 64 :=
.seq NamedBody782_493 NamedBody782_494

def NamedBody782_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_497 : StackLang.HolProg 64 :=
.seq NamedBody782_495 NamedBody782_496

def NamedBody782_498 : StackLang.HolProg 64 :=
.seq NamedBody782_490 NamedBody782_497

def NamedBody782_499 : StackLang.HolProg 64 :=
.seq NamedBody782_489 NamedBody782_498

def NamedBody782_500 : StackLang.HolProg 64 :=
.seq NamedBody782_488 NamedBody782_499

def NamedBody782_501 : StackLang.HolProg 64 :=
.seq NamedBody782_487 NamedBody782_500

def NamedBody782_502 : StackLang.HolProg 64 :=
.seq NamedBody782_486 NamedBody782_501

def NamedBody782_503 : StackLang.HolProg 64 :=
.seq NamedBody782_485 NamedBody782_502

def NamedBody782_504 : StackLang.HolProg 64 :=
.seq NamedBody782_484 NamedBody782_503

def NamedBody782_505 : StackLang.HolProg 64 :=
.seq NamedBody782_483 NamedBody782_504

def NamedBody782_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_514 : StackLang.HolProg 64 :=
.seq NamedBody782_512 NamedBody782_513

def NamedBody782_515 : StackLang.HolProg 64 :=
.seq NamedBody782_511 NamedBody782_514

def NamedBody782_516 : StackLang.HolProg 64 :=
.seq NamedBody782_510 NamedBody782_515

def NamedBody782_517 : StackLang.HolProg 64 :=
.seq NamedBody782_509 NamedBody782_516

def NamedBody782_518 : StackLang.HolProg 64 :=
.seq NamedBody782_508 NamedBody782_517

def NamedBody782_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_521 : StackLang.HolProg 64 :=
.seq NamedBody782_519 NamedBody782_520

def NamedBody782_522 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_523 : StackLang.HolProg 64 :=
.seq NamedBody782_521 NamedBody782_522

def NamedBody782_524 : StackLang.HolProg 64 :=
.call (some (NamedBody782_518, 1, 782, 14)) (Sum.inl 739) (some (NamedBody782_523, 782, 15))

def NamedBody782_525 : StackLang.HolProg 64 :=
.seq NamedBody782_507 NamedBody782_524

def NamedBody782_526 : StackLang.HolProg 64 :=
.seq NamedBody782_506 NamedBody782_525

def NamedBody782_527 : StackLang.HolProg 64 :=
.seq NamedBody782_505 NamedBody782_526

def NamedBody782_528 : StackLang.HolProg 64 :=
.seq NamedBody782_476 NamedBody782_527

def NamedBody782_529 : StackLang.HolProg 64 :=
.seq NamedBody782_473 NamedBody782_528

def NamedBody782_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody782_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_534 : StackLang.HolProg 64 :=
.seq NamedBody782_532 NamedBody782_533

def NamedBody782_535 : StackLang.HolProg 64 :=
.seq NamedBody782_531 NamedBody782_534

def NamedBody782_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3557#64)

def NamedBody782_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_539 : StackLang.HolProg 64 :=
.seq NamedBody782_537 NamedBody782_538

def NamedBody782_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_543 : StackLang.HolProg 64 :=
.seq NamedBody782_541 NamedBody782_542

def NamedBody782_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_545 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_543 NamedBody782_544

def NamedBody782_546 : StackLang.HolProg 64 :=
.seq NamedBody782_540 NamedBody782_545

def NamedBody782_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 17

def NamedBody782_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_556 : StackLang.HolProg 64 :=
.seq NamedBody782_554 NamedBody782_555

def NamedBody782_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_558 : StackLang.HolProg 64 :=
.seq NamedBody782_556 NamedBody782_557

def NamedBody782_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_560 : StackLang.HolProg 64 :=
.seq NamedBody782_558 NamedBody782_559

def NamedBody782_561 : StackLang.HolProg 64 :=
.seq NamedBody782_553 NamedBody782_560

def NamedBody782_562 : StackLang.HolProg 64 :=
.seq NamedBody782_552 NamedBody782_561

def NamedBody782_563 : StackLang.HolProg 64 :=
.seq NamedBody782_551 NamedBody782_562

def NamedBody782_564 : StackLang.HolProg 64 :=
.seq NamedBody782_550 NamedBody782_563

def NamedBody782_565 : StackLang.HolProg 64 :=
.seq NamedBody782_549 NamedBody782_564

def NamedBody782_566 : StackLang.HolProg 64 :=
.seq NamedBody782_548 NamedBody782_565

def NamedBody782_567 : StackLang.HolProg 64 :=
.seq NamedBody782_547 NamedBody782_566

def NamedBody782_568 : StackLang.HolProg 64 :=
.seq NamedBody782_546 NamedBody782_567

def NamedBody782_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_579 : StackLang.HolProg 64 :=
.seq NamedBody782_577 NamedBody782_578

def NamedBody782_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_582 : StackLang.HolProg 64 :=
.seq NamedBody782_580 NamedBody782_581

def NamedBody782_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_585 : StackLang.HolProg 64 :=
.seq NamedBody782_583 NamedBody782_584

def NamedBody782_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_588 : StackLang.HolProg 64 :=
.seq NamedBody782_586 NamedBody782_587

def NamedBody782_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_591 : StackLang.HolProg 64 :=
.seq NamedBody782_589 NamedBody782_590

def NamedBody782_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody782_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_594 : StackLang.HolProg 64 :=
.seq NamedBody782_592 NamedBody782_593

def NamedBody782_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody782_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody782_597 : StackLang.HolProg 64 :=
.seq NamedBody782_595 NamedBody782_596

def NamedBody782_598 : StackLang.HolProg 64 :=
.seq NamedBody782_594 NamedBody782_597

def NamedBody782_599 : StackLang.HolProg 64 :=
.seq NamedBody782_591 NamedBody782_598

def NamedBody782_600 : StackLang.HolProg 64 :=
.seq NamedBody782_588 NamedBody782_599

def NamedBody782_601 : StackLang.HolProg 64 :=
.seq NamedBody782_585 NamedBody782_600

def NamedBody782_602 : StackLang.HolProg 64 :=
.seq NamedBody782_582 NamedBody782_601

def NamedBody782_603 : StackLang.HolProg 64 :=
.seq NamedBody782_579 NamedBody782_602

def NamedBody782_604 : StackLang.HolProg 64 :=
.seq NamedBody782_576 NamedBody782_603

def NamedBody782_605 : StackLang.HolProg 64 :=
.seq NamedBody782_575 NamedBody782_604

def NamedBody782_606 : StackLang.HolProg 64 :=
.seq NamedBody782_574 NamedBody782_605

def NamedBody782_607 : StackLang.HolProg 64 :=
.seq NamedBody782_573 NamedBody782_606

def NamedBody782_608 : StackLang.HolProg 64 :=
.seq NamedBody782_572 NamedBody782_607

def NamedBody782_609 : StackLang.HolProg 64 :=
.seq NamedBody782_571 NamedBody782_608

def NamedBody782_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_614 : StackLang.HolProg 64 :=
.seq NamedBody782_612 NamedBody782_613

def NamedBody782_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_617 : StackLang.HolProg 64 :=
.seq NamedBody782_615 NamedBody782_616

def NamedBody782_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_620 : StackLang.HolProg 64 :=
.seq NamedBody782_618 NamedBody782_619

def NamedBody782_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_623 : StackLang.HolProg 64 :=
.seq NamedBody782_621 NamedBody782_622

def NamedBody782_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_626 : StackLang.HolProg 64 :=
.seq NamedBody782_624 NamedBody782_625

def NamedBody782_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody782_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_629 : StackLang.HolProg 64 :=
.seq NamedBody782_627 NamedBody782_628

def NamedBody782_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody782_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody782_632 : StackLang.HolProg 64 :=
.seq NamedBody782_630 NamedBody782_631

def NamedBody782_633 : StackLang.HolProg 64 :=
.seq NamedBody782_629 NamedBody782_632

def NamedBody782_634 : StackLang.HolProg 64 :=
.seq NamedBody782_626 NamedBody782_633

def NamedBody782_635 : StackLang.HolProg 64 :=
.seq NamedBody782_623 NamedBody782_634

def NamedBody782_636 : StackLang.HolProg 64 :=
.seq NamedBody782_620 NamedBody782_635

def NamedBody782_637 : StackLang.HolProg 64 :=
.seq NamedBody782_617 NamedBody782_636

def NamedBody782_638 : StackLang.HolProg 64 :=
.seq NamedBody782_614 NamedBody782_637

def NamedBody782_639 : StackLang.HolProg 64 :=
.seq NamedBody782_611 NamedBody782_638

def NamedBody782_640 : StackLang.HolProg 64 :=
.seq NamedBody782_610 NamedBody782_639

def NamedBody782_641 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_642 : StackLang.HolProg 64 :=
.seq NamedBody782_640 NamedBody782_641

def NamedBody782_643 : StackLang.HolProg 64 :=
.call (some (NamedBody782_609, 1, 782, 16)) (Sum.inl 739) (some (NamedBody782_642, 782, 17))

def NamedBody782_644 : StackLang.HolProg 64 :=
.seq NamedBody782_570 NamedBody782_643

def NamedBody782_645 : StackLang.HolProg 64 :=
.seq NamedBody782_569 NamedBody782_644

def NamedBody782_646 : StackLang.HolProg 64 :=
.seq NamedBody782_568 NamedBody782_645

def NamedBody782_647 : StackLang.HolProg 64 :=
.seq NamedBody782_539 NamedBody782_646

def NamedBody782_648 : StackLang.HolProg 64 :=
.seq NamedBody782_536 NamedBody782_647

def NamedBody782_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody782_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_653 : StackLang.HolProg 64 :=
.seq NamedBody782_651 NamedBody782_652

def NamedBody782_654 : StackLang.HolProg 64 :=
.seq NamedBody782_650 NamedBody782_653

def NamedBody782_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3558#64)

def NamedBody782_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_658 : StackLang.HolProg 64 :=
.seq NamedBody782_656 NamedBody782_657

def NamedBody782_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_662 : StackLang.HolProg 64 :=
.seq NamedBody782_660 NamedBody782_661

def NamedBody782_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_664 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_662 NamedBody782_663

def NamedBody782_665 : StackLang.HolProg 64 :=
.seq NamedBody782_659 NamedBody782_664

def NamedBody782_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 19

def NamedBody782_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_675 : StackLang.HolProg 64 :=
.seq NamedBody782_673 NamedBody782_674

def NamedBody782_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_677 : StackLang.HolProg 64 :=
.seq NamedBody782_675 NamedBody782_676

def NamedBody782_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_679 : StackLang.HolProg 64 :=
.seq NamedBody782_677 NamedBody782_678

def NamedBody782_680 : StackLang.HolProg 64 :=
.seq NamedBody782_672 NamedBody782_679

def NamedBody782_681 : StackLang.HolProg 64 :=
.seq NamedBody782_671 NamedBody782_680

def NamedBody782_682 : StackLang.HolProg 64 :=
.seq NamedBody782_670 NamedBody782_681

def NamedBody782_683 : StackLang.HolProg 64 :=
.seq NamedBody782_669 NamedBody782_682

def NamedBody782_684 : StackLang.HolProg 64 :=
.seq NamedBody782_668 NamedBody782_683

def NamedBody782_685 : StackLang.HolProg 64 :=
.seq NamedBody782_667 NamedBody782_684

def NamedBody782_686 : StackLang.HolProg 64 :=
.seq NamedBody782_666 NamedBody782_685

def NamedBody782_687 : StackLang.HolProg 64 :=
.seq NamedBody782_665 NamedBody782_686

def NamedBody782_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_695 : StackLang.HolProg 64 :=
.seq NamedBody782_693 NamedBody782_694

def NamedBody782_696 : StackLang.HolProg 64 :=
.seq NamedBody782_692 NamedBody782_695

def NamedBody782_697 : StackLang.HolProg 64 :=
.seq NamedBody782_691 NamedBody782_696

def NamedBody782_698 : StackLang.HolProg 64 :=
.seq NamedBody782_690 NamedBody782_697

def NamedBody782_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_700 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_701 : StackLang.HolProg 64 :=
.seq NamedBody782_699 NamedBody782_700

def NamedBody782_702 : StackLang.HolProg 64 :=
.call (some (NamedBody782_698, 1, 782, 18)) (Sum.inl 734) (some (NamedBody782_701, 782, 19))

def NamedBody782_703 : StackLang.HolProg 64 :=
.seq NamedBody782_689 NamedBody782_702

def NamedBody782_704 : StackLang.HolProg 64 :=
.seq NamedBody782_688 NamedBody782_703

def NamedBody782_705 : StackLang.HolProg 64 :=
.seq NamedBody782_687 NamedBody782_704

def NamedBody782_706 : StackLang.HolProg 64 :=
.seq NamedBody782_658 NamedBody782_705

def NamedBody782_707 : StackLang.HolProg 64 :=
.seq NamedBody782_655 NamedBody782_706

def NamedBody782_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_712 : StackLang.HolProg 64 :=
.seq NamedBody782_710 NamedBody782_711

def NamedBody782_713 : StackLang.HolProg 64 :=
.seq NamedBody782_709 NamedBody782_712

def NamedBody782_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3559#64)

def NamedBody782_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_717 : StackLang.HolProg 64 :=
.seq NamedBody782_715 NamedBody782_716

def NamedBody782_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_721 : StackLang.HolProg 64 :=
.seq NamedBody782_719 NamedBody782_720

def NamedBody782_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_723 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_721 NamedBody782_722

def NamedBody782_724 : StackLang.HolProg 64 :=
.seq NamedBody782_718 NamedBody782_723

def NamedBody782_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 21

def NamedBody782_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_734 : StackLang.HolProg 64 :=
.seq NamedBody782_732 NamedBody782_733

def NamedBody782_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_736 : StackLang.HolProg 64 :=
.seq NamedBody782_734 NamedBody782_735

def NamedBody782_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_738 : StackLang.HolProg 64 :=
.seq NamedBody782_736 NamedBody782_737

def NamedBody782_739 : StackLang.HolProg 64 :=
.seq NamedBody782_731 NamedBody782_738

def NamedBody782_740 : StackLang.HolProg 64 :=
.seq NamedBody782_730 NamedBody782_739

def NamedBody782_741 : StackLang.HolProg 64 :=
.seq NamedBody782_729 NamedBody782_740

def NamedBody782_742 : StackLang.HolProg 64 :=
.seq NamedBody782_728 NamedBody782_741

def NamedBody782_743 : StackLang.HolProg 64 :=
.seq NamedBody782_727 NamedBody782_742

def NamedBody782_744 : StackLang.HolProg 64 :=
.seq NamedBody782_726 NamedBody782_743

def NamedBody782_745 : StackLang.HolProg 64 :=
.seq NamedBody782_725 NamedBody782_744

def NamedBody782_746 : StackLang.HolProg 64 :=
.seq NamedBody782_724 NamedBody782_745

def NamedBody782_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_755 : StackLang.HolProg 64 :=
.seq NamedBody782_753 NamedBody782_754

def NamedBody782_756 : StackLang.HolProg 64 :=
.seq NamedBody782_752 NamedBody782_755

def NamedBody782_757 : StackLang.HolProg 64 :=
.seq NamedBody782_751 NamedBody782_756

def NamedBody782_758 : StackLang.HolProg 64 :=
.seq NamedBody782_750 NamedBody782_757

def NamedBody782_759 : StackLang.HolProg 64 :=
.seq NamedBody782_749 NamedBody782_758

def NamedBody782_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_762 : StackLang.HolProg 64 :=
.seq NamedBody782_760 NamedBody782_761

def NamedBody782_763 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_764 : StackLang.HolProg 64 :=
.seq NamedBody782_762 NamedBody782_763

def NamedBody782_765 : StackLang.HolProg 64 :=
.call (some (NamedBody782_759, 1, 782, 20)) (Sum.inl 734) (some (NamedBody782_764, 782, 21))

def NamedBody782_766 : StackLang.HolProg 64 :=
.seq NamedBody782_748 NamedBody782_765

def NamedBody782_767 : StackLang.HolProg 64 :=
.seq NamedBody782_747 NamedBody782_766

def NamedBody782_768 : StackLang.HolProg 64 :=
.seq NamedBody782_746 NamedBody782_767

def NamedBody782_769 : StackLang.HolProg 64 :=
.seq NamedBody782_717 NamedBody782_768

def NamedBody782_770 : StackLang.HolProg 64 :=
.seq NamedBody782_714 NamedBody782_769

def NamedBody782_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody782_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_776 : StackLang.HolProg 64 :=
.seq NamedBody782_774 NamedBody782_775

def NamedBody782_777 : StackLang.HolProg 64 :=
.seq NamedBody782_773 NamedBody782_776

def NamedBody782_778 : StackLang.HolProg 64 :=
.seq NamedBody782_772 NamedBody782_777

def NamedBody782_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3560#64)

def NamedBody782_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_782 : StackLang.HolProg 64 :=
.seq NamedBody782_780 NamedBody782_781

def NamedBody782_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_786 : StackLang.HolProg 64 :=
.seq NamedBody782_784 NamedBody782_785

def NamedBody782_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_788 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_786 NamedBody782_787

def NamedBody782_789 : StackLang.HolProg 64 :=
.seq NamedBody782_783 NamedBody782_788

def NamedBody782_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 23

def NamedBody782_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_799 : StackLang.HolProg 64 :=
.seq NamedBody782_797 NamedBody782_798

def NamedBody782_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_801 : StackLang.HolProg 64 :=
.seq NamedBody782_799 NamedBody782_800

def NamedBody782_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_803 : StackLang.HolProg 64 :=
.seq NamedBody782_801 NamedBody782_802

def NamedBody782_804 : StackLang.HolProg 64 :=
.seq NamedBody782_796 NamedBody782_803

def NamedBody782_805 : StackLang.HolProg 64 :=
.seq NamedBody782_795 NamedBody782_804

def NamedBody782_806 : StackLang.HolProg 64 :=
.seq NamedBody782_794 NamedBody782_805

def NamedBody782_807 : StackLang.HolProg 64 :=
.seq NamedBody782_793 NamedBody782_806

def NamedBody782_808 : StackLang.HolProg 64 :=
.seq NamedBody782_792 NamedBody782_807

def NamedBody782_809 : StackLang.HolProg 64 :=
.seq NamedBody782_791 NamedBody782_808

def NamedBody782_810 : StackLang.HolProg 64 :=
.seq NamedBody782_790 NamedBody782_809

def NamedBody782_811 : StackLang.HolProg 64 :=
.seq NamedBody782_789 NamedBody782_810

def NamedBody782_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_820 : StackLang.HolProg 64 :=
.seq NamedBody782_818 NamedBody782_819

def NamedBody782_821 : StackLang.HolProg 64 :=
.seq NamedBody782_817 NamedBody782_820

def NamedBody782_822 : StackLang.HolProg 64 :=
.seq NamedBody782_816 NamedBody782_821

def NamedBody782_823 : StackLang.HolProg 64 :=
.seq NamedBody782_815 NamedBody782_822

def NamedBody782_824 : StackLang.HolProg 64 :=
.seq NamedBody782_814 NamedBody782_823

def NamedBody782_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_827 : StackLang.HolProg 64 :=
.seq NamedBody782_825 NamedBody782_826

def NamedBody782_828 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_829 : StackLang.HolProg 64 :=
.seq NamedBody782_827 NamedBody782_828

def NamedBody782_830 : StackLang.HolProg 64 :=
.call (some (NamedBody782_824, 1, 782, 22)) (Sum.inl 734) (some (NamedBody782_829, 782, 23))

def NamedBody782_831 : StackLang.HolProg 64 :=
.seq NamedBody782_813 NamedBody782_830

def NamedBody782_832 : StackLang.HolProg 64 :=
.seq NamedBody782_812 NamedBody782_831

def NamedBody782_833 : StackLang.HolProg 64 :=
.seq NamedBody782_811 NamedBody782_832

def NamedBody782_834 : StackLang.HolProg 64 :=
.seq NamedBody782_782 NamedBody782_833

def NamedBody782_835 : StackLang.HolProg 64 :=
.seq NamedBody782_779 NamedBody782_834

def NamedBody782_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody782_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_840 : StackLang.HolProg 64 :=
.seq NamedBody782_838 NamedBody782_839

def NamedBody782_841 : StackLang.HolProg 64 :=
.seq NamedBody782_837 NamedBody782_840

def NamedBody782_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3561#64)

def NamedBody782_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_845 : StackLang.HolProg 64 :=
.seq NamedBody782_843 NamedBody782_844

def NamedBody782_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_849 : StackLang.HolProg 64 :=
.seq NamedBody782_847 NamedBody782_848

def NamedBody782_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_851 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_849 NamedBody782_850

def NamedBody782_852 : StackLang.HolProg 64 :=
.seq NamedBody782_846 NamedBody782_851

def NamedBody782_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 25

def NamedBody782_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_862 : StackLang.HolProg 64 :=
.seq NamedBody782_860 NamedBody782_861

def NamedBody782_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_864 : StackLang.HolProg 64 :=
.seq NamedBody782_862 NamedBody782_863

def NamedBody782_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_866 : StackLang.HolProg 64 :=
.seq NamedBody782_864 NamedBody782_865

def NamedBody782_867 : StackLang.HolProg 64 :=
.seq NamedBody782_859 NamedBody782_866

def NamedBody782_868 : StackLang.HolProg 64 :=
.seq NamedBody782_858 NamedBody782_867

def NamedBody782_869 : StackLang.HolProg 64 :=
.seq NamedBody782_857 NamedBody782_868

def NamedBody782_870 : StackLang.HolProg 64 :=
.seq NamedBody782_856 NamedBody782_869

def NamedBody782_871 : StackLang.HolProg 64 :=
.seq NamedBody782_855 NamedBody782_870

def NamedBody782_872 : StackLang.HolProg 64 :=
.seq NamedBody782_854 NamedBody782_871

def NamedBody782_873 : StackLang.HolProg 64 :=
.seq NamedBody782_853 NamedBody782_872

def NamedBody782_874 : StackLang.HolProg 64 :=
.seq NamedBody782_852 NamedBody782_873

def NamedBody782_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_883 : StackLang.HolProg 64 :=
.seq NamedBody782_881 NamedBody782_882

def NamedBody782_884 : StackLang.HolProg 64 :=
.seq NamedBody782_880 NamedBody782_883

def NamedBody782_885 : StackLang.HolProg 64 :=
.seq NamedBody782_879 NamedBody782_884

def NamedBody782_886 : StackLang.HolProg 64 :=
.seq NamedBody782_878 NamedBody782_885

def NamedBody782_887 : StackLang.HolProg 64 :=
.seq NamedBody782_877 NamedBody782_886

def NamedBody782_888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_890 : StackLang.HolProg 64 :=
.seq NamedBody782_888 NamedBody782_889

def NamedBody782_891 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_892 : StackLang.HolProg 64 :=
.seq NamedBody782_890 NamedBody782_891

def NamedBody782_893 : StackLang.HolProg 64 :=
.call (some (NamedBody782_887, 1, 782, 24)) (Sum.inl 740) (some (NamedBody782_892, 782, 25))

def NamedBody782_894 : StackLang.HolProg 64 :=
.seq NamedBody782_876 NamedBody782_893

def NamedBody782_895 : StackLang.HolProg 64 :=
.seq NamedBody782_875 NamedBody782_894

def NamedBody782_896 : StackLang.HolProg 64 :=
.seq NamedBody782_874 NamedBody782_895

def NamedBody782_897 : StackLang.HolProg 64 :=
.seq NamedBody782_845 NamedBody782_896

def NamedBody782_898 : StackLang.HolProg 64 :=
.seq NamedBody782_842 NamedBody782_897

def NamedBody782_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_903 : StackLang.HolProg 64 :=
.seq NamedBody782_901 NamedBody782_902

def NamedBody782_904 : StackLang.HolProg 64 :=
.seq NamedBody782_900 NamedBody782_903

def NamedBody782_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3562#64)

def NamedBody782_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_908 : StackLang.HolProg 64 :=
.seq NamedBody782_906 NamedBody782_907

def NamedBody782_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_912 : StackLang.HolProg 64 :=
.seq NamedBody782_910 NamedBody782_911

def NamedBody782_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_914 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_912 NamedBody782_913

def NamedBody782_915 : StackLang.HolProg 64 :=
.seq NamedBody782_909 NamedBody782_914

def NamedBody782_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 27

def NamedBody782_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_925 : StackLang.HolProg 64 :=
.seq NamedBody782_923 NamedBody782_924

def NamedBody782_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_927 : StackLang.HolProg 64 :=
.seq NamedBody782_925 NamedBody782_926

def NamedBody782_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_929 : StackLang.HolProg 64 :=
.seq NamedBody782_927 NamedBody782_928

def NamedBody782_930 : StackLang.HolProg 64 :=
.seq NamedBody782_922 NamedBody782_929

def NamedBody782_931 : StackLang.HolProg 64 :=
.seq NamedBody782_921 NamedBody782_930

def NamedBody782_932 : StackLang.HolProg 64 :=
.seq NamedBody782_920 NamedBody782_931

def NamedBody782_933 : StackLang.HolProg 64 :=
.seq NamedBody782_919 NamedBody782_932

def NamedBody782_934 : StackLang.HolProg 64 :=
.seq NamedBody782_918 NamedBody782_933

def NamedBody782_935 : StackLang.HolProg 64 :=
.seq NamedBody782_917 NamedBody782_934

def NamedBody782_936 : StackLang.HolProg 64 :=
.seq NamedBody782_916 NamedBody782_935

def NamedBody782_937 : StackLang.HolProg 64 :=
.seq NamedBody782_915 NamedBody782_936

def NamedBody782_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_946 : StackLang.HolProg 64 :=
.seq NamedBody782_944 NamedBody782_945

def NamedBody782_947 : StackLang.HolProg 64 :=
.seq NamedBody782_943 NamedBody782_946

def NamedBody782_948 : StackLang.HolProg 64 :=
.seq NamedBody782_942 NamedBody782_947

def NamedBody782_949 : StackLang.HolProg 64 :=
.seq NamedBody782_941 NamedBody782_948

def NamedBody782_950 : StackLang.HolProg 64 :=
.seq NamedBody782_940 NamedBody782_949

def NamedBody782_951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_953 : StackLang.HolProg 64 :=
.seq NamedBody782_951 NamedBody782_952

def NamedBody782_954 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_955 : StackLang.HolProg 64 :=
.seq NamedBody782_953 NamedBody782_954

def NamedBody782_956 : StackLang.HolProg 64 :=
.call (some (NamedBody782_950, 1, 782, 26)) (Sum.inl 735) (some (NamedBody782_955, 782, 27))

def NamedBody782_957 : StackLang.HolProg 64 :=
.seq NamedBody782_939 NamedBody782_956

def NamedBody782_958 : StackLang.HolProg 64 :=
.seq NamedBody782_938 NamedBody782_957

def NamedBody782_959 : StackLang.HolProg 64 :=
.seq NamedBody782_937 NamedBody782_958

def NamedBody782_960 : StackLang.HolProg 64 :=
.seq NamedBody782_908 NamedBody782_959

def NamedBody782_961 : StackLang.HolProg 64 :=
.seq NamedBody782_905 NamedBody782_960

def NamedBody782_962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody782_964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_966 : StackLang.HolProg 64 :=
.seq NamedBody782_964 NamedBody782_965

def NamedBody782_967 : StackLang.HolProg 64 :=
.seq NamedBody782_963 NamedBody782_966

def NamedBody782_968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3563#64)

def NamedBody782_970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_971 : StackLang.HolProg 64 :=
.seq NamedBody782_969 NamedBody782_970

def NamedBody782_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_975 : StackLang.HolProg 64 :=
.seq NamedBody782_973 NamedBody782_974

def NamedBody782_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_977 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_975 NamedBody782_976

def NamedBody782_978 : StackLang.HolProg 64 :=
.seq NamedBody782_972 NamedBody782_977

def NamedBody782_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 29

def NamedBody782_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_988 : StackLang.HolProg 64 :=
.seq NamedBody782_986 NamedBody782_987

def NamedBody782_989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_990 : StackLang.HolProg 64 :=
.seq NamedBody782_988 NamedBody782_989

def NamedBody782_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_992 : StackLang.HolProg 64 :=
.seq NamedBody782_990 NamedBody782_991

def NamedBody782_993 : StackLang.HolProg 64 :=
.seq NamedBody782_985 NamedBody782_992

def NamedBody782_994 : StackLang.HolProg 64 :=
.seq NamedBody782_984 NamedBody782_993

def NamedBody782_995 : StackLang.HolProg 64 :=
.seq NamedBody782_983 NamedBody782_994

def NamedBody782_996 : StackLang.HolProg 64 :=
.seq NamedBody782_982 NamedBody782_995

def NamedBody782_997 : StackLang.HolProg 64 :=
.seq NamedBody782_981 NamedBody782_996

def NamedBody782_998 : StackLang.HolProg 64 :=
.seq NamedBody782_980 NamedBody782_997

def NamedBody782_999 : StackLang.HolProg 64 :=
.seq NamedBody782_979 NamedBody782_998

def NamedBody782_1000 : StackLang.HolProg 64 :=
.seq NamedBody782_978 NamedBody782_999

def NamedBody782_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_1008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_1010 : StackLang.HolProg 64 :=
.seq NamedBody782_1008 NamedBody782_1009

def NamedBody782_1011 : StackLang.HolProg 64 :=
.seq NamedBody782_1007 NamedBody782_1010

def NamedBody782_1012 : StackLang.HolProg 64 :=
.seq NamedBody782_1006 NamedBody782_1011

def NamedBody782_1013 : StackLang.HolProg 64 :=
.seq NamedBody782_1005 NamedBody782_1012

def NamedBody782_1014 : StackLang.HolProg 64 :=
.seq NamedBody782_1004 NamedBody782_1013

def NamedBody782_1015 : StackLang.HolProg 64 :=
.seq NamedBody782_1003 NamedBody782_1014

def NamedBody782_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_1017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_1019 : StackLang.HolProg 64 :=
.seq NamedBody782_1017 NamedBody782_1018

def NamedBody782_1020 : StackLang.HolProg 64 :=
.seq NamedBody782_1016 NamedBody782_1019

def NamedBody782_1021 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_1022 : StackLang.HolProg 64 :=
.seq NamedBody782_1020 NamedBody782_1021

def NamedBody782_1023 : StackLang.HolProg 64 :=
.call (some (NamedBody782_1015, 1, 782, 28)) (Sum.inl 740) (some (NamedBody782_1022, 782, 29))

def NamedBody782_1024 : StackLang.HolProg 64 :=
.seq NamedBody782_1002 NamedBody782_1023

def NamedBody782_1025 : StackLang.HolProg 64 :=
.seq NamedBody782_1001 NamedBody782_1024

def NamedBody782_1026 : StackLang.HolProg 64 :=
.seq NamedBody782_1000 NamedBody782_1025

def NamedBody782_1027 : StackLang.HolProg 64 :=
.seq NamedBody782_971 NamedBody782_1026

def NamedBody782_1028 : StackLang.HolProg 64 :=
.seq NamedBody782_968 NamedBody782_1027

def NamedBody782_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody782_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_1032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_1034 : StackLang.HolProg 64 :=
.seq NamedBody782_1032 NamedBody782_1033

def NamedBody782_1035 : StackLang.HolProg 64 :=
.seq NamedBody782_1031 NamedBody782_1034

def NamedBody782_1036 : StackLang.HolProg 64 :=
.seq NamedBody782_1030 NamedBody782_1035

def NamedBody782_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1038 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3564#64)

def NamedBody782_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1040 : StackLang.HolProg 64 :=
.seq NamedBody782_1038 NamedBody782_1039

def NamedBody782_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_1044 : StackLang.HolProg 64 :=
.seq NamedBody782_1042 NamedBody782_1043

def NamedBody782_1045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1046 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_1044 NamedBody782_1045

def NamedBody782_1047 : StackLang.HolProg 64 :=
.seq NamedBody782_1041 NamedBody782_1046

def NamedBody782_1048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_1049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 31

def NamedBody782_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_1057 : StackLang.HolProg 64 :=
.seq NamedBody782_1055 NamedBody782_1056

def NamedBody782_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_1059 : StackLang.HolProg 64 :=
.seq NamedBody782_1057 NamedBody782_1058

def NamedBody782_1060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1061 : StackLang.HolProg 64 :=
.seq NamedBody782_1059 NamedBody782_1060

def NamedBody782_1062 : StackLang.HolProg 64 :=
.seq NamedBody782_1054 NamedBody782_1061

def NamedBody782_1063 : StackLang.HolProg 64 :=
.seq NamedBody782_1053 NamedBody782_1062

def NamedBody782_1064 : StackLang.HolProg 64 :=
.seq NamedBody782_1052 NamedBody782_1063

def NamedBody782_1065 : StackLang.HolProg 64 :=
.seq NamedBody782_1051 NamedBody782_1064

def NamedBody782_1066 : StackLang.HolProg 64 :=
.seq NamedBody782_1050 NamedBody782_1065

def NamedBody782_1067 : StackLang.HolProg 64 :=
.seq NamedBody782_1049 NamedBody782_1066

def NamedBody782_1068 : StackLang.HolProg 64 :=
.seq NamedBody782_1048 NamedBody782_1067

def NamedBody782_1069 : StackLang.HolProg 64 :=
.seq NamedBody782_1047 NamedBody782_1068

def NamedBody782_1070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1077 : StackLang.HolProg 64 :=
.seq NamedBody782_1075 NamedBody782_1076

def NamedBody782_1078 : StackLang.HolProg 64 :=
.seq NamedBody782_1074 NamedBody782_1077

def NamedBody782_1079 : StackLang.HolProg 64 :=
.seq NamedBody782_1073 NamedBody782_1078

def NamedBody782_1080 : StackLang.HolProg 64 :=
.seq NamedBody782_1072 NamedBody782_1079

def NamedBody782_1081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1082 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_1083 : StackLang.HolProg 64 :=
.seq NamedBody782_1081 NamedBody782_1082

def NamedBody782_1084 : StackLang.HolProg 64 :=
.call (some (NamedBody782_1080, 1, 782, 30)) (Sum.inl 739) (some (NamedBody782_1083, 782, 31))

def NamedBody782_1085 : StackLang.HolProg 64 :=
.seq NamedBody782_1071 NamedBody782_1084

def NamedBody782_1086 : StackLang.HolProg 64 :=
.seq NamedBody782_1070 NamedBody782_1085

def NamedBody782_1087 : StackLang.HolProg 64 :=
.seq NamedBody782_1069 NamedBody782_1086

def NamedBody782_1088 : StackLang.HolProg 64 :=
.seq NamedBody782_1040 NamedBody782_1087

def NamedBody782_1089 : StackLang.HolProg 64 :=
.seq NamedBody782_1037 NamedBody782_1088

def NamedBody782_1090 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_1091 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_1092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1094 : StackLang.HolProg 64 :=
.seq NamedBody782_1092 NamedBody782_1093

def NamedBody782_1095 : StackLang.HolProg 64 :=
.seq NamedBody782_1091 NamedBody782_1094

def NamedBody782_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3565#64)

def NamedBody782_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1099 : StackLang.HolProg 64 :=
.seq NamedBody782_1097 NamedBody782_1098

def NamedBody782_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_1102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_1103 : StackLang.HolProg 64 :=
.seq NamedBody782_1101 NamedBody782_1102

def NamedBody782_1104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_1103 NamedBody782_1104

def NamedBody782_1106 : StackLang.HolProg 64 :=
.seq NamedBody782_1100 NamedBody782_1105

def NamedBody782_1107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_1108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 33

def NamedBody782_1110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_1111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_1116 : StackLang.HolProg 64 :=
.seq NamedBody782_1114 NamedBody782_1115

def NamedBody782_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_1118 : StackLang.HolProg 64 :=
.seq NamedBody782_1116 NamedBody782_1117

def NamedBody782_1119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1120 : StackLang.HolProg 64 :=
.seq NamedBody782_1118 NamedBody782_1119

def NamedBody782_1121 : StackLang.HolProg 64 :=
.seq NamedBody782_1113 NamedBody782_1120

def NamedBody782_1122 : StackLang.HolProg 64 :=
.seq NamedBody782_1112 NamedBody782_1121

def NamedBody782_1123 : StackLang.HolProg 64 :=
.seq NamedBody782_1111 NamedBody782_1122

def NamedBody782_1124 : StackLang.HolProg 64 :=
.seq NamedBody782_1110 NamedBody782_1123

def NamedBody782_1125 : StackLang.HolProg 64 :=
.seq NamedBody782_1109 NamedBody782_1124

def NamedBody782_1126 : StackLang.HolProg 64 :=
.seq NamedBody782_1108 NamedBody782_1125

def NamedBody782_1127 : StackLang.HolProg 64 :=
.seq NamedBody782_1107 NamedBody782_1126

def NamedBody782_1128 : StackLang.HolProg 64 :=
.seq NamedBody782_1106 NamedBody782_1127

def NamedBody782_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_1137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_1139 : StackLang.HolProg 64 :=
.seq NamedBody782_1137 NamedBody782_1138

def NamedBody782_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1142 : StackLang.HolProg 64 :=
.seq NamedBody782_1140 NamedBody782_1141

def NamedBody782_1143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1145 : StackLang.HolProg 64 :=
.seq NamedBody782_1143 NamedBody782_1144

def NamedBody782_1146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_1147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_1148 : StackLang.HolProg 64 :=
.seq NamedBody782_1146 NamedBody782_1147

def NamedBody782_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_1151 : StackLang.HolProg 64 :=
.seq NamedBody782_1149 NamedBody782_1150

def NamedBody782_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1154 : StackLang.HolProg 64 :=
.seq NamedBody782_1152 NamedBody782_1153

def NamedBody782_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_1156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_1157 : StackLang.HolProg 64 :=
.seq NamedBody782_1155 NamedBody782_1156

def NamedBody782_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody782_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_1160 : StackLang.HolProg 64 :=
.seq NamedBody782_1158 NamedBody782_1159

def NamedBody782_1161 : StackLang.HolProg 64 :=
.seq NamedBody782_1157 NamedBody782_1160

def NamedBody782_1162 : StackLang.HolProg 64 :=
.seq NamedBody782_1154 NamedBody782_1161

def NamedBody782_1163 : StackLang.HolProg 64 :=
.seq NamedBody782_1151 NamedBody782_1162

def NamedBody782_1164 : StackLang.HolProg 64 :=
.seq NamedBody782_1148 NamedBody782_1163

def NamedBody782_1165 : StackLang.HolProg 64 :=
.seq NamedBody782_1145 NamedBody782_1164

def NamedBody782_1166 : StackLang.HolProg 64 :=
.seq NamedBody782_1142 NamedBody782_1165

def NamedBody782_1167 : StackLang.HolProg 64 :=
.seq NamedBody782_1139 NamedBody782_1166

def NamedBody782_1168 : StackLang.HolProg 64 :=
.seq NamedBody782_1136 NamedBody782_1167

def NamedBody782_1169 : StackLang.HolProg 64 :=
.seq NamedBody782_1135 NamedBody782_1168

def NamedBody782_1170 : StackLang.HolProg 64 :=
.seq NamedBody782_1134 NamedBody782_1169

def NamedBody782_1171 : StackLang.HolProg 64 :=
.seq NamedBody782_1133 NamedBody782_1170

def NamedBody782_1172 : StackLang.HolProg 64 :=
.seq NamedBody782_1132 NamedBody782_1171

def NamedBody782_1173 : StackLang.HolProg 64 :=
.seq NamedBody782_1131 NamedBody782_1172

def NamedBody782_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_1176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_1178 : StackLang.HolProg 64 :=
.seq NamedBody782_1176 NamedBody782_1177

def NamedBody782_1179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1181 : StackLang.HolProg 64 :=
.seq NamedBody782_1179 NamedBody782_1180

def NamedBody782_1182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_1183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1184 : StackLang.HolProg 64 :=
.seq NamedBody782_1182 NamedBody782_1183

def NamedBody782_1185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_1186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_1187 : StackLang.HolProg 64 :=
.seq NamedBody782_1185 NamedBody782_1186

def NamedBody782_1188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_1190 : StackLang.HolProg 64 :=
.seq NamedBody782_1188 NamedBody782_1189

def NamedBody782_1191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1193 : StackLang.HolProg 64 :=
.seq NamedBody782_1191 NamedBody782_1192

def NamedBody782_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_1195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_1196 : StackLang.HolProg 64 :=
.seq NamedBody782_1194 NamedBody782_1195

def NamedBody782_1197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody782_1198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_1199 : StackLang.HolProg 64 :=
.seq NamedBody782_1197 NamedBody782_1198

def NamedBody782_1200 : StackLang.HolProg 64 :=
.seq NamedBody782_1196 NamedBody782_1199

def NamedBody782_1201 : StackLang.HolProg 64 :=
.seq NamedBody782_1193 NamedBody782_1200

def NamedBody782_1202 : StackLang.HolProg 64 :=
.seq NamedBody782_1190 NamedBody782_1201

def NamedBody782_1203 : StackLang.HolProg 64 :=
.seq NamedBody782_1187 NamedBody782_1202

def NamedBody782_1204 : StackLang.HolProg 64 :=
.seq NamedBody782_1184 NamedBody782_1203

def NamedBody782_1205 : StackLang.HolProg 64 :=
.seq NamedBody782_1181 NamedBody782_1204

def NamedBody782_1206 : StackLang.HolProg 64 :=
.seq NamedBody782_1178 NamedBody782_1205

def NamedBody782_1207 : StackLang.HolProg 64 :=
.seq NamedBody782_1175 NamedBody782_1206

def NamedBody782_1208 : StackLang.HolProg 64 :=
.seq NamedBody782_1174 NamedBody782_1207

def NamedBody782_1209 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_1210 : StackLang.HolProg 64 :=
.seq NamedBody782_1208 NamedBody782_1209

def NamedBody782_1211 : StackLang.HolProg 64 :=
.call (some (NamedBody782_1173, 1, 782, 32)) (Sum.inl 734) (some (NamedBody782_1210, 782, 33))

def NamedBody782_1212 : StackLang.HolProg 64 :=
.seq NamedBody782_1130 NamedBody782_1211

def NamedBody782_1213 : StackLang.HolProg 64 :=
.seq NamedBody782_1129 NamedBody782_1212

def NamedBody782_1214 : StackLang.HolProg 64 :=
.seq NamedBody782_1128 NamedBody782_1213

def NamedBody782_1215 : StackLang.HolProg 64 :=
.seq NamedBody782_1099 NamedBody782_1214

def NamedBody782_1216 : StackLang.HolProg 64 :=
.seq NamedBody782_1096 NamedBody782_1215

def NamedBody782_1217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_1218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody782_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1220 : StackLang.HolProg 64 :=
.seq NamedBody782_1218 NamedBody782_1219

def NamedBody782_1221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3566#64)

def NamedBody782_1223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1224 : StackLang.HolProg 64 :=
.seq NamedBody782_1222 NamedBody782_1223

def NamedBody782_1225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_1227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_1228 : StackLang.HolProg 64 :=
.seq NamedBody782_1226 NamedBody782_1227

def NamedBody782_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1230 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_1228 NamedBody782_1229

def NamedBody782_1231 : StackLang.HolProg 64 :=
.seq NamedBody782_1225 NamedBody782_1230

def NamedBody782_1232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_1233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 35

def NamedBody782_1235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_1240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_1241 : StackLang.HolProg 64 :=
.seq NamedBody782_1239 NamedBody782_1240

def NamedBody782_1242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_1243 : StackLang.HolProg 64 :=
.seq NamedBody782_1241 NamedBody782_1242

def NamedBody782_1244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1245 : StackLang.HolProg 64 :=
.seq NamedBody782_1243 NamedBody782_1244

def NamedBody782_1246 : StackLang.HolProg 64 :=
.seq NamedBody782_1238 NamedBody782_1245

def NamedBody782_1247 : StackLang.HolProg 64 :=
.seq NamedBody782_1237 NamedBody782_1246

def NamedBody782_1248 : StackLang.HolProg 64 :=
.seq NamedBody782_1236 NamedBody782_1247

def NamedBody782_1249 : StackLang.HolProg 64 :=
.seq NamedBody782_1235 NamedBody782_1248

def NamedBody782_1250 : StackLang.HolProg 64 :=
.seq NamedBody782_1234 NamedBody782_1249

def NamedBody782_1251 : StackLang.HolProg 64 :=
.seq NamedBody782_1233 NamedBody782_1250

def NamedBody782_1252 : StackLang.HolProg 64 :=
.seq NamedBody782_1232 NamedBody782_1251

def NamedBody782_1253 : StackLang.HolProg 64 :=
.seq NamedBody782_1231 NamedBody782_1252

def NamedBody782_1254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_1263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_1264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_1265 : StackLang.HolProg 64 :=
.seq NamedBody782_1263 NamedBody782_1264

def NamedBody782_1266 : StackLang.HolProg 64 :=
.seq NamedBody782_1262 NamedBody782_1265

def NamedBody782_1267 : StackLang.HolProg 64 :=
.seq NamedBody782_1261 NamedBody782_1266

def NamedBody782_1268 : StackLang.HolProg 64 :=
.seq NamedBody782_1260 NamedBody782_1267

def NamedBody782_1269 : StackLang.HolProg 64 :=
.seq NamedBody782_1259 NamedBody782_1268

def NamedBody782_1270 : StackLang.HolProg 64 :=
.seq NamedBody782_1258 NamedBody782_1269

def NamedBody782_1271 : StackLang.HolProg 64 :=
.seq NamedBody782_1257 NamedBody782_1270

def NamedBody782_1272 : StackLang.HolProg 64 :=
.seq NamedBody782_1256 NamedBody782_1271

def NamedBody782_1273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_1276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody782_1277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_1278 : StackLang.HolProg 64 :=
.seq NamedBody782_1276 NamedBody782_1277

def NamedBody782_1279 : StackLang.HolProg 64 :=
.seq NamedBody782_1275 NamedBody782_1278

def NamedBody782_1280 : StackLang.HolProg 64 :=
.seq NamedBody782_1274 NamedBody782_1279

def NamedBody782_1281 : StackLang.HolProg 64 :=
.seq NamedBody782_1273 NamedBody782_1280

def NamedBody782_1282 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_1283 : StackLang.HolProg 64 :=
.seq NamedBody782_1281 NamedBody782_1282

def NamedBody782_1284 : StackLang.HolProg 64 :=
.call (some (NamedBody782_1272, 1, 782, 34)) (Sum.inl 735) (some (NamedBody782_1283, 782, 35))

def NamedBody782_1285 : StackLang.HolProg 64 :=
.seq NamedBody782_1255 NamedBody782_1284

def NamedBody782_1286 : StackLang.HolProg 64 :=
.seq NamedBody782_1254 NamedBody782_1285

def NamedBody782_1287 : StackLang.HolProg 64 :=
.seq NamedBody782_1253 NamedBody782_1286

def NamedBody782_1288 : StackLang.HolProg 64 :=
.seq NamedBody782_1224 NamedBody782_1287

def NamedBody782_1289 : StackLang.HolProg 64 :=
.seq NamedBody782_1221 NamedBody782_1288

def NamedBody782_1290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_1291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody782_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1294 : StackLang.HolProg 64 :=
.seq NamedBody782_1292 NamedBody782_1293

def NamedBody782_1295 : StackLang.HolProg 64 :=
.seq NamedBody782_1291 NamedBody782_1294

def NamedBody782_1296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3567#64)

def NamedBody782_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1299 : StackLang.HolProg 64 :=
.seq NamedBody782_1297 NamedBody782_1298

def NamedBody782_1300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_1303 : StackLang.HolProg 64 :=
.seq NamedBody782_1301 NamedBody782_1302

def NamedBody782_1304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1305 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_1303 NamedBody782_1304

def NamedBody782_1306 : StackLang.HolProg 64 :=
.seq NamedBody782_1300 NamedBody782_1305

def NamedBody782_1307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_1308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 37

def NamedBody782_1310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_1311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_1315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_1316 : StackLang.HolProg 64 :=
.seq NamedBody782_1314 NamedBody782_1315

def NamedBody782_1317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_1318 : StackLang.HolProg 64 :=
.seq NamedBody782_1316 NamedBody782_1317

def NamedBody782_1319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1320 : StackLang.HolProg 64 :=
.seq NamedBody782_1318 NamedBody782_1319

def NamedBody782_1321 : StackLang.HolProg 64 :=
.seq NamedBody782_1313 NamedBody782_1320

def NamedBody782_1322 : StackLang.HolProg 64 :=
.seq NamedBody782_1312 NamedBody782_1321

def NamedBody782_1323 : StackLang.HolProg 64 :=
.seq NamedBody782_1311 NamedBody782_1322

def NamedBody782_1324 : StackLang.HolProg 64 :=
.seq NamedBody782_1310 NamedBody782_1323

def NamedBody782_1325 : StackLang.HolProg 64 :=
.seq NamedBody782_1309 NamedBody782_1324

def NamedBody782_1326 : StackLang.HolProg 64 :=
.seq NamedBody782_1308 NamedBody782_1325

def NamedBody782_1327 : StackLang.HolProg 64 :=
.seq NamedBody782_1307 NamedBody782_1326

def NamedBody782_1328 : StackLang.HolProg 64 :=
.seq NamedBody782_1306 NamedBody782_1327

def NamedBody782_1329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1339 : StackLang.HolProg 64 :=
.seq NamedBody782_1337 NamedBody782_1338

def NamedBody782_1340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_1341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1342 : StackLang.HolProg 64 :=
.seq NamedBody782_1340 NamedBody782_1341

def NamedBody782_1343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_1344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_1345 : StackLang.HolProg 64 :=
.seq NamedBody782_1343 NamedBody782_1344

def NamedBody782_1346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_1348 : StackLang.HolProg 64 :=
.seq NamedBody782_1346 NamedBody782_1347

def NamedBody782_1349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_1350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1351 : StackLang.HolProg 64 :=
.seq NamedBody782_1349 NamedBody782_1350

def NamedBody782_1352 : StackLang.HolProg 64 :=
.seq NamedBody782_1348 NamedBody782_1351

def NamedBody782_1353 : StackLang.HolProg 64 :=
.seq NamedBody782_1345 NamedBody782_1352

def NamedBody782_1354 : StackLang.HolProg 64 :=
.seq NamedBody782_1342 NamedBody782_1353

def NamedBody782_1355 : StackLang.HolProg 64 :=
.seq NamedBody782_1339 NamedBody782_1354

def NamedBody782_1356 : StackLang.HolProg 64 :=
.seq NamedBody782_1336 NamedBody782_1355

def NamedBody782_1357 : StackLang.HolProg 64 :=
.seq NamedBody782_1335 NamedBody782_1356

def NamedBody782_1358 : StackLang.HolProg 64 :=
.seq NamedBody782_1334 NamedBody782_1357

def NamedBody782_1359 : StackLang.HolProg 64 :=
.seq NamedBody782_1333 NamedBody782_1358

def NamedBody782_1360 : StackLang.HolProg 64 :=
.seq NamedBody782_1332 NamedBody782_1359

def NamedBody782_1361 : StackLang.HolProg 64 :=
.seq NamedBody782_1331 NamedBody782_1360

def NamedBody782_1362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1366 : StackLang.HolProg 64 :=
.seq NamedBody782_1364 NamedBody782_1365

def NamedBody782_1367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_1368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1369 : StackLang.HolProg 64 :=
.seq NamedBody782_1367 NamedBody782_1368

def NamedBody782_1370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_1371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_1372 : StackLang.HolProg 64 :=
.seq NamedBody782_1370 NamedBody782_1371

def NamedBody782_1373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_1375 : StackLang.HolProg 64 :=
.seq NamedBody782_1373 NamedBody782_1374

def NamedBody782_1376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody782_1377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1378 : StackLang.HolProg 64 :=
.seq NamedBody782_1376 NamedBody782_1377

def NamedBody782_1379 : StackLang.HolProg 64 :=
.seq NamedBody782_1375 NamedBody782_1378

def NamedBody782_1380 : StackLang.HolProg 64 :=
.seq NamedBody782_1372 NamedBody782_1379

def NamedBody782_1381 : StackLang.HolProg 64 :=
.seq NamedBody782_1369 NamedBody782_1380

def NamedBody782_1382 : StackLang.HolProg 64 :=
.seq NamedBody782_1366 NamedBody782_1381

def NamedBody782_1383 : StackLang.HolProg 64 :=
.seq NamedBody782_1363 NamedBody782_1382

def NamedBody782_1384 : StackLang.HolProg 64 :=
.seq NamedBody782_1362 NamedBody782_1383

def NamedBody782_1385 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_1386 : StackLang.HolProg 64 :=
.seq NamedBody782_1384 NamedBody782_1385

def NamedBody782_1387 : StackLang.HolProg 64 :=
.call (some (NamedBody782_1361, 1, 782, 36)) (Sum.inl 739) (some (NamedBody782_1386, 782, 37))

def NamedBody782_1388 : StackLang.HolProg 64 :=
.seq NamedBody782_1330 NamedBody782_1387

def NamedBody782_1389 : StackLang.HolProg 64 :=
.seq NamedBody782_1329 NamedBody782_1388

def NamedBody782_1390 : StackLang.HolProg 64 :=
.seq NamedBody782_1328 NamedBody782_1389

def NamedBody782_1391 : StackLang.HolProg 64 :=
.seq NamedBody782_1299 NamedBody782_1390

def NamedBody782_1392 : StackLang.HolProg 64 :=
.seq NamedBody782_1296 NamedBody782_1391

def NamedBody782_1393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_1394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody782_1395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1396 : StackLang.HolProg 64 :=
.seq NamedBody782_1394 NamedBody782_1395

def NamedBody782_1397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3568#64)

def NamedBody782_1399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1400 : StackLang.HolProg 64 :=
.seq NamedBody782_1398 NamedBody782_1399

def NamedBody782_1401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_1403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_1404 : StackLang.HolProg 64 :=
.seq NamedBody782_1402 NamedBody782_1403

def NamedBody782_1405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1406 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_1404 NamedBody782_1405

def NamedBody782_1407 : StackLang.HolProg 64 :=
.seq NamedBody782_1401 NamedBody782_1406

def NamedBody782_1408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_1409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 39

def NamedBody782_1411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_1412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_1416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_1417 : StackLang.HolProg 64 :=
.seq NamedBody782_1415 NamedBody782_1416

def NamedBody782_1418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_1419 : StackLang.HolProg 64 :=
.seq NamedBody782_1417 NamedBody782_1418

def NamedBody782_1420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1421 : StackLang.HolProg 64 :=
.seq NamedBody782_1419 NamedBody782_1420

def NamedBody782_1422 : StackLang.HolProg 64 :=
.seq NamedBody782_1414 NamedBody782_1421

def NamedBody782_1423 : StackLang.HolProg 64 :=
.seq NamedBody782_1413 NamedBody782_1422

def NamedBody782_1424 : StackLang.HolProg 64 :=
.seq NamedBody782_1412 NamedBody782_1423

def NamedBody782_1425 : StackLang.HolProg 64 :=
.seq NamedBody782_1411 NamedBody782_1424

def NamedBody782_1426 : StackLang.HolProg 64 :=
.seq NamedBody782_1410 NamedBody782_1425

def NamedBody782_1427 : StackLang.HolProg 64 :=
.seq NamedBody782_1409 NamedBody782_1426

def NamedBody782_1428 : StackLang.HolProg 64 :=
.seq NamedBody782_1408 NamedBody782_1427

def NamedBody782_1429 : StackLang.HolProg 64 :=
.seq NamedBody782_1407 NamedBody782_1428

def NamedBody782_1430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_1438 : StackLang.HolProg 64 :=
.seq NamedBody782_1436 NamedBody782_1437

def NamedBody782_1439 : StackLang.HolProg 64 :=
.seq NamedBody782_1435 NamedBody782_1438

def NamedBody782_1440 : StackLang.HolProg 64 :=
.seq NamedBody782_1434 NamedBody782_1439

def NamedBody782_1441 : StackLang.HolProg 64 :=
.seq NamedBody782_1433 NamedBody782_1440

def NamedBody782_1442 : StackLang.HolProg 64 :=
.seq NamedBody782_1432 NamedBody782_1441

def NamedBody782_1443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_1445 : StackLang.HolProg 64 :=
.seq NamedBody782_1443 NamedBody782_1444

def NamedBody782_1446 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_1447 : StackLang.HolProg 64 :=
.seq NamedBody782_1445 NamedBody782_1446

def NamedBody782_1448 : StackLang.HolProg 64 :=
.call (some (NamedBody782_1442, 1, 782, 38)) (Sum.inl 740) (some (NamedBody782_1447, 782, 39))

def NamedBody782_1449 : StackLang.HolProg 64 :=
.seq NamedBody782_1431 NamedBody782_1448

def NamedBody782_1450 : StackLang.HolProg 64 :=
.seq NamedBody782_1430 NamedBody782_1449

def NamedBody782_1451 : StackLang.HolProg 64 :=
.seq NamedBody782_1429 NamedBody782_1450

def NamedBody782_1452 : StackLang.HolProg 64 :=
.seq NamedBody782_1400 NamedBody782_1451

def NamedBody782_1453 : StackLang.HolProg 64 :=
.seq NamedBody782_1397 NamedBody782_1452

def NamedBody782_1454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_1455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody782_1456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_1458 : StackLang.HolProg 64 :=
.seq NamedBody782_1456 NamedBody782_1457

def NamedBody782_1459 : StackLang.HolProg 64 :=
.seq NamedBody782_1455 NamedBody782_1458

def NamedBody782_1460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3569#64)

def NamedBody782_1462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1463 : StackLang.HolProg 64 :=
.seq NamedBody782_1461 NamedBody782_1462

def NamedBody782_1464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_1466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_1467 : StackLang.HolProg 64 :=
.seq NamedBody782_1465 NamedBody782_1466

def NamedBody782_1468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1469 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_1467 NamedBody782_1468

def NamedBody782_1470 : StackLang.HolProg 64 :=
.seq NamedBody782_1464 NamedBody782_1469

def NamedBody782_1471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_1472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 41

def NamedBody782_1474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_1475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_1479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_1480 : StackLang.HolProg 64 :=
.seq NamedBody782_1478 NamedBody782_1479

def NamedBody782_1481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_1482 : StackLang.HolProg 64 :=
.seq NamedBody782_1480 NamedBody782_1481

def NamedBody782_1483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1484 : StackLang.HolProg 64 :=
.seq NamedBody782_1482 NamedBody782_1483

def NamedBody782_1485 : StackLang.HolProg 64 :=
.seq NamedBody782_1477 NamedBody782_1484

def NamedBody782_1486 : StackLang.HolProg 64 :=
.seq NamedBody782_1476 NamedBody782_1485

def NamedBody782_1487 : StackLang.HolProg 64 :=
.seq NamedBody782_1475 NamedBody782_1486

def NamedBody782_1488 : StackLang.HolProg 64 :=
.seq NamedBody782_1474 NamedBody782_1487

def NamedBody782_1489 : StackLang.HolProg 64 :=
.seq NamedBody782_1473 NamedBody782_1488

def NamedBody782_1490 : StackLang.HolProg 64 :=
.seq NamedBody782_1472 NamedBody782_1489

def NamedBody782_1491 : StackLang.HolProg 64 :=
.seq NamedBody782_1471 NamedBody782_1490

def NamedBody782_1492 : StackLang.HolProg 64 :=
.seq NamedBody782_1470 NamedBody782_1491

def NamedBody782_1493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1500 : StackLang.HolProg 64 :=
.seq NamedBody782_1498 NamedBody782_1499

def NamedBody782_1501 : StackLang.HolProg 64 :=
.seq NamedBody782_1497 NamedBody782_1500

def NamedBody782_1502 : StackLang.HolProg 64 :=
.seq NamedBody782_1496 NamedBody782_1501

def NamedBody782_1503 : StackLang.HolProg 64 :=
.seq NamedBody782_1495 NamedBody782_1502

def NamedBody782_1504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1505 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_1506 : StackLang.HolProg 64 :=
.seq NamedBody782_1504 NamedBody782_1505

def NamedBody782_1507 : StackLang.HolProg 64 :=
.call (some (NamedBody782_1503, 1, 782, 40)) (Sum.inl 739) (some (NamedBody782_1506, 782, 41))

def NamedBody782_1508 : StackLang.HolProg 64 :=
.seq NamedBody782_1494 NamedBody782_1507

def NamedBody782_1509 : StackLang.HolProg 64 :=
.seq NamedBody782_1493 NamedBody782_1508

def NamedBody782_1510 : StackLang.HolProg 64 :=
.seq NamedBody782_1492 NamedBody782_1509

def NamedBody782_1511 : StackLang.HolProg 64 :=
.seq NamedBody782_1463 NamedBody782_1510

def NamedBody782_1512 : StackLang.HolProg 64 :=
.seq NamedBody782_1460 NamedBody782_1511

def NamedBody782_1513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_1514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_1515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_1516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1517 : StackLang.HolProg 64 :=
.seq NamedBody782_1515 NamedBody782_1516

def NamedBody782_1518 : StackLang.HolProg 64 :=
.seq NamedBody782_1514 NamedBody782_1517

def NamedBody782_1519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3570#64)

def NamedBody782_1521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1522 : StackLang.HolProg 64 :=
.seq NamedBody782_1520 NamedBody782_1521

def NamedBody782_1523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_1525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_1526 : StackLang.HolProg 64 :=
.seq NamedBody782_1524 NamedBody782_1525

def NamedBody782_1527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1528 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_1526 NamedBody782_1527

def NamedBody782_1529 : StackLang.HolProg 64 :=
.seq NamedBody782_1523 NamedBody782_1528

def NamedBody782_1530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_1531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 43

def NamedBody782_1533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_1534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_1538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_1539 : StackLang.HolProg 64 :=
.seq NamedBody782_1537 NamedBody782_1538

def NamedBody782_1540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_1541 : StackLang.HolProg 64 :=
.seq NamedBody782_1539 NamedBody782_1540

def NamedBody782_1542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1543 : StackLang.HolProg 64 :=
.seq NamedBody782_1541 NamedBody782_1542

def NamedBody782_1544 : StackLang.HolProg 64 :=
.seq NamedBody782_1536 NamedBody782_1543

def NamedBody782_1545 : StackLang.HolProg 64 :=
.seq NamedBody782_1535 NamedBody782_1544

def NamedBody782_1546 : StackLang.HolProg 64 :=
.seq NamedBody782_1534 NamedBody782_1545

def NamedBody782_1547 : StackLang.HolProg 64 :=
.seq NamedBody782_1533 NamedBody782_1546

def NamedBody782_1548 : StackLang.HolProg 64 :=
.seq NamedBody782_1532 NamedBody782_1547

def NamedBody782_1549 : StackLang.HolProg 64 :=
.seq NamedBody782_1531 NamedBody782_1548

def NamedBody782_1550 : StackLang.HolProg 64 :=
.seq NamedBody782_1530 NamedBody782_1549

def NamedBody782_1551 : StackLang.HolProg 64 :=
.seq NamedBody782_1529 NamedBody782_1550

def NamedBody782_1552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1559 : StackLang.HolProg 64 :=
.seq NamedBody782_1557 NamedBody782_1558

def NamedBody782_1560 : StackLang.HolProg 64 :=
.seq NamedBody782_1556 NamedBody782_1559

def NamedBody782_1561 : StackLang.HolProg 64 :=
.seq NamedBody782_1555 NamedBody782_1560

def NamedBody782_1562 : StackLang.HolProg 64 :=
.seq NamedBody782_1554 NamedBody782_1561

def NamedBody782_1563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1564 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_1565 : StackLang.HolProg 64 :=
.seq NamedBody782_1563 NamedBody782_1564

def NamedBody782_1566 : StackLang.HolProg 64 :=
.call (some (NamedBody782_1562, 1, 782, 42)) (Sum.inl 734) (some (NamedBody782_1565, 782, 43))

def NamedBody782_1567 : StackLang.HolProg 64 :=
.seq NamedBody782_1553 NamedBody782_1566

def NamedBody782_1568 : StackLang.HolProg 64 :=
.seq NamedBody782_1552 NamedBody782_1567

def NamedBody782_1569 : StackLang.HolProg 64 :=
.seq NamedBody782_1551 NamedBody782_1568

def NamedBody782_1570 : StackLang.HolProg 64 :=
.seq NamedBody782_1522 NamedBody782_1569

def NamedBody782_1571 : StackLang.HolProg 64 :=
.seq NamedBody782_1519 NamedBody782_1570

def NamedBody782_1572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_1573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_1574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_1575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1576 : StackLang.HolProg 64 :=
.seq NamedBody782_1574 NamedBody782_1575

def NamedBody782_1577 : StackLang.HolProg 64 :=
.seq NamedBody782_1573 NamedBody782_1576

def NamedBody782_1578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3571#64)

def NamedBody782_1580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1581 : StackLang.HolProg 64 :=
.seq NamedBody782_1579 NamedBody782_1580

def NamedBody782_1582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_1584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_1585 : StackLang.HolProg 64 :=
.seq NamedBody782_1583 NamedBody782_1584

def NamedBody782_1586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1587 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_1585 NamedBody782_1586

def NamedBody782_1588 : StackLang.HolProg 64 :=
.seq NamedBody782_1582 NamedBody782_1587

def NamedBody782_1589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_1590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 45

def NamedBody782_1592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_1593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_1597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_1598 : StackLang.HolProg 64 :=
.seq NamedBody782_1596 NamedBody782_1597

def NamedBody782_1599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_1600 : StackLang.HolProg 64 :=
.seq NamedBody782_1598 NamedBody782_1599

def NamedBody782_1601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1602 : StackLang.HolProg 64 :=
.seq NamedBody782_1600 NamedBody782_1601

def NamedBody782_1603 : StackLang.HolProg 64 :=
.seq NamedBody782_1595 NamedBody782_1602

def NamedBody782_1604 : StackLang.HolProg 64 :=
.seq NamedBody782_1594 NamedBody782_1603

def NamedBody782_1605 : StackLang.HolProg 64 :=
.seq NamedBody782_1593 NamedBody782_1604

def NamedBody782_1606 : StackLang.HolProg 64 :=
.seq NamedBody782_1592 NamedBody782_1605

def NamedBody782_1607 : StackLang.HolProg 64 :=
.seq NamedBody782_1591 NamedBody782_1606

def NamedBody782_1608 : StackLang.HolProg 64 :=
.seq NamedBody782_1590 NamedBody782_1607

def NamedBody782_1609 : StackLang.HolProg 64 :=
.seq NamedBody782_1589 NamedBody782_1608

def NamedBody782_1610 : StackLang.HolProg 64 :=
.seq NamedBody782_1588 NamedBody782_1609

def NamedBody782_1611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1618 : StackLang.HolProg 64 :=
.seq NamedBody782_1616 NamedBody782_1617

def NamedBody782_1619 : StackLang.HolProg 64 :=
.seq NamedBody782_1615 NamedBody782_1618

def NamedBody782_1620 : StackLang.HolProg 64 :=
.seq NamedBody782_1614 NamedBody782_1619

def NamedBody782_1621 : StackLang.HolProg 64 :=
.seq NamedBody782_1613 NamedBody782_1620

def NamedBody782_1622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1623 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_1624 : StackLang.HolProg 64 :=
.seq NamedBody782_1622 NamedBody782_1623

def NamedBody782_1625 : StackLang.HolProg 64 :=
.call (some (NamedBody782_1621, 1, 782, 44)) (Sum.inl 734) (some (NamedBody782_1624, 782, 45))

def NamedBody782_1626 : StackLang.HolProg 64 :=
.seq NamedBody782_1612 NamedBody782_1625

def NamedBody782_1627 : StackLang.HolProg 64 :=
.seq NamedBody782_1611 NamedBody782_1626

def NamedBody782_1628 : StackLang.HolProg 64 :=
.seq NamedBody782_1610 NamedBody782_1627

def NamedBody782_1629 : StackLang.HolProg 64 :=
.seq NamedBody782_1581 NamedBody782_1628

def NamedBody782_1630 : StackLang.HolProg 64 :=
.seq NamedBody782_1578 NamedBody782_1629

def NamedBody782_1631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_1632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_1633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_1634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1635 : StackLang.HolProg 64 :=
.seq NamedBody782_1633 NamedBody782_1634

def NamedBody782_1636 : StackLang.HolProg 64 :=
.seq NamedBody782_1632 NamedBody782_1635

def NamedBody782_1637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3572#64)

def NamedBody782_1639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1640 : StackLang.HolProg 64 :=
.seq NamedBody782_1638 NamedBody782_1639

def NamedBody782_1641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_1643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_1644 : StackLang.HolProg 64 :=
.seq NamedBody782_1642 NamedBody782_1643

def NamedBody782_1645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1646 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_1644 NamedBody782_1645

def NamedBody782_1647 : StackLang.HolProg 64 :=
.seq NamedBody782_1641 NamedBody782_1646

def NamedBody782_1648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_1649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 47

def NamedBody782_1651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_1652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_1656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_1657 : StackLang.HolProg 64 :=
.seq NamedBody782_1655 NamedBody782_1656

def NamedBody782_1658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_1659 : StackLang.HolProg 64 :=
.seq NamedBody782_1657 NamedBody782_1658

def NamedBody782_1660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1661 : StackLang.HolProg 64 :=
.seq NamedBody782_1659 NamedBody782_1660

def NamedBody782_1662 : StackLang.HolProg 64 :=
.seq NamedBody782_1654 NamedBody782_1661

def NamedBody782_1663 : StackLang.HolProg 64 :=
.seq NamedBody782_1653 NamedBody782_1662

def NamedBody782_1664 : StackLang.HolProg 64 :=
.seq NamedBody782_1652 NamedBody782_1663

def NamedBody782_1665 : StackLang.HolProg 64 :=
.seq NamedBody782_1651 NamedBody782_1664

def NamedBody782_1666 : StackLang.HolProg 64 :=
.seq NamedBody782_1650 NamedBody782_1665

def NamedBody782_1667 : StackLang.HolProg 64 :=
.seq NamedBody782_1649 NamedBody782_1666

def NamedBody782_1668 : StackLang.HolProg 64 :=
.seq NamedBody782_1648 NamedBody782_1667

def NamedBody782_1669 : StackLang.HolProg 64 :=
.seq NamedBody782_1647 NamedBody782_1668

def NamedBody782_1670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1678 : StackLang.HolProg 64 :=
.seq NamedBody782_1676 NamedBody782_1677

def NamedBody782_1679 : StackLang.HolProg 64 :=
.seq NamedBody782_1675 NamedBody782_1678

def NamedBody782_1680 : StackLang.HolProg 64 :=
.seq NamedBody782_1674 NamedBody782_1679

def NamedBody782_1681 : StackLang.HolProg 64 :=
.seq NamedBody782_1673 NamedBody782_1680

def NamedBody782_1682 : StackLang.HolProg 64 :=
.seq NamedBody782_1672 NamedBody782_1681

def NamedBody782_1683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1685 : StackLang.HolProg 64 :=
.seq NamedBody782_1683 NamedBody782_1684

def NamedBody782_1686 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_1687 : StackLang.HolProg 64 :=
.seq NamedBody782_1685 NamedBody782_1686

def NamedBody782_1688 : StackLang.HolProg 64 :=
.call (some (NamedBody782_1682, 1, 782, 46)) (Sum.inl 734) (some (NamedBody782_1687, 782, 47))

def NamedBody782_1689 : StackLang.HolProg 64 :=
.seq NamedBody782_1671 NamedBody782_1688

def NamedBody782_1690 : StackLang.HolProg 64 :=
.seq NamedBody782_1670 NamedBody782_1689

def NamedBody782_1691 : StackLang.HolProg 64 :=
.seq NamedBody782_1669 NamedBody782_1690

def NamedBody782_1692 : StackLang.HolProg 64 :=
.seq NamedBody782_1640 NamedBody782_1691

def NamedBody782_1693 : StackLang.HolProg 64 :=
.seq NamedBody782_1637 NamedBody782_1692

def NamedBody782_1694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_1695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody782_1696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1698 : StackLang.HolProg 64 :=
.seq NamedBody782_1696 NamedBody782_1697

def NamedBody782_1699 : StackLang.HolProg 64 :=
.seq NamedBody782_1695 NamedBody782_1698

def NamedBody782_1700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3573#64)

def NamedBody782_1702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1703 : StackLang.HolProg 64 :=
.seq NamedBody782_1701 NamedBody782_1702

def NamedBody782_1704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_1706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_1707 : StackLang.HolProg 64 :=
.seq NamedBody782_1705 NamedBody782_1706

def NamedBody782_1708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1709 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_1707 NamedBody782_1708

def NamedBody782_1710 : StackLang.HolProg 64 :=
.seq NamedBody782_1704 NamedBody782_1709

def NamedBody782_1711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_1712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 49

def NamedBody782_1714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_1715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_1719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_1720 : StackLang.HolProg 64 :=
.seq NamedBody782_1718 NamedBody782_1719

def NamedBody782_1721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_1722 : StackLang.HolProg 64 :=
.seq NamedBody782_1720 NamedBody782_1721

def NamedBody782_1723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1724 : StackLang.HolProg 64 :=
.seq NamedBody782_1722 NamedBody782_1723

def NamedBody782_1725 : StackLang.HolProg 64 :=
.seq NamedBody782_1717 NamedBody782_1724

def NamedBody782_1726 : StackLang.HolProg 64 :=
.seq NamedBody782_1716 NamedBody782_1725

def NamedBody782_1727 : StackLang.HolProg 64 :=
.seq NamedBody782_1715 NamedBody782_1726

def NamedBody782_1728 : StackLang.HolProg 64 :=
.seq NamedBody782_1714 NamedBody782_1727

def NamedBody782_1729 : StackLang.HolProg 64 :=
.seq NamedBody782_1713 NamedBody782_1728

def NamedBody782_1730 : StackLang.HolProg 64 :=
.seq NamedBody782_1712 NamedBody782_1729

def NamedBody782_1731 : StackLang.HolProg 64 :=
.seq NamedBody782_1711 NamedBody782_1730

def NamedBody782_1732 : StackLang.HolProg 64 :=
.seq NamedBody782_1710 NamedBody782_1731

def NamedBody782_1733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_1741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_1743 : StackLang.HolProg 64 :=
.seq NamedBody782_1741 NamedBody782_1742

def NamedBody782_1744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1746 : StackLang.HolProg 64 :=
.seq NamedBody782_1744 NamedBody782_1745

def NamedBody782_1747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_1748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1749 : StackLang.HolProg 64 :=
.seq NamedBody782_1747 NamedBody782_1748

def NamedBody782_1750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_1751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_1753 : StackLang.HolProg 64 :=
.seq NamedBody782_1751 NamedBody782_1752

def NamedBody782_1754 : StackLang.HolProg 64 :=
.seq NamedBody782_1750 NamedBody782_1753

def NamedBody782_1755 : StackLang.HolProg 64 :=
.seq NamedBody782_1749 NamedBody782_1754

def NamedBody782_1756 : StackLang.HolProg 64 :=
.seq NamedBody782_1746 NamedBody782_1755

def NamedBody782_1757 : StackLang.HolProg 64 :=
.seq NamedBody782_1743 NamedBody782_1756

def NamedBody782_1758 : StackLang.HolProg 64 :=
.seq NamedBody782_1740 NamedBody782_1757

def NamedBody782_1759 : StackLang.HolProg 64 :=
.seq NamedBody782_1739 NamedBody782_1758

def NamedBody782_1760 : StackLang.HolProg 64 :=
.seq NamedBody782_1738 NamedBody782_1759

def NamedBody782_1761 : StackLang.HolProg 64 :=
.seq NamedBody782_1737 NamedBody782_1760

def NamedBody782_1762 : StackLang.HolProg 64 :=
.seq NamedBody782_1736 NamedBody782_1761

def NamedBody782_1763 : StackLang.HolProg 64 :=
.seq NamedBody782_1735 NamedBody782_1762

def NamedBody782_1764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_1766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_1768 : StackLang.HolProg 64 :=
.seq NamedBody782_1766 NamedBody782_1767

def NamedBody782_1769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_1771 : StackLang.HolProg 64 :=
.seq NamedBody782_1769 NamedBody782_1770

def NamedBody782_1772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_1773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_1774 : StackLang.HolProg 64 :=
.seq NamedBody782_1772 NamedBody782_1773

def NamedBody782_1775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody782_1776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody782_1777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_1778 : StackLang.HolProg 64 :=
.seq NamedBody782_1776 NamedBody782_1777

def NamedBody782_1779 : StackLang.HolProg 64 :=
.seq NamedBody782_1775 NamedBody782_1778

def NamedBody782_1780 : StackLang.HolProg 64 :=
.seq NamedBody782_1774 NamedBody782_1779

def NamedBody782_1781 : StackLang.HolProg 64 :=
.seq NamedBody782_1771 NamedBody782_1780

def NamedBody782_1782 : StackLang.HolProg 64 :=
.seq NamedBody782_1768 NamedBody782_1781

def NamedBody782_1783 : StackLang.HolProg 64 :=
.seq NamedBody782_1765 NamedBody782_1782

def NamedBody782_1784 : StackLang.HolProg 64 :=
.seq NamedBody782_1764 NamedBody782_1783

def NamedBody782_1785 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_1786 : StackLang.HolProg 64 :=
.seq NamedBody782_1784 NamedBody782_1785

def NamedBody782_1787 : StackLang.HolProg 64 :=
.call (some (NamedBody782_1763, 1, 782, 48)) (Sum.inl 735) (some (NamedBody782_1786, 782, 49))

def NamedBody782_1788 : StackLang.HolProg 64 :=
.seq NamedBody782_1734 NamedBody782_1787

def NamedBody782_1789 : StackLang.HolProg 64 :=
.seq NamedBody782_1733 NamedBody782_1788

def NamedBody782_1790 : StackLang.HolProg 64 :=
.seq NamedBody782_1732 NamedBody782_1789

def NamedBody782_1791 : StackLang.HolProg 64 :=
.seq NamedBody782_1703 NamedBody782_1790

def NamedBody782_1792 : StackLang.HolProg 64 :=
.seq NamedBody782_1700 NamedBody782_1791

def NamedBody782_1793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_1794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody782_1795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1796 : StackLang.HolProg 64 :=
.seq NamedBody782_1794 NamedBody782_1795

def NamedBody782_1797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3574#64)

def NamedBody782_1799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1800 : StackLang.HolProg 64 :=
.seq NamedBody782_1798 NamedBody782_1799

def NamedBody782_1801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_1803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_1804 : StackLang.HolProg 64 :=
.seq NamedBody782_1802 NamedBody782_1803

def NamedBody782_1805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1806 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_1804 NamedBody782_1805

def NamedBody782_1807 : StackLang.HolProg 64 :=
.seq NamedBody782_1801 NamedBody782_1806

def NamedBody782_1808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_1809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 51

def NamedBody782_1811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_1812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_1816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_1817 : StackLang.HolProg 64 :=
.seq NamedBody782_1815 NamedBody782_1816

def NamedBody782_1818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_1819 : StackLang.HolProg 64 :=
.seq NamedBody782_1817 NamedBody782_1818

def NamedBody782_1820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1821 : StackLang.HolProg 64 :=
.seq NamedBody782_1819 NamedBody782_1820

def NamedBody782_1822 : StackLang.HolProg 64 :=
.seq NamedBody782_1814 NamedBody782_1821

def NamedBody782_1823 : StackLang.HolProg 64 :=
.seq NamedBody782_1813 NamedBody782_1822

def NamedBody782_1824 : StackLang.HolProg 64 :=
.seq NamedBody782_1812 NamedBody782_1823

def NamedBody782_1825 : StackLang.HolProg 64 :=
.seq NamedBody782_1811 NamedBody782_1824

def NamedBody782_1826 : StackLang.HolProg 64 :=
.seq NamedBody782_1810 NamedBody782_1825

def NamedBody782_1827 : StackLang.HolProg 64 :=
.seq NamedBody782_1809 NamedBody782_1826

def NamedBody782_1828 : StackLang.HolProg 64 :=
.seq NamedBody782_1808 NamedBody782_1827

def NamedBody782_1829 : StackLang.HolProg 64 :=
.seq NamedBody782_1807 NamedBody782_1828

def NamedBody782_1830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1837 : StackLang.HolProg 64 :=
.seq NamedBody782_1835 NamedBody782_1836

def NamedBody782_1838 : StackLang.HolProg 64 :=
.seq NamedBody782_1834 NamedBody782_1837

def NamedBody782_1839 : StackLang.HolProg 64 :=
.seq NamedBody782_1833 NamedBody782_1838

def NamedBody782_1840 : StackLang.HolProg 64 :=
.seq NamedBody782_1832 NamedBody782_1839

def NamedBody782_1841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1842 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_1843 : StackLang.HolProg 64 :=
.seq NamedBody782_1841 NamedBody782_1842

def NamedBody782_1844 : StackLang.HolProg 64 :=
.call (some (NamedBody782_1840, 1, 782, 50)) (Sum.inl 739) (some (NamedBody782_1843, 782, 51))

def NamedBody782_1845 : StackLang.HolProg 64 :=
.seq NamedBody782_1831 NamedBody782_1844

def NamedBody782_1846 : StackLang.HolProg 64 :=
.seq NamedBody782_1830 NamedBody782_1845

def NamedBody782_1847 : StackLang.HolProg 64 :=
.seq NamedBody782_1829 NamedBody782_1846

def NamedBody782_1848 : StackLang.HolProg 64 :=
.seq NamedBody782_1800 NamedBody782_1847

def NamedBody782_1849 : StackLang.HolProg 64 :=
.seq NamedBody782_1797 NamedBody782_1848

def NamedBody782_1850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_1851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_1852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_1853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1854 : StackLang.HolProg 64 :=
.seq NamedBody782_1852 NamedBody782_1853

def NamedBody782_1855 : StackLang.HolProg 64 :=
.seq NamedBody782_1851 NamedBody782_1854

def NamedBody782_1856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3575#64)

def NamedBody782_1858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1859 : StackLang.HolProg 64 :=
.seq NamedBody782_1857 NamedBody782_1858

def NamedBody782_1860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_1862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_1863 : StackLang.HolProg 64 :=
.seq NamedBody782_1861 NamedBody782_1862

def NamedBody782_1864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1865 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_1863 NamedBody782_1864

def NamedBody782_1866 : StackLang.HolProg 64 :=
.seq NamedBody782_1860 NamedBody782_1865

def NamedBody782_1867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_1868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 53

def NamedBody782_1870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_1871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_1875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_1876 : StackLang.HolProg 64 :=
.seq NamedBody782_1874 NamedBody782_1875

def NamedBody782_1877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_1878 : StackLang.HolProg 64 :=
.seq NamedBody782_1876 NamedBody782_1877

def NamedBody782_1879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1880 : StackLang.HolProg 64 :=
.seq NamedBody782_1878 NamedBody782_1879

def NamedBody782_1881 : StackLang.HolProg 64 :=
.seq NamedBody782_1873 NamedBody782_1880

def NamedBody782_1882 : StackLang.HolProg 64 :=
.seq NamedBody782_1872 NamedBody782_1881

def NamedBody782_1883 : StackLang.HolProg 64 :=
.seq NamedBody782_1871 NamedBody782_1882

def NamedBody782_1884 : StackLang.HolProg 64 :=
.seq NamedBody782_1870 NamedBody782_1883

def NamedBody782_1885 : StackLang.HolProg 64 :=
.seq NamedBody782_1869 NamedBody782_1884

def NamedBody782_1886 : StackLang.HolProg 64 :=
.seq NamedBody782_1868 NamedBody782_1885

def NamedBody782_1887 : StackLang.HolProg 64 :=
.seq NamedBody782_1867 NamedBody782_1886

def NamedBody782_1888 : StackLang.HolProg 64 :=
.seq NamedBody782_1866 NamedBody782_1887

def NamedBody782_1889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1896 : StackLang.HolProg 64 :=
.seq NamedBody782_1894 NamedBody782_1895

def NamedBody782_1897 : StackLang.HolProg 64 :=
.seq NamedBody782_1893 NamedBody782_1896

def NamedBody782_1898 : StackLang.HolProg 64 :=
.seq NamedBody782_1892 NamedBody782_1897

def NamedBody782_1899 : StackLang.HolProg 64 :=
.seq NamedBody782_1891 NamedBody782_1898

def NamedBody782_1900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1901 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_1902 : StackLang.HolProg 64 :=
.seq NamedBody782_1900 NamedBody782_1901

def NamedBody782_1903 : StackLang.HolProg 64 :=
.call (some (NamedBody782_1899, 1, 782, 52)) (Sum.inl 734) (some (NamedBody782_1902, 782, 53))

def NamedBody782_1904 : StackLang.HolProg 64 :=
.seq NamedBody782_1890 NamedBody782_1903

def NamedBody782_1905 : StackLang.HolProg 64 :=
.seq NamedBody782_1889 NamedBody782_1904

def NamedBody782_1906 : StackLang.HolProg 64 :=
.seq NamedBody782_1888 NamedBody782_1905

def NamedBody782_1907 : StackLang.HolProg 64 :=
.seq NamedBody782_1859 NamedBody782_1906

def NamedBody782_1908 : StackLang.HolProg 64 :=
.seq NamedBody782_1856 NamedBody782_1907

def NamedBody782_1909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_1910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_1911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_1912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1913 : StackLang.HolProg 64 :=
.seq NamedBody782_1911 NamedBody782_1912

def NamedBody782_1914 : StackLang.HolProg 64 :=
.seq NamedBody782_1910 NamedBody782_1913

def NamedBody782_1915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3576#64)

def NamedBody782_1917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1918 : StackLang.HolProg 64 :=
.seq NamedBody782_1916 NamedBody782_1917

def NamedBody782_1919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_1921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_1922 : StackLang.HolProg 64 :=
.seq NamedBody782_1920 NamedBody782_1921

def NamedBody782_1923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1924 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_1922 NamedBody782_1923

def NamedBody782_1925 : StackLang.HolProg 64 :=
.seq NamedBody782_1919 NamedBody782_1924

def NamedBody782_1926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_1927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 55

def NamedBody782_1929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_1930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_1934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_1935 : StackLang.HolProg 64 :=
.seq NamedBody782_1933 NamedBody782_1934

def NamedBody782_1936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_1937 : StackLang.HolProg 64 :=
.seq NamedBody782_1935 NamedBody782_1936

def NamedBody782_1938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1939 : StackLang.HolProg 64 :=
.seq NamedBody782_1937 NamedBody782_1938

def NamedBody782_1940 : StackLang.HolProg 64 :=
.seq NamedBody782_1932 NamedBody782_1939

def NamedBody782_1941 : StackLang.HolProg 64 :=
.seq NamedBody782_1931 NamedBody782_1940

def NamedBody782_1942 : StackLang.HolProg 64 :=
.seq NamedBody782_1930 NamedBody782_1941

def NamedBody782_1943 : StackLang.HolProg 64 :=
.seq NamedBody782_1929 NamedBody782_1942

def NamedBody782_1944 : StackLang.HolProg 64 :=
.seq NamedBody782_1928 NamedBody782_1943

def NamedBody782_1945 : StackLang.HolProg 64 :=
.seq NamedBody782_1927 NamedBody782_1944

def NamedBody782_1946 : StackLang.HolProg 64 :=
.seq NamedBody782_1926 NamedBody782_1945

def NamedBody782_1947 : StackLang.HolProg 64 :=
.seq NamedBody782_1925 NamedBody782_1946

def NamedBody782_1948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1955 : StackLang.HolProg 64 :=
.seq NamedBody782_1953 NamedBody782_1954

def NamedBody782_1956 : StackLang.HolProg 64 :=
.seq NamedBody782_1952 NamedBody782_1955

def NamedBody782_1957 : StackLang.HolProg 64 :=
.seq NamedBody782_1951 NamedBody782_1956

def NamedBody782_1958 : StackLang.HolProg 64 :=
.seq NamedBody782_1950 NamedBody782_1957

def NamedBody782_1959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1960 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_1961 : StackLang.HolProg 64 :=
.seq NamedBody782_1959 NamedBody782_1960

def NamedBody782_1962 : StackLang.HolProg 64 :=
.call (some (NamedBody782_1958, 1, 782, 54)) (Sum.inl 734) (some (NamedBody782_1961, 782, 55))

def NamedBody782_1963 : StackLang.HolProg 64 :=
.seq NamedBody782_1949 NamedBody782_1962

def NamedBody782_1964 : StackLang.HolProg 64 :=
.seq NamedBody782_1948 NamedBody782_1963

def NamedBody782_1965 : StackLang.HolProg 64 :=
.seq NamedBody782_1947 NamedBody782_1964

def NamedBody782_1966 : StackLang.HolProg 64 :=
.seq NamedBody782_1918 NamedBody782_1965

def NamedBody782_1967 : StackLang.HolProg 64 :=
.seq NamedBody782_1915 NamedBody782_1966

def NamedBody782_1968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_1969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_1970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody782_1971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_1972 : StackLang.HolProg 64 :=
.seq NamedBody782_1970 NamedBody782_1971

def NamedBody782_1973 : StackLang.HolProg 64 :=
.seq NamedBody782_1969 NamedBody782_1972

def NamedBody782_1974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3577#64)

def NamedBody782_1976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1977 : StackLang.HolProg 64 :=
.seq NamedBody782_1975 NamedBody782_1976

def NamedBody782_1978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_1979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_1980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_1981 : StackLang.HolProg 64 :=
.seq NamedBody782_1979 NamedBody782_1980

def NamedBody782_1982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1983 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_1981 NamedBody782_1982

def NamedBody782_1984 : StackLang.HolProg 64 :=
.seq NamedBody782_1978 NamedBody782_1983

def NamedBody782_1985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_1986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_1987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 57

def NamedBody782_1988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_1989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_1991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_1992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_1993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_1994 : StackLang.HolProg 64 :=
.seq NamedBody782_1992 NamedBody782_1993

def NamedBody782_1995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_1996 : StackLang.HolProg 64 :=
.seq NamedBody782_1994 NamedBody782_1995

def NamedBody782_1997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_1998 : StackLang.HolProg 64 :=
.seq NamedBody782_1996 NamedBody782_1997

def NamedBody782_1999 : StackLang.HolProg 64 :=
.seq NamedBody782_1991 NamedBody782_1998

def NamedBody782_2000 : StackLang.HolProg 64 :=
.seq NamedBody782_1990 NamedBody782_1999

def NamedBody782_2001 : StackLang.HolProg 64 :=
.seq NamedBody782_1989 NamedBody782_2000

def NamedBody782_2002 : StackLang.HolProg 64 :=
.seq NamedBody782_1988 NamedBody782_2001

def NamedBody782_2003 : StackLang.HolProg 64 :=
.seq NamedBody782_1987 NamedBody782_2002

def NamedBody782_2004 : StackLang.HolProg 64 :=
.seq NamedBody782_1986 NamedBody782_2003

def NamedBody782_2005 : StackLang.HolProg 64 :=
.seq NamedBody782_1985 NamedBody782_2004

def NamedBody782_2006 : StackLang.HolProg 64 :=
.seq NamedBody782_1984 NamedBody782_2005

def NamedBody782_2007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_2011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_2012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_2013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_2014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_2015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_2016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_2017 : StackLang.HolProg 64 :=
.seq NamedBody782_2015 NamedBody782_2016

def NamedBody782_2018 : StackLang.HolProg 64 :=
.seq NamedBody782_2014 NamedBody782_2017

def NamedBody782_2019 : StackLang.HolProg 64 :=
.seq NamedBody782_2013 NamedBody782_2018

def NamedBody782_2020 : StackLang.HolProg 64 :=
.seq NamedBody782_2012 NamedBody782_2019

def NamedBody782_2021 : StackLang.HolProg 64 :=
.seq NamedBody782_2011 NamedBody782_2020

def NamedBody782_2022 : StackLang.HolProg 64 :=
.seq NamedBody782_2010 NamedBody782_2021

def NamedBody782_2023 : StackLang.HolProg 64 :=
.seq NamedBody782_2009 NamedBody782_2022

def NamedBody782_2024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_2025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_2026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody782_2027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_2028 : StackLang.HolProg 64 :=
.seq NamedBody782_2026 NamedBody782_2027

def NamedBody782_2029 : StackLang.HolProg 64 :=
.seq NamedBody782_2025 NamedBody782_2028

def NamedBody782_2030 : StackLang.HolProg 64 :=
.seq NamedBody782_2024 NamedBody782_2029

def NamedBody782_2031 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_2032 : StackLang.HolProg 64 :=
.seq NamedBody782_2030 NamedBody782_2031

def NamedBody782_2033 : StackLang.HolProg 64 :=
.call (some (NamedBody782_2023, 1, 782, 56)) (Sum.inl 734) (some (NamedBody782_2032, 782, 57))

def NamedBody782_2034 : StackLang.HolProg 64 :=
.seq NamedBody782_2008 NamedBody782_2033

def NamedBody782_2035 : StackLang.HolProg 64 :=
.seq NamedBody782_2007 NamedBody782_2034

def NamedBody782_2036 : StackLang.HolProg 64 :=
.seq NamedBody782_2006 NamedBody782_2035

def NamedBody782_2037 : StackLang.HolProg 64 :=
.seq NamedBody782_1977 NamedBody782_2036

def NamedBody782_2038 : StackLang.HolProg 64 :=
.seq NamedBody782_1974 NamedBody782_2037

def NamedBody782_2039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_2040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody782_2041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_2042 : StackLang.HolProg 64 :=
.seq NamedBody782_2040 NamedBody782_2041

def NamedBody782_2043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3578#64)

def NamedBody782_2045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_2046 : StackLang.HolProg 64 :=
.seq NamedBody782_2044 NamedBody782_2045

def NamedBody782_2047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_2048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_2049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_2050 : StackLang.HolProg 64 :=
.seq NamedBody782_2048 NamedBody782_2049

def NamedBody782_2051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2052 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_2050 NamedBody782_2051

def NamedBody782_2053 : StackLang.HolProg 64 :=
.seq NamedBody782_2047 NamedBody782_2052

def NamedBody782_2054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_2055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_2056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 59

def NamedBody782_2057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_2058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_2059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_2060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_2062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_2063 : StackLang.HolProg 64 :=
.seq NamedBody782_2061 NamedBody782_2062

def NamedBody782_2064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_2065 : StackLang.HolProg 64 :=
.seq NamedBody782_2063 NamedBody782_2064

def NamedBody782_2066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_2067 : StackLang.HolProg 64 :=
.seq NamedBody782_2065 NamedBody782_2066

def NamedBody782_2068 : StackLang.HolProg 64 :=
.seq NamedBody782_2060 NamedBody782_2067

def NamedBody782_2069 : StackLang.HolProg 64 :=
.seq NamedBody782_2059 NamedBody782_2068

def NamedBody782_2070 : StackLang.HolProg 64 :=
.seq NamedBody782_2058 NamedBody782_2069

def NamedBody782_2071 : StackLang.HolProg 64 :=
.seq NamedBody782_2057 NamedBody782_2070

def NamedBody782_2072 : StackLang.HolProg 64 :=
.seq NamedBody782_2056 NamedBody782_2071

def NamedBody782_2073 : StackLang.HolProg 64 :=
.seq NamedBody782_2055 NamedBody782_2072

def NamedBody782_2074 : StackLang.HolProg 64 :=
.seq NamedBody782_2054 NamedBody782_2073

def NamedBody782_2075 : StackLang.HolProg 64 :=
.seq NamedBody782_2053 NamedBody782_2074

def NamedBody782_2076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_2080 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_2081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_2082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_2083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_2084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_2085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_2086 : StackLang.HolProg 64 :=
.seq NamedBody782_2084 NamedBody782_2085

def NamedBody782_2087 : StackLang.HolProg 64 :=
.seq NamedBody782_2083 NamedBody782_2086

def NamedBody782_2088 : StackLang.HolProg 64 :=
.seq NamedBody782_2082 NamedBody782_2087

def NamedBody782_2089 : StackLang.HolProg 64 :=
.seq NamedBody782_2081 NamedBody782_2088

def NamedBody782_2090 : StackLang.HolProg 64 :=
.seq NamedBody782_2080 NamedBody782_2089

def NamedBody782_2091 : StackLang.HolProg 64 :=
.seq NamedBody782_2079 NamedBody782_2090

def NamedBody782_2092 : StackLang.HolProg 64 :=
.seq NamedBody782_2078 NamedBody782_2091

def NamedBody782_2093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_2094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_2095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody782_2096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_2097 : StackLang.HolProg 64 :=
.seq NamedBody782_2095 NamedBody782_2096

def NamedBody782_2098 : StackLang.HolProg 64 :=
.seq NamedBody782_2094 NamedBody782_2097

def NamedBody782_2099 : StackLang.HolProg 64 :=
.seq NamedBody782_2093 NamedBody782_2098

def NamedBody782_2100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_2101 : StackLang.HolProg 64 :=
.seq NamedBody782_2099 NamedBody782_2100

def NamedBody782_2102 : StackLang.HolProg 64 :=
.call (some (NamedBody782_2092, 1, 782, 58)) (Sum.inl 729) (some (NamedBody782_2101, 782, 59))

def NamedBody782_2103 : StackLang.HolProg 64 :=
.seq NamedBody782_2077 NamedBody782_2102

def NamedBody782_2104 : StackLang.HolProg 64 :=
.seq NamedBody782_2076 NamedBody782_2103

def NamedBody782_2105 : StackLang.HolProg 64 :=
.seq NamedBody782_2075 NamedBody782_2104

def NamedBody782_2106 : StackLang.HolProg 64 :=
.seq NamedBody782_2046 NamedBody782_2105

def NamedBody782_2107 : StackLang.HolProg 64 :=
.seq NamedBody782_2043 NamedBody782_2106

def NamedBody782_2108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_2109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody782_2111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_2112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3579#64)

def NamedBody782_2114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_2115 : StackLang.HolProg 64 :=
.seq NamedBody782_2113 NamedBody782_2114

def NamedBody782_2116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_2117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_2118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_2119 : StackLang.HolProg 64 :=
.seq NamedBody782_2117 NamedBody782_2118

def NamedBody782_2120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_2119 NamedBody782_2120

def NamedBody782_2122 : StackLang.HolProg 64 :=
.seq NamedBody782_2116 NamedBody782_2121

def NamedBody782_2123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_2124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_2125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 61

def NamedBody782_2126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_2127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_2128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_2129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_2131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_2132 : StackLang.HolProg 64 :=
.seq NamedBody782_2130 NamedBody782_2131

def NamedBody782_2133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_2134 : StackLang.HolProg 64 :=
.seq NamedBody782_2132 NamedBody782_2133

def NamedBody782_2135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_2136 : StackLang.HolProg 64 :=
.seq NamedBody782_2134 NamedBody782_2135

def NamedBody782_2137 : StackLang.HolProg 64 :=
.seq NamedBody782_2129 NamedBody782_2136

def NamedBody782_2138 : StackLang.HolProg 64 :=
.seq NamedBody782_2128 NamedBody782_2137

def NamedBody782_2139 : StackLang.HolProg 64 :=
.seq NamedBody782_2127 NamedBody782_2138

def NamedBody782_2140 : StackLang.HolProg 64 :=
.seq NamedBody782_2126 NamedBody782_2139

def NamedBody782_2141 : StackLang.HolProg 64 :=
.seq NamedBody782_2125 NamedBody782_2140

def NamedBody782_2142 : StackLang.HolProg 64 :=
.seq NamedBody782_2124 NamedBody782_2141

def NamedBody782_2143 : StackLang.HolProg 64 :=
.seq NamedBody782_2123 NamedBody782_2142

def NamedBody782_2144 : StackLang.HolProg 64 :=
.seq NamedBody782_2122 NamedBody782_2143

def NamedBody782_2145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_2149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_2150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_2151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_2152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_2153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_2154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_2155 : StackLang.HolProg 64 :=
.seq NamedBody782_2153 NamedBody782_2154

def NamedBody782_2156 : StackLang.HolProg 64 :=
.seq NamedBody782_2152 NamedBody782_2155

def NamedBody782_2157 : StackLang.HolProg 64 :=
.seq NamedBody782_2151 NamedBody782_2156

def NamedBody782_2158 : StackLang.HolProg 64 :=
.seq NamedBody782_2150 NamedBody782_2157

def NamedBody782_2159 : StackLang.HolProg 64 :=
.seq NamedBody782_2149 NamedBody782_2158

def NamedBody782_2160 : StackLang.HolProg 64 :=
.seq NamedBody782_2148 NamedBody782_2159

def NamedBody782_2161 : StackLang.HolProg 64 :=
.seq NamedBody782_2147 NamedBody782_2160

def NamedBody782_2162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_2163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody782_2164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody782_2165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_2166 : StackLang.HolProg 64 :=
.seq NamedBody782_2164 NamedBody782_2165

def NamedBody782_2167 : StackLang.HolProg 64 :=
.seq NamedBody782_2163 NamedBody782_2166

def NamedBody782_2168 : StackLang.HolProg 64 :=
.seq NamedBody782_2162 NamedBody782_2167

def NamedBody782_2169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_2170 : StackLang.HolProg 64 :=
.seq NamedBody782_2168 NamedBody782_2169

def NamedBody782_2171 : StackLang.HolProg 64 :=
.call (some (NamedBody782_2161, 1, 782, 60)) (Sum.inl 729) (some (NamedBody782_2170, 782, 61))

def NamedBody782_2172 : StackLang.HolProg 64 :=
.seq NamedBody782_2146 NamedBody782_2171

def NamedBody782_2173 : StackLang.HolProg 64 :=
.seq NamedBody782_2145 NamedBody782_2172

def NamedBody782_2174 : StackLang.HolProg 64 :=
.seq NamedBody782_2144 NamedBody782_2173

def NamedBody782_2175 : StackLang.HolProg 64 :=
.seq NamedBody782_2115 NamedBody782_2174

def NamedBody782_2176 : StackLang.HolProg 64 :=
.seq NamedBody782_2112 NamedBody782_2175

def NamedBody782_2177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_2178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody782_2180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3580#64)

def NamedBody782_2183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_2184 : StackLang.HolProg 64 :=
.seq NamedBody782_2182 NamedBody782_2183

def NamedBody782_2185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_2186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_2187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_2188 : StackLang.HolProg 64 :=
.seq NamedBody782_2186 NamedBody782_2187

def NamedBody782_2189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2190 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_2188 NamedBody782_2189

def NamedBody782_2191 : StackLang.HolProg 64 :=
.seq NamedBody782_2185 NamedBody782_2190

def NamedBody782_2192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_2193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_2194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 63

def NamedBody782_2195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_2196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_2197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_2198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_2200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_2201 : StackLang.HolProg 64 :=
.seq NamedBody782_2199 NamedBody782_2200

def NamedBody782_2202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_2203 : StackLang.HolProg 64 :=
.seq NamedBody782_2201 NamedBody782_2202

def NamedBody782_2204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_2205 : StackLang.HolProg 64 :=
.seq NamedBody782_2203 NamedBody782_2204

def NamedBody782_2206 : StackLang.HolProg 64 :=
.seq NamedBody782_2198 NamedBody782_2205

def NamedBody782_2207 : StackLang.HolProg 64 :=
.seq NamedBody782_2197 NamedBody782_2206

def NamedBody782_2208 : StackLang.HolProg 64 :=
.seq NamedBody782_2196 NamedBody782_2207

def NamedBody782_2209 : StackLang.HolProg 64 :=
.seq NamedBody782_2195 NamedBody782_2208

def NamedBody782_2210 : StackLang.HolProg 64 :=
.seq NamedBody782_2194 NamedBody782_2209

def NamedBody782_2211 : StackLang.HolProg 64 :=
.seq NamedBody782_2193 NamedBody782_2210

def NamedBody782_2212 : StackLang.HolProg 64 :=
.seq NamedBody782_2192 NamedBody782_2211

def NamedBody782_2213 : StackLang.HolProg 64 :=
.seq NamedBody782_2191 NamedBody782_2212

def NamedBody782_2214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_2218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_2219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_2220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_2221 : StackLang.HolProg 64 :=
.seq NamedBody782_2219 NamedBody782_2220

def NamedBody782_2222 : StackLang.HolProg 64 :=
.seq NamedBody782_2218 NamedBody782_2221

def NamedBody782_2223 : StackLang.HolProg 64 :=
.seq NamedBody782_2217 NamedBody782_2222

def NamedBody782_2224 : StackLang.HolProg 64 :=
.seq NamedBody782_2216 NamedBody782_2223

def NamedBody782_2225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody782_2226 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_2227 : StackLang.HolProg 64 :=
.seq NamedBody782_2225 NamedBody782_2226

def NamedBody782_2228 : StackLang.HolProg 64 :=
.call (some (NamedBody782_2224, 1, 782, 62)) (Sum.inl 729) (some (NamedBody782_2227, 782, 63))

def NamedBody782_2229 : StackLang.HolProg 64 :=
.seq NamedBody782_2215 NamedBody782_2228

def NamedBody782_2230 : StackLang.HolProg 64 :=
.seq NamedBody782_2214 NamedBody782_2229

def NamedBody782_2231 : StackLang.HolProg 64 :=
.seq NamedBody782_2213 NamedBody782_2230

def NamedBody782_2232 : StackLang.HolProg 64 :=
.seq NamedBody782_2184 NamedBody782_2231

def NamedBody782_2233 : StackLang.HolProg 64 :=
.seq NamedBody782_2181 NamedBody782_2232

def NamedBody782_2234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_2235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody782_2236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3581#64)

def NamedBody782_2238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_2239 : StackLang.HolProg 64 :=
.seq NamedBody782_2237 NamedBody782_2238

def NamedBody782_2240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_2241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody782_2242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody782_2243 : StackLang.HolProg 64 :=
.seq NamedBody782_2241 NamedBody782_2242

def NamedBody782_2244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2245 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody782_2243 NamedBody782_2244

def NamedBody782_2246 : StackLang.HolProg 64 :=
.seq NamedBody782_2240 NamedBody782_2245

def NamedBody782_2247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody782_2248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody782_2249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 65

def NamedBody782_2250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody782_2251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_2252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_2253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody782_2255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody782_2256 : StackLang.HolProg 64 :=
.seq NamedBody782_2254 NamedBody782_2255

def NamedBody782_2257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody782_2258 : StackLang.HolProg 64 :=
.seq NamedBody782_2256 NamedBody782_2257

def NamedBody782_2259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_2260 : StackLang.HolProg 64 :=
.seq NamedBody782_2258 NamedBody782_2259

def NamedBody782_2261 : StackLang.HolProg 64 :=
.seq NamedBody782_2253 NamedBody782_2260

def NamedBody782_2262 : StackLang.HolProg 64 :=
.seq NamedBody782_2252 NamedBody782_2261

def NamedBody782_2263 : StackLang.HolProg 64 :=
.seq NamedBody782_2251 NamedBody782_2262

def NamedBody782_2264 : StackLang.HolProg 64 :=
.seq NamedBody782_2250 NamedBody782_2263

def NamedBody782_2265 : StackLang.HolProg 64 :=
.seq NamedBody782_2249 NamedBody782_2264

def NamedBody782_2266 : StackLang.HolProg 64 :=
.seq NamedBody782_2248 NamedBody782_2265

def NamedBody782_2267 : StackLang.HolProg 64 :=
.seq NamedBody782_2247 NamedBody782_2266

def NamedBody782_2268 : StackLang.HolProg 64 :=
.seq NamedBody782_2246 NamedBody782_2267

def NamedBody782_2269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody782_2273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody782_2274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody782_2275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody782_2276 : StackLang.HolProg 64 :=
.seq NamedBody782_2274 NamedBody782_2275

def NamedBody782_2277 : StackLang.HolProg 64 :=
.seq NamedBody782_2273 NamedBody782_2276

def NamedBody782_2278 : StackLang.HolProg 64 :=
.seq NamedBody782_2272 NamedBody782_2277

def NamedBody782_2279 : StackLang.HolProg 64 :=
.seq NamedBody782_2271 NamedBody782_2278

def NamedBody782_2280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody782_2281 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody782_2282 : StackLang.HolProg 64 :=
.seq NamedBody782_2280 NamedBody782_2281

def NamedBody782_2283 : StackLang.HolProg 64 :=
.call (some (NamedBody782_2279, 1, 782, 64)) (Sum.inl 70) (some (NamedBody782_2282, 782, 65))

def NamedBody782_2284 : StackLang.HolProg 64 :=
.seq NamedBody782_2270 NamedBody782_2283

def NamedBody782_2285 : StackLang.HolProg 64 :=
.seq NamedBody782_2269 NamedBody782_2284

def NamedBody782_2286 : StackLang.HolProg 64 :=
.seq NamedBody782_2268 NamedBody782_2285

def NamedBody782_2287 : StackLang.HolProg 64 :=
.seq NamedBody782_2239 NamedBody782_2286

def NamedBody782_2288 : StackLang.HolProg 64 :=
.seq NamedBody782_2236 NamedBody782_2287

def NamedBody782_2289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody782_2290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody782_2291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody782_2292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody782_2293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody782_2294 : StackLang.HolProg 64 :=
.seq NamedBody782_2292 NamedBody782_2293

def NamedBody782_2295 : StackLang.HolProg 64 :=
.seq NamedBody782_2291 NamedBody782_2294

def NamedBody782_2296 : StackLang.HolProg 64 :=
.seq NamedBody782_2290 NamedBody782_2295

def NamedBody782_2297 : StackLang.HolProg 64 :=
.seq NamedBody782_2289 NamedBody782_2296

def NamedBody782_2298 : StackLang.HolProg 64 :=
.seq NamedBody782_2288 NamedBody782_2297

def NamedBody782_2299 : StackLang.HolProg 64 :=
.seq NamedBody782_2235 NamedBody782_2298

def NamedBody782_2300 : StackLang.HolProg 64 :=
.seq NamedBody782_2234 NamedBody782_2299

def NamedBody782_2301 : StackLang.HolProg 64 :=
.seq NamedBody782_2233 NamedBody782_2300

def NamedBody782_2302 : StackLang.HolProg 64 :=
.seq NamedBody782_2180 NamedBody782_2301

def NamedBody782_2303 : StackLang.HolProg 64 :=
.seq NamedBody782_2179 NamedBody782_2302

def NamedBody782_2304 : StackLang.HolProg 64 :=
.seq NamedBody782_2178 NamedBody782_2303

def NamedBody782_2305 : StackLang.HolProg 64 :=
.seq NamedBody782_2177 NamedBody782_2304

def NamedBody782_2306 : StackLang.HolProg 64 :=
.seq NamedBody782_2176 NamedBody782_2305

def NamedBody782_2307 : StackLang.HolProg 64 :=
.seq NamedBody782_2111 NamedBody782_2306

def NamedBody782_2308 : StackLang.HolProg 64 :=
.seq NamedBody782_2110 NamedBody782_2307

def NamedBody782_2309 : StackLang.HolProg 64 :=
.seq NamedBody782_2109 NamedBody782_2308

def NamedBody782_2310 : StackLang.HolProg 64 :=
.seq NamedBody782_2108 NamedBody782_2309

def NamedBody782_2311 : StackLang.HolProg 64 :=
.seq NamedBody782_2107 NamedBody782_2310

def NamedBody782_2312 : StackLang.HolProg 64 :=
.seq NamedBody782_2042 NamedBody782_2311

def NamedBody782_2313 : StackLang.HolProg 64 :=
.seq NamedBody782_2039 NamedBody782_2312

def NamedBody782_2314 : StackLang.HolProg 64 :=
.seq NamedBody782_2038 NamedBody782_2313

def NamedBody782_2315 : StackLang.HolProg 64 :=
.seq NamedBody782_1973 NamedBody782_2314

def NamedBody782_2316 : StackLang.HolProg 64 :=
.seq NamedBody782_1968 NamedBody782_2315

def NamedBody782_2317 : StackLang.HolProg 64 :=
.seq NamedBody782_1967 NamedBody782_2316

def NamedBody782_2318 : StackLang.HolProg 64 :=
.seq NamedBody782_1914 NamedBody782_2317

def NamedBody782_2319 : StackLang.HolProg 64 :=
.seq NamedBody782_1909 NamedBody782_2318

def NamedBody782_2320 : StackLang.HolProg 64 :=
.seq NamedBody782_1908 NamedBody782_2319

def NamedBody782_2321 : StackLang.HolProg 64 :=
.seq NamedBody782_1855 NamedBody782_2320

def NamedBody782_2322 : StackLang.HolProg 64 :=
.seq NamedBody782_1850 NamedBody782_2321

def NamedBody782_2323 : StackLang.HolProg 64 :=
.seq NamedBody782_1849 NamedBody782_2322

def NamedBody782_2324 : StackLang.HolProg 64 :=
.seq NamedBody782_1796 NamedBody782_2323

def NamedBody782_2325 : StackLang.HolProg 64 :=
.seq NamedBody782_1793 NamedBody782_2324

def NamedBody782_2326 : StackLang.HolProg 64 :=
.seq NamedBody782_1792 NamedBody782_2325

def NamedBody782_2327 : StackLang.HolProg 64 :=
.seq NamedBody782_1699 NamedBody782_2326

def NamedBody782_2328 : StackLang.HolProg 64 :=
.seq NamedBody782_1694 NamedBody782_2327

def NamedBody782_2329 : StackLang.HolProg 64 :=
.seq NamedBody782_1693 NamedBody782_2328

def NamedBody782_2330 : StackLang.HolProg 64 :=
.seq NamedBody782_1636 NamedBody782_2329

def NamedBody782_2331 : StackLang.HolProg 64 :=
.seq NamedBody782_1631 NamedBody782_2330

def NamedBody782_2332 : StackLang.HolProg 64 :=
.seq NamedBody782_1630 NamedBody782_2331

def NamedBody782_2333 : StackLang.HolProg 64 :=
.seq NamedBody782_1577 NamedBody782_2332

def NamedBody782_2334 : StackLang.HolProg 64 :=
.seq NamedBody782_1572 NamedBody782_2333

def NamedBody782_2335 : StackLang.HolProg 64 :=
.seq NamedBody782_1571 NamedBody782_2334

def NamedBody782_2336 : StackLang.HolProg 64 :=
.seq NamedBody782_1518 NamedBody782_2335

def NamedBody782_2337 : StackLang.HolProg 64 :=
.seq NamedBody782_1513 NamedBody782_2336

def NamedBody782_2338 : StackLang.HolProg 64 :=
.seq NamedBody782_1512 NamedBody782_2337

def NamedBody782_2339 : StackLang.HolProg 64 :=
.seq NamedBody782_1459 NamedBody782_2338

def NamedBody782_2340 : StackLang.HolProg 64 :=
.seq NamedBody782_1454 NamedBody782_2339

def NamedBody782_2341 : StackLang.HolProg 64 :=
.seq NamedBody782_1453 NamedBody782_2340

def NamedBody782_2342 : StackLang.HolProg 64 :=
.seq NamedBody782_1396 NamedBody782_2341

def NamedBody782_2343 : StackLang.HolProg 64 :=
.seq NamedBody782_1393 NamedBody782_2342

def NamedBody782_2344 : StackLang.HolProg 64 :=
.seq NamedBody782_1392 NamedBody782_2343

def NamedBody782_2345 : StackLang.HolProg 64 :=
.seq NamedBody782_1295 NamedBody782_2344

def NamedBody782_2346 : StackLang.HolProg 64 :=
.seq NamedBody782_1290 NamedBody782_2345

def NamedBody782_2347 : StackLang.HolProg 64 :=
.seq NamedBody782_1289 NamedBody782_2346

def NamedBody782_2348 : StackLang.HolProg 64 :=
.seq NamedBody782_1220 NamedBody782_2347

def NamedBody782_2349 : StackLang.HolProg 64 :=
.seq NamedBody782_1217 NamedBody782_2348

def NamedBody782_2350 : StackLang.HolProg 64 :=
.seq NamedBody782_1216 NamedBody782_2349

def NamedBody782_2351 : StackLang.HolProg 64 :=
.seq NamedBody782_1095 NamedBody782_2350

def NamedBody782_2352 : StackLang.HolProg 64 :=
.seq NamedBody782_1090 NamedBody782_2351

def NamedBody782_2353 : StackLang.HolProg 64 :=
.seq NamedBody782_1089 NamedBody782_2352

def NamedBody782_2354 : StackLang.HolProg 64 :=
.seq NamedBody782_1036 NamedBody782_2353

def NamedBody782_2355 : StackLang.HolProg 64 :=
.seq NamedBody782_1029 NamedBody782_2354

def NamedBody782_2356 : StackLang.HolProg 64 :=
.seq NamedBody782_1028 NamedBody782_2355

def NamedBody782_2357 : StackLang.HolProg 64 :=
.seq NamedBody782_967 NamedBody782_2356

def NamedBody782_2358 : StackLang.HolProg 64 :=
.seq NamedBody782_962 NamedBody782_2357

def NamedBody782_2359 : StackLang.HolProg 64 :=
.seq NamedBody782_961 NamedBody782_2358

def NamedBody782_2360 : StackLang.HolProg 64 :=
.seq NamedBody782_904 NamedBody782_2359

def NamedBody782_2361 : StackLang.HolProg 64 :=
.seq NamedBody782_899 NamedBody782_2360

def NamedBody782_2362 : StackLang.HolProg 64 :=
.seq NamedBody782_898 NamedBody782_2361

def NamedBody782_2363 : StackLang.HolProg 64 :=
.seq NamedBody782_841 NamedBody782_2362

def NamedBody782_2364 : StackLang.HolProg 64 :=
.seq NamedBody782_836 NamedBody782_2363

def NamedBody782_2365 : StackLang.HolProg 64 :=
.seq NamedBody782_835 NamedBody782_2364

def NamedBody782_2366 : StackLang.HolProg 64 :=
.seq NamedBody782_778 NamedBody782_2365

def NamedBody782_2367 : StackLang.HolProg 64 :=
.seq NamedBody782_771 NamedBody782_2366

def NamedBody782_2368 : StackLang.HolProg 64 :=
.seq NamedBody782_770 NamedBody782_2367

def NamedBody782_2369 : StackLang.HolProg 64 :=
.seq NamedBody782_713 NamedBody782_2368

def NamedBody782_2370 : StackLang.HolProg 64 :=
.seq NamedBody782_708 NamedBody782_2369

def NamedBody782_2371 : StackLang.HolProg 64 :=
.seq NamedBody782_707 NamedBody782_2370

def NamedBody782_2372 : StackLang.HolProg 64 :=
.seq NamedBody782_654 NamedBody782_2371

def NamedBody782_2373 : StackLang.HolProg 64 :=
.seq NamedBody782_649 NamedBody782_2372

def NamedBody782_2374 : StackLang.HolProg 64 :=
.seq NamedBody782_648 NamedBody782_2373

def NamedBody782_2375 : StackLang.HolProg 64 :=
.seq NamedBody782_535 NamedBody782_2374

def NamedBody782_2376 : StackLang.HolProg 64 :=
.seq NamedBody782_530 NamedBody782_2375

def NamedBody782_2377 : StackLang.HolProg 64 :=
.seq NamedBody782_529 NamedBody782_2376

def NamedBody782_2378 : StackLang.HolProg 64 :=
.seq NamedBody782_472 NamedBody782_2377

def NamedBody782_2379 : StackLang.HolProg 64 :=
.seq NamedBody782_467 NamedBody782_2378

def NamedBody782_2380 : StackLang.HolProg 64 :=
.seq NamedBody782_466 NamedBody782_2379

def NamedBody782_2381 : StackLang.HolProg 64 :=
.seq NamedBody782_365 NamedBody782_2380

def NamedBody782_2382 : StackLang.HolProg 64 :=
.seq NamedBody782_360 NamedBody782_2381

def NamedBody782_2383 : StackLang.HolProg 64 :=
.seq NamedBody782_359 NamedBody782_2382

def NamedBody782_2384 : StackLang.HolProg 64 :=
.seq NamedBody782_290 NamedBody782_2383

def NamedBody782_2385 : StackLang.HolProg 64 :=
.seq NamedBody782_285 NamedBody782_2384

def NamedBody782_2386 : StackLang.HolProg 64 :=
.seq NamedBody782_284 NamedBody782_2385

def NamedBody782_2387 : StackLang.HolProg 64 :=
.seq NamedBody782_227 NamedBody782_2386

def NamedBody782_2388 : StackLang.HolProg 64 :=
.seq NamedBody782_220 NamedBody782_2387

def NamedBody782_2389 : StackLang.HolProg 64 :=
.seq NamedBody782_219 NamedBody782_2388

def NamedBody782_2390 : StackLang.HolProg 64 :=
.seq NamedBody782_162 NamedBody782_2389

def NamedBody782_2391 : StackLang.HolProg 64 :=
.seq NamedBody782_141 NamedBody782_2390

def NamedBody782_2392 : StackLang.HolProg 64 :=
.seq NamedBody782_140 NamedBody782_2391

def NamedBody782_2393 : StackLang.HolProg 64 :=
.seq NamedBody782_139 NamedBody782_2392

def NamedBody782_2394 : StackLang.HolProg 64 :=
.seq NamedBody782_138 NamedBody782_2393

def NamedBody782_2395 : StackLang.HolProg 64 :=
.seq NamedBody782_137 NamedBody782_2394

def NamedBody782_2396 : StackLang.HolProg 64 :=
.seq NamedBody782_136 NamedBody782_2395

def NamedBody782_2397 : StackLang.HolProg 64 :=
.seq NamedBody782_135 NamedBody782_2396

def NamedBody782_2398 : StackLang.HolProg 64 :=
.seq NamedBody782_134 NamedBody782_2397

def NamedBody782_2399 : StackLang.HolProg 64 :=
.seq NamedBody782_133 NamedBody782_2398

def NamedBody782_2400 : StackLang.HolProg 64 :=
.seq NamedBody782_132 NamedBody782_2399

def NamedBody782_2401 : StackLang.HolProg 64 :=
.seq NamedBody782_131 NamedBody782_2400

def NamedBody782_2402 : StackLang.HolProg 64 :=
.seq NamedBody782_130 NamedBody782_2401

def NamedBody782_2403 : StackLang.HolProg 64 :=
.seq NamedBody782_129 NamedBody782_2402

def NamedBody782_2404 : StackLang.HolProg 64 :=
.seq NamedBody782_128 NamedBody782_2403

def NamedBody782_2405 : StackLang.HolProg 64 :=
.seq NamedBody782_127 NamedBody782_2404

def NamedBody782_2406 : StackLang.HolProg 64 :=
.seq NamedBody782_126 NamedBody782_2405

def NamedBody782_2407 : StackLang.HolProg 64 :=
.seq NamedBody782_125 NamedBody782_2406

def NamedBody782_2408 : StackLang.HolProg 64 :=
.seq NamedBody782_124 NamedBody782_2407

def NamedBody782_2409 : StackLang.HolProg 64 :=
.seq NamedBody782_123 NamedBody782_2408

def NamedBody782_2410 : StackLang.HolProg 64 :=
.seq NamedBody782_122 NamedBody782_2409

def NamedBody782_2411 : StackLang.HolProg 64 :=
.seq NamedBody782_67 NamedBody782_2410

def NamedBody782_2412 : StackLang.HolProg 64 :=
.seq NamedBody782_66 NamedBody782_2411

def NamedBody782_2413 : StackLang.HolProg 64 :=
.seq NamedBody782_65 NamedBody782_2412

def NamedBody782_2414 : StackLang.HolProg 64 :=
.seq NamedBody782_64 NamedBody782_2413

def NamedBody782_2415 : StackLang.HolProg 64 :=
.seq NamedBody782_11 NamedBody782_2414

def NamedBody782_2416 : StackLang.HolProg 64 :=
.seq NamedBody782_6 NamedBody782_2415

def Named782 : Nat × StackLang.HolProg 64 := (782, NamedBody782_2416)
theorem Named782_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed782 = Named782 := by
  kernel_rfl
#print axioms Named782_eq
end InitECandidate.Proofs.BackendStages
