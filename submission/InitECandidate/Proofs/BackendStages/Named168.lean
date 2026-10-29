import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed168
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody168_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody168_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody168_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody168_3 : StackLang.HolProg 64 :=
.seq NamedBody168_1 NamedBody168_2

def NamedBody168_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody168_3 NamedBody168_4

def NamedBody168_6 : StackLang.HolProg 64 :=
.seq NamedBody168_0 NamedBody168_5

def NamedBody168_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody168_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody168_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 128#64)

def NamedBody168_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody168_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody168_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody168_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody168_16 : StackLang.HolProg 64 :=
.seq NamedBody168_14 NamedBody168_15

def NamedBody168_17 : StackLang.HolProg 64 :=
.seq NamedBody168_13 NamedBody168_16

def NamedBody168_18 : StackLang.HolProg 64 :=
.seq NamedBody168_12 NamedBody168_17

def NamedBody168_19 : StackLang.HolProg 64 :=
.seq NamedBody168_11 NamedBody168_18

def NamedBody168_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody168_19 NamedBody168_20

def NamedBody168_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody168_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody168_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 183#64)

def NamedBody168_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody168_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody168_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551488#64)))

def NamedBody168_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody168_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody168_33 : StackLang.HolProg 64 :=
.seq NamedBody168_31 NamedBody168_32

def NamedBody168_34 : StackLang.HolProg 64 :=
.seq NamedBody168_30 NamedBody168_33

def NamedBody168_35 : StackLang.HolProg 64 :=
.seq NamedBody168_29 NamedBody168_34

def NamedBody168_36 : StackLang.HolProg 64 :=
.seq NamedBody168_28 NamedBody168_35

def NamedBody168_37 : StackLang.HolProg 64 :=
.seq NamedBody168_27 NamedBody168_36

def NamedBody168_38 : StackLang.HolProg 64 :=
.seq NamedBody168_26 NamedBody168_37

def NamedBody168_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody168_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody168_38 NamedBody168_39

def NamedBody168_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody168_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody168_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 191#64)

def NamedBody168_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody168_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551433#64)))

def NamedBody168_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody168_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody168_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody168_52 : StackLang.HolProg 64 :=
.seq NamedBody168_50 NamedBody168_51

def NamedBody168_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 185#64)

def NamedBody168_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody168_56 : StackLang.HolProg 64 :=
.seq NamedBody168_54 NamedBody168_55

def NamedBody168_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody168_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody168_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody168_60 : StackLang.HolProg 64 :=
.seq NamedBody168_58 NamedBody168_59

def NamedBody168_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_62 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody168_60 NamedBody168_61

def NamedBody168_63 : StackLang.HolProg 64 :=
.seq NamedBody168_57 NamedBody168_62

def NamedBody168_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody168_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody168_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 168 3

def NamedBody168_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody168_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody168_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody168_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody168_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody168_73 : StackLang.HolProg 64 :=
.seq NamedBody168_71 NamedBody168_72

def NamedBody168_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody168_75 : StackLang.HolProg 64 :=
.seq NamedBody168_73 NamedBody168_74

def NamedBody168_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody168_77 : StackLang.HolProg 64 :=
.seq NamedBody168_75 NamedBody168_76

def NamedBody168_78 : StackLang.HolProg 64 :=
.seq NamedBody168_70 NamedBody168_77

def NamedBody168_79 : StackLang.HolProg 64 :=
.seq NamedBody168_69 NamedBody168_78

def NamedBody168_80 : StackLang.HolProg 64 :=
.seq NamedBody168_68 NamedBody168_79

def NamedBody168_81 : StackLang.HolProg 64 :=
.seq NamedBody168_67 NamedBody168_80

def NamedBody168_82 : StackLang.HolProg 64 :=
.seq NamedBody168_66 NamedBody168_81

def NamedBody168_83 : StackLang.HolProg 64 :=
.seq NamedBody168_65 NamedBody168_82

def NamedBody168_84 : StackLang.HolProg 64 :=
.seq NamedBody168_64 NamedBody168_83

def NamedBody168_85 : StackLang.HolProg 64 :=
.seq NamedBody168_63 NamedBody168_84

