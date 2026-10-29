import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed597
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody597_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody597_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody597_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody597_3 : StackLang.HolProg 64 :=
.seq NamedBody597_1 NamedBody597_2

def NamedBody597_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody597_3 NamedBody597_4

def NamedBody597_6 : StackLang.HolProg 64 :=
.seq NamedBody597_0 NamedBody597_5

def NamedBody597_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody597_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody597_9 : StackLang.HolProg 64 :=
.seq NamedBody597_7 NamedBody597_8

def NamedBody597_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2265#64)

def NamedBody597_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody597_13 : StackLang.HolProg 64 :=
.seq NamedBody597_11 NamedBody597_12

def NamedBody597_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody597_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody597_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody597_17 : StackLang.HolProg 64 :=
.seq NamedBody597_15 NamedBody597_16

def NamedBody597_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody597_17 NamedBody597_18

def NamedBody597_20 : StackLang.HolProg 64 :=
.seq NamedBody597_14 NamedBody597_19

def NamedBody597_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody597_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody597_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 597 3

def NamedBody597_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody597_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody597_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody597_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody597_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody597_30 : StackLang.HolProg 64 :=
.seq NamedBody597_28 NamedBody597_29

def NamedBody597_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody597_32 : StackLang.HolProg 64 :=
.seq NamedBody597_30 NamedBody597_31

def NamedBody597_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody597_34 : StackLang.HolProg 64 :=
.seq NamedBody597_32 NamedBody597_33

def NamedBody597_35 : StackLang.HolProg 64 :=
.seq NamedBody597_27 NamedBody597_34

def NamedBody597_36 : StackLang.HolProg 64 :=
.seq NamedBody597_26 NamedBody597_35

def NamedBody597_37 : StackLang.HolProg 64 :=
.seq NamedBody597_25 NamedBody597_36

def NamedBody597_38 : StackLang.HolProg 64 :=
.seq NamedBody597_24 NamedBody597_37

def NamedBody597_39 : StackLang.HolProg 64 :=
.seq NamedBody597_23 NamedBody597_38

def NamedBody597_40 : StackLang.HolProg 64 :=
.seq NamedBody597_22 NamedBody597_39

def NamedBody597_41 : StackLang.HolProg 64 :=
.seq NamedBody597_21 NamedBody597_40

def NamedBody597_42 : StackLang.HolProg 64 :=
.seq NamedBody597_20 NamedBody597_41

def NamedBody597_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody597_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody597_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody597_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody597_50 : StackLang.HolProg 64 :=
.seq NamedBody597_48 NamedBody597_49

def NamedBody597_51 : StackLang.HolProg 64 :=
.seq NamedBody597_47 NamedBody597_50

def NamedBody597_52 : StackLang.HolProg 64 :=
.seq NamedBody597_46 NamedBody597_51

def NamedBody597_53 : StackLang.HolProg 64 :=
.seq NamedBody597_45 NamedBody597_52

def NamedBody597_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody597_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody597_56 : StackLang.HolProg 64 :=
.seq NamedBody597_54 NamedBody597_55

def NamedBody597_57 : StackLang.HolProg 64 :=
.call (some (NamedBody597_53, 1, 597, 2)) (Sum.inl 474) (some (NamedBody597_56, 597, 3))

def NamedBody597_58 : StackLang.HolProg 64 :=
.seq NamedBody597_44 NamedBody597_57

def NamedBody597_59 : StackLang.HolProg 64 :=
.seq NamedBody597_43 NamedBody597_58

def NamedBody597_60 : StackLang.HolProg 64 :=
.seq NamedBody597_42 NamedBody597_59

def NamedBody597_61 : StackLang.HolProg 64 :=
.seq NamedBody597_13 NamedBody597_60

def NamedBody597_62 : StackLang.HolProg 64 :=
.seq NamedBody597_10 NamedBody597_61

def NamedBody597_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody597_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody597_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody597_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody597_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2266#64)

def NamedBody597_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody597_71 : StackLang.HolProg 64 :=
.seq NamedBody597_69 NamedBody597_70

def NamedBody597_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody597_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody597_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody597_75 : StackLang.HolProg 64 :=
.seq NamedBody597_73 NamedBody597_74

def NamedBody597_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody597_75 NamedBody597_76

def NamedBody597_78 : StackLang.HolProg 64 :=
.seq NamedBody597_72 NamedBody597_77

def NamedBody597_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody597_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody597_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 597 5

