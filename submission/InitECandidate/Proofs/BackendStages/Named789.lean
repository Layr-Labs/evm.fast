import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed789
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody789_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody789_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody789_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody789_3 : StackLang.HolProg 64 :=
.seq NamedBody789_1 NamedBody789_2

def NamedBody789_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody789_3 NamedBody789_4

def NamedBody789_6 : StackLang.HolProg 64 :=
.seq NamedBody789_0 NamedBody789_5

def NamedBody789_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody789_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody789_9 : StackLang.HolProg 64 :=
.seq NamedBody789_7 NamedBody789_8

def NamedBody789_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3659#64)

def NamedBody789_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody789_13 : StackLang.HolProg 64 :=
.seq NamedBody789_11 NamedBody789_12

def NamedBody789_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody789_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody789_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody789_17 : StackLang.HolProg 64 :=
.seq NamedBody789_15 NamedBody789_16

def NamedBody789_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody789_17 NamedBody789_18

def NamedBody789_20 : StackLang.HolProg 64 :=
.seq NamedBody789_14 NamedBody789_19

def NamedBody789_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody789_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody789_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 3

def NamedBody789_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody789_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody789_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody789_30 : StackLang.HolProg 64 :=
.seq NamedBody789_28 NamedBody789_29

def NamedBody789_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody789_32 : StackLang.HolProg 64 :=
.seq NamedBody789_30 NamedBody789_31

def NamedBody789_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_34 : StackLang.HolProg 64 :=
.seq NamedBody789_32 NamedBody789_33

def NamedBody789_35 : StackLang.HolProg 64 :=
.seq NamedBody789_27 NamedBody789_34

def NamedBody789_36 : StackLang.HolProg 64 :=
.seq NamedBody789_26 NamedBody789_35

def NamedBody789_37 : StackLang.HolProg 64 :=
.seq NamedBody789_25 NamedBody789_36

def NamedBody789_38 : StackLang.HolProg 64 :=
.seq NamedBody789_24 NamedBody789_37

def NamedBody789_39 : StackLang.HolProg 64 :=
.seq NamedBody789_23 NamedBody789_38

def NamedBody789_40 : StackLang.HolProg 64 :=
.seq NamedBody789_22 NamedBody789_39

def NamedBody789_41 : StackLang.HolProg 64 :=
.seq NamedBody789_21 NamedBody789_40

def NamedBody789_42 : StackLang.HolProg 64 :=
.seq NamedBody789_20 NamedBody789_41

def NamedBody789_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody789_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody789_50 : StackLang.HolProg 64 :=
.seq NamedBody789_48 NamedBody789_49

def NamedBody789_51 : StackLang.HolProg 64 :=
.seq NamedBody789_47 NamedBody789_50

def NamedBody789_52 : StackLang.HolProg 64 :=
.seq NamedBody789_46 NamedBody789_51

def NamedBody789_53 : StackLang.HolProg 64 :=
.seq NamedBody789_45 NamedBody789_52

def NamedBody789_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody789_56 : StackLang.HolProg 64 :=
.seq NamedBody789_54 NamedBody789_55

def NamedBody789_57 : StackLang.HolProg 64 :=
.call (some (NamedBody789_53, 1, 789, 2)) (Sum.inl 69) (some (NamedBody789_56, 789, 3))

def NamedBody789_58 : StackLang.HolProg 64 :=
.seq NamedBody789_44 NamedBody789_57

def NamedBody789_59 : StackLang.HolProg 64 :=
.seq NamedBody789_43 NamedBody789_58

def NamedBody789_60 : StackLang.HolProg 64 :=
.seq NamedBody789_42 NamedBody789_59

def NamedBody789_61 : StackLang.HolProg 64 :=
.seq NamedBody789_13 NamedBody789_60

def NamedBody789_62 : StackLang.HolProg 64 :=
.seq NamedBody789_10 NamedBody789_61

def NamedBody789_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody789_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 288#64)

def NamedBody789_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3660#64)

def NamedBody789_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody789_69 : StackLang.HolProg 64 :=
.seq NamedBody789_67 NamedBody789_68

def NamedBody789_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody789_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody789_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody789_73 : StackLang.HolProg 64 :=
.seq NamedBody789_71 NamedBody789_72

