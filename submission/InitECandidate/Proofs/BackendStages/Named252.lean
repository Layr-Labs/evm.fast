import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed252
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody252_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody252_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody252_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody252_3 : StackLang.HolProg 64 :=
.seq NamedBody252_1 NamedBody252_2

def NamedBody252_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody252_3 NamedBody252_4

def NamedBody252_6 : StackLang.HolProg 64 :=
.seq NamedBody252_0 NamedBody252_5

def NamedBody252_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody252_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody252_9 : StackLang.HolProg 64 :=
.seq NamedBody252_7 NamedBody252_8

def NamedBody252_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 516#64)

def NamedBody252_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody252_13 : StackLang.HolProg 64 :=
.seq NamedBody252_11 NamedBody252_12

def NamedBody252_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody252_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody252_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody252_17 : StackLang.HolProg 64 :=
.seq NamedBody252_15 NamedBody252_16

def NamedBody252_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody252_17 NamedBody252_18

def NamedBody252_20 : StackLang.HolProg 64 :=
.seq NamedBody252_14 NamedBody252_19

def NamedBody252_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody252_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody252_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 252 3

def NamedBody252_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody252_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody252_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody252_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody252_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody252_30 : StackLang.HolProg 64 :=
.seq NamedBody252_28 NamedBody252_29

def NamedBody252_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody252_32 : StackLang.HolProg 64 :=
.seq NamedBody252_30 NamedBody252_31

def NamedBody252_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody252_34 : StackLang.HolProg 64 :=
.seq NamedBody252_32 NamedBody252_33

def NamedBody252_35 : StackLang.HolProg 64 :=
.seq NamedBody252_27 NamedBody252_34

def NamedBody252_36 : StackLang.HolProg 64 :=
.seq NamedBody252_26 NamedBody252_35

def NamedBody252_37 : StackLang.HolProg 64 :=
.seq NamedBody252_25 NamedBody252_36

def NamedBody252_38 : StackLang.HolProg 64 :=
.seq NamedBody252_24 NamedBody252_37

def NamedBody252_39 : StackLang.HolProg 64 :=
.seq NamedBody252_23 NamedBody252_38

def NamedBody252_40 : StackLang.HolProg 64 :=
.seq NamedBody252_22 NamedBody252_39

def NamedBody252_41 : StackLang.HolProg 64 :=
.seq NamedBody252_21 NamedBody252_40

def NamedBody252_42 : StackLang.HolProg 64 :=
.seq NamedBody252_20 NamedBody252_41

def NamedBody252_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody252_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody252_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody252_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody252_50 : StackLang.HolProg 64 :=
.seq NamedBody252_48 NamedBody252_49

def NamedBody252_51 : StackLang.HolProg 64 :=
.seq NamedBody252_47 NamedBody252_50

def NamedBody252_52 : StackLang.HolProg 64 :=
.seq NamedBody252_46 NamedBody252_51

def NamedBody252_53 : StackLang.HolProg 64 :=
.seq NamedBody252_45 NamedBody252_52

def NamedBody252_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody252_56 : StackLang.HolProg 64 :=
.seq NamedBody252_54 NamedBody252_55

def NamedBody252_57 : StackLang.HolProg 64 :=
.call (some (NamedBody252_53, 1, 252, 2)) (Sum.inl 94) (some (NamedBody252_56, 252, 3))

def NamedBody252_58 : StackLang.HolProg 64 :=
.seq NamedBody252_44 NamedBody252_57

def NamedBody252_59 : StackLang.HolProg 64 :=
.seq NamedBody252_43 NamedBody252_58

def NamedBody252_60 : StackLang.HolProg 64 :=
.seq NamedBody252_42 NamedBody252_59

def NamedBody252_61 : StackLang.HolProg 64 :=
.seq NamedBody252_13 NamedBody252_60

def NamedBody252_62 : StackLang.HolProg 64 :=
.seq NamedBody252_10 NamedBody252_61

def NamedBody252_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody252_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody252_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody252_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 30#64)

def NamedBody252_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody252_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 517#64)

def NamedBody252_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody252_72 : StackLang.HolProg 64 :=
.seq NamedBody252_70 NamedBody252_71

def NamedBody252_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody252_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody252_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody252_76 : StackLang.HolProg 64 :=
.seq NamedBody252_74 NamedBody252_75

def NamedBody252_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody252_76 NamedBody252_77

def NamedBody252_79 : StackLang.HolProg 64 :=
.seq NamedBody252_73 NamedBody252_78

def NamedBody252_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody252_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody252_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 252 5

def NamedBody252_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody252_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody252_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody252_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody252_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody252_89 : StackLang.HolProg 64 :=
.seq NamedBody252_87 NamedBody252_88

def NamedBody252_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody252_91 : StackLang.HolProg 64 :=
.seq NamedBody252_89 NamedBody252_90

