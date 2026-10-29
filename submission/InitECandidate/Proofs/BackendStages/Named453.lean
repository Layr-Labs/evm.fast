import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed453
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody453_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody453_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody453_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody453_3 : StackLang.HolProg 64 :=
.seq NamedBody453_1 NamedBody453_2

def NamedBody453_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody453_3 NamedBody453_4

def NamedBody453_6 : StackLang.HolProg 64 :=
.seq NamedBody453_0 NamedBody453_5

def NamedBody453_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody453_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody453_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody453_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody453_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551400#64))

def NamedBody453_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody453_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody453_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody453_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody453_16 : StackLang.HolProg 64 :=
.seq NamedBody453_14 NamedBody453_15

def NamedBody453_17 : StackLang.HolProg 64 :=
.seq NamedBody453_13 NamedBody453_16

def NamedBody453_18 : StackLang.HolProg 64 :=
.seq NamedBody453_12 NamedBody453_17

def NamedBody453_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1376#64)

def NamedBody453_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody453_22 : StackLang.HolProg 64 :=
.seq NamedBody453_20 NamedBody453_21

def NamedBody453_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody453_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody453_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody453_26 : StackLang.HolProg 64 :=
.seq NamedBody453_24 NamedBody453_25

def NamedBody453_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody453_26 NamedBody453_27

def NamedBody453_29 : StackLang.HolProg 64 :=
.seq NamedBody453_23 NamedBody453_28

def NamedBody453_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody453_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody453_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 3

def NamedBody453_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody453_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody453_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody453_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody453_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody453_39 : StackLang.HolProg 64 :=
.seq NamedBody453_37 NamedBody453_38

def NamedBody453_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody453_41 : StackLang.HolProg 64 :=
.seq NamedBody453_39 NamedBody453_40

def NamedBody453_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody453_43 : StackLang.HolProg 64 :=
.seq NamedBody453_41 NamedBody453_42

def NamedBody453_44 : StackLang.HolProg 64 :=
.seq NamedBody453_36 NamedBody453_43

def NamedBody453_45 : StackLang.HolProg 64 :=
.seq NamedBody453_35 NamedBody453_44

def NamedBody453_46 : StackLang.HolProg 64 :=
.seq NamedBody453_34 NamedBody453_45

def NamedBody453_47 : StackLang.HolProg 64 :=
.seq NamedBody453_33 NamedBody453_46

def NamedBody453_48 : StackLang.HolProg 64 :=
.seq NamedBody453_32 NamedBody453_47

def NamedBody453_49 : StackLang.HolProg 64 :=
.seq NamedBody453_31 NamedBody453_48

def NamedBody453_50 : StackLang.HolProg 64 :=
.seq NamedBody453_30 NamedBody453_49

def NamedBody453_51 : StackLang.HolProg 64 :=
.seq NamedBody453_29 NamedBody453_50

def NamedBody453_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody453_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody453_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody453_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody453_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody453_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody453_61 : StackLang.HolProg 64 :=
.seq NamedBody453_59 NamedBody453_60

def NamedBody453_62 : StackLang.HolProg 64 :=
.seq NamedBody453_58 NamedBody453_61

def NamedBody453_63 : StackLang.HolProg 64 :=
.seq NamedBody453_57 NamedBody453_62

def NamedBody453_64 : StackLang.HolProg 64 :=
.seq NamedBody453_56 NamedBody453_63

def NamedBody453_65 : StackLang.HolProg 64 :=
.seq NamedBody453_55 NamedBody453_64

def NamedBody453_66 : StackLang.HolProg 64 :=
.seq NamedBody453_54 NamedBody453_65

def NamedBody453_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody453_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody453_69 : StackLang.HolProg 64 :=
.seq NamedBody453_67 NamedBody453_68

def NamedBody453_70 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody453_71 : StackLang.HolProg 64 :=
.seq NamedBody453_69 NamedBody453_70

def NamedBody453_72 : StackLang.HolProg 64 :=
.call (some (NamedBody453_66, 1, 453, 2)) (Sum.inl 186) (some (NamedBody453_71, 453, 3))

def NamedBody453_73 : StackLang.HolProg 64 :=
.seq NamedBody453_53 NamedBody453_72

def NamedBody453_74 : StackLang.HolProg 64 :=
.seq NamedBody453_52 NamedBody453_73

def NamedBody453_75 : StackLang.HolProg 64 :=
.seq NamedBody453_51 NamedBody453_74

def NamedBody453_76 : StackLang.HolProg 64 :=
.seq NamedBody453_22 NamedBody453_75