def NamedBody789_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody789_73 NamedBody789_74

def NamedBody789_76 : StackLang.HolProg 64 :=
.seq NamedBody789_70 NamedBody789_75

def NamedBody789_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody789_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody789_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 5

def NamedBody789_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody789_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody789_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody789_86 : StackLang.HolProg 64 :=
.seq NamedBody789_84 NamedBody789_85

def NamedBody789_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody789_88 : StackLang.HolProg 64 :=
.seq NamedBody789_86 NamedBody789_87

def NamedBody789_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_90 : StackLang.HolProg 64 :=
.seq NamedBody789_88 NamedBody789_89

def NamedBody789_91 : StackLang.HolProg 64 :=
.seq NamedBody789_83 NamedBody789_90

def NamedBody789_92 : StackLang.HolProg 64 :=
.seq NamedBody789_82 NamedBody789_91

def NamedBody789_93 : StackLang.HolProg 64 :=
.seq NamedBody789_81 NamedBody789_92

def NamedBody789_94 : StackLang.HolProg 64 :=
.seq NamedBody789_80 NamedBody789_93

def NamedBody789_95 : StackLang.HolProg 64 :=
.seq NamedBody789_79 NamedBody789_94

def NamedBody789_96 : StackLang.HolProg 64 :=
.seq NamedBody789_78 NamedBody789_95

def NamedBody789_97 : StackLang.HolProg 64 :=
.seq NamedBody789_77 NamedBody789_96

def NamedBody789_98 : StackLang.HolProg 64 :=
.seq NamedBody789_76 NamedBody789_97

def NamedBody789_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody789_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody789_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody789_107 : StackLang.HolProg 64 :=
.seq NamedBody789_105 NamedBody789_106

def NamedBody789_108 : StackLang.HolProg 64 :=
.seq NamedBody789_104 NamedBody789_107

def NamedBody789_109 : StackLang.HolProg 64 :=
.seq NamedBody789_103 NamedBody789_108

def NamedBody789_110 : StackLang.HolProg 64 :=
.seq NamedBody789_102 NamedBody789_109

def NamedBody789_111 : StackLang.HolProg 64 :=
.seq NamedBody789_101 NamedBody789_110

def NamedBody789_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody789_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody789_114 : StackLang.HolProg 64 :=
.seq NamedBody789_112 NamedBody789_113

def NamedBody789_115 : StackLang.HolProg 64 :=
.call (some (NamedBody789_111, 1, 789, 4)) (Sum.inl 68) (some (NamedBody789_114, 789, 5))

def NamedBody789_116 : StackLang.HolProg 64 :=
.seq NamedBody789_100 NamedBody789_115

def NamedBody789_117 : StackLang.HolProg 64 :=
.seq NamedBody789_99 NamedBody789_116

def NamedBody789_118 : StackLang.HolProg 64 :=
.seq NamedBody789_98 NamedBody789_117

def NamedBody789_119 : StackLang.HolProg 64 :=
.seq NamedBody789_69 NamedBody789_118

def NamedBody789_120 : StackLang.HolProg 64 :=
.seq NamedBody789_66 NamedBody789_119

def NamedBody789_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody789_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody789_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody789_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody789_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody789_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551224#64))

def NamedBody789_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1344#64)))

def NamedBody789_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 4#64)

def NamedBody789_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody789_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3661#64)

def NamedBody789_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody789_133 : StackLang.HolProg 64 :=
.seq NamedBody789_131 NamedBody789_132

def NamedBody789_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody789_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody789_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody789_137 : StackLang.HolProg 64 :=
.seq NamedBody789_135 NamedBody789_136

def NamedBody789_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody789_137 NamedBody789_138

def NamedBody789_140 : StackLang.HolProg 64 :=
.seq NamedBody789_134 NamedBody789_139

def NamedBody789_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody789_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody789_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 7

def NamedBody789_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody789_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody789_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody789_150 : StackLang.HolProg 64 :=
.seq NamedBody789_148 NamedBody789_149

def NamedBody789_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody789_152 : StackLang.HolProg 64 :=
.seq NamedBody789_150 NamedBody789_151

def NamedBody789_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_154 : StackLang.HolProg 64 :=
.seq NamedBody789_152 NamedBody789_153

