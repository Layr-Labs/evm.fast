import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed556
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody556_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody556_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody556_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody556_3 : StackLang.HolProg 64 :=
.seq NamedBody556_1 NamedBody556_2

def NamedBody556_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody556_3 NamedBody556_4

def NamedBody556_6 : StackLang.HolProg 64 :=
.seq NamedBody556_0 NamedBody556_5

def NamedBody556_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody556_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody556_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1891#64)

def NamedBody556_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody556_13 : StackLang.HolProg 64 :=
.seq NamedBody556_11 NamedBody556_12

def NamedBody556_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody556_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody556_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody556_17 : StackLang.HolProg 64 :=
.seq NamedBody556_15 NamedBody556_16

def NamedBody556_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody556_17 NamedBody556_18

def NamedBody556_20 : StackLang.HolProg 64 :=
.seq NamedBody556_14 NamedBody556_19

def NamedBody556_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody556_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody556_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 3

def NamedBody556_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody556_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody556_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody556_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody556_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody556_30 : StackLang.HolProg 64 :=
.seq NamedBody556_28 NamedBody556_29

def NamedBody556_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody556_32 : StackLang.HolProg 64 :=
.seq NamedBody556_30 NamedBody556_31

def NamedBody556_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody556_34 : StackLang.HolProg 64 :=
.seq NamedBody556_32 NamedBody556_33

def NamedBody556_35 : StackLang.HolProg 64 :=
.seq NamedBody556_27 NamedBody556_34

def NamedBody556_36 : StackLang.HolProg 64 :=
.seq NamedBody556_26 NamedBody556_35

def NamedBody556_37 : StackLang.HolProg 64 :=
.seq NamedBody556_25 NamedBody556_36

def NamedBody556_38 : StackLang.HolProg 64 :=
.seq NamedBody556_24 NamedBody556_37

def NamedBody556_39 : StackLang.HolProg 64 :=
.seq NamedBody556_23 NamedBody556_38

def NamedBody556_40 : StackLang.HolProg 64 :=
.seq NamedBody556_22 NamedBody556_39

def NamedBody556_41 : StackLang.HolProg 64 :=
.seq NamedBody556_21 NamedBody556_40

def NamedBody556_42 : StackLang.HolProg 64 :=
.seq NamedBody556_20 NamedBody556_41

def NamedBody556_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody556_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody556_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody556_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_50 : StackLang.HolProg 64 :=
.seq NamedBody556_48 NamedBody556_49

def NamedBody556_51 : StackLang.HolProg 64 :=
.seq NamedBody556_47 NamedBody556_50

def NamedBody556_52 : StackLang.HolProg 64 :=
.seq NamedBody556_46 NamedBody556_51

def NamedBody556_53 : StackLang.HolProg 64 :=
.seq NamedBody556_45 NamedBody556_52

def NamedBody556_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody556_56 : StackLang.HolProg 64 :=
.seq NamedBody556_54 NamedBody556_55

def NamedBody556_57 : StackLang.HolProg 64 :=
.call (some (NamedBody556_53, 1, 556, 2)) (Sum.inl 470) (some (NamedBody556_56, 556, 3))

def NamedBody556_58 : StackLang.HolProg 64 :=
.seq NamedBody556_44 NamedBody556_57

def NamedBody556_59 : StackLang.HolProg 64 :=
.seq NamedBody556_43 NamedBody556_58

def NamedBody556_60 : StackLang.HolProg 64 :=
.seq NamedBody556_42 NamedBody556_59

def NamedBody556_61 : StackLang.HolProg 64 :=
.seq NamedBody556_13 NamedBody556_60

def NamedBody556_62 : StackLang.HolProg 64 :=
.seq NamedBody556_10 NamedBody556_61

def NamedBody556_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody556_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody556_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody556_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody556_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody556_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def NamedBody556_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody556_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1892#64)

def NamedBody556_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody556_74 : StackLang.HolProg 64 :=
.seq NamedBody556_72 NamedBody556_73

def NamedBody556_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody556_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody556_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody556_78 : StackLang.HolProg 64 :=
.seq NamedBody556_76 NamedBody556_77

def NamedBody556_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody556_78 NamedBody556_79

def NamedBody556_81 : StackLang.HolProg 64 :=
.seq NamedBody556_75 NamedBody556_80

