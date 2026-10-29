import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed89
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody89_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody89_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody89_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody89_3 : StackLang.HolProg 64 :=
.seq NamedBody89_1 NamedBody89_2

def NamedBody89_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody89_3 NamedBody89_4

def NamedBody89_6 : StackLang.HolProg 64 :=
.seq NamedBody89_0 NamedBody89_5

def NamedBody89_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody89_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody89_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody89_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody89_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody89_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody89_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody89_14 : StackLang.HolProg 64 :=
.seq NamedBody89_12 NamedBody89_13

def NamedBody89_15 : StackLang.HolProg 64 :=
.seq NamedBody89_11 NamedBody89_14

def NamedBody89_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 35#64)

def NamedBody89_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody89_19 : StackLang.HolProg 64 :=
.seq NamedBody89_17 NamedBody89_18

def NamedBody89_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody89_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody89_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody89_23 : StackLang.HolProg 64 :=
.seq NamedBody89_21 NamedBody89_22

def NamedBody89_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody89_23 NamedBody89_24

def NamedBody89_26 : StackLang.HolProg 64 :=
.seq NamedBody89_20 NamedBody89_25

def NamedBody89_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody89_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody89_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 89 3

def NamedBody89_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody89_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody89_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody89_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody89_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody89_36 : StackLang.HolProg 64 :=
.seq NamedBody89_34 NamedBody89_35

def NamedBody89_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody89_38 : StackLang.HolProg 64 :=
.seq NamedBody89_36 NamedBody89_37

def NamedBody89_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody89_40 : StackLang.HolProg 64 :=
.seq NamedBody89_38 NamedBody89_39

def NamedBody89_41 : StackLang.HolProg 64 :=
.seq NamedBody89_33 NamedBody89_40

def NamedBody89_42 : StackLang.HolProg 64 :=
.seq NamedBody89_32 NamedBody89_41

def NamedBody89_43 : StackLang.HolProg 64 :=
.seq NamedBody89_31 NamedBody89_42

def NamedBody89_44 : StackLang.HolProg 64 :=
.seq NamedBody89_30 NamedBody89_43

def NamedBody89_45 : StackLang.HolProg 64 :=
.seq NamedBody89_29 NamedBody89_44

def NamedBody89_46 : StackLang.HolProg 64 :=
.seq NamedBody89_28 NamedBody89_45

def NamedBody89_47 : StackLang.HolProg 64 :=
.seq NamedBody89_27 NamedBody89_46

def NamedBody89_48 : StackLang.HolProg 64 :=
.seq NamedBody89_26 NamedBody89_47

def NamedBody89_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody89_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody89_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody89_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody89_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody89_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody89_58 : StackLang.HolProg 64 :=
.seq NamedBody89_56 NamedBody89_57

def NamedBody89_59 : StackLang.HolProg 64 :=
.seq NamedBody89_55 NamedBody89_58

def NamedBody89_60 : StackLang.HolProg 64 :=
.seq NamedBody89_54 NamedBody89_59

def NamedBody89_61 : StackLang.HolProg 64 :=
.seq NamedBody89_53 NamedBody89_60

def NamedBody89_62 : StackLang.HolProg 64 :=
.seq NamedBody89_52 NamedBody89_61

def NamedBody89_63 : StackLang.HolProg 64 :=
.seq NamedBody89_51 NamedBody89_62

def NamedBody89_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody89_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody89_66 : StackLang.HolProg 64 :=
.seq NamedBody89_64 NamedBody89_65

def NamedBody89_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody89_68 : StackLang.HolProg 64 :=
.seq NamedBody89_66 NamedBody89_67

def NamedBody89_69 : StackLang.HolProg 64 :=
.call (some (NamedBody89_63, 1, 89, 2)) (Sum.inl 84) (some (NamedBody89_68, 89, 3))