def NamedBody453_77 : StackLang.HolProg 64 :=
.seq NamedBody453_19 NamedBody453_76

def NamedBody453_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody453_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody453_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody453_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody453_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody453_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody453_86 : StackLang.HolProg 64 :=
.seq NamedBody453_84 NamedBody453_85

def NamedBody453_87 : StackLang.HolProg 64 :=
.seq NamedBody453_83 NamedBody453_86

def NamedBody453_88 : StackLang.HolProg 64 :=
.seq NamedBody453_82 NamedBody453_87

def NamedBody453_89 : StackLang.HolProg 64 :=
.seq NamedBody453_81 NamedBody453_88

def NamedBody453_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody453_89 NamedBody453_90

def NamedBody453_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody453_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody453_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody453_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody453_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody453_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody453_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody453_100 : StackLang.HolProg 64 :=
.seq NamedBody453_98 NamedBody453_99

def NamedBody453_101 : StackLang.HolProg 64 :=
.seq NamedBody453_97 NamedBody453_100

def NamedBody453_102 : StackLang.HolProg 64 :=
.seq NamedBody453_96 NamedBody453_101

def NamedBody453_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1377#64)

def NamedBody453_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody453_106 : StackLang.HolProg 64 :=
.seq NamedBody453_104 NamedBody453_105

def NamedBody453_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody453_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody453_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody453_110 : StackLang.HolProg 64 :=
.seq NamedBody453_108 NamedBody453_109

def NamedBody453_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody453_110 NamedBody453_111

def NamedBody453_113 : StackLang.HolProg 64 :=
.seq NamedBody453_107 NamedBody453_112

def NamedBody453_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody453_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody453_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 5

def NamedBody453_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody453_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody453_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody453_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody453_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody453_123 : StackLang.HolProg 64 :=
.seq NamedBody453_121 NamedBody453_122

def NamedBody453_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody453_125 : StackLang.HolProg 64 :=
.seq NamedBody453_123 NamedBody453_124

def NamedBody453_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody453_127 : StackLang.HolProg 64 :=
.seq NamedBody453_125 NamedBody453_126

def NamedBody453_128 : StackLang.HolProg 64 :=
.seq NamedBody453_120 NamedBody453_127

def NamedBody453_129 : StackLang.HolProg 64 :=
.seq NamedBody453_119 NamedBody453_128

def NamedBody453_130 : StackLang.HolProg 64 :=
.seq NamedBody453_118 NamedBody453_129

def NamedBody453_131 : StackLang.HolProg 64 :=
.seq NamedBody453_117 NamedBody453_130

def NamedBody453_132 : StackLang.HolProg 64 :=
.seq NamedBody453_116 NamedBody453_131

def NamedBody453_133 : StackLang.HolProg 64 :=
.seq NamedBody453_115 NamedBody453_132

def NamedBody453_134 : StackLang.HolProg 64 :=
.seq NamedBody453_114 NamedBody453_133

def NamedBody453_135 : StackLang.HolProg 64 :=
.seq NamedBody453_113 NamedBody453_134

def NamedBody453_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody453_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody453_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody453_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody453_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody453_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody453_145 : StackLang.HolProg 64 :=
.seq NamedBody453_143 NamedBody453_144

def NamedBody453_146 : StackLang.HolProg 64 :=
.seq NamedBody453_142 NamedBody453_145

def NamedBody453_147 : StackLang.HolProg 64 :=
.seq NamedBody453_141 NamedBody453_146

def NamedBody453_148 : StackLang.HolProg 64 :=
.seq NamedBody453_140 NamedBody453_147

def NamedBody453_149 : StackLang.HolProg 64 :=
.seq NamedBody453_139 NamedBody453_148

def NamedBody453_150 : StackLang.HolProg 64 :=
.seq NamedBody453_138 NamedBody453_149

def NamedBody453_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody453_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody453_153 : StackLang.HolProg 64 :=
.seq NamedBody453_151 NamedBody453_152

def NamedBody453_154 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody453_155 : StackLang.HolProg 64 :=
.seq NamedBody453_153 NamedBody453_154

def NamedBody453_156 : StackLang.HolProg 64 :=
.call (some (NamedBody453_150, 1, 453, 4)) (Sum.inl 186) (some (NamedBody453_155, 453, 5))

def NamedBody453_157 : StackLang.HolProg 64 :=
.seq NamedBody453_137 NamedBody453_156

def NamedBody453_158 : StackLang.HolProg 64 :=
.seq NamedBody453_136 NamedBody453_157