def NamedBody789_155 : StackLang.HolProg 64 :=
.seq NamedBody789_147 NamedBody789_154

def NamedBody789_156 : StackLang.HolProg 64 :=
.seq NamedBody789_146 NamedBody789_155

def NamedBody789_157 : StackLang.HolProg 64 :=
.seq NamedBody789_145 NamedBody789_156

def NamedBody789_158 : StackLang.HolProg 64 :=
.seq NamedBody789_144 NamedBody789_157

def NamedBody789_159 : StackLang.HolProg 64 :=
.seq NamedBody789_143 NamedBody789_158

def NamedBody789_160 : StackLang.HolProg 64 :=
.seq NamedBody789_142 NamedBody789_159

def NamedBody789_161 : StackLang.HolProg 64 :=
.seq NamedBody789_141 NamedBody789_160

def NamedBody789_162 : StackLang.HolProg 64 :=
.seq NamedBody789_140 NamedBody789_161

def NamedBody789_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody789_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody789_170 : StackLang.HolProg 64 :=
.seq NamedBody789_168 NamedBody789_169

def NamedBody789_171 : StackLang.HolProg 64 :=
.seq NamedBody789_167 NamedBody789_170

def NamedBody789_172 : StackLang.HolProg 64 :=
.seq NamedBody789_166 NamedBody789_171

def NamedBody789_173 : StackLang.HolProg 64 :=
.seq NamedBody789_165 NamedBody789_172

def NamedBody789_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody789_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody789_176 : StackLang.HolProg 64 :=
.seq NamedBody789_174 NamedBody789_175

def NamedBody789_177 : StackLang.HolProg 64 :=
.call (some (NamedBody789_173, 1, 789, 6)) (Sum.inl 784) (some (NamedBody789_176, 789, 7))

def NamedBody789_178 : StackLang.HolProg 64 :=
.seq NamedBody789_164 NamedBody789_177

def NamedBody789_179 : StackLang.HolProg 64 :=
.seq NamedBody789_163 NamedBody789_178

def NamedBody789_180 : StackLang.HolProg 64 :=
.seq NamedBody789_162 NamedBody789_179

def NamedBody789_181 : StackLang.HolProg 64 :=
.seq NamedBody789_133 NamedBody789_180

def NamedBody789_182 : StackLang.HolProg 64 :=
.seq NamedBody789_130 NamedBody789_181

def NamedBody789_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody789_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody789_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3662#64)

def NamedBody789_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody789_188 : StackLang.HolProg 64 :=
.seq NamedBody789_186 NamedBody789_187

def NamedBody789_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody789_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody789_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody789_192 : StackLang.HolProg 64 :=
.seq NamedBody789_190 NamedBody789_191

def NamedBody789_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody789_192 NamedBody789_193

def NamedBody789_195 : StackLang.HolProg 64 :=
.seq NamedBody789_189 NamedBody789_194

def NamedBody789_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody789_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody789_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 9

def NamedBody789_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody789_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody789_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody789_205 : StackLang.HolProg 64 :=
.seq NamedBody789_203 NamedBody789_204

def NamedBody789_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody789_207 : StackLang.HolProg 64 :=
.seq NamedBody789_205 NamedBody789_206

def NamedBody789_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_209 : StackLang.HolProg 64 :=
.seq NamedBody789_207 NamedBody789_208

def NamedBody789_210 : StackLang.HolProg 64 :=
.seq NamedBody789_202 NamedBody789_209

def NamedBody789_211 : StackLang.HolProg 64 :=
.seq NamedBody789_201 NamedBody789_210

def NamedBody789_212 : StackLang.HolProg 64 :=
.seq NamedBody789_200 NamedBody789_211

def NamedBody789_213 : StackLang.HolProg 64 :=
.seq NamedBody789_199 NamedBody789_212

def NamedBody789_214 : StackLang.HolProg 64 :=
.seq NamedBody789_198 NamedBody789_213

def NamedBody789_215 : StackLang.HolProg 64 :=
.seq NamedBody789_197 NamedBody789_214

def NamedBody789_216 : StackLang.HolProg 64 :=
.seq NamedBody789_196 NamedBody789_215

def NamedBody789_217 : StackLang.HolProg 64 :=
.seq NamedBody789_195 NamedBody789_216