def NamedBody168_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody168_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody168_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody168_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody168_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody168_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody168_95 : StackLang.HolProg 64 :=
.seq NamedBody168_93 NamedBody168_94

def NamedBody168_96 : StackLang.HolProg 64 :=
.seq NamedBody168_92 NamedBody168_95

def NamedBody168_97 : StackLang.HolProg 64 :=
.seq NamedBody168_91 NamedBody168_96

def NamedBody168_98 : StackLang.HolProg 64 :=
.seq NamedBody168_90 NamedBody168_97

def NamedBody168_99 : StackLang.HolProg 64 :=
.seq NamedBody168_89 NamedBody168_98

def NamedBody168_100 : StackLang.HolProg 64 :=
.seq NamedBody168_88 NamedBody168_99

def NamedBody168_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody168_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody168_103 : StackLang.HolProg 64 :=
.seq NamedBody168_101 NamedBody168_102

def NamedBody168_104 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody168_105 : StackLang.HolProg 64 :=
.seq NamedBody168_103 NamedBody168_104

def NamedBody168_106 : StackLang.HolProg 64 :=
.call (some (NamedBody168_100, 1, 168, 2)) (Sum.inl 160) (some (NamedBody168_105, 168, 3))

def NamedBody168_107 : StackLang.HolProg 64 :=
.seq NamedBody168_87 NamedBody168_106

def NamedBody168_108 : StackLang.HolProg 64 :=
.seq NamedBody168_86 NamedBody168_107

def NamedBody168_109 : StackLang.HolProg 64 :=
.seq NamedBody168_85 NamedBody168_108

def NamedBody168_110 : StackLang.HolProg 64 :=
.seq NamedBody168_56 NamedBody168_109

def NamedBody168_111 : StackLang.HolProg 64 :=
.seq NamedBody168_53 NamedBody168_110

def NamedBody168_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody168_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody168_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody168_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody168_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def NamedBody168_119 : StackLang.HolProg 64 :=
.seq NamedBody168_117 NamedBody168_118

def NamedBody168_120 : StackLang.HolProg 64 :=
.seq NamedBody168_116 NamedBody168_119

def NamedBody168_121 : StackLang.HolProg 64 :=
.seq NamedBody168_115 NamedBody168_120

def NamedBody168_122 : StackLang.HolProg 64 :=
.seq NamedBody168_114 NamedBody168_121

def NamedBody168_123 : StackLang.HolProg 64 :=
.seq NamedBody168_113 NamedBody168_122

def NamedBody168_124 : StackLang.HolProg 64 :=
.seq NamedBody168_112 NamedBody168_123

def NamedBody168_125 : StackLang.HolProg 64 :=
.seq NamedBody168_111 NamedBody168_124

def NamedBody168_126 : StackLang.HolProg 64 :=
.seq NamedBody168_52 NamedBody168_125

def NamedBody168_127 : StackLang.HolProg 64 :=
.seq NamedBody168_49 NamedBody168_126

def NamedBody168_128 : StackLang.HolProg 64 :=
.seq NamedBody168_48 NamedBody168_127

def NamedBody168_129 : StackLang.HolProg 64 :=
.seq NamedBody168_47 NamedBody168_128

def NamedBody168_130 : StackLang.HolProg 64 :=
.seq NamedBody168_46 NamedBody168_129

def NamedBody168_131 : StackLang.HolProg 64 :=
.seq NamedBody168_45 NamedBody168_130

def NamedBody168_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody168_131 NamedBody168_132

def NamedBody168_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody168_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody168_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 247#64)

def NamedBody168_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody168_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody168_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551424#64)))

def NamedBody168_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody168_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody168_145 : StackLang.HolProg 64 :=
.seq NamedBody168_143 NamedBody168_144

def NamedBody168_146 : StackLang.HolProg 64 :=
.seq NamedBody168_142 NamedBody168_145

def NamedBody168_147 : StackLang.HolProg 64 :=
.seq NamedBody168_141 NamedBody168_146

def NamedBody168_148 : StackLang.HolProg 64 :=
.seq NamedBody168_140 NamedBody168_147

def NamedBody168_149 : StackLang.HolProg 64 :=
.seq NamedBody168_139 NamedBody168_148

def NamedBody168_150 : StackLang.HolProg 64 :=
.seq NamedBody168_138 NamedBody168_149

