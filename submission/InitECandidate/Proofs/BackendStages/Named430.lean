import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed430
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody430_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody430_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody430_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody430_3 : StackLang.HolProg 64 :=
.seq NamedBody430_1 NamedBody430_2

def NamedBody430_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody430_3 NamedBody430_4

def NamedBody430_6 : StackLang.HolProg 64 :=
.seq NamedBody430_0 NamedBody430_5

def NamedBody430_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody430_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody430_9 : StackLang.HolProg 64 :=
.seq NamedBody430_7 NamedBody430_8

def NamedBody430_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1290#64)

def NamedBody430_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody430_13 : StackLang.HolProg 64 :=
.seq NamedBody430_11 NamedBody430_12

def NamedBody430_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody430_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody430_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody430_17 : StackLang.HolProg 64 :=
.seq NamedBody430_15 NamedBody430_16

def NamedBody430_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody430_17 NamedBody430_18

def NamedBody430_20 : StackLang.HolProg 64 :=
.seq NamedBody430_14 NamedBody430_19

def NamedBody430_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody430_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody430_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 430 3

def NamedBody430_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody430_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody430_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody430_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody430_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody430_30 : StackLang.HolProg 64 :=
.seq NamedBody430_28 NamedBody430_29

def NamedBody430_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody430_32 : StackLang.HolProg 64 :=
.seq NamedBody430_30 NamedBody430_31

def NamedBody430_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody430_34 : StackLang.HolProg 64 :=
.seq NamedBody430_32 NamedBody430_33

def NamedBody430_35 : StackLang.HolProg 64 :=
.seq NamedBody430_27 NamedBody430_34

def NamedBody430_36 : StackLang.HolProg 64 :=
.seq NamedBody430_26 NamedBody430_35

def NamedBody430_37 : StackLang.HolProg 64 :=
.seq NamedBody430_25 NamedBody430_36

def NamedBody430_38 : StackLang.HolProg 64 :=
.seq NamedBody430_24 NamedBody430_37

def NamedBody430_39 : StackLang.HolProg 64 :=
.seq NamedBody430_23 NamedBody430_38

def NamedBody430_40 : StackLang.HolProg 64 :=
.seq NamedBody430_22 NamedBody430_39

def NamedBody430_41 : StackLang.HolProg 64 :=
.seq NamedBody430_21 NamedBody430_40

def NamedBody430_42 : StackLang.HolProg 64 :=
.seq NamedBody430_20 NamedBody430_41

def NamedBody430_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody430_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody430_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody430_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody430_50 : StackLang.HolProg 64 :=
.seq NamedBody430_48 NamedBody430_49

def NamedBody430_51 : StackLang.HolProg 64 :=
.seq NamedBody430_47 NamedBody430_50

def NamedBody430_52 : StackLang.HolProg 64 :=
.seq NamedBody430_46 NamedBody430_51

def NamedBody430_53 : StackLang.HolProg 64 :=
.seq NamedBody430_45 NamedBody430_52

def NamedBody430_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody430_56 : StackLang.HolProg 64 :=
.seq NamedBody430_54 NamedBody430_55

def NamedBody430_57 : StackLang.HolProg 64 :=
.call (some (NamedBody430_53, 1, 430, 2)) (Sum.inl 407) (some (NamedBody430_56, 430, 3))

def NamedBody430_58 : StackLang.HolProg 64 :=
.seq NamedBody430_44 NamedBody430_57

def NamedBody430_59 : StackLang.HolProg 64 :=
.seq NamedBody430_43 NamedBody430_58

def NamedBody430_60 : StackLang.HolProg 64 :=
.seq NamedBody430_42 NamedBody430_59

def NamedBody430_61 : StackLang.HolProg 64 :=
.seq NamedBody430_13 NamedBody430_60

def NamedBody430_62 : StackLang.HolProg 64 :=
.seq NamedBody430_10 NamedBody430_61

def NamedBody430_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody430_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody430_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1291#64)

def NamedBody430_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody430_68 : StackLang.HolProg 64 :=
.seq NamedBody430_66 NamedBody430_67

def NamedBody430_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody430_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody430_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody430_72 : StackLang.HolProg 64 :=
.seq NamedBody430_70 NamedBody430_71

def NamedBody430_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody430_72 NamedBody430_73

def NamedBody430_75 : StackLang.HolProg 64 :=
.seq NamedBody430_69 NamedBody430_74