def NamedBody597_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody597_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody597_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody597_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody597_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody597_88 : StackLang.HolProg 64 :=
.seq NamedBody597_86 NamedBody597_87

def NamedBody597_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody597_90 : StackLang.HolProg 64 :=
.seq NamedBody597_88 NamedBody597_89

def NamedBody597_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody597_92 : StackLang.HolProg 64 :=
.seq NamedBody597_90 NamedBody597_91

def NamedBody597_93 : StackLang.HolProg 64 :=
.seq NamedBody597_85 NamedBody597_92

def NamedBody597_94 : StackLang.HolProg 64 :=
.seq NamedBody597_84 NamedBody597_93

def NamedBody597_95 : StackLang.HolProg 64 :=
.seq NamedBody597_83 NamedBody597_94

def NamedBody597_96 : StackLang.HolProg 64 :=
.seq NamedBody597_82 NamedBody597_95

def NamedBody597_97 : StackLang.HolProg 64 :=
.seq NamedBody597_81 NamedBody597_96

def NamedBody597_98 : StackLang.HolProg 64 :=
.seq NamedBody597_80 NamedBody597_97

def NamedBody597_99 : StackLang.HolProg 64 :=
.seq NamedBody597_79 NamedBody597_98

def NamedBody597_100 : StackLang.HolProg 64 :=
.seq NamedBody597_78 NamedBody597_99

def NamedBody597_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody597_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody597_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody597_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody597_108 : StackLang.HolProg 64 :=
.seq NamedBody597_106 NamedBody597_107

def NamedBody597_109 : StackLang.HolProg 64 :=
.seq NamedBody597_105 NamedBody597_108

def NamedBody597_110 : StackLang.HolProg 64 :=
.seq NamedBody597_104 NamedBody597_109

def NamedBody597_111 : StackLang.HolProg 64 :=
.seq NamedBody597_103 NamedBody597_110

def NamedBody597_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody597_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody597_114 : StackLang.HolProg 64 :=
.seq NamedBody597_112 NamedBody597_113

def NamedBody597_115 : StackLang.HolProg 64 :=
.call (some (NamedBody597_111, 1, 597, 4)) (Sum.inl 604) (some (NamedBody597_114, 597, 5))

def NamedBody597_116 : StackLang.HolProg 64 :=
.seq NamedBody597_102 NamedBody597_115

def NamedBody597_117 : StackLang.HolProg 64 :=
.seq NamedBody597_101 NamedBody597_116

def NamedBody597_118 : StackLang.HolProg 64 :=
.seq NamedBody597_100 NamedBody597_117

def NamedBody597_119 : StackLang.HolProg 64 :=
.seq NamedBody597_71 NamedBody597_118

def NamedBody597_120 : StackLang.HolProg 64 :=
.seq NamedBody597_68 NamedBody597_119

def NamedBody597_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody597_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody597_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody597_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody597_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody597_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody597_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551352#64))

def NamedBody597_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody597_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody597_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody597_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody597_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody597_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_138 : StackLang.HolProg 64 :=
.seq NamedBody597_136 NamedBody597_137

def NamedBody597_139 : StackLang.HolProg 64 :=
.seq NamedBody597_135 NamedBody597_138

def NamedBody597_140 : StackLang.HolProg 64 :=
.seq NamedBody597_134 NamedBody597_139

def NamedBody597_141 : StackLang.HolProg 64 :=
.seq NamedBody597_133 NamedBody597_140

def NamedBody597_142 : StackLang.HolProg 64 :=
.seq NamedBody597_132 NamedBody597_141

def NamedBody597_143 : StackLang.HolProg 64 :=
.seq NamedBody597_131 NamedBody597_142

def NamedBody597_144 : StackLang.HolProg 64 :=
.seq NamedBody597_130 NamedBody597_143

def NamedBody597_145 : StackLang.HolProg 64 :=
.seq NamedBody597_129 NamedBody597_144

def NamedBody597_146 : StackLang.HolProg 64 :=
.seq NamedBody597_128 NamedBody597_145

def NamedBody597_147 : StackLang.HolProg 64 :=
.seq NamedBody597_127 NamedBody597_146

def NamedBody597_148 : StackLang.HolProg 64 :=
.seq NamedBody597_126 NamedBody597_147

def NamedBody597_149 : StackLang.HolProg 64 :=
.seq NamedBody597_125 NamedBody597_148

def NamedBody597_150 : StackLang.HolProg 64 :=
.seq NamedBody597_124 NamedBody597_149