def NamedBody789_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody789_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody789_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_226 : StackLang.HolProg 64 :=
.seq NamedBody789_224 NamedBody789_225

def NamedBody789_227 : StackLang.HolProg 64 :=
.seq NamedBody789_223 NamedBody789_226

def NamedBody789_228 : StackLang.HolProg 64 :=
.seq NamedBody789_222 NamedBody789_227

def NamedBody789_229 : StackLang.HolProg 64 :=
.seq NamedBody789_221 NamedBody789_228

def NamedBody789_230 : StackLang.HolProg 64 :=
.seq NamedBody789_220 NamedBody789_229

def NamedBody789_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody789_233 : StackLang.HolProg 64 :=
.seq NamedBody789_231 NamedBody789_232

def NamedBody789_234 : StackLang.HolProg 64 :=
.call (some (NamedBody789_230, 1, 789, 8)) (Sum.inl 779) (some (NamedBody789_233, 789, 9))

def NamedBody789_235 : StackLang.HolProg 64 :=
.seq NamedBody789_219 NamedBody789_234

def NamedBody789_236 : StackLang.HolProg 64 :=
.seq NamedBody789_218 NamedBody789_235

def NamedBody789_237 : StackLang.HolProg 64 :=
.seq NamedBody789_217 NamedBody789_236

def NamedBody789_238 : StackLang.HolProg 64 :=
.seq NamedBody789_188 NamedBody789_237

def NamedBody789_239 : StackLang.HolProg 64 :=
.seq NamedBody789_185 NamedBody789_238

def NamedBody789_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody789_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody789_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_243 : StackLang.HolProg 64 :=
.seq NamedBody789_241 NamedBody789_242

def NamedBody789_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3663#64)

def NamedBody789_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody789_247 : StackLang.HolProg 64 :=
.seq NamedBody789_245 NamedBody789_246

def NamedBody789_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody789_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody789_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody789_251 : StackLang.HolProg 64 :=
.seq NamedBody789_249 NamedBody789_250

def NamedBody789_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_253 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody789_251 NamedBody789_252

def NamedBody789_254 : StackLang.HolProg 64 :=
.seq NamedBody789_248 NamedBody789_253

def NamedBody789_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody789_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody789_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 11

def NamedBody789_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody789_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody789_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody789_264 : StackLang.HolProg 64 :=
.seq NamedBody789_262 NamedBody789_263

def NamedBody789_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody789_266 : StackLang.HolProg 64 :=
.seq NamedBody789_264 NamedBody789_265

def NamedBody789_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_268 : StackLang.HolProg 64 :=
.seq NamedBody789_266 NamedBody789_267

def NamedBody789_269 : StackLang.HolProg 64 :=
.seq NamedBody789_261 NamedBody789_268

def NamedBody789_270 : StackLang.HolProg 64 :=
.seq NamedBody789_260 NamedBody789_269

def NamedBody789_271 : StackLang.HolProg 64 :=
.seq NamedBody789_259 NamedBody789_270

def NamedBody789_272 : StackLang.HolProg 64 :=
.seq NamedBody789_258 NamedBody789_271

def NamedBody789_273 : StackLang.HolProg 64 :=
.seq NamedBody789_257 NamedBody789_272

def NamedBody789_274 : StackLang.HolProg 64 :=
.seq NamedBody789_256 NamedBody789_273

def NamedBody789_275 : StackLang.HolProg 64 :=
.seq NamedBody789_255 NamedBody789_274

def NamedBody789_276 : StackLang.HolProg 64 :=
.seq NamedBody789_254 NamedBody789_275

def NamedBody789_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody789_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody789_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody789_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody789_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_285 : StackLang.HolProg 64 :=
.seq NamedBody789_283 NamedBody789_284

def NamedBody789_286 : StackLang.HolProg 64 :=
.seq NamedBody789_282 NamedBody789_285

def NamedBody789_287 : StackLang.HolProg 64 :=
.seq NamedBody789_281 NamedBody789_286

def NamedBody789_288 : StackLang.HolProg 64 :=
.seq NamedBody789_280 NamedBody789_287

def NamedBody789_289 : StackLang.HolProg 64 :=
.seq NamedBody789_279 NamedBody789_288

def NamedBody789_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody789_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody789_292 : StackLang.HolProg 64 :=
.seq NamedBody789_290 NamedBody789_291