def NamedBody430_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody430_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody430_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 430 5

def NamedBody430_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody430_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody430_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody430_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody430_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody430_85 : StackLang.HolProg 64 :=
.seq NamedBody430_83 NamedBody430_84

def NamedBody430_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody430_87 : StackLang.HolProg 64 :=
.seq NamedBody430_85 NamedBody430_86

def NamedBody430_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody430_89 : StackLang.HolProg 64 :=
.seq NamedBody430_87 NamedBody430_88

def NamedBody430_90 : StackLang.HolProg 64 :=
.seq NamedBody430_82 NamedBody430_89

def NamedBody430_91 : StackLang.HolProg 64 :=
.seq NamedBody430_81 NamedBody430_90

def NamedBody430_92 : StackLang.HolProg 64 :=
.seq NamedBody430_80 NamedBody430_91

def NamedBody430_93 : StackLang.HolProg 64 :=
.seq NamedBody430_79 NamedBody430_92

def NamedBody430_94 : StackLang.HolProg 64 :=
.seq NamedBody430_78 NamedBody430_93

def NamedBody430_95 : StackLang.HolProg 64 :=
.seq NamedBody430_77 NamedBody430_94

def NamedBody430_96 : StackLang.HolProg 64 :=
.seq NamedBody430_76 NamedBody430_95

def NamedBody430_97 : StackLang.HolProg 64 :=
.seq NamedBody430_75 NamedBody430_96

def NamedBody430_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody430_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody430_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody430_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody430_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody430_106 : StackLang.HolProg 64 :=
.seq NamedBody430_104 NamedBody430_105

def NamedBody430_107 : StackLang.HolProg 64 :=
.seq NamedBody430_103 NamedBody430_106

def NamedBody430_108 : StackLang.HolProg 64 :=
.seq NamedBody430_102 NamedBody430_107

def NamedBody430_109 : StackLang.HolProg 64 :=
.seq NamedBody430_101 NamedBody430_108

def NamedBody430_110 : StackLang.HolProg 64 :=
.seq NamedBody430_100 NamedBody430_109

def NamedBody430_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody430_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody430_113 : StackLang.HolProg 64 :=
.seq NamedBody430_111 NamedBody430_112

def NamedBody430_114 : StackLang.HolProg 64 :=
.call (some (NamedBody430_110, 1, 430, 4)) (Sum.inl 395) (some (NamedBody430_113, 430, 5))

def NamedBody430_115 : StackLang.HolProg 64 :=
.seq NamedBody430_99 NamedBody430_114

def NamedBody430_116 : StackLang.HolProg 64 :=
.seq NamedBody430_98 NamedBody430_115

def NamedBody430_117 : StackLang.HolProg 64 :=
.seq NamedBody430_97 NamedBody430_116

def NamedBody430_118 : StackLang.HolProg 64 :=
.seq NamedBody430_68 NamedBody430_117

def NamedBody430_119 : StackLang.HolProg 64 :=
.seq NamedBody430_65 NamedBody430_118

def NamedBody430_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody430_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody430_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody430_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody430_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody430_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1292#64)

def NamedBody430_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody430_130 : StackLang.HolProg 64 :=
.seq NamedBody430_128 NamedBody430_129

def NamedBody430_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody430_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody430_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody430_134 : StackLang.HolProg 64 :=
.seq NamedBody430_132 NamedBody430_133

def NamedBody430_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody430_134 NamedBody430_135

def NamedBody430_137 : StackLang.HolProg 64 :=
.seq NamedBody430_131 NamedBody430_136

def NamedBody430_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody430_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody430_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 430 7

def NamedBody430_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody430_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody430_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody430_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody430_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody430_147 : StackLang.HolProg 64 :=
.seq NamedBody430_145 NamedBody430_146

def NamedBody430_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody430_149 : StackLang.HolProg 64 :=
.seq NamedBody430_147 NamedBody430_148

def NamedBody430_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody430_151 : StackLang.HolProg 64 :=
.seq NamedBody430_149 NamedBody430_150

def NamedBody430_152 : StackLang.HolProg 64 :=
.seq NamedBody430_144 NamedBody430_151

def NamedBody430_153 : StackLang.HolProg 64 :=
.seq NamedBody430_143 NamedBody430_152

def NamedBody430_154 : StackLang.HolProg 64 :=
.seq NamedBody430_142 NamedBody430_153

