import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed416
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody416_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody416_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody416_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody416_3 : StackLang.HolProg 64 :=
.seq NamedBody416_1 NamedBody416_2

def NamedBody416_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody416_3 NamedBody416_4

def NamedBody416_6 : StackLang.HolProg 64 :=
.seq NamedBody416_0 NamedBody416_5

def NamedBody416_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody416_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody416_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody416_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody416_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody416_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody416_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody416_15 : StackLang.HolProg 64 :=
.seq NamedBody416_13 NamedBody416_14

def NamedBody416_16 : StackLang.HolProg 64 :=
.seq NamedBody416_12 NamedBody416_15

def NamedBody416_17 : StackLang.HolProg 64 :=
.seq NamedBody416_11 NamedBody416_16

def NamedBody416_18 : StackLang.HolProg 64 :=
.seq NamedBody416_10 NamedBody416_17

def NamedBody416_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody416_18 NamedBody416_19

def NamedBody416_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody416_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody416_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 48#64))

def NamedBody416_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody416_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody416_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody416_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551480#64))

def NamedBody416_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody416_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody416_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody416_32 : StackLang.HolProg 64 :=
.seq NamedBody416_30 NamedBody416_31

def NamedBody416_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1241#64)

def NamedBody416_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody416_36 : StackLang.HolProg 64 :=
.seq NamedBody416_34 NamedBody416_35

def NamedBody416_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody416_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody416_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody416_40 : StackLang.HolProg 64 :=
.seq NamedBody416_38 NamedBody416_39

def NamedBody416_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody416_40 NamedBody416_41

def NamedBody416_43 : StackLang.HolProg 64 :=
.seq NamedBody416_37 NamedBody416_42

def NamedBody416_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody416_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody416_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 416 3

def NamedBody416_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody416_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody416_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody416_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody416_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody416_53 : StackLang.HolProg 64 :=
.seq NamedBody416_51 NamedBody416_52

def NamedBody416_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody416_55 : StackLang.HolProg 64 :=
.seq NamedBody416_53 NamedBody416_54

def NamedBody416_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody416_57 : StackLang.HolProg 64 :=
.seq NamedBody416_55 NamedBody416_56

def NamedBody416_58 : StackLang.HolProg 64 :=
.seq NamedBody416_50 NamedBody416_57

def NamedBody416_59 : StackLang.HolProg 64 :=
.seq NamedBody416_49 NamedBody416_58

def NamedBody416_60 : StackLang.HolProg 64 :=
.seq NamedBody416_48 NamedBody416_59

def NamedBody416_61 : StackLang.HolProg 64 :=
.seq NamedBody416_47 NamedBody416_60

def NamedBody416_62 : StackLang.HolProg 64 :=
.seq NamedBody416_46 NamedBody416_61

def NamedBody416_63 : StackLang.HolProg 64 :=
.seq NamedBody416_45 NamedBody416_62

def NamedBody416_64 : StackLang.HolProg 64 :=
.seq NamedBody416_44 NamedBody416_63

def NamedBody416_65 : StackLang.HolProg 64 :=
.seq NamedBody416_43 NamedBody416_64

def NamedBody416_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody416_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody416_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody416_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody416_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody416_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody416_75 : StackLang.HolProg 64 :=
.seq NamedBody416_73 NamedBody416_74

def NamedBody416_76 : StackLang.HolProg 64 :=
.seq NamedBody416_72 NamedBody416_75

def NamedBody416_77 : StackLang.HolProg 64 :=
.seq NamedBody416_71 NamedBody416_76

def NamedBody416_78 : StackLang.HolProg 64 :=
.seq NamedBody416_70 NamedBody416_77

def NamedBody416_79 : StackLang.HolProg 64 :=
.seq NamedBody416_69 NamedBody416_78

def NamedBody416_80 : StackLang.HolProg 64 :=
.seq NamedBody416_68 NamedBody416_79

def NamedBody416_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody416_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody416_83 : StackLang.HolProg 64 :=
.seq NamedBody416_81 NamedBody416_82

def NamedBody416_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody416_85 : StackLang.HolProg 64 :=
.seq NamedBody416_83 NamedBody416_84

def NamedBody416_86 : StackLang.HolProg 64 :=
.call (some (NamedBody416_80, 1, 416, 2)) (Sum.inl 79) (some (NamedBody416_85, 416, 3))

def NamedBody416_87 : StackLang.HolProg 64 :=
.seq NamedBody416_67 NamedBody416_86