def NamedBody168_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody168_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody168_150 NamedBody168_151

def NamedBody168_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody168_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody168_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551369#64)))

def NamedBody168_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody168_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody168_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody168_161 : StackLang.HolProg 64 :=
.seq NamedBody168_159 NamedBody168_160

def NamedBody168_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 186#64)

def NamedBody168_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody168_165 : StackLang.HolProg 64 :=
.seq NamedBody168_163 NamedBody168_164

def NamedBody168_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody168_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody168_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody168_169 : StackLang.HolProg 64 :=
.seq NamedBody168_167 NamedBody168_168

def NamedBody168_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody168_169 NamedBody168_170

def NamedBody168_172 : StackLang.HolProg 64 :=
.seq NamedBody168_166 NamedBody168_171

def NamedBody168_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody168_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody168_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 168 5

def NamedBody168_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody168_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody168_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody168_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody168_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody168_182 : StackLang.HolProg 64 :=
.seq NamedBody168_180 NamedBody168_181

def NamedBody168_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody168_184 : StackLang.HolProg 64 :=
.seq NamedBody168_182 NamedBody168_183

def NamedBody168_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody168_186 : StackLang.HolProg 64 :=
.seq NamedBody168_184 NamedBody168_185

def NamedBody168_187 : StackLang.HolProg 64 :=
.seq NamedBody168_179 NamedBody168_186

def NamedBody168_188 : StackLang.HolProg 64 :=
.seq NamedBody168_178 NamedBody168_187

def NamedBody168_189 : StackLang.HolProg 64 :=
.seq NamedBody168_177 NamedBody168_188

def NamedBody168_190 : StackLang.HolProg 64 :=
.seq NamedBody168_176 NamedBody168_189

def NamedBody168_191 : StackLang.HolProg 64 :=
.seq NamedBody168_175 NamedBody168_190

def NamedBody168_192 : StackLang.HolProg 64 :=
.seq NamedBody168_174 NamedBody168_191

def NamedBody168_193 : StackLang.HolProg 64 :=
.seq NamedBody168_173 NamedBody168_192

def NamedBody168_194 : StackLang.HolProg 64 :=
.seq NamedBody168_172 NamedBody168_193

def NamedBody168_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody168_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody168_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody168_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody168_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody168_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody168_204 : StackLang.HolProg 64 :=
.seq NamedBody168_202 NamedBody168_203

def NamedBody168_205 : StackLang.HolProg 64 :=
.seq NamedBody168_201 NamedBody168_204

def NamedBody168_206 : StackLang.HolProg 64 :=
.seq NamedBody168_200 NamedBody168_205

def NamedBody168_207 : StackLang.HolProg 64 :=
.seq NamedBody168_199 NamedBody168_206

def NamedBody168_208 : StackLang.HolProg 64 :=
.seq NamedBody168_198 NamedBody168_207

def NamedBody168_209 : StackLang.HolProg 64 :=
.seq NamedBody168_197 NamedBody168_208

def NamedBody168_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody168_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody168_212 : StackLang.HolProg 64 :=
.seq NamedBody168_210 NamedBody168_211

def NamedBody168_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody168_214 : StackLang.HolProg 64 :=
.seq NamedBody168_212 NamedBody168_213

def NamedBody168_215 : StackLang.HolProg 64 :=
.call (some (NamedBody168_209, 1, 168, 4)) (Sum.inl 160) (some (NamedBody168_214, 168, 5))

def NamedBody168_216 : StackLang.HolProg 64 :=
.seq NamedBody168_196 NamedBody168_215

def NamedBody168_217 : StackLang.HolProg 64 :=
.seq NamedBody168_195 NamedBody168_216

def NamedBody168_218 : StackLang.HolProg 64 :=
.seq NamedBody168_194 NamedBody168_217

def NamedBody168_219 : StackLang.HolProg 64 :=
.seq NamedBody168_165 NamedBody168_218

def NamedBody168_220 : StackLang.HolProg 64 :=
.seq NamedBody168_162 NamedBody168_219

def NamedBody168_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody168_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody168_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody168_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody168_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody168_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody168_228 : StackLang.HolProg 64 :=
.seq NamedBody168_226 NamedBody168_227