def NamedBody453_159 : StackLang.HolProg 64 :=
.seq NamedBody453_135 NamedBody453_158

def NamedBody453_160 : StackLang.HolProg 64 :=
.seq NamedBody453_106 NamedBody453_159

def NamedBody453_161 : StackLang.HolProg 64 :=
.seq NamedBody453_103 NamedBody453_160

def NamedBody453_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody453_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody453_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody453_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody453_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody453_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody453_170 : StackLang.HolProg 64 :=
.seq NamedBody453_168 NamedBody453_169

def NamedBody453_171 : StackLang.HolProg 64 :=
.seq NamedBody453_167 NamedBody453_170

def NamedBody453_172 : StackLang.HolProg 64 :=
.seq NamedBody453_166 NamedBody453_171

def NamedBody453_173 : StackLang.HolProg 64 :=
.seq NamedBody453_165 NamedBody453_172

def NamedBody453_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_175 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody453_173 NamedBody453_174

def NamedBody453_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody453_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody453_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody453_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 40#64)

def NamedBody453_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody453_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody453_182 : StackLang.HolProg 64 :=
.seq NamedBody453_180 NamedBody453_181

def NamedBody453_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1378#64)

def NamedBody453_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody453_186 : StackLang.HolProg 64 :=
.seq NamedBody453_184 NamedBody453_185

def NamedBody453_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody453_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody453_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody453_190 : StackLang.HolProg 64 :=
.seq NamedBody453_188 NamedBody453_189

def NamedBody453_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_192 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody453_190 NamedBody453_191

def NamedBody453_193 : StackLang.HolProg 64 :=
.seq NamedBody453_187 NamedBody453_192

def NamedBody453_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody453_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody453_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 7

def NamedBody453_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody453_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody453_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody453_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody453_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody453_203 : StackLang.HolProg 64 :=
.seq NamedBody453_201 NamedBody453_202

def NamedBody453_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody453_205 : StackLang.HolProg 64 :=
.seq NamedBody453_203 NamedBody453_204

def NamedBody453_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody453_207 : StackLang.HolProg 64 :=
.seq NamedBody453_205 NamedBody453_206

def NamedBody453_208 : StackLang.HolProg 64 :=
.seq NamedBody453_200 NamedBody453_207

def NamedBody453_209 : StackLang.HolProg 64 :=
.seq NamedBody453_199 NamedBody453_208

def NamedBody453_210 : StackLang.HolProg 64 :=
.seq NamedBody453_198 NamedBody453_209

def NamedBody453_211 : StackLang.HolProg 64 :=
.seq NamedBody453_197 NamedBody453_210

def NamedBody453_212 : StackLang.HolProg 64 :=
.seq NamedBody453_196 NamedBody453_211

def NamedBody453_213 : StackLang.HolProg 64 :=
.seq NamedBody453_195 NamedBody453_212

def NamedBody453_214 : StackLang.HolProg 64 :=
.seq NamedBody453_194 NamedBody453_213

def NamedBody453_215 : StackLang.HolProg 64 :=
.seq NamedBody453_193 NamedBody453_214

def NamedBody453_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody453_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody453_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody453_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody453_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody453_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody453_225 : StackLang.HolProg 64 :=
.seq NamedBody453_223 NamedBody453_224

def NamedBody453_226 : StackLang.HolProg 64 :=
.seq NamedBody453_222 NamedBody453_225

def NamedBody453_227 : StackLang.HolProg 64 :=
.seq NamedBody453_221 NamedBody453_226

def NamedBody453_228 : StackLang.HolProg 64 :=
.seq NamedBody453_220 NamedBody453_227

def NamedBody453_229 : StackLang.HolProg 64 :=
.seq NamedBody453_219 NamedBody453_228

def NamedBody453_230 : StackLang.HolProg 64 :=
.seq NamedBody453_218 NamedBody453_229

def NamedBody453_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody453_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody453_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody453_234 : StackLang.HolProg 64 :=
.seq NamedBody453_232 NamedBody453_233

def NamedBody453_235 : StackLang.HolProg 64 :=
.seq NamedBody453_231 NamedBody453_234

def NamedBody453_236 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody453_237 : StackLang.HolProg 64 :=
.seq NamedBody453_235 NamedBody453_236

def NamedBody453_238 : StackLang.HolProg 64 :=
.call (some (NamedBody453_230, 1, 453, 6)) (Sum.inl 451) (some (NamedBody453_237, 453, 7))

def NamedBody453_239 : StackLang.HolProg 64 :=
.seq NamedBody453_217 NamedBody453_238

