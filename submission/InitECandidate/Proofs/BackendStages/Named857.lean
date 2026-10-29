import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed857
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody857_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody857_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody857_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody857_3 : StackLang.HolProg 64 :=
.seq NamedBody857_1 NamedBody857_2

def NamedBody857_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody857_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody857_3 NamedBody857_4

def NamedBody857_6 : StackLang.HolProg 64 :=
.seq NamedBody857_0 NamedBody857_5

def NamedBody857_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody857_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody857_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody857_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody857_11 : StackLang.HolProg 64 :=
.seq NamedBody857_9 NamedBody857_10

def NamedBody857_12 : StackLang.HolProg 64 :=
.seq NamedBody857_8 NamedBody857_11

def NamedBody857_13 : StackLang.HolProg 64 :=
.seq NamedBody857_7 NamedBody857_12

def NamedBody857_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody857_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody857_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody857_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody857_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody857_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4360#64)

def NamedBody857_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody857_21 : StackLang.HolProg 64 :=
.seq NamedBody857_19 NamedBody857_20

def NamedBody857_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody857_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody857_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody857_25 : StackLang.HolProg 64 :=
.seq NamedBody857_23 NamedBody857_24

def NamedBody857_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody857_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody857_25 NamedBody857_26

def NamedBody857_28 : StackLang.HolProg 64 :=
.seq NamedBody857_22 NamedBody857_27

def NamedBody857_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody857_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody857_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 857 3

def NamedBody857_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody857_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody857_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody857_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody857_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody857_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody857_38 : StackLang.HolProg 64 :=
.seq NamedBody857_36 NamedBody857_37

def NamedBody857_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody857_40 : StackLang.HolProg 64 :=
.seq NamedBody857_38 NamedBody857_39

def NamedBody857_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody857_42 : StackLang.HolProg 64 :=
.seq NamedBody857_40 NamedBody857_41

def NamedBody857_43 : StackLang.HolProg 64 :=
.seq NamedBody857_35 NamedBody857_42

def NamedBody857_44 : StackLang.HolProg 64 :=
.seq NamedBody857_34 NamedBody857_43

def NamedBody857_45 : StackLang.HolProg 64 :=
.seq NamedBody857_33 NamedBody857_44

def NamedBody857_46 : StackLang.HolProg 64 :=
.seq NamedBody857_32 NamedBody857_45

def NamedBody857_47 : StackLang.HolProg 64 :=
.seq NamedBody857_31 NamedBody857_46

def NamedBody857_48 : StackLang.HolProg 64 :=
.seq NamedBody857_30 NamedBody857_47

def NamedBody857_49 : StackLang.HolProg 64 :=
.seq NamedBody857_29 NamedBody857_48

def NamedBody857_50 : StackLang.HolProg 64 :=
.seq NamedBody857_28 NamedBody857_49

def NamedBody857_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody857_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody857_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody857_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody857_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody857_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody857_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody857_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody857_59 : StackLang.HolProg 64 :=
.seq NamedBody857_57 NamedBody857_58

def NamedBody857_60 : StackLang.HolProg 64 :=
.seq NamedBody857_56 NamedBody857_59

def NamedBody857_61 : StackLang.HolProg 64 :=
.seq NamedBody857_55 NamedBody857_60

def NamedBody857_62 : StackLang.HolProg 64 :=
.seq NamedBody857_54 NamedBody857_61

def NamedBody857_63 : StackLang.HolProg 64 :=
.seq NamedBody857_53 NamedBody857_62

def NamedBody857_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody857_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody857_66 : StackLang.HolProg 64 :=
.seq NamedBody857_64 NamedBody857_65

def NamedBody857_67 : StackLang.HolProg 64 :=
.call (some (NamedBody857_63, 1, 857, 2)) (Sum.inl 121) (some (NamedBody857_66, 857, 3))

def NamedBody857_68 : StackLang.HolProg 64 :=
.seq NamedBody857_52 NamedBody857_67