def NamedBody556_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody556_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody556_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 5

def NamedBody556_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody556_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody556_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody556_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody556_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody556_91 : StackLang.HolProg 64 :=
.seq NamedBody556_89 NamedBody556_90

def NamedBody556_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody556_93 : StackLang.HolProg 64 :=
.seq NamedBody556_91 NamedBody556_92

def NamedBody556_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody556_95 : StackLang.HolProg 64 :=
.seq NamedBody556_93 NamedBody556_94

def NamedBody556_96 : StackLang.HolProg 64 :=
.seq NamedBody556_88 NamedBody556_95

def NamedBody556_97 : StackLang.HolProg 64 :=
.seq NamedBody556_87 NamedBody556_96

def NamedBody556_98 : StackLang.HolProg 64 :=
.seq NamedBody556_86 NamedBody556_97

def NamedBody556_99 : StackLang.HolProg 64 :=
.seq NamedBody556_85 NamedBody556_98

def NamedBody556_100 : StackLang.HolProg 64 :=
.seq NamedBody556_84 NamedBody556_99

def NamedBody556_101 : StackLang.HolProg 64 :=
.seq NamedBody556_83 NamedBody556_100

def NamedBody556_102 : StackLang.HolProg 64 :=
.seq NamedBody556_82 NamedBody556_101

def NamedBody556_103 : StackLang.HolProg 64 :=
.seq NamedBody556_81 NamedBody556_102

def NamedBody556_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody556_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody556_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody556_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody556_111 : StackLang.HolProg 64 :=
.seq NamedBody556_109 NamedBody556_110

def NamedBody556_112 : StackLang.HolProg 64 :=
.seq NamedBody556_108 NamedBody556_111

def NamedBody556_113 : StackLang.HolProg 64 :=
.seq NamedBody556_107 NamedBody556_112

def NamedBody556_114 : StackLang.HolProg 64 :=
.seq NamedBody556_106 NamedBody556_113

def NamedBody556_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody556_117 : StackLang.HolProg 64 :=
.seq NamedBody556_115 NamedBody556_116

def NamedBody556_118 : StackLang.HolProg 64 :=
.call (some (NamedBody556_114, 1, 556, 4)) (Sum.inl 467) (some (NamedBody556_117, 556, 5))

def NamedBody556_119 : StackLang.HolProg 64 :=
.seq NamedBody556_105 NamedBody556_118

def NamedBody556_120 : StackLang.HolProg 64 :=
.seq NamedBody556_104 NamedBody556_119

def NamedBody556_121 : StackLang.HolProg 64 :=
.seq NamedBody556_103 NamedBody556_120

def NamedBody556_122 : StackLang.HolProg 64 :=
.seq NamedBody556_74 NamedBody556_121

def NamedBody556_123 : StackLang.HolProg 64 :=
.seq NamedBody556_71 NamedBody556_122

def NamedBody556_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody556_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody556_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1893#64)

def NamedBody556_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody556_129 : StackLang.HolProg 64 :=
.seq NamedBody556_127 NamedBody556_128

def NamedBody556_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody556_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody556_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody556_133 : StackLang.HolProg 64 :=
.seq NamedBody556_131 NamedBody556_132

def NamedBody556_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody556_133 NamedBody556_134

def NamedBody556_136 : StackLang.HolProg 64 :=
.seq NamedBody556_130 NamedBody556_135

def NamedBody556_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody556_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody556_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 7

def NamedBody556_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody556_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody556_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody556_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody556_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody556_146 : StackLang.HolProg 64 :=
.seq NamedBody556_144 NamedBody556_145

def NamedBody556_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody556_148 : StackLang.HolProg 64 :=
.seq NamedBody556_146 NamedBody556_147

def NamedBody556_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody556_150 : StackLang.HolProg 64 :=
.seq NamedBody556_148 NamedBody556_149

def NamedBody556_151 : StackLang.HolProg 64 :=
.seq NamedBody556_143 NamedBody556_150

def NamedBody556_152 : StackLang.HolProg 64 :=
.seq NamedBody556_142 NamedBody556_151

def NamedBody556_153 : StackLang.HolProg 64 :=
.seq NamedBody556_141 NamedBody556_152