def NamedBody453_240 : StackLang.HolProg 64 :=
.seq NamedBody453_216 NamedBody453_239

def NamedBody453_241 : StackLang.HolProg 64 :=
.seq NamedBody453_215 NamedBody453_240

def NamedBody453_242 : StackLang.HolProg 64 :=
.seq NamedBody453_186 NamedBody453_241

def NamedBody453_243 : StackLang.HolProg 64 :=
.seq NamedBody453_183 NamedBody453_242

def NamedBody453_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody453_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody453_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody453_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody453_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody453_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1379#64)

def NamedBody453_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody453_253 : StackLang.HolProg 64 :=
.seq NamedBody453_251 NamedBody453_252

def NamedBody453_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody453_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody453_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody453_257 : StackLang.HolProg 64 :=
.seq NamedBody453_255 NamedBody453_256

def NamedBody453_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_259 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody453_257 NamedBody453_258

def NamedBody453_260 : StackLang.HolProg 64 :=
.seq NamedBody453_254 NamedBody453_259

def NamedBody453_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody453_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody453_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 9

def NamedBody453_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody453_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody453_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody453_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody453_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody453_270 : StackLang.HolProg 64 :=
.seq NamedBody453_268 NamedBody453_269

def NamedBody453_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody453_272 : StackLang.HolProg 64 :=
.seq NamedBody453_270 NamedBody453_271

def NamedBody453_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody453_274 : StackLang.HolProg 64 :=
.seq NamedBody453_272 NamedBody453_273

def NamedBody453_275 : StackLang.HolProg 64 :=
.seq NamedBody453_267 NamedBody453_274

def NamedBody453_276 : StackLang.HolProg 64 :=
.seq NamedBody453_266 NamedBody453_275

def NamedBody453_277 : StackLang.HolProg 64 :=
.seq NamedBody453_265 NamedBody453_276

def NamedBody453_278 : StackLang.HolProg 64 :=
.seq NamedBody453_264 NamedBody453_277

def NamedBody453_279 : StackLang.HolProg 64 :=
.seq NamedBody453_263 NamedBody453_278

def NamedBody453_280 : StackLang.HolProg 64 :=
.seq NamedBody453_262 NamedBody453_279

def NamedBody453_281 : StackLang.HolProg 64 :=
.seq NamedBody453_261 NamedBody453_280

def NamedBody453_282 : StackLang.HolProg 64 :=
.seq NamedBody453_260 NamedBody453_281

def NamedBody453_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody453_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody453_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody453_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody453_290 : StackLang.HolProg 64 :=
.seq NamedBody453_288 NamedBody453_289

def NamedBody453_291 : StackLang.HolProg 64 :=
.seq NamedBody453_287 NamedBody453_290

def NamedBody453_292 : StackLang.HolProg 64 :=
.seq NamedBody453_286 NamedBody453_291

def NamedBody453_293 : StackLang.HolProg 64 :=
.seq NamedBody453_285 NamedBody453_292

def NamedBody453_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody453_295 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody453_296 : StackLang.HolProg 64 :=
.seq NamedBody453_294 NamedBody453_295

def NamedBody453_297 : StackLang.HolProg 64 :=
.call (some (NamedBody453_293, 1, 453, 8)) (Sum.inl 193) (some (NamedBody453_296, 453, 9))

def NamedBody453_298 : StackLang.HolProg 64 :=
.seq NamedBody453_284 NamedBody453_297

def NamedBody453_299 : StackLang.HolProg 64 :=
.seq NamedBody453_283 NamedBody453_298

def NamedBody453_300 : StackLang.HolProg 64 :=
.seq NamedBody453_282 NamedBody453_299

def NamedBody453_301 : StackLang.HolProg 64 :=
.seq NamedBody453_253 NamedBody453_300

def NamedBody453_302 : StackLang.HolProg 64 :=
.seq NamedBody453_250 NamedBody453_301

def NamedBody453_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody453_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_305 : StackLang.HolProg 64 :=
.seq NamedBody453_303 NamedBody453_304

def NamedBody453_306 : StackLang.HolProg 64 :=
.seq NamedBody453_302 NamedBody453_305

def NamedBody453_307 : StackLang.HolProg 64 :=
.seq NamedBody453_249 NamedBody453_306

def NamedBody453_308 : StackLang.HolProg 64 :=
.seq NamedBody453_248 NamedBody453_307

def NamedBody453_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody453_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody453_311 : StackLang.HolProg 64 :=
.seq NamedBody453_309 NamedBody453_310

def NamedBody453_312 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody453_308 NamedBody453_311