def NamedBody416_88 : StackLang.HolProg 64 :=
.seq NamedBody416_66 NamedBody416_87

def NamedBody416_89 : StackLang.HolProg 64 :=
.seq NamedBody416_65 NamedBody416_88

def NamedBody416_90 : StackLang.HolProg 64 :=
.seq NamedBody416_36 NamedBody416_89

def NamedBody416_91 : StackLang.HolProg 64 :=
.seq NamedBody416_33 NamedBody416_90

def NamedBody416_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody416_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody416_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody416_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody416_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody416_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody416_100 : StackLang.HolProg 64 :=
.seq NamedBody416_98 NamedBody416_99

def NamedBody416_101 : StackLang.HolProg 64 :=
.seq NamedBody416_97 NamedBody416_100

def NamedBody416_102 : StackLang.HolProg 64 :=
.seq NamedBody416_96 NamedBody416_101

def NamedBody416_103 : StackLang.HolProg 64 :=
.seq NamedBody416_95 NamedBody416_102

def NamedBody416_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody416_103 NamedBody416_104

def NamedBody416_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody416_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody416_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody416_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody416_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody416_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody416_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody416_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1242#64)

def NamedBody416_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody416_120 : StackLang.HolProg 64 :=
.seq NamedBody416_118 NamedBody416_119

def NamedBody416_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody416_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody416_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody416_124 : StackLang.HolProg 64 :=
.seq NamedBody416_122 NamedBody416_123

def NamedBody416_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_126 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody416_124 NamedBody416_125

def NamedBody416_127 : StackLang.HolProg 64 :=
.seq NamedBody416_121 NamedBody416_126

def NamedBody416_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody416_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody416_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 416 5

def NamedBody416_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody416_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody416_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody416_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody416_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody416_137 : StackLang.HolProg 64 :=
.seq NamedBody416_135 NamedBody416_136

def NamedBody416_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody416_139 : StackLang.HolProg 64 :=
.seq NamedBody416_137 NamedBody416_138

def NamedBody416_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody416_141 : StackLang.HolProg 64 :=
.seq NamedBody416_139 NamedBody416_140

def NamedBody416_142 : StackLang.HolProg 64 :=
.seq NamedBody416_134 NamedBody416_141

def NamedBody416_143 : StackLang.HolProg 64 :=
.seq NamedBody416_133 NamedBody416_142

def NamedBody416_144 : StackLang.HolProg 64 :=
.seq NamedBody416_132 NamedBody416_143

def NamedBody416_145 : StackLang.HolProg 64 :=
.seq NamedBody416_131 NamedBody416_144

def NamedBody416_146 : StackLang.HolProg 64 :=
.seq NamedBody416_130 NamedBody416_145

def NamedBody416_147 : StackLang.HolProg 64 :=
.seq NamedBody416_129 NamedBody416_146

def NamedBody416_148 : StackLang.HolProg 64 :=
.seq NamedBody416_128 NamedBody416_147

def NamedBody416_149 : StackLang.HolProg 64 :=
.seq NamedBody416_127 NamedBody416_148

def NamedBody416_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody416_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody416_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody416_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody416_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody416_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody416_158 : StackLang.HolProg 64 :=
.seq NamedBody416_156 NamedBody416_157

def NamedBody416_159 : StackLang.HolProg 64 :=
.seq NamedBody416_155 NamedBody416_158

def NamedBody416_160 : StackLang.HolProg 64 :=
.seq NamedBody416_154 NamedBody416_159

def NamedBody416_161 : StackLang.HolProg 64 :=
.seq NamedBody416_153 NamedBody416_160

def NamedBody416_162 : StackLang.HolProg 64 :=
.seq NamedBody416_152 NamedBody416_161

def NamedBody416_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody416_164 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody416_165 : StackLang.HolProg 64 :=
.seq NamedBody416_163 NamedBody416_164

def NamedBody416_166 : StackLang.HolProg 64 :=
.call (some (NamedBody416_162, 1, 416, 4)) (Sum.inl 102) (some (NamedBody416_165, 416, 5))

def NamedBody416_167 : StackLang.HolProg 64 :=
.seq NamedBody416_151 NamedBody416_166

def NamedBody416_168 : StackLang.HolProg 64 :=
.seq NamedBody416_150 NamedBody416_167

def NamedBody416_169 : StackLang.HolProg 64 :=
.seq NamedBody416_149 NamedBody416_168

def NamedBody416_170 : StackLang.HolProg 64 :=
.seq NamedBody416_120 NamedBody416_169