def NamedBody556_154 : StackLang.HolProg 64 :=
.seq NamedBody556_140 NamedBody556_153

def NamedBody556_155 : StackLang.HolProg 64 :=
.seq NamedBody556_139 NamedBody556_154

def NamedBody556_156 : StackLang.HolProg 64 :=
.seq NamedBody556_138 NamedBody556_155

def NamedBody556_157 : StackLang.HolProg 64 :=
.seq NamedBody556_137 NamedBody556_156

def NamedBody556_158 : StackLang.HolProg 64 :=
.seq NamedBody556_136 NamedBody556_157

def NamedBody556_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody556_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody556_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody556_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_166 : StackLang.HolProg 64 :=
.seq NamedBody556_164 NamedBody556_165

def NamedBody556_167 : StackLang.HolProg 64 :=
.seq NamedBody556_163 NamedBody556_166

def NamedBody556_168 : StackLang.HolProg 64 :=
.seq NamedBody556_162 NamedBody556_167

def NamedBody556_169 : StackLang.HolProg 64 :=
.seq NamedBody556_161 NamedBody556_168

def NamedBody556_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody556_172 : StackLang.HolProg 64 :=
.seq NamedBody556_170 NamedBody556_171

def NamedBody556_173 : StackLang.HolProg 64 :=
.call (some (NamedBody556_169, 1, 556, 6)) (Sum.inl 476) (some (NamedBody556_172, 556, 7))

def NamedBody556_174 : StackLang.HolProg 64 :=
.seq NamedBody556_160 NamedBody556_173

def NamedBody556_175 : StackLang.HolProg 64 :=
.seq NamedBody556_159 NamedBody556_174

def NamedBody556_176 : StackLang.HolProg 64 :=
.seq NamedBody556_158 NamedBody556_175

def NamedBody556_177 : StackLang.HolProg 64 :=
.seq NamedBody556_129 NamedBody556_176

def NamedBody556_178 : StackLang.HolProg 64 :=
.seq NamedBody556_126 NamedBody556_177

def NamedBody556_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody556_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody556_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1894#64)

def NamedBody556_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody556_185 : StackLang.HolProg 64 :=
.seq NamedBody556_183 NamedBody556_184

def NamedBody556_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody556_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody556_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody556_189 : StackLang.HolProg 64 :=
.seq NamedBody556_187 NamedBody556_188

def NamedBody556_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_191 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody556_189 NamedBody556_190

def NamedBody556_192 : StackLang.HolProg 64 :=
.seq NamedBody556_186 NamedBody556_191

def NamedBody556_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody556_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody556_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 9

def NamedBody556_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody556_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody556_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody556_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody556_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody556_202 : StackLang.HolProg 64 :=
.seq NamedBody556_200 NamedBody556_201

def NamedBody556_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody556_204 : StackLang.HolProg 64 :=
.seq NamedBody556_202 NamedBody556_203

def NamedBody556_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody556_206 : StackLang.HolProg 64 :=
.seq NamedBody556_204 NamedBody556_205

def NamedBody556_207 : StackLang.HolProg 64 :=
.seq NamedBody556_199 NamedBody556_206

def NamedBody556_208 : StackLang.HolProg 64 :=
.seq NamedBody556_198 NamedBody556_207

def NamedBody556_209 : StackLang.HolProg 64 :=
.seq NamedBody556_197 NamedBody556_208

def NamedBody556_210 : StackLang.HolProg 64 :=
.seq NamedBody556_196 NamedBody556_209

def NamedBody556_211 : StackLang.HolProg 64 :=
.seq NamedBody556_195 NamedBody556_210

def NamedBody556_212 : StackLang.HolProg 64 :=
.seq NamedBody556_194 NamedBody556_211

def NamedBody556_213 : StackLang.HolProg 64 :=
.seq NamedBody556_193 NamedBody556_212

def NamedBody556_214 : StackLang.HolProg 64 :=
.seq NamedBody556_192 NamedBody556_213

def NamedBody556_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody556_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody556_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody556_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody556_222 : StackLang.HolProg 64 :=
.seq NamedBody556_220 NamedBody556_221

def NamedBody556_223 : StackLang.HolProg 64 :=
.seq NamedBody556_219 NamedBody556_222

def NamedBody556_224 : StackLang.HolProg 64 :=
.seq NamedBody556_218 NamedBody556_223

