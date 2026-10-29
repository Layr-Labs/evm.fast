import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed553
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody553_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody553_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody553_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody553_3 : StackLang.HolProg 64 :=
.seq NamedBody553_1 NamedBody553_2

def NamedBody553_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody553_3 NamedBody553_4

def NamedBody553_6 : StackLang.HolProg 64 :=
.seq NamedBody553_0 NamedBody553_5

def NamedBody553_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody553_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody553_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1875#64)

def NamedBody553_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody553_13 : StackLang.HolProg 64 :=
.seq NamedBody553_11 NamedBody553_12

def NamedBody553_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody553_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody553_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody553_17 : StackLang.HolProg 64 :=
.seq NamedBody553_15 NamedBody553_16

def NamedBody553_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody553_17 NamedBody553_18

def NamedBody553_20 : StackLang.HolProg 64 :=
.seq NamedBody553_14 NamedBody553_19

def NamedBody553_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody553_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody553_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 553 3

def NamedBody553_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody553_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody553_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody553_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody553_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody553_30 : StackLang.HolProg 64 :=
.seq NamedBody553_28 NamedBody553_29

def NamedBody553_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody553_32 : StackLang.HolProg 64 :=
.seq NamedBody553_30 NamedBody553_31

def NamedBody553_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody553_34 : StackLang.HolProg 64 :=
.seq NamedBody553_32 NamedBody553_33

def NamedBody553_35 : StackLang.HolProg 64 :=
.seq NamedBody553_27 NamedBody553_34

def NamedBody553_36 : StackLang.HolProg 64 :=
.seq NamedBody553_26 NamedBody553_35

def NamedBody553_37 : StackLang.HolProg 64 :=
.seq NamedBody553_25 NamedBody553_36

def NamedBody553_38 : StackLang.HolProg 64 :=
.seq NamedBody553_24 NamedBody553_37

def NamedBody553_39 : StackLang.HolProg 64 :=
.seq NamedBody553_23 NamedBody553_38

def NamedBody553_40 : StackLang.HolProg 64 :=
.seq NamedBody553_22 NamedBody553_39

def NamedBody553_41 : StackLang.HolProg 64 :=
.seq NamedBody553_21 NamedBody553_40

def NamedBody553_42 : StackLang.HolProg 64 :=
.seq NamedBody553_20 NamedBody553_41

def NamedBody553_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody553_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody553_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody553_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_50 : StackLang.HolProg 64 :=
.seq NamedBody553_48 NamedBody553_49

def NamedBody553_51 : StackLang.HolProg 64 :=
.seq NamedBody553_47 NamedBody553_50

def NamedBody553_52 : StackLang.HolProg 64 :=
.seq NamedBody553_46 NamedBody553_51

def NamedBody553_53 : StackLang.HolProg 64 :=
.seq NamedBody553_45 NamedBody553_52

def NamedBody553_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody553_56 : StackLang.HolProg 64 :=
.seq NamedBody553_54 NamedBody553_55

def NamedBody553_57 : StackLang.HolProg 64 :=
.call (some (NamedBody553_53, 1, 553, 2)) (Sum.inl 470) (some (NamedBody553_56, 553, 3))

def NamedBody553_58 : StackLang.HolProg 64 :=
.seq NamedBody553_44 NamedBody553_57

def NamedBody553_59 : StackLang.HolProg 64 :=
.seq NamedBody553_43 NamedBody553_58

def NamedBody553_60 : StackLang.HolProg 64 :=
.seq NamedBody553_42 NamedBody553_59

def NamedBody553_61 : StackLang.HolProg 64 :=
.seq NamedBody553_13 NamedBody553_60

def NamedBody553_62 : StackLang.HolProg 64 :=
.seq NamedBody553_10 NamedBody553_61

def NamedBody553_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody553_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody553_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody553_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody553_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody553_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def NamedBody553_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody553_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1876#64)

def NamedBody553_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody553_74 : StackLang.HolProg 64 :=
.seq NamedBody553_72 NamedBody553_73

def NamedBody553_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody553_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody553_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody553_78 : StackLang.HolProg 64 :=
.seq NamedBody553_76 NamedBody553_77

def NamedBody553_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody553_78 NamedBody553_79