def NamedBody416_171 : StackLang.HolProg 64 :=
.seq NamedBody416_117 NamedBody416_170

def NamedBody416_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody416_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody416_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody416_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody416_176 : StackLang.HolProg 64 :=
.seq NamedBody416_174 NamedBody416_175

def NamedBody416_177 : StackLang.HolProg 64 :=
.seq NamedBody416_173 NamedBody416_176

def NamedBody416_178 : StackLang.HolProg 64 :=
.seq NamedBody416_172 NamedBody416_177

def NamedBody416_179 : StackLang.HolProg 64 :=
.seq NamedBody416_171 NamedBody416_178

def NamedBody416_180 : StackLang.HolProg 64 :=
.seq NamedBody416_116 NamedBody416_179

def NamedBody416_181 : StackLang.HolProg 64 :=
.seq NamedBody416_115 NamedBody416_180

def NamedBody416_182 : StackLang.HolProg 64 :=
.seq NamedBody416_114 NamedBody416_181

def NamedBody416_183 : StackLang.HolProg 64 :=
.seq NamedBody416_113 NamedBody416_182

def NamedBody416_184 : StackLang.HolProg 64 :=
.seq NamedBody416_112 NamedBody416_183

def NamedBody416_185 : StackLang.HolProg 64 :=
.seq NamedBody416_111 NamedBody416_184

def NamedBody416_186 : StackLang.HolProg 64 :=
.seq NamedBody416_110 NamedBody416_185

def NamedBody416_187 : StackLang.HolProg 64 :=
.seq NamedBody416_109 NamedBody416_186

def NamedBody416_188 : StackLang.HolProg 64 :=
.seq NamedBody416_108 NamedBody416_187

def NamedBody416_189 : StackLang.HolProg 64 :=
.seq NamedBody416_107 NamedBody416_188

def NamedBody416_190 : StackLang.HolProg 64 :=
.seq NamedBody416_106 NamedBody416_189

def NamedBody416_191 : StackLang.HolProg 64 :=
.seq NamedBody416_105 NamedBody416_190

def NamedBody416_192 : StackLang.HolProg 64 :=
.seq NamedBody416_94 NamedBody416_191

def NamedBody416_193 : StackLang.HolProg 64 :=
.seq NamedBody416_93 NamedBody416_192

def NamedBody416_194 : StackLang.HolProg 64 :=
.seq NamedBody416_92 NamedBody416_193

def NamedBody416_195 : StackLang.HolProg 64 :=
.seq NamedBody416_91 NamedBody416_194

def NamedBody416_196 : StackLang.HolProg 64 :=
.seq NamedBody416_32 NamedBody416_195

def NamedBody416_197 : StackLang.HolProg 64 :=
.seq NamedBody416_29 NamedBody416_196

def NamedBody416_198 : StackLang.HolProg 64 :=
.seq NamedBody416_28 NamedBody416_197

def NamedBody416_199 : StackLang.HolProg 64 :=
.seq NamedBody416_27 NamedBody416_198

def NamedBody416_200 : StackLang.HolProg 64 :=
.seq NamedBody416_26 NamedBody416_199

def NamedBody416_201 : StackLang.HolProg 64 :=
.seq NamedBody416_25 NamedBody416_200

def NamedBody416_202 : StackLang.HolProg 64 :=
.seq NamedBody416_24 NamedBody416_201

def NamedBody416_203 : StackLang.HolProg 64 :=
.seq NamedBody416_23 NamedBody416_202

def NamedBody416_204 : StackLang.HolProg 64 :=
.seq NamedBody416_22 NamedBody416_203

def NamedBody416_205 : StackLang.HolProg 64 :=
.seq NamedBody416_21 NamedBody416_204

def NamedBody416_206 : StackLang.HolProg 64 :=
.seq NamedBody416_20 NamedBody416_205

def NamedBody416_207 : StackLang.HolProg 64 :=
.seq NamedBody416_9 NamedBody416_206

def NamedBody416_208 : StackLang.HolProg 64 :=
.seq NamedBody416_8 NamedBody416_207

def NamedBody416_209 : StackLang.HolProg 64 :=
.seq NamedBody416_7 NamedBody416_208

def NamedBody416_210 : StackLang.HolProg 64 :=
.seq NamedBody416_6 NamedBody416_209

def Named416 : Nat × StackLang.HolProg 64 := (416, NamedBody416_210)
theorem Named416_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed416 = Named416 := by
  kernel_rfl
#print axioms Named416_eq
end InitECandidate.Proofs.BackendStages