def NamedBody168_229 : StackLang.HolProg 64 :=
.seq NamedBody168_225 NamedBody168_228

def NamedBody168_230 : StackLang.HolProg 64 :=
.seq NamedBody168_224 NamedBody168_229

def NamedBody168_231 : StackLang.HolProg 64 :=
.seq NamedBody168_223 NamedBody168_230

def NamedBody168_232 : StackLang.HolProg 64 :=
.seq NamedBody168_222 NamedBody168_231

def NamedBody168_233 : StackLang.HolProg 64 :=
.seq NamedBody168_221 NamedBody168_232

def NamedBody168_234 : StackLang.HolProg 64 :=
.seq NamedBody168_220 NamedBody168_233

def NamedBody168_235 : StackLang.HolProg 64 :=
.seq NamedBody168_161 NamedBody168_234

def NamedBody168_236 : StackLang.HolProg 64 :=
.seq NamedBody168_158 NamedBody168_235

def NamedBody168_237 : StackLang.HolProg 64 :=
.seq NamedBody168_157 NamedBody168_236

def NamedBody168_238 : StackLang.HolProg 64 :=
.seq NamedBody168_156 NamedBody168_237

def NamedBody168_239 : StackLang.HolProg 64 :=
.seq NamedBody168_155 NamedBody168_238

def NamedBody168_240 : StackLang.HolProg 64 :=
.seq NamedBody168_154 NamedBody168_239

def NamedBody168_241 : StackLang.HolProg 64 :=
.seq NamedBody168_153 NamedBody168_240

def NamedBody168_242 : StackLang.HolProg 64 :=
.seq NamedBody168_152 NamedBody168_241

def NamedBody168_243 : StackLang.HolProg 64 :=
.seq NamedBody168_137 NamedBody168_242

def NamedBody168_244 : StackLang.HolProg 64 :=
.seq NamedBody168_136 NamedBody168_243

def NamedBody168_245 : StackLang.HolProg 64 :=
.seq NamedBody168_135 NamedBody168_244

def NamedBody168_246 : StackLang.HolProg 64 :=
.seq NamedBody168_134 NamedBody168_245

def NamedBody168_247 : StackLang.HolProg 64 :=
.seq NamedBody168_133 NamedBody168_246

def NamedBody168_248 : StackLang.HolProg 64 :=
.seq NamedBody168_44 NamedBody168_247

def NamedBody168_249 : StackLang.HolProg 64 :=
.seq NamedBody168_43 NamedBody168_248

def NamedBody168_250 : StackLang.HolProg 64 :=
.seq NamedBody168_42 NamedBody168_249

def NamedBody168_251 : StackLang.HolProg 64 :=
.seq NamedBody168_41 NamedBody168_250

def NamedBody168_252 : StackLang.HolProg 64 :=
.seq NamedBody168_40 NamedBody168_251

def NamedBody168_253 : StackLang.HolProg 64 :=
.seq NamedBody168_25 NamedBody168_252

def NamedBody168_254 : StackLang.HolProg 64 :=
.seq NamedBody168_24 NamedBody168_253

def NamedBody168_255 : StackLang.HolProg 64 :=
.seq NamedBody168_23 NamedBody168_254

def NamedBody168_256 : StackLang.HolProg 64 :=
.seq NamedBody168_22 NamedBody168_255

def NamedBody168_257 : StackLang.HolProg 64 :=
.seq NamedBody168_21 NamedBody168_256

def NamedBody168_258 : StackLang.HolProg 64 :=
.seq NamedBody168_10 NamedBody168_257

def NamedBody168_259 : StackLang.HolProg 64 :=
.seq NamedBody168_9 NamedBody168_258

def NamedBody168_260 : StackLang.HolProg 64 :=
.seq NamedBody168_8 NamedBody168_259

def NamedBody168_261 : StackLang.HolProg 64 :=
.seq NamedBody168_7 NamedBody168_260

def NamedBody168_262 : StackLang.HolProg 64 :=
.seq NamedBody168_6 NamedBody168_261

def Named168 : Nat × StackLang.HolProg 64 := (168, NamedBody168_262)
theorem Named168_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed168 = Named168 := by
  kernel_rfl
#print axioms Named168_eq
end InitECandidate.Proofs.BackendStages