def NamedBody252_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody252_93 : StackLang.HolProg 64 :=
.seq NamedBody252_91 NamedBody252_92

def NamedBody252_94 : StackLang.HolProg 64 :=
.seq NamedBody252_86 NamedBody252_93

def NamedBody252_95 : StackLang.HolProg 64 :=
.seq NamedBody252_85 NamedBody252_94

def NamedBody252_96 : StackLang.HolProg 64 :=
.seq NamedBody252_84 NamedBody252_95

def NamedBody252_97 : StackLang.HolProg 64 :=
.seq NamedBody252_83 NamedBody252_96

def NamedBody252_98 : StackLang.HolProg 64 :=
.seq NamedBody252_82 NamedBody252_97

def NamedBody252_99 : StackLang.HolProg 64 :=
.seq NamedBody252_81 NamedBody252_98

def NamedBody252_100 : StackLang.HolProg 64 :=
.seq NamedBody252_80 NamedBody252_99

def NamedBody252_101 : StackLang.HolProg 64 :=
.seq NamedBody252_79 NamedBody252_100

def NamedBody252_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody252_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody252_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody252_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody252_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody252_110 : StackLang.HolProg 64 :=
.seq NamedBody252_108 NamedBody252_109

def NamedBody252_111 : StackLang.HolProg 64 :=
.seq NamedBody252_107 NamedBody252_110

def NamedBody252_112 : StackLang.HolProg 64 :=
.seq NamedBody252_106 NamedBody252_111

def NamedBody252_113 : StackLang.HolProg 64 :=
.seq NamedBody252_105 NamedBody252_112

def NamedBody252_114 : StackLang.HolProg 64 :=
.seq NamedBody252_104 NamedBody252_113

def NamedBody252_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody252_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody252_117 : StackLang.HolProg 64 :=
.seq NamedBody252_115 NamedBody252_116

def NamedBody252_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody252_119 : StackLang.HolProg 64 :=
.seq NamedBody252_117 NamedBody252_118

def NamedBody252_120 : StackLang.HolProg 64 :=
.call (some (NamedBody252_114, 1, 252, 4)) (Sum.inl 245) (some (NamedBody252_119, 252, 5))

def NamedBody252_121 : StackLang.HolProg 64 :=
.seq NamedBody252_103 NamedBody252_120

def NamedBody252_122 : StackLang.HolProg 64 :=
.seq NamedBody252_102 NamedBody252_121

def NamedBody252_123 : StackLang.HolProg 64 :=
.seq NamedBody252_101 NamedBody252_122

def NamedBody252_124 : StackLang.HolProg 64 :=
.seq NamedBody252_72 NamedBody252_123

def NamedBody252_125 : StackLang.HolProg 64 :=
.seq NamedBody252_69 NamedBody252_124

def NamedBody252_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody252_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_128 : StackLang.HolProg 64 :=
.seq NamedBody252_126 NamedBody252_127

def NamedBody252_129 : StackLang.HolProg 64 :=
.seq NamedBody252_125 NamedBody252_128

def NamedBody252_130 : StackLang.HolProg 64 :=
.seq NamedBody252_68 NamedBody252_129

def NamedBody252_131 : StackLang.HolProg 64 :=
.seq NamedBody252_67 NamedBody252_130

def NamedBody252_132 : StackLang.HolProg 64 :=
.seq NamedBody252_66 NamedBody252_131

def NamedBody252_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody252_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody252_135 : StackLang.HolProg 64 :=
.seq NamedBody252_133 NamedBody252_134

def NamedBody252_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody252_132 NamedBody252_135

def NamedBody252_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody252_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody252_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 31#64)

def NamedBody252_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody252_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 518#64)

def NamedBody252_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody252_145 : StackLang.HolProg 64 :=
.seq NamedBody252_143 NamedBody252_144

def NamedBody252_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody252_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody252_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody252_149 : StackLang.HolProg 64 :=
.seq NamedBody252_147 NamedBody252_148

def NamedBody252_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_151 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody252_149 NamedBody252_150

def NamedBody252_152 : StackLang.HolProg 64 :=
.seq NamedBody252_146 NamedBody252_151

def NamedBody252_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody252_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody252_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 252 7

def NamedBody252_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody252_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody252_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody252_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody252_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody252_162 : StackLang.HolProg 64 :=
.seq NamedBody252_160 NamedBody252_161

def NamedBody252_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody252_164 : StackLang.HolProg 64 :=
.seq NamedBody252_162 NamedBody252_163

def NamedBody252_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody252_166 : StackLang.HolProg 64 :=
.seq NamedBody252_164 NamedBody252_165

def NamedBody252_167 : StackLang.HolProg 64 :=
.seq NamedBody252_159 NamedBody252_166

def NamedBody252_168 : StackLang.HolProg 64 :=
.seq NamedBody252_158 NamedBody252_167

def NamedBody252_169 : StackLang.HolProg 64 :=
.seq NamedBody252_157 NamedBody252_168

