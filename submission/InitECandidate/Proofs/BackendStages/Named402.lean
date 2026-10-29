import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed402
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody402_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody402_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody402_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody402_3 : StackLang.HolProg 64 :=
.seq NamedBody402_1 NamedBody402_2

def NamedBody402_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody402_3 NamedBody402_4

def NamedBody402_6 : StackLang.HolProg 64 :=
.seq NamedBody402_0 NamedBody402_5

def NamedBody402_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody402_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody402_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody402_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551480#64))

def NamedBody402_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody402_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody402_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody402_15 : StackLang.HolProg 64 :=
.seq NamedBody402_13 NamedBody402_14

def NamedBody402_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1198#64)

def NamedBody402_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody402_19 : StackLang.HolProg 64 :=
.seq NamedBody402_17 NamedBody402_18

def NamedBody402_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody402_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody402_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody402_23 : StackLang.HolProg 64 :=
.seq NamedBody402_21 NamedBody402_22

def NamedBody402_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody402_23 NamedBody402_24

def NamedBody402_26 : StackLang.HolProg 64 :=
.seq NamedBody402_20 NamedBody402_25

def NamedBody402_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody402_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody402_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 402 3

def NamedBody402_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody402_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody402_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody402_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody402_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody402_36 : StackLang.HolProg 64 :=
.seq NamedBody402_34 NamedBody402_35

def NamedBody402_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody402_38 : StackLang.HolProg 64 :=
.seq NamedBody402_36 NamedBody402_37

def NamedBody402_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody402_40 : StackLang.HolProg 64 :=
.seq NamedBody402_38 NamedBody402_39

def NamedBody402_41 : StackLang.HolProg 64 :=
.seq NamedBody402_33 NamedBody402_40

def NamedBody402_42 : StackLang.HolProg 64 :=
.seq NamedBody402_32 NamedBody402_41

def NamedBody402_43 : StackLang.HolProg 64 :=
.seq NamedBody402_31 NamedBody402_42

def NamedBody402_44 : StackLang.HolProg 64 :=
.seq NamedBody402_30 NamedBody402_43

def NamedBody402_45 : StackLang.HolProg 64 :=
.seq NamedBody402_29 NamedBody402_44

def NamedBody402_46 : StackLang.HolProg 64 :=
.seq NamedBody402_28 NamedBody402_45

def NamedBody402_47 : StackLang.HolProg 64 :=
.seq NamedBody402_27 NamedBody402_46

def NamedBody402_48 : StackLang.HolProg 64 :=
.seq NamedBody402_26 NamedBody402_47

def NamedBody402_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody402_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody402_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody402_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody402_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody402_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody402_58 : StackLang.HolProg 64 :=
.seq NamedBody402_56 NamedBody402_57

def NamedBody402_59 : StackLang.HolProg 64 :=
.seq NamedBody402_55 NamedBody402_58

def NamedBody402_60 : StackLang.HolProg 64 :=
.seq NamedBody402_54 NamedBody402_59

def NamedBody402_61 : StackLang.HolProg 64 :=
.seq NamedBody402_53 NamedBody402_60

def NamedBody402_62 : StackLang.HolProg 64 :=
.seq NamedBody402_52 NamedBody402_61

def NamedBody402_63 : StackLang.HolProg 64 :=
.seq NamedBody402_51 NamedBody402_62

def NamedBody402_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody402_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody402_66 : StackLang.HolProg 64 :=
.seq NamedBody402_64 NamedBody402_65

def NamedBody402_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody402_68 : StackLang.HolProg 64 :=
.seq NamedBody402_66 NamedBody402_67

def NamedBody402_69 : StackLang.HolProg 64 :=
.call (some (NamedBody402_63, 1, 402, 2)) (Sum.inl 79) (some (NamedBody402_68, 402, 3))

def NamedBody402_70 : StackLang.HolProg 64 :=
.seq NamedBody402_50 NamedBody402_69

def NamedBody402_71 : StackLang.HolProg 64 :=
.seq NamedBody402_49 NamedBody402_70

def NamedBody402_72 : StackLang.HolProg 64 :=
.seq NamedBody402_48 NamedBody402_71

def NamedBody402_73 : StackLang.HolProg 64 :=
.seq NamedBody402_19 NamedBody402_72

def NamedBody402_74 : StackLang.HolProg 64 :=
.seq NamedBody402_16 NamedBody402_73

def NamedBody402_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody402_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody402_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody402_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody402_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody402_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody402_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody402_84 : StackLang.HolProg 64 :=
.seq NamedBody402_82 NamedBody402_83