def NamedBody857_69 : StackLang.HolProg 64 :=
.seq NamedBody857_51 NamedBody857_68

def NamedBody857_70 : StackLang.HolProg 64 :=
.seq NamedBody857_50 NamedBody857_69

def NamedBody857_71 : StackLang.HolProg 64 :=
.seq NamedBody857_21 NamedBody857_70

def NamedBody857_72 : StackLang.HolProg 64 :=
.seq NamedBody857_18 NamedBody857_71

def NamedBody857_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody857_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody857_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody857_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody857_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody857_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody857_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody857_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody857_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody857_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody857_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody857_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody857_85 : StackLang.HolProg 64 :=
.seq NamedBody857_83 NamedBody857_84

def NamedBody857_86 : StackLang.HolProg 64 :=
.seq NamedBody857_82 NamedBody857_85

def NamedBody857_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody857_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody857_89 : StackLang.HolProg 64 :=
.seq NamedBody857_87 NamedBody857_88

def NamedBody857_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody857_86 NamedBody857_89

def NamedBody857_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody857_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody857_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody857_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody857_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody857_96 : StackLang.HolProg 64 :=
.seq NamedBody857_94 NamedBody857_95

def NamedBody857_97 : StackLang.HolProg 64 :=
.seq NamedBody857_93 NamedBody857_96

def NamedBody857_98 : StackLang.HolProg 64 :=
.seq NamedBody857_92 NamedBody857_97

def NamedBody857_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody857_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def NamedBody857_101 : StackLang.HolProg 64 :=
.seq NamedBody857_99 NamedBody857_100

def NamedBody857_102 : StackLang.HolProg 64 :=
.seq NamedBody857_98 NamedBody857_101

def NamedBody857_103 : StackLang.HolProg 64 :=
.seq NamedBody857_91 NamedBody857_102

def NamedBody857_104 : StackLang.HolProg 64 :=
.seq NamedBody857_90 NamedBody857_103

def NamedBody857_105 : StackLang.HolProg 64 :=
.seq NamedBody857_81 NamedBody857_104

def NamedBody857_106 : StackLang.HolProg 64 :=
.seq NamedBody857_80 NamedBody857_105

def NamedBody857_107 : StackLang.HolProg 64 :=
.seq NamedBody857_79 NamedBody857_106

def NamedBody857_108 : StackLang.HolProg 64 :=
.seq NamedBody857_78 NamedBody857_107

def NamedBody857_109 : StackLang.HolProg 64 :=
.seq NamedBody857_77 NamedBody857_108

def NamedBody857_110 : StackLang.HolProg 64 :=
.seq NamedBody857_76 NamedBody857_109

def NamedBody857_111 : StackLang.HolProg 64 :=
.seq NamedBody857_75 NamedBody857_110

def NamedBody857_112 : StackLang.HolProg 64 :=
.seq NamedBody857_74 NamedBody857_111

def NamedBody857_113 : StackLang.HolProg 64 :=
.seq NamedBody857_73 NamedBody857_112

def NamedBody857_114 : StackLang.HolProg 64 :=
.seq NamedBody857_72 NamedBody857_113

def NamedBody857_115 : StackLang.HolProg 64 :=
.seq NamedBody857_17 NamedBody857_114

def NamedBody857_116 : StackLang.HolProg 64 :=
.seq NamedBody857_16 NamedBody857_115

def NamedBody857_117 : StackLang.HolProg 64 :=
.seq NamedBody857_15 NamedBody857_116

def NamedBody857_118 : StackLang.HolProg 64 :=
.seq NamedBody857_14 NamedBody857_117

def NamedBody857_119 : StackLang.HolProg 64 :=
.seq NamedBody857_13 NamedBody857_118

def NamedBody857_120 : StackLang.HolProg 64 :=
.seq NamedBody857_6 NamedBody857_119

def Named857 : Nat × StackLang.HolProg 64 := (857, NamedBody857_120)
theorem Named857_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed857 = Named857 := by
  kernel_rfl
#print axioms Named857_eq
end InitECandidate.Proofs.BackendStages