def NamedBody89_70 : StackLang.HolProg 64 :=
.seq NamedBody89_50 NamedBody89_69

def NamedBody89_71 : StackLang.HolProg 64 :=
.seq NamedBody89_49 NamedBody89_70

def NamedBody89_72 : StackLang.HolProg 64 :=
.seq NamedBody89_48 NamedBody89_71

def NamedBody89_73 : StackLang.HolProg 64 :=
.seq NamedBody89_19 NamedBody89_72

def NamedBody89_74 : StackLang.HolProg 64 :=
.seq NamedBody89_16 NamedBody89_73

def NamedBody89_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody89_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody89_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody89_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody89_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody89_82 : StackLang.HolProg 64 :=
.seq NamedBody89_80 NamedBody89_81

def NamedBody89_83 : StackLang.HolProg 64 :=
.seq NamedBody89_79 NamedBody89_82

def NamedBody89_84 : StackLang.HolProg 64 :=
.seq NamedBody89_78 NamedBody89_83

def NamedBody89_85 : StackLang.HolProg 64 :=
.seq NamedBody89_77 NamedBody89_84

def NamedBody89_86 : StackLang.HolProg 64 :=
.seq NamedBody89_76 NamedBody89_85

def NamedBody89_87 : StackLang.HolProg 64 :=
.seq NamedBody89_75 NamedBody89_86

def NamedBody89_88 : StackLang.HolProg 64 :=
.seq NamedBody89_74 NamedBody89_87

def NamedBody89_89 : StackLang.HolProg 64 :=
.seq NamedBody89_15 NamedBody89_88

def NamedBody89_90 : StackLang.HolProg 64 :=
.seq NamedBody89_10 NamedBody89_89

def NamedBody89_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody89_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody89_90 NamedBody89_91

def NamedBody89_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody89_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody89_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody89_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody89_97 : StackLang.HolProg 64 :=
.seq NamedBody89_95 NamedBody89_96

def NamedBody89_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody89_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody89_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody89_101 : StackLang.HolProg 64 :=
.seq NamedBody89_99 NamedBody89_100

def NamedBody89_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 36#64)

def NamedBody89_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody89_105 : StackLang.HolProg 64 :=
.seq NamedBody89_103 NamedBody89_104

def NamedBody89_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody89_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody89_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody89_109 : StackLang.HolProg 64 :=
.seq NamedBody89_107 NamedBody89_108

def NamedBody89_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody89_109 NamedBody89_110

def NamedBody89_112 : StackLang.HolProg 64 :=
.seq NamedBody89_106 NamedBody89_111

def NamedBody89_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody89_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody89_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 89 5

def NamedBody89_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody89_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody89_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody89_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody89_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody89_122 : StackLang.HolProg 64 :=
.seq NamedBody89_120 NamedBody89_121

def NamedBody89_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody89_124 : StackLang.HolProg 64 :=
.seq NamedBody89_122 NamedBody89_123

def NamedBody89_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody89_126 : StackLang.HolProg 64 :=
.seq NamedBody89_124 NamedBody89_125

def NamedBody89_127 : StackLang.HolProg 64 :=
.seq NamedBody89_119 NamedBody89_126

def NamedBody89_128 : StackLang.HolProg 64 :=
.seq NamedBody89_118 NamedBody89_127

def NamedBody89_129 : StackLang.HolProg 64 :=
.seq NamedBody89_117 NamedBody89_128

def NamedBody89_130 : StackLang.HolProg 64 :=
.seq NamedBody89_116 NamedBody89_129

def NamedBody89_131 : StackLang.HolProg 64 :=
.seq NamedBody89_115 NamedBody89_130

def NamedBody89_132 : StackLang.HolProg 64 :=
.seq NamedBody89_114 NamedBody89_131

def NamedBody89_133 : StackLang.HolProg 64 :=
.seq NamedBody89_113 NamedBody89_132