def NamedBody402_85 : StackLang.HolProg 64 :=
.seq NamedBody402_81 NamedBody402_84

def NamedBody402_86 : StackLang.HolProg 64 :=
.seq NamedBody402_80 NamedBody402_85

def NamedBody402_87 : StackLang.HolProg 64 :=
.seq NamedBody402_79 NamedBody402_86

def NamedBody402_88 : StackLang.HolProg 64 :=
.seq NamedBody402_78 NamedBody402_87

def NamedBody402_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody402_88 NamedBody402_89

def NamedBody402_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody402_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody402_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody402_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody402_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody402_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551448#64))

def NamedBody402_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody402_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody402_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody402_100 : StackLang.HolProg 64 :=
.seq NamedBody402_98 NamedBody402_99

def NamedBody402_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1199#64)

def NamedBody402_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody402_104 : StackLang.HolProg 64 :=
.seq NamedBody402_102 NamedBody402_103

def NamedBody402_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody402_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody402_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody402_108 : StackLang.HolProg 64 :=
.seq NamedBody402_106 NamedBody402_107

def NamedBody402_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody402_108 NamedBody402_109

def NamedBody402_111 : StackLang.HolProg 64 :=
.seq NamedBody402_105 NamedBody402_110

def NamedBody402_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody402_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody402_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 402 5

def NamedBody402_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody402_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody402_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody402_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody402_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody402_121 : StackLang.HolProg 64 :=
.seq NamedBody402_119 NamedBody402_120

def NamedBody402_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody402_123 : StackLang.HolProg 64 :=
.seq NamedBody402_121 NamedBody402_122

def NamedBody402_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody402_125 : StackLang.HolProg 64 :=
.seq NamedBody402_123 NamedBody402_124

def NamedBody402_126 : StackLang.HolProg 64 :=
.seq NamedBody402_118 NamedBody402_125

def NamedBody402_127 : StackLang.HolProg 64 :=
.seq NamedBody402_117 NamedBody402_126

def NamedBody402_128 : StackLang.HolProg 64 :=
.seq NamedBody402_116 NamedBody402_127

def NamedBody402_129 : StackLang.HolProg 64 :=
.seq NamedBody402_115 NamedBody402_128

def NamedBody402_130 : StackLang.HolProg 64 :=
.seq NamedBody402_114 NamedBody402_129

def NamedBody402_131 : StackLang.HolProg 64 :=
.seq NamedBody402_113 NamedBody402_130

def NamedBody402_132 : StackLang.HolProg 64 :=
.seq NamedBody402_112 NamedBody402_131

def NamedBody402_133 : StackLang.HolProg 64 :=
.seq NamedBody402_111 NamedBody402_132

def NamedBody402_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody402_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody402_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody402_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody402_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody402_142 : StackLang.HolProg 64 :=
.seq NamedBody402_140 NamedBody402_141

def NamedBody402_143 : StackLang.HolProg 64 :=
.seq NamedBody402_139 NamedBody402_142

def NamedBody402_144 : StackLang.HolProg 64 :=
.seq NamedBody402_138 NamedBody402_143

def NamedBody402_145 : StackLang.HolProg 64 :=
.seq NamedBody402_137 NamedBody402_144

def NamedBody402_146 : StackLang.HolProg 64 :=
.seq NamedBody402_136 NamedBody402_145

def NamedBody402_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody402_148 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody402_149 : StackLang.HolProg 64 :=
.seq NamedBody402_147 NamedBody402_148

def NamedBody402_150 : StackLang.HolProg 64 :=
.call (some (NamedBody402_146, 1, 402, 4)) (Sum.inl 294) (some (NamedBody402_149, 402, 5))

def NamedBody402_151 : StackLang.HolProg 64 :=
.seq NamedBody402_135 NamedBody402_150

def NamedBody402_152 : StackLang.HolProg 64 :=
.seq NamedBody402_134 NamedBody402_151

def NamedBody402_153 : StackLang.HolProg 64 :=
.seq NamedBody402_133 NamedBody402_152

def NamedBody402_154 : StackLang.HolProg 64 :=
.seq NamedBody402_104 NamedBody402_153

def NamedBody402_155 : StackLang.HolProg 64 :=
.seq NamedBody402_101 NamedBody402_154

def NamedBody402_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody402_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody402_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody402_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def NamedBody402_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody402_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7#64)

def NamedBody402_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody402_166 : StackLang.HolProg 64 :=
.seq NamedBody402_164 NamedBody402_165