def NamedBody597_151 : StackLang.HolProg 64 :=
.seq NamedBody597_123 NamedBody597_150

def NamedBody597_152 : StackLang.HolProg 64 :=
.seq NamedBody597_122 NamedBody597_151

def NamedBody597_153 : StackLang.HolProg 64 :=
.seq NamedBody597_121 NamedBody597_152

def NamedBody597_154 : StackLang.HolProg 64 :=
.seq NamedBody597_120 NamedBody597_153

def NamedBody597_155 : StackLang.HolProg 64 :=
.seq NamedBody597_67 NamedBody597_154

def NamedBody597_156 : StackLang.HolProg 64 :=
.seq NamedBody597_66 NamedBody597_155

def NamedBody597_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody597_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody597_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody597_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody597_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody597_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody597_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody597_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody597_166 : StackLang.HolProg 64 :=
.seq NamedBody597_164 NamedBody597_165

def NamedBody597_167 : StackLang.HolProg 64 :=
.seq NamedBody597_163 NamedBody597_166

def NamedBody597_168 : StackLang.HolProg 64 :=
.seq NamedBody597_162 NamedBody597_167

def NamedBody597_169 : StackLang.HolProg 64 :=
.seq NamedBody597_161 NamedBody597_168

def NamedBody597_170 : StackLang.HolProg 64 :=
.seq NamedBody597_160 NamedBody597_169

def NamedBody597_171 : StackLang.HolProg 64 :=
.seq NamedBody597_159 NamedBody597_170

def NamedBody597_172 : StackLang.HolProg 64 :=
.seq NamedBody597_158 NamedBody597_171

def NamedBody597_173 : StackLang.HolProg 64 :=
.seq NamedBody597_157 NamedBody597_172

def NamedBody597_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody597_156 NamedBody597_173

def NamedBody597_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody597_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody597_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody597_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody597_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551328#64))

def NamedBody597_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody597_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody597_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody597_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody597_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody597_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody597_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody597_188 : StackLang.HolProg 64 :=
.seq NamedBody597_186 NamedBody597_187

def NamedBody597_189 : StackLang.HolProg 64 :=
.seq NamedBody597_185 NamedBody597_188

def NamedBody597_190 : StackLang.HolProg 64 :=
.seq NamedBody597_184 NamedBody597_189

def NamedBody597_191 : StackLang.HolProg 64 :=
.seq NamedBody597_183 NamedBody597_190

def NamedBody597_192 : StackLang.HolProg 64 :=
.seq NamedBody597_182 NamedBody597_191

def NamedBody597_193 : StackLang.HolProg 64 :=
.seq NamedBody597_181 NamedBody597_192

def NamedBody597_194 : StackLang.HolProg 64 :=
.seq NamedBody597_180 NamedBody597_193

def NamedBody597_195 : StackLang.HolProg 64 :=
.seq NamedBody597_179 NamedBody597_194

def NamedBody597_196 : StackLang.HolProg 64 :=
.seq NamedBody597_178 NamedBody597_195

def NamedBody597_197 : StackLang.HolProg 64 :=
.seq NamedBody597_177 NamedBody597_196

def NamedBody597_198 : StackLang.HolProg 64 :=
.seq NamedBody597_176 NamedBody597_197

def NamedBody597_199 : StackLang.HolProg 64 :=
.seq NamedBody597_175 NamedBody597_198

def NamedBody597_200 : StackLang.HolProg 64 :=
.seq NamedBody597_174 NamedBody597_199

def NamedBody597_201 : StackLang.HolProg 64 :=
.seq NamedBody597_65 NamedBody597_200

def NamedBody597_202 : StackLang.HolProg 64 :=
.seq NamedBody597_64 NamedBody597_201

def NamedBody597_203 : StackLang.HolProg 64 :=
.seq NamedBody597_63 NamedBody597_202

def NamedBody597_204 : StackLang.HolProg 64 :=
.seq NamedBody597_62 NamedBody597_203

def NamedBody597_205 : StackLang.HolProg 64 :=
.seq NamedBody597_9 NamedBody597_204

def NamedBody597_206 : StackLang.HolProg 64 :=
.seq NamedBody597_6 NamedBody597_205

def Named597 : Nat × StackLang.HolProg 64 := (597, NamedBody597_206)
theorem Named597_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed597 = Named597 := by
  kernel_rfl
#print axioms Named597_eq
end InitECandidate.Proofs.BackendStages