def NamedBody252_170 : StackLang.HolProg 64 :=
.seq NamedBody252_156 NamedBody252_169

def NamedBody252_171 : StackLang.HolProg 64 :=
.seq NamedBody252_155 NamedBody252_170

def NamedBody252_172 : StackLang.HolProg 64 :=
.seq NamedBody252_154 NamedBody252_171

def NamedBody252_173 : StackLang.HolProg 64 :=
.seq NamedBody252_153 NamedBody252_172

def NamedBody252_174 : StackLang.HolProg 64 :=
.seq NamedBody252_152 NamedBody252_173

def NamedBody252_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody252_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody252_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody252_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody252_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody252_183 : StackLang.HolProg 64 :=
.seq NamedBody252_181 NamedBody252_182

def NamedBody252_184 : StackLang.HolProg 64 :=
.seq NamedBody252_180 NamedBody252_183

def NamedBody252_185 : StackLang.HolProg 64 :=
.seq NamedBody252_179 NamedBody252_184

def NamedBody252_186 : StackLang.HolProg 64 :=
.seq NamedBody252_178 NamedBody252_185

def NamedBody252_187 : StackLang.HolProg 64 :=
.seq NamedBody252_177 NamedBody252_186

def NamedBody252_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody252_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody252_190 : StackLang.HolProg 64 :=
.seq NamedBody252_188 NamedBody252_189

def NamedBody252_191 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody252_192 : StackLang.HolProg 64 :=
.seq NamedBody252_190 NamedBody252_191

def NamedBody252_193 : StackLang.HolProg 64 :=
.call (some (NamedBody252_187, 1, 252, 6)) (Sum.inl 245) (some (NamedBody252_192, 252, 7))

def NamedBody252_194 : StackLang.HolProg 64 :=
.seq NamedBody252_176 NamedBody252_193

def NamedBody252_195 : StackLang.HolProg 64 :=
.seq NamedBody252_175 NamedBody252_194

def NamedBody252_196 : StackLang.HolProg 64 :=
.seq NamedBody252_174 NamedBody252_195

def NamedBody252_197 : StackLang.HolProg 64 :=
.seq NamedBody252_145 NamedBody252_196

def NamedBody252_198 : StackLang.HolProg 64 :=
.seq NamedBody252_142 NamedBody252_197

def NamedBody252_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody252_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody252_201 : StackLang.HolProg 64 :=
.seq NamedBody252_199 NamedBody252_200

def NamedBody252_202 : StackLang.HolProg 64 :=
.seq NamedBody252_198 NamedBody252_201

def NamedBody252_203 : StackLang.HolProg 64 :=
.seq NamedBody252_141 NamedBody252_202

def NamedBody252_204 : StackLang.HolProg 64 :=
.seq NamedBody252_140 NamedBody252_203

def NamedBody252_205 : StackLang.HolProg 64 :=
.seq NamedBody252_139 NamedBody252_204

def NamedBody252_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody252_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody252_208 : StackLang.HolProg 64 :=
.seq NamedBody252_206 NamedBody252_207

def NamedBody252_209 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody252_205 NamedBody252_208

def NamedBody252_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody252_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody252_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody252_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody252_214 : StackLang.HolProg 64 :=
.seq NamedBody252_212 NamedBody252_213

def NamedBody252_215 : StackLang.HolProg 64 :=
.seq NamedBody252_211 NamedBody252_214

def NamedBody252_216 : StackLang.HolProg 64 :=
.seq NamedBody252_210 NamedBody252_215

def NamedBody252_217 : StackLang.HolProg 64 :=
.seq NamedBody252_209 NamedBody252_216

def NamedBody252_218 : StackLang.HolProg 64 :=
.seq NamedBody252_138 NamedBody252_217

def NamedBody252_219 : StackLang.HolProg 64 :=
.seq NamedBody252_137 NamedBody252_218

def NamedBody252_220 : StackLang.HolProg 64 :=
.seq NamedBody252_136 NamedBody252_219

def NamedBody252_221 : StackLang.HolProg 64 :=
.seq NamedBody252_65 NamedBody252_220

def NamedBody252_222 : StackLang.HolProg 64 :=
.seq NamedBody252_64 NamedBody252_221

def NamedBody252_223 : StackLang.HolProg 64 :=
.seq NamedBody252_63 NamedBody252_222

def NamedBody252_224 : StackLang.HolProg 64 :=
.seq NamedBody252_62 NamedBody252_223

def NamedBody252_225 : StackLang.HolProg 64 :=
.seq NamedBody252_9 NamedBody252_224

def NamedBody252_226 : StackLang.HolProg 64 :=
.seq NamedBody252_6 NamedBody252_225

def Named252 : Nat × StackLang.HolProg 64 := (252, NamedBody252_226)
theorem Named252_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed252 = Named252 := by
  kernel_rfl
#print axioms Named252_eq
end InitECandidate.Proofs.BackendStages