def NamedBody402_167 : StackLang.HolProg 64 :=
.seq NamedBody402_163 NamedBody402_166

def NamedBody402_168 : StackLang.HolProg 64 :=
.seq NamedBody402_162 NamedBody402_167

def NamedBody402_169 : StackLang.HolProg 64 :=
.seq NamedBody402_161 NamedBody402_168

def NamedBody402_170 : StackLang.HolProg 64 :=
.seq NamedBody402_160 NamedBody402_169

def NamedBody402_171 : StackLang.HolProg 64 :=
.seq NamedBody402_159 NamedBody402_170

def NamedBody402_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody402_173 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody402_171 NamedBody402_172

def NamedBody402_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody402_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody402_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody402_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody402_178 : StackLang.HolProg 64 :=
.seq NamedBody402_176 NamedBody402_177

def NamedBody402_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody402_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody402_181 : StackLang.HolProg 64 :=
.seq NamedBody402_179 NamedBody402_180

def NamedBody402_182 : StackLang.HolProg 64 :=
.seq NamedBody402_178 NamedBody402_181

def NamedBody402_183 : StackLang.HolProg 64 :=
.seq NamedBody402_175 NamedBody402_182

def NamedBody402_184 : StackLang.HolProg 64 :=
.seq NamedBody402_174 NamedBody402_183

def NamedBody402_185 : StackLang.HolProg 64 :=
.seq NamedBody402_173 NamedBody402_184

def NamedBody402_186 : StackLang.HolProg 64 :=
.seq NamedBody402_158 NamedBody402_185

def NamedBody402_187 : StackLang.HolProg 64 :=
.seq NamedBody402_157 NamedBody402_186

def NamedBody402_188 : StackLang.HolProg 64 :=
.seq NamedBody402_156 NamedBody402_187

def NamedBody402_189 : StackLang.HolProg 64 :=
.seq NamedBody402_155 NamedBody402_188

def NamedBody402_190 : StackLang.HolProg 64 :=
.seq NamedBody402_100 NamedBody402_189

def NamedBody402_191 : StackLang.HolProg 64 :=
.seq NamedBody402_97 NamedBody402_190

def NamedBody402_192 : StackLang.HolProg 64 :=
.seq NamedBody402_96 NamedBody402_191

def NamedBody402_193 : StackLang.HolProg 64 :=
.seq NamedBody402_95 NamedBody402_192

def NamedBody402_194 : StackLang.HolProg 64 :=
.seq NamedBody402_94 NamedBody402_193

def NamedBody402_195 : StackLang.HolProg 64 :=
.seq NamedBody402_93 NamedBody402_194

def NamedBody402_196 : StackLang.HolProg 64 :=
.seq NamedBody402_92 NamedBody402_195

def NamedBody402_197 : StackLang.HolProg 64 :=
.seq NamedBody402_91 NamedBody402_196

def NamedBody402_198 : StackLang.HolProg 64 :=
.seq NamedBody402_90 NamedBody402_197

def NamedBody402_199 : StackLang.HolProg 64 :=
.seq NamedBody402_77 NamedBody402_198

def NamedBody402_200 : StackLang.HolProg 64 :=
.seq NamedBody402_76 NamedBody402_199

def NamedBody402_201 : StackLang.HolProg 64 :=
.seq NamedBody402_75 NamedBody402_200

def NamedBody402_202 : StackLang.HolProg 64 :=
.seq NamedBody402_74 NamedBody402_201

def NamedBody402_203 : StackLang.HolProg 64 :=
.seq NamedBody402_15 NamedBody402_202

def NamedBody402_204 : StackLang.HolProg 64 :=
.seq NamedBody402_12 NamedBody402_203

def NamedBody402_205 : StackLang.HolProg 64 :=
.seq NamedBody402_11 NamedBody402_204

def NamedBody402_206 : StackLang.HolProg 64 :=
.seq NamedBody402_10 NamedBody402_205

def NamedBody402_207 : StackLang.HolProg 64 :=
.seq NamedBody402_9 NamedBody402_206

def NamedBody402_208 : StackLang.HolProg 64 :=
.seq NamedBody402_8 NamedBody402_207

def NamedBody402_209 : StackLang.HolProg 64 :=
.seq NamedBody402_7 NamedBody402_208

def NamedBody402_210 : StackLang.HolProg 64 :=
.seq NamedBody402_6 NamedBody402_209

def Named402 : Nat × StackLang.HolProg 64 := (402, NamedBody402_210)
theorem Named402_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed402 = Named402 := by
  kernel_rfl
#print axioms Named402_eq
end InitECandidate.Proofs.BackendStages