def NamedBody553_81 : StackLang.HolProg 64 :=
.seq NamedBody553_75 NamedBody553_80

def NamedBody553_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody553_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody553_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 553 5

def NamedBody553_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody553_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody553_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody553_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody553_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody553_91 : StackLang.HolProg 64 :=
.seq NamedBody553_89 NamedBody553_90

def NamedBody553_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody553_93 : StackLang.HolProg 64 :=
.seq NamedBody553_91 NamedBody553_92

def NamedBody553_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody553_95 : StackLang.HolProg 64 :=
.seq NamedBody553_93 NamedBody553_94

def NamedBody553_96 : StackLang.HolProg 64 :=
.seq NamedBody553_88 NamedBody553_95

def NamedBody553_97 : StackLang.HolProg 64 :=
.seq NamedBody553_87 NamedBody553_96

def NamedBody553_98 : StackLang.HolProg 64 :=
.seq NamedBody553_86 NamedBody553_97

def NamedBody553_99 : StackLang.HolProg 64 :=
.seq NamedBody553_85 NamedBody553_98

def NamedBody553_100 : StackLang.HolProg 64 :=
.seq NamedBody553_84 NamedBody553_99

def NamedBody553_101 : StackLang.HolProg 64 :=
.seq NamedBody553_83 NamedBody553_100

def NamedBody553_102 : StackLang.HolProg 64 :=
.seq NamedBody553_82 NamedBody553_101

def NamedBody553_103 : StackLang.HolProg 64 :=
.seq NamedBody553_81 NamedBody553_102

def NamedBody553_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody553_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody553_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody553_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody553_111 : StackLang.HolProg 64 :=
.seq NamedBody553_109 NamedBody553_110

def NamedBody553_112 : StackLang.HolProg 64 :=
.seq NamedBody553_108 NamedBody553_111

def NamedBody553_113 : StackLang.HolProg 64 :=
.seq NamedBody553_107 NamedBody553_112

def NamedBody553_114 : StackLang.HolProg 64 :=
.seq NamedBody553_106 NamedBody553_113

def NamedBody553_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody553_117 : StackLang.HolProg 64 :=
.seq NamedBody553_115 NamedBody553_116

def NamedBody553_118 : StackLang.HolProg 64 :=
.call (some (NamedBody553_114, 1, 553, 4)) (Sum.inl 467) (some (NamedBody553_117, 553, 5))

def NamedBody553_119 : StackLang.HolProg 64 :=
.seq NamedBody553_105 NamedBody553_118

def NamedBody553_120 : StackLang.HolProg 64 :=
.seq NamedBody553_104 NamedBody553_119

def NamedBody553_121 : StackLang.HolProg 64 :=
.seq NamedBody553_103 NamedBody553_120

def NamedBody553_122 : StackLang.HolProg 64 :=
.seq NamedBody553_74 NamedBody553_121

def NamedBody553_123 : StackLang.HolProg 64 :=
.seq NamedBody553_71 NamedBody553_122

def NamedBody553_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody553_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody553_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1877#64)

def NamedBody553_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody553_129 : StackLang.HolProg 64 :=
.seq NamedBody553_127 NamedBody553_128

def NamedBody553_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody553_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody553_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody553_133 : StackLang.HolProg 64 :=
.seq NamedBody553_131 NamedBody553_132

def NamedBody553_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody553_133 NamedBody553_134

def NamedBody553_136 : StackLang.HolProg 64 :=
.seq NamedBody553_130 NamedBody553_135

def NamedBody553_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody553_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody553_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 553 7

def NamedBody553_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody553_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody553_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody553_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody553_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody553_146 : StackLang.HolProg 64 :=
.seq NamedBody553_144 NamedBody553_145

def NamedBody553_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody553_148 : StackLang.HolProg 64 :=
.seq NamedBody553_146 NamedBody553_147

def NamedBody553_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody553_150 : StackLang.HolProg 64 :=
.seq NamedBody553_148 NamedBody553_149

def NamedBody553_151 : StackLang.HolProg 64 :=
.seq NamedBody553_143 NamedBody553_150

def NamedBody553_152 : StackLang.HolProg 64 :=
.seq NamedBody553_142 NamedBody553_151

def NamedBody553_153 : StackLang.HolProg 64 :=
.seq NamedBody553_141 NamedBody553_152