def NamedBody430_155 : StackLang.HolProg 64 :=
.seq NamedBody430_141 NamedBody430_154

def NamedBody430_156 : StackLang.HolProg 64 :=
.seq NamedBody430_140 NamedBody430_155

def NamedBody430_157 : StackLang.HolProg 64 :=
.seq NamedBody430_139 NamedBody430_156

def NamedBody430_158 : StackLang.HolProg 64 :=
.seq NamedBody430_138 NamedBody430_157

def NamedBody430_159 : StackLang.HolProg 64 :=
.seq NamedBody430_137 NamedBody430_158

def NamedBody430_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody430_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody430_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody430_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody430_167 : StackLang.HolProg 64 :=
.seq NamedBody430_165 NamedBody430_166

def NamedBody430_168 : StackLang.HolProg 64 :=
.seq NamedBody430_164 NamedBody430_167

def NamedBody430_169 : StackLang.HolProg 64 :=
.seq NamedBody430_163 NamedBody430_168

def NamedBody430_170 : StackLang.HolProg 64 :=
.seq NamedBody430_162 NamedBody430_169

def NamedBody430_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody430_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody430_173 : StackLang.HolProg 64 :=
.seq NamedBody430_171 NamedBody430_172

def NamedBody430_174 : StackLang.HolProg 64 :=
.call (some (NamedBody430_170, 1, 430, 6)) (Sum.inl 423) (some (NamedBody430_173, 430, 7))

def NamedBody430_175 : StackLang.HolProg 64 :=
.seq NamedBody430_161 NamedBody430_174

def NamedBody430_176 : StackLang.HolProg 64 :=
.seq NamedBody430_160 NamedBody430_175

def NamedBody430_177 : StackLang.HolProg 64 :=
.seq NamedBody430_159 NamedBody430_176

def NamedBody430_178 : StackLang.HolProg 64 :=
.seq NamedBody430_130 NamedBody430_177

def NamedBody430_179 : StackLang.HolProg 64 :=
.seq NamedBody430_127 NamedBody430_178

def NamedBody430_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody430_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody430_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody430_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody430_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody430_185 : StackLang.HolProg 64 :=
.seq NamedBody430_183 NamedBody430_184

def NamedBody430_186 : StackLang.HolProg 64 :=
.seq NamedBody430_182 NamedBody430_185

def NamedBody430_187 : StackLang.HolProg 64 :=
.seq NamedBody430_181 NamedBody430_186

def NamedBody430_188 : StackLang.HolProg 64 :=
.seq NamedBody430_180 NamedBody430_187

def NamedBody430_189 : StackLang.HolProg 64 :=
.seq NamedBody430_179 NamedBody430_188

def NamedBody430_190 : StackLang.HolProg 64 :=
.seq NamedBody430_126 NamedBody430_189

def NamedBody430_191 : StackLang.HolProg 64 :=
.seq NamedBody430_125 NamedBody430_190

def NamedBody430_192 : StackLang.HolProg 64 :=
.seq NamedBody430_124 NamedBody430_191

def NamedBody430_193 : StackLang.HolProg 64 :=
.seq NamedBody430_123 NamedBody430_192

def NamedBody430_194 : StackLang.HolProg 64 :=
.seq NamedBody430_122 NamedBody430_193

def NamedBody430_195 : StackLang.HolProg 64 :=
.seq NamedBody430_121 NamedBody430_194

def NamedBody430_196 : StackLang.HolProg 64 :=
.seq NamedBody430_120 NamedBody430_195

def NamedBody430_197 : StackLang.HolProg 64 :=
.seq NamedBody430_119 NamedBody430_196

def NamedBody430_198 : StackLang.HolProg 64 :=
.seq NamedBody430_64 NamedBody430_197

def NamedBody430_199 : StackLang.HolProg 64 :=
.seq NamedBody430_63 NamedBody430_198

def NamedBody430_200 : StackLang.HolProg 64 :=
.seq NamedBody430_62 NamedBody430_199

def NamedBody430_201 : StackLang.HolProg 64 :=
.seq NamedBody430_9 NamedBody430_200

def NamedBody430_202 : StackLang.HolProg 64 :=
.seq NamedBody430_6 NamedBody430_201

def Named430 : Nat × StackLang.HolProg 64 := (430, NamedBody430_202)
theorem Named430_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed430 = Named430 := by
  kernel_rfl
#print axioms Named430_eq
end InitECandidate.Proofs.BackendStages