def NamedBody453_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody453_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody453_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody453_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody453_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody453_318 : StackLang.HolProg 64 :=
.seq NamedBody453_316 NamedBody453_317

def NamedBody453_319 : StackLang.HolProg 64 :=
.seq NamedBody453_315 NamedBody453_318

def NamedBody453_320 : StackLang.HolProg 64 :=
.seq NamedBody453_314 NamedBody453_319

def NamedBody453_321 : StackLang.HolProg 64 :=
.seq NamedBody453_313 NamedBody453_320

def NamedBody453_322 : StackLang.HolProg 64 :=
.seq NamedBody453_312 NamedBody453_321

def NamedBody453_323 : StackLang.HolProg 64 :=
.seq NamedBody453_247 NamedBody453_322

def NamedBody453_324 : StackLang.HolProg 64 :=
.seq NamedBody453_246 NamedBody453_323

def NamedBody453_325 : StackLang.HolProg 64 :=
.seq NamedBody453_245 NamedBody453_324

def NamedBody453_326 : StackLang.HolProg 64 :=
.seq NamedBody453_244 NamedBody453_325

def NamedBody453_327 : StackLang.HolProg 64 :=
.seq NamedBody453_243 NamedBody453_326

def NamedBody453_328 : StackLang.HolProg 64 :=
.seq NamedBody453_182 NamedBody453_327

def NamedBody453_329 : StackLang.HolProg 64 :=
.seq NamedBody453_179 NamedBody453_328

def NamedBody453_330 : StackLang.HolProg 64 :=
.seq NamedBody453_178 NamedBody453_329

def NamedBody453_331 : StackLang.HolProg 64 :=
.seq NamedBody453_177 NamedBody453_330

def NamedBody453_332 : StackLang.HolProg 64 :=
.seq NamedBody453_176 NamedBody453_331

def NamedBody453_333 : StackLang.HolProg 64 :=
.seq NamedBody453_175 NamedBody453_332

def NamedBody453_334 : StackLang.HolProg 64 :=
.seq NamedBody453_164 NamedBody453_333

def NamedBody453_335 : StackLang.HolProg 64 :=
.seq NamedBody453_163 NamedBody453_334

def NamedBody453_336 : StackLang.HolProg 64 :=
.seq NamedBody453_162 NamedBody453_335

def NamedBody453_337 : StackLang.HolProg 64 :=
.seq NamedBody453_161 NamedBody453_336

def NamedBody453_338 : StackLang.HolProg 64 :=
.seq NamedBody453_102 NamedBody453_337

def NamedBody453_339 : StackLang.HolProg 64 :=
.seq NamedBody453_95 NamedBody453_338

def NamedBody453_340 : StackLang.HolProg 64 :=
.seq NamedBody453_94 NamedBody453_339

def NamedBody453_341 : StackLang.HolProg 64 :=
.seq NamedBody453_93 NamedBody453_340

def NamedBody453_342 : StackLang.HolProg 64 :=
.seq NamedBody453_92 NamedBody453_341

def NamedBody453_343 : StackLang.HolProg 64 :=
.seq NamedBody453_91 NamedBody453_342

def NamedBody453_344 : StackLang.HolProg 64 :=
.seq NamedBody453_80 NamedBody453_343

def NamedBody453_345 : StackLang.HolProg 64 :=
.seq NamedBody453_79 NamedBody453_344

def NamedBody453_346 : StackLang.HolProg 64 :=
.seq NamedBody453_78 NamedBody453_345

def NamedBody453_347 : StackLang.HolProg 64 :=
.seq NamedBody453_77 NamedBody453_346

def NamedBody453_348 : StackLang.HolProg 64 :=
.seq NamedBody453_18 NamedBody453_347

def NamedBody453_349 : StackLang.HolProg 64 :=
.seq NamedBody453_11 NamedBody453_348

def NamedBody453_350 : StackLang.HolProg 64 :=
.seq NamedBody453_10 NamedBody453_349

def NamedBody453_351 : StackLang.HolProg 64 :=
.seq NamedBody453_9 NamedBody453_350

def NamedBody453_352 : StackLang.HolProg 64 :=
.seq NamedBody453_8 NamedBody453_351

def NamedBody453_353 : StackLang.HolProg 64 :=
.seq NamedBody453_7 NamedBody453_352

def NamedBody453_354 : StackLang.HolProg 64 :=
.seq NamedBody453_6 NamedBody453_353

def Named453 : Nat × StackLang.HolProg 64 := (453, NamedBody453_354)
theorem Named453_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed453 = Named453 := by
  kernel_rfl
#print axioms Named453_eq
end InitECandidate.Proofs.BackendStages