def NamedBody553_154 : StackLang.HolProg 64 :=
.seq NamedBody553_140 NamedBody553_153

def NamedBody553_155 : StackLang.HolProg 64 :=
.seq NamedBody553_139 NamedBody553_154

def NamedBody553_156 : StackLang.HolProg 64 :=
.seq NamedBody553_138 NamedBody553_155

def NamedBody553_157 : StackLang.HolProg 64 :=
.seq NamedBody553_137 NamedBody553_156

def NamedBody553_158 : StackLang.HolProg 64 :=
.seq NamedBody553_136 NamedBody553_157

def NamedBody553_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody553_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody553_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody553_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_166 : StackLang.HolProg 64 :=
.seq NamedBody553_164 NamedBody553_165

def NamedBody553_167 : StackLang.HolProg 64 :=
.seq NamedBody553_163 NamedBody553_166

def NamedBody553_168 : StackLang.HolProg 64 :=
.seq NamedBody553_162 NamedBody553_167

def NamedBody553_169 : StackLang.HolProg 64 :=
.seq NamedBody553_161 NamedBody553_168

def NamedBody553_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody553_172 : StackLang.HolProg 64 :=
.seq NamedBody553_170 NamedBody553_171

def NamedBody553_173 : StackLang.HolProg 64 :=
.call (some (NamedBody553_169, 1, 553, 6)) (Sum.inl 476) (some (NamedBody553_172, 553, 7))

def NamedBody553_174 : StackLang.HolProg 64 :=
.seq NamedBody553_160 NamedBody553_173

def NamedBody553_175 : StackLang.HolProg 64 :=
.seq NamedBody553_159 NamedBody553_174

def NamedBody553_176 : StackLang.HolProg 64 :=
.seq NamedBody553_158 NamedBody553_175

def NamedBody553_177 : StackLang.HolProg 64 :=
.seq NamedBody553_129 NamedBody553_176

def NamedBody553_178 : StackLang.HolProg 64 :=
.seq NamedBody553_126 NamedBody553_177

def NamedBody553_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody553_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody553_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1878#64)

def NamedBody553_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody553_185 : StackLang.HolProg 64 :=
.seq NamedBody553_183 NamedBody553_184

def NamedBody553_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody553_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody553_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody553_189 : StackLang.HolProg 64 :=
.seq NamedBody553_187 NamedBody553_188

def NamedBody553_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_191 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody553_189 NamedBody553_190

def NamedBody553_192 : StackLang.HolProg 64 :=
.seq NamedBody553_186 NamedBody553_191

def NamedBody553_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody553_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody553_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 553 9

def NamedBody553_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody553_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody553_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody553_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody553_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody553_202 : StackLang.HolProg 64 :=
.seq NamedBody553_200 NamedBody553_201

def NamedBody553_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody553_204 : StackLang.HolProg 64 :=
.seq NamedBody553_202 NamedBody553_203

def NamedBody553_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody553_206 : StackLang.HolProg 64 :=
.seq NamedBody553_204 NamedBody553_205

def NamedBody553_207 : StackLang.HolProg 64 :=
.seq NamedBody553_199 NamedBody553_206

def NamedBody553_208 : StackLang.HolProg 64 :=
.seq NamedBody553_198 NamedBody553_207

def NamedBody553_209 : StackLang.HolProg 64 :=
.seq NamedBody553_197 NamedBody553_208

def NamedBody553_210 : StackLang.HolProg 64 :=
.seq NamedBody553_196 NamedBody553_209

def NamedBody553_211 : StackLang.HolProg 64 :=
.seq NamedBody553_195 NamedBody553_210

def NamedBody553_212 : StackLang.HolProg 64 :=
.seq NamedBody553_194 NamedBody553_211

def NamedBody553_213 : StackLang.HolProg 64 :=
.seq NamedBody553_193 NamedBody553_212

def NamedBody553_214 : StackLang.HolProg 64 :=
.seq NamedBody553_192 NamedBody553_213

def NamedBody553_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody553_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody553_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody553_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody553_222 : StackLang.HolProg 64 :=
.seq NamedBody553_220 NamedBody553_221

def NamedBody553_223 : StackLang.HolProg 64 :=
.seq NamedBody553_219 NamedBody553_222

def NamedBody553_224 : StackLang.HolProg 64 :=
.seq NamedBody553_218 NamedBody553_223