def NamedBody556_225 : StackLang.HolProg 64 :=
.seq NamedBody556_217 NamedBody556_224

def NamedBody556_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody556_227 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody556_228 : StackLang.HolProg 64 :=
.seq NamedBody556_226 NamedBody556_227

def NamedBody556_229 : StackLang.HolProg 64 :=
.call (some (NamedBody556_225, 1, 556, 8)) (Sum.inl 490) (some (NamedBody556_228, 556, 9))

def NamedBody556_230 : StackLang.HolProg 64 :=
.seq NamedBody556_216 NamedBody556_229

def NamedBody556_231 : StackLang.HolProg 64 :=
.seq NamedBody556_215 NamedBody556_230

def NamedBody556_232 : StackLang.HolProg 64 :=
.seq NamedBody556_214 NamedBody556_231

def NamedBody556_233 : StackLang.HolProg 64 :=
.seq NamedBody556_185 NamedBody556_232

def NamedBody556_234 : StackLang.HolProg 64 :=
.seq NamedBody556_182 NamedBody556_233

def NamedBody556_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody556_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody556_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody556_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody556_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody556_240 : StackLang.HolProg 64 :=
.seq NamedBody556_238 NamedBody556_239

def NamedBody556_241 : StackLang.HolProg 64 :=
.seq NamedBody556_237 NamedBody556_240

def NamedBody556_242 : StackLang.HolProg 64 :=
.seq NamedBody556_236 NamedBody556_241

def NamedBody556_243 : StackLang.HolProg 64 :=
.seq NamedBody556_235 NamedBody556_242

def NamedBody556_244 : StackLang.HolProg 64 :=
.seq NamedBody556_234 NamedBody556_243

def NamedBody556_245 : StackLang.HolProg 64 :=
.seq NamedBody556_181 NamedBody556_244

def NamedBody556_246 : StackLang.HolProg 64 :=
.seq NamedBody556_180 NamedBody556_245

def NamedBody556_247 : StackLang.HolProg 64 :=
.seq NamedBody556_179 NamedBody556_246

def NamedBody556_248 : StackLang.HolProg 64 :=
.seq NamedBody556_178 NamedBody556_247

def NamedBody556_249 : StackLang.HolProg 64 :=
.seq NamedBody556_125 NamedBody556_248

def NamedBody556_250 : StackLang.HolProg 64 :=
.seq NamedBody556_124 NamedBody556_249

def NamedBody556_251 : StackLang.HolProg 64 :=
.seq NamedBody556_123 NamedBody556_250

def NamedBody556_252 : StackLang.HolProg 64 :=
.seq NamedBody556_70 NamedBody556_251

def NamedBody556_253 : StackLang.HolProg 64 :=
.seq NamedBody556_69 NamedBody556_252

def NamedBody556_254 : StackLang.HolProg 64 :=
.seq NamedBody556_68 NamedBody556_253

def NamedBody556_255 : StackLang.HolProg 64 :=
.seq NamedBody556_67 NamedBody556_254

def NamedBody556_256 : StackLang.HolProg 64 :=
.seq NamedBody556_66 NamedBody556_255

def NamedBody556_257 : StackLang.HolProg 64 :=
.seq NamedBody556_65 NamedBody556_256

def NamedBody556_258 : StackLang.HolProg 64 :=
.seq NamedBody556_64 NamedBody556_257

def NamedBody556_259 : StackLang.HolProg 64 :=
.seq NamedBody556_63 NamedBody556_258

def NamedBody556_260 : StackLang.HolProg 64 :=
.seq NamedBody556_62 NamedBody556_259

def NamedBody556_261 : StackLang.HolProg 64 :=
.seq NamedBody556_9 NamedBody556_260

def NamedBody556_262 : StackLang.HolProg 64 :=
.seq NamedBody556_8 NamedBody556_261

def NamedBody556_263 : StackLang.HolProg 64 :=
.seq NamedBody556_7 NamedBody556_262

def NamedBody556_264 : StackLang.HolProg 64 :=
.seq NamedBody556_6 NamedBody556_263

def Named556 : Nat × StackLang.HolProg 64 := (556, NamedBody556_264)
theorem Named556_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed556 = Named556 := by
  kernel_rfl
#print axioms Named556_eq
end InitECandidate.Proofs.BackendStages