def NamedBody89_134 : StackLang.HolProg 64 :=
.seq NamedBody89_112 NamedBody89_133

def NamedBody89_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody89_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody89_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody89_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody89_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody89_143 : StackLang.HolProg 64 :=
.seq NamedBody89_141 NamedBody89_142

def NamedBody89_144 : StackLang.HolProg 64 :=
.seq NamedBody89_140 NamedBody89_143

def NamedBody89_145 : StackLang.HolProg 64 :=
.seq NamedBody89_139 NamedBody89_144

def NamedBody89_146 : StackLang.HolProg 64 :=
.seq NamedBody89_138 NamedBody89_145

def NamedBody89_147 : StackLang.HolProg 64 :=
.seq NamedBody89_137 NamedBody89_146

def NamedBody89_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody89_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody89_150 : StackLang.HolProg 64 :=
.seq NamedBody89_148 NamedBody89_149

def NamedBody89_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody89_152 : StackLang.HolProg 64 :=
.seq NamedBody89_150 NamedBody89_151

def NamedBody89_153 : StackLang.HolProg 64 :=
.call (some (NamedBody89_147, 1, 89, 4)) (Sum.inl 88) (some (NamedBody89_152, 89, 5))

def NamedBody89_154 : StackLang.HolProg 64 :=
.seq NamedBody89_136 NamedBody89_153

def NamedBody89_155 : StackLang.HolProg 64 :=
.seq NamedBody89_135 NamedBody89_154

def NamedBody89_156 : StackLang.HolProg 64 :=
.seq NamedBody89_134 NamedBody89_155

def NamedBody89_157 : StackLang.HolProg 64 :=
.seq NamedBody89_105 NamedBody89_156

def NamedBody89_158 : StackLang.HolProg 64 :=
.seq NamedBody89_102 NamedBody89_157

def NamedBody89_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody89_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody89_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 37#64)

def NamedBody89_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody89_166 : StackLang.HolProg 64 :=
.seq NamedBody89_164 NamedBody89_165

def NamedBody89_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody89_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody89_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody89_170 : StackLang.HolProg 64 :=
.seq NamedBody89_168 NamedBody89_169

def NamedBody89_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_172 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody89_170 NamedBody89_171

def NamedBody89_173 : StackLang.HolProg 64 :=
.seq NamedBody89_167 NamedBody89_172

def NamedBody89_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody89_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody89_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 89 7

def NamedBody89_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody89_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody89_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody89_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody89_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody89_183 : StackLang.HolProg 64 :=
.seq NamedBody89_181 NamedBody89_182

def NamedBody89_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody89_185 : StackLang.HolProg 64 :=
.seq NamedBody89_183 NamedBody89_184

def NamedBody89_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody89_187 : StackLang.HolProg 64 :=
.seq NamedBody89_185 NamedBody89_186

def NamedBody89_188 : StackLang.HolProg 64 :=
.seq NamedBody89_180 NamedBody89_187

def NamedBody89_189 : StackLang.HolProg 64 :=
.seq NamedBody89_179 NamedBody89_188

def NamedBody89_190 : StackLang.HolProg 64 :=
.seq NamedBody89_178 NamedBody89_189

def NamedBody89_191 : StackLang.HolProg 64 :=
.seq NamedBody89_177 NamedBody89_190

def NamedBody89_192 : StackLang.HolProg 64 :=
.seq NamedBody89_176 NamedBody89_191

def NamedBody89_193 : StackLang.HolProg 64 :=
.seq NamedBody89_175 NamedBody89_192

def NamedBody89_194 : StackLang.HolProg 64 :=
.seq NamedBody89_174 NamedBody89_193

def NamedBody89_195 : StackLang.HolProg 64 :=
.seq NamedBody89_173 NamedBody89_194

def NamedBody89_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody89_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody89_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody89_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody89_203 : StackLang.HolProg 64 :=
.seq NamedBody89_201 NamedBody89_202