def NamedBody553_225 : StackLang.HolProg 64 :=
.seq NamedBody553_217 NamedBody553_224

def NamedBody553_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody553_227 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody553_228 : StackLang.HolProg 64 :=
.seq NamedBody553_226 NamedBody553_227

def NamedBody553_229 : StackLang.HolProg 64 :=
.call (some (NamedBody553_225, 1, 553, 8)) (Sum.inl 490) (some (NamedBody553_228, 553, 9))

def NamedBody553_230 : StackLang.HolProg 64 :=
.seq NamedBody553_216 NamedBody553_229

def NamedBody553_231 : StackLang.HolProg 64 :=
.seq NamedBody553_215 NamedBody553_230

def NamedBody553_232 : StackLang.HolProg 64 :=
.seq NamedBody553_214 NamedBody553_231

def NamedBody553_233 : StackLang.HolProg 64 :=
.seq NamedBody553_185 NamedBody553_232

def NamedBody553_234 : StackLang.HolProg 64 :=
.seq NamedBody553_182 NamedBody553_233

def NamedBody553_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody553_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody553_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody553_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody553_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody553_240 : StackLang.HolProg 64 :=
.seq NamedBody553_238 NamedBody553_239

def NamedBody553_241 : StackLang.HolProg 64 :=
.seq NamedBody553_237 NamedBody553_240

def NamedBody553_242 : StackLang.HolProg 64 :=
.seq NamedBody553_236 NamedBody553_241

def NamedBody553_243 : StackLang.HolProg 64 :=
.seq NamedBody553_235 NamedBody553_242

def NamedBody553_244 : StackLang.HolProg 64 :=
.seq NamedBody553_234 NamedBody553_243

def NamedBody553_245 : StackLang.HolProg 64 :=
.seq NamedBody553_181 NamedBody553_244

def NamedBody553_246 : StackLang.HolProg 64 :=
.seq NamedBody553_180 NamedBody553_245

def NamedBody553_247 : StackLang.HolProg 64 :=
.seq NamedBody553_179 NamedBody553_246

def NamedBody553_248 : StackLang.HolProg 64 :=
.seq NamedBody553_178 NamedBody553_247

def NamedBody553_249 : StackLang.HolProg 64 :=
.seq NamedBody553_125 NamedBody553_248

def NamedBody553_250 : StackLang.HolProg 64 :=
.seq NamedBody553_124 NamedBody553_249

def NamedBody553_251 : StackLang.HolProg 64 :=
.seq NamedBody553_123 NamedBody553_250

def NamedBody553_252 : StackLang.HolProg 64 :=
.seq NamedBody553_70 NamedBody553_251

def NamedBody553_253 : StackLang.HolProg 64 :=
.seq NamedBody553_69 NamedBody553_252

def NamedBody553_254 : StackLang.HolProg 64 :=
.seq NamedBody553_68 NamedBody553_253

def NamedBody553_255 : StackLang.HolProg 64 :=
.seq NamedBody553_67 NamedBody553_254

def NamedBody553_256 : StackLang.HolProg 64 :=
.seq NamedBody553_66 NamedBody553_255

def NamedBody553_257 : StackLang.HolProg 64 :=
.seq NamedBody553_65 NamedBody553_256

def NamedBody553_258 : StackLang.HolProg 64 :=
.seq NamedBody553_64 NamedBody553_257

def NamedBody553_259 : StackLang.HolProg 64 :=
.seq NamedBody553_63 NamedBody553_258

def NamedBody553_260 : StackLang.HolProg 64 :=
.seq NamedBody553_62 NamedBody553_259

def NamedBody553_261 : StackLang.HolProg 64 :=
.seq NamedBody553_9 NamedBody553_260

def NamedBody553_262 : StackLang.HolProg 64 :=
.seq NamedBody553_8 NamedBody553_261

def NamedBody553_263 : StackLang.HolProg 64 :=
.seq NamedBody553_7 NamedBody553_262

def NamedBody553_264 : StackLang.HolProg 64 :=
.seq NamedBody553_6 NamedBody553_263

def Named553 : Nat × StackLang.HolProg 64 := (553, NamedBody553_264)
theorem Named553_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed553 = Named553 := by
  kernel_rfl
#print axioms Named553_eq
end InitECandidate.Proofs.BackendStages