def NamedBody789_293 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody789_294 : StackLang.HolProg 64 :=
.seq NamedBody789_292 NamedBody789_293

def NamedBody789_295 : StackLang.HolProg 64 :=
.call (some (NamedBody789_289, 1, 789, 10)) (Sum.inl 70) (some (NamedBody789_294, 789, 11))

def NamedBody789_296 : StackLang.HolProg 64 :=
.seq NamedBody789_278 NamedBody789_295

def NamedBody789_297 : StackLang.HolProg 64 :=
.seq NamedBody789_277 NamedBody789_296

def NamedBody789_298 : StackLang.HolProg 64 :=
.seq NamedBody789_276 NamedBody789_297

def NamedBody789_299 : StackLang.HolProg 64 :=
.seq NamedBody789_247 NamedBody789_298

def NamedBody789_300 : StackLang.HolProg 64 :=
.seq NamedBody789_244 NamedBody789_299

def NamedBody789_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody789_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody789_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody789_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody789_305 : StackLang.HolProg 64 :=
.seq NamedBody789_303 NamedBody789_304

def NamedBody789_306 : StackLang.HolProg 64 :=
.seq NamedBody789_302 NamedBody789_305

def NamedBody789_307 : StackLang.HolProg 64 :=
.seq NamedBody789_301 NamedBody789_306

def NamedBody789_308 : StackLang.HolProg 64 :=
.seq NamedBody789_300 NamedBody789_307

def NamedBody789_309 : StackLang.HolProg 64 :=
.seq NamedBody789_243 NamedBody789_308

def NamedBody789_310 : StackLang.HolProg 64 :=
.seq NamedBody789_240 NamedBody789_309

def NamedBody789_311 : StackLang.HolProg 64 :=
.seq NamedBody789_239 NamedBody789_310

def NamedBody789_312 : StackLang.HolProg 64 :=
.seq NamedBody789_184 NamedBody789_311

def NamedBody789_313 : StackLang.HolProg 64 :=
.seq NamedBody789_183 NamedBody789_312

def NamedBody789_314 : StackLang.HolProg 64 :=
.seq NamedBody789_182 NamedBody789_313

def NamedBody789_315 : StackLang.HolProg 64 :=
.seq NamedBody789_129 NamedBody789_314

def NamedBody789_316 : StackLang.HolProg 64 :=
.seq NamedBody789_128 NamedBody789_315

def NamedBody789_317 : StackLang.HolProg 64 :=
.seq NamedBody789_127 NamedBody789_316

def NamedBody789_318 : StackLang.HolProg 64 :=
.seq NamedBody789_126 NamedBody789_317

def NamedBody789_319 : StackLang.HolProg 64 :=
.seq NamedBody789_125 NamedBody789_318

def NamedBody789_320 : StackLang.HolProg 64 :=
.seq NamedBody789_124 NamedBody789_319

def NamedBody789_321 : StackLang.HolProg 64 :=
.seq NamedBody789_123 NamedBody789_320

def NamedBody789_322 : StackLang.HolProg 64 :=
.seq NamedBody789_122 NamedBody789_321

def NamedBody789_323 : StackLang.HolProg 64 :=
.seq NamedBody789_121 NamedBody789_322

def NamedBody789_324 : StackLang.HolProg 64 :=
.seq NamedBody789_120 NamedBody789_323

def NamedBody789_325 : StackLang.HolProg 64 :=
.seq NamedBody789_65 NamedBody789_324

def NamedBody789_326 : StackLang.HolProg 64 :=
.seq NamedBody789_64 NamedBody789_325

def NamedBody789_327 : StackLang.HolProg 64 :=
.seq NamedBody789_63 NamedBody789_326

def NamedBody789_328 : StackLang.HolProg 64 :=
.seq NamedBody789_62 NamedBody789_327

def NamedBody789_329 : StackLang.HolProg 64 :=
.seq NamedBody789_9 NamedBody789_328

def NamedBody789_330 : StackLang.HolProg 64 :=
.seq NamedBody789_6 NamedBody789_329

def Named789 : Nat × StackLang.HolProg 64 := (789, NamedBody789_330)
theorem Named789_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed789 = Named789 := by
  kernel_rfl
#print axioms Named789_eq
end InitECandidate.Proofs.BackendStages