def NamedBody89_204 : StackLang.HolProg 64 :=
.seq NamedBody89_200 NamedBody89_203

def NamedBody89_205 : StackLang.HolProg 64 :=
.seq NamedBody89_199 NamedBody89_204

def NamedBody89_206 : StackLang.HolProg 64 :=
.seq NamedBody89_198 NamedBody89_205

def NamedBody89_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody89_208 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody89_209 : StackLang.HolProg 64 :=
.seq NamedBody89_207 NamedBody89_208

def NamedBody89_210 : StackLang.HolProg 64 :=
.call (some (NamedBody89_206, 1, 89, 6)) (Sum.inl 88) (some (NamedBody89_209, 89, 7))

def NamedBody89_211 : StackLang.HolProg 64 :=
.seq NamedBody89_197 NamedBody89_210

def NamedBody89_212 : StackLang.HolProg 64 :=
.seq NamedBody89_196 NamedBody89_211

def NamedBody89_213 : StackLang.HolProg 64 :=
.seq NamedBody89_195 NamedBody89_212

def NamedBody89_214 : StackLang.HolProg 64 :=
.seq NamedBody89_166 NamedBody89_213

def NamedBody89_215 : StackLang.HolProg 64 :=
.seq NamedBody89_163 NamedBody89_214

def NamedBody89_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody89_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody89_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody89_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody89_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody89_221 : StackLang.HolProg 64 :=
.seq NamedBody89_219 NamedBody89_220

def NamedBody89_222 : StackLang.HolProg 64 :=
.seq NamedBody89_218 NamedBody89_221

def NamedBody89_223 : StackLang.HolProg 64 :=
.seq NamedBody89_217 NamedBody89_222

def NamedBody89_224 : StackLang.HolProg 64 :=
.seq NamedBody89_216 NamedBody89_223

def NamedBody89_225 : StackLang.HolProg 64 :=
.seq NamedBody89_215 NamedBody89_224

def NamedBody89_226 : StackLang.HolProg 64 :=
.seq NamedBody89_162 NamedBody89_225

def NamedBody89_227 : StackLang.HolProg 64 :=
.seq NamedBody89_161 NamedBody89_226

def NamedBody89_228 : StackLang.HolProg 64 :=
.seq NamedBody89_160 NamedBody89_227

def NamedBody89_229 : StackLang.HolProg 64 :=
.seq NamedBody89_159 NamedBody89_228

def NamedBody89_230 : StackLang.HolProg 64 :=
.seq NamedBody89_158 NamedBody89_229

def NamedBody89_231 : StackLang.HolProg 64 :=
.seq NamedBody89_101 NamedBody89_230

def NamedBody89_232 : StackLang.HolProg 64 :=
.seq NamedBody89_98 NamedBody89_231

def NamedBody89_233 : StackLang.HolProg 64 :=
.seq NamedBody89_97 NamedBody89_232

def NamedBody89_234 : StackLang.HolProg 64 :=
.seq NamedBody89_94 NamedBody89_233

def NamedBody89_235 : StackLang.HolProg 64 :=
.seq NamedBody89_93 NamedBody89_234

def NamedBody89_236 : StackLang.HolProg 64 :=
.seq NamedBody89_92 NamedBody89_235

def NamedBody89_237 : StackLang.HolProg 64 :=
.seq NamedBody89_9 NamedBody89_236

def NamedBody89_238 : StackLang.HolProg 64 :=
.seq NamedBody89_8 NamedBody89_237

def NamedBody89_239 : StackLang.HolProg 64 :=
.seq NamedBody89_7 NamedBody89_238

def NamedBody89_240 : StackLang.HolProg 64 :=
.seq NamedBody89_6 NamedBody89_239

def Named89 : Nat × StackLang.HolProg 64 := (89, NamedBody89_240)
theorem Named89_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed89 = Named89 := by
  kernel_rfl
#print axioms Named89_eq
end InitECandidate.Proofs.BackendStages
