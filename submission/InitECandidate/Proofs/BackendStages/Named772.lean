import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed772
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody772_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody772_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody772_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody772_3 : StackLang.HolProg 64 :=
.seq NamedBody772_1 NamedBody772_2

def NamedBody772_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody772_3 NamedBody772_4

def NamedBody772_6 : StackLang.HolProg 64 :=
.seq NamedBody772_0 NamedBody772_5

def NamedBody772_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody772_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_12 : StackLang.HolProg 64 :=
.seq NamedBody772_10 NamedBody772_11

def NamedBody772_13 : StackLang.HolProg 64 :=
.seq NamedBody772_9 NamedBody772_12

def NamedBody772_14 : StackLang.HolProg 64 :=
.seq NamedBody772_8 NamedBody772_13

def NamedBody772_15 : StackLang.HolProg 64 :=
.seq NamedBody772_7 NamedBody772_14

def NamedBody772_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3511#64)

def NamedBody772_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_19 : StackLang.HolProg 64 :=
.seq NamedBody772_17 NamedBody772_18

def NamedBody772_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody772_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody772_23 : StackLang.HolProg 64 :=
.seq NamedBody772_21 NamedBody772_22

def NamedBody772_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody772_23 NamedBody772_24

def NamedBody772_26 : StackLang.HolProg 64 :=
.seq NamedBody772_20 NamedBody772_25

def NamedBody772_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody772_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 3

def NamedBody772_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody772_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody772_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody772_36 : StackLang.HolProg 64 :=
.seq NamedBody772_34 NamedBody772_35

def NamedBody772_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody772_38 : StackLang.HolProg 64 :=
.seq NamedBody772_36 NamedBody772_37

def NamedBody772_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_40 : StackLang.HolProg 64 :=
.seq NamedBody772_38 NamedBody772_39

def NamedBody772_41 : StackLang.HolProg 64 :=
.seq NamedBody772_33 NamedBody772_40

def NamedBody772_42 : StackLang.HolProg 64 :=
.seq NamedBody772_32 NamedBody772_41

def NamedBody772_43 : StackLang.HolProg 64 :=
.seq NamedBody772_31 NamedBody772_42

def NamedBody772_44 : StackLang.HolProg 64 :=
.seq NamedBody772_30 NamedBody772_43

def NamedBody772_45 : StackLang.HolProg 64 :=
.seq NamedBody772_29 NamedBody772_44

def NamedBody772_46 : StackLang.HolProg 64 :=
.seq NamedBody772_28 NamedBody772_45

def NamedBody772_47 : StackLang.HolProg 64 :=
.seq NamedBody772_27 NamedBody772_46

def NamedBody772_48 : StackLang.HolProg 64 :=
.seq NamedBody772_26 NamedBody772_47

def NamedBody772_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody772_56 : StackLang.HolProg 64 :=
.seq NamedBody772_54 NamedBody772_55

def NamedBody772_57 : StackLang.HolProg 64 :=
.seq NamedBody772_53 NamedBody772_56

def NamedBody772_58 : StackLang.HolProg 64 :=
.seq NamedBody772_52 NamedBody772_57

def NamedBody772_59 : StackLang.HolProg 64 :=
.seq NamedBody772_51 NamedBody772_58

def NamedBody772_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody772_62 : StackLang.HolProg 64 :=
.seq NamedBody772_60 NamedBody772_61

def NamedBody772_63 : StackLang.HolProg 64 :=
.call (some (NamedBody772_59, 1, 772, 2)) (Sum.inl 69) (some (NamedBody772_62, 772, 3))

def NamedBody772_64 : StackLang.HolProg 64 :=
.seq NamedBody772_50 NamedBody772_63

def NamedBody772_65 : StackLang.HolProg 64 :=
.seq NamedBody772_49 NamedBody772_64

def NamedBody772_66 : StackLang.HolProg 64 :=
.seq NamedBody772_48 NamedBody772_65

def NamedBody772_67 : StackLang.HolProg 64 :=
.seq NamedBody772_19 NamedBody772_66

def NamedBody772_68 : StackLang.HolProg 64 :=
.seq NamedBody772_16 NamedBody772_67

def NamedBody772_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 144#64)

def NamedBody772_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody772_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3512#64)

def NamedBody772_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_75 : StackLang.HolProg 64 :=
.seq NamedBody772_73 NamedBody772_74

def NamedBody772_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody772_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody772_79 : StackLang.HolProg 64 :=
.seq NamedBody772_77 NamedBody772_78

def NamedBody772_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody772_79 NamedBody772_80

def NamedBody772_82 : StackLang.HolProg 64 :=
.seq NamedBody772_76 NamedBody772_81

def NamedBody772_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody772_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 5

def NamedBody772_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody772_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody772_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody772_92 : StackLang.HolProg 64 :=
.seq NamedBody772_90 NamedBody772_91

def NamedBody772_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody772_94 : StackLang.HolProg 64 :=
.seq NamedBody772_92 NamedBody772_93

def NamedBody772_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_96 : StackLang.HolProg 64 :=
.seq NamedBody772_94 NamedBody772_95

def NamedBody772_97 : StackLang.HolProg 64 :=
.seq NamedBody772_89 NamedBody772_96

def NamedBody772_98 : StackLang.HolProg 64 :=
.seq NamedBody772_88 NamedBody772_97

def NamedBody772_99 : StackLang.HolProg 64 :=
.seq NamedBody772_87 NamedBody772_98

def NamedBody772_100 : StackLang.HolProg 64 :=
.seq NamedBody772_86 NamedBody772_99

def NamedBody772_101 : StackLang.HolProg 64 :=
.seq NamedBody772_85 NamedBody772_100

def NamedBody772_102 : StackLang.HolProg 64 :=
.seq NamedBody772_84 NamedBody772_101

def NamedBody772_103 : StackLang.HolProg 64 :=
.seq NamedBody772_83 NamedBody772_102

def NamedBody772_104 : StackLang.HolProg 64 :=
.seq NamedBody772_82 NamedBody772_103

def NamedBody772_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody772_112 : StackLang.HolProg 64 :=
.seq NamedBody772_110 NamedBody772_111

def NamedBody772_113 : StackLang.HolProg 64 :=
.seq NamedBody772_109 NamedBody772_112

def NamedBody772_114 : StackLang.HolProg 64 :=
.seq NamedBody772_108 NamedBody772_113

def NamedBody772_115 : StackLang.HolProg 64 :=
.seq NamedBody772_107 NamedBody772_114

def NamedBody772_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody772_118 : StackLang.HolProg 64 :=
.seq NamedBody772_116 NamedBody772_117

def NamedBody772_119 : StackLang.HolProg 64 :=
.call (some (NamedBody772_115, 1, 772, 4)) (Sum.inl 68) (some (NamedBody772_118, 772, 5))

def NamedBody772_120 : StackLang.HolProg 64 :=
.seq NamedBody772_106 NamedBody772_119

def NamedBody772_121 : StackLang.HolProg 64 :=
.seq NamedBody772_105 NamedBody772_120

def NamedBody772_122 : StackLang.HolProg 64 :=
.seq NamedBody772_104 NamedBody772_121

def NamedBody772_123 : StackLang.HolProg 64 :=
.seq NamedBody772_75 NamedBody772_122

def NamedBody772_124 : StackLang.HolProg 64 :=
.seq NamedBody772_72 NamedBody772_123

def NamedBody772_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 144#64)

def NamedBody772_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3513#64)

def NamedBody772_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_131 : StackLang.HolProg 64 :=
.seq NamedBody772_129 NamedBody772_130

def NamedBody772_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody772_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody772_135 : StackLang.HolProg 64 :=
.seq NamedBody772_133 NamedBody772_134

def NamedBody772_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody772_135 NamedBody772_136

def NamedBody772_138 : StackLang.HolProg 64 :=
.seq NamedBody772_132 NamedBody772_137

def NamedBody772_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody772_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 7

def NamedBody772_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody772_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody772_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody772_148 : StackLang.HolProg 64 :=
.seq NamedBody772_146 NamedBody772_147

def NamedBody772_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody772_150 : StackLang.HolProg 64 :=
.seq NamedBody772_148 NamedBody772_149

def NamedBody772_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_152 : StackLang.HolProg 64 :=
.seq NamedBody772_150 NamedBody772_151

def NamedBody772_153 : StackLang.HolProg 64 :=
.seq NamedBody772_145 NamedBody772_152

def NamedBody772_154 : StackLang.HolProg 64 :=
.seq NamedBody772_144 NamedBody772_153

def NamedBody772_155 : StackLang.HolProg 64 :=
.seq NamedBody772_143 NamedBody772_154

def NamedBody772_156 : StackLang.HolProg 64 :=
.seq NamedBody772_142 NamedBody772_155

def NamedBody772_157 : StackLang.HolProg 64 :=
.seq NamedBody772_141 NamedBody772_156

def NamedBody772_158 : StackLang.HolProg 64 :=
.seq NamedBody772_140 NamedBody772_157

def NamedBody772_159 : StackLang.HolProg 64 :=
.seq NamedBody772_139 NamedBody772_158

def NamedBody772_160 : StackLang.HolProg 64 :=
.seq NamedBody772_138 NamedBody772_159

def NamedBody772_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody772_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_171 : StackLang.HolProg 64 :=
.seq NamedBody772_169 NamedBody772_170

def NamedBody772_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_174 : StackLang.HolProg 64 :=
.seq NamedBody772_172 NamedBody772_173

def NamedBody772_175 : StackLang.HolProg 64 :=
.seq NamedBody772_171 NamedBody772_174

def NamedBody772_176 : StackLang.HolProg 64 :=
.seq NamedBody772_168 NamedBody772_175

def NamedBody772_177 : StackLang.HolProg 64 :=
.seq NamedBody772_167 NamedBody772_176

def NamedBody772_178 : StackLang.HolProg 64 :=
.seq NamedBody772_166 NamedBody772_177

def NamedBody772_179 : StackLang.HolProg 64 :=
.seq NamedBody772_165 NamedBody772_178

def NamedBody772_180 : StackLang.HolProg 64 :=
.seq NamedBody772_164 NamedBody772_179

def NamedBody772_181 : StackLang.HolProg 64 :=
.seq NamedBody772_163 NamedBody772_180

def NamedBody772_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_185 : StackLang.HolProg 64 :=
.seq NamedBody772_183 NamedBody772_184

def NamedBody772_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_188 : StackLang.HolProg 64 :=
.seq NamedBody772_186 NamedBody772_187

def NamedBody772_189 : StackLang.HolProg 64 :=
.seq NamedBody772_185 NamedBody772_188

def NamedBody772_190 : StackLang.HolProg 64 :=
.seq NamedBody772_182 NamedBody772_189

def NamedBody772_191 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody772_192 : StackLang.HolProg 64 :=
.seq NamedBody772_190 NamedBody772_191

def NamedBody772_193 : StackLang.HolProg 64 :=
.call (some (NamedBody772_181, 1, 772, 6)) (Sum.inl 68) (some (NamedBody772_192, 772, 7))

def NamedBody772_194 : StackLang.HolProg 64 :=
.seq NamedBody772_162 NamedBody772_193

def NamedBody772_195 : StackLang.HolProg 64 :=
.seq NamedBody772_161 NamedBody772_194

def NamedBody772_196 : StackLang.HolProg 64 :=
.seq NamedBody772_160 NamedBody772_195

def NamedBody772_197 : StackLang.HolProg 64 :=
.seq NamedBody772_131 NamedBody772_196

def NamedBody772_198 : StackLang.HolProg 64 :=
.seq NamedBody772_128 NamedBody772_197

def NamedBody772_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody772_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody772_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_203 : StackLang.HolProg 64 :=
.seq NamedBody772_201 NamedBody772_202

def NamedBody772_204 : StackLang.HolProg 64 :=
.seq NamedBody772_200 NamedBody772_203

def NamedBody772_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3514#64)

def NamedBody772_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_208 : StackLang.HolProg 64 :=
.seq NamedBody772_206 NamedBody772_207

def NamedBody772_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody772_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody772_212 : StackLang.HolProg 64 :=
.seq NamedBody772_210 NamedBody772_211

def NamedBody772_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_214 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody772_212 NamedBody772_213

def NamedBody772_215 : StackLang.HolProg 64 :=
.seq NamedBody772_209 NamedBody772_214

def NamedBody772_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody772_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 9

def NamedBody772_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody772_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody772_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody772_225 : StackLang.HolProg 64 :=
.seq NamedBody772_223 NamedBody772_224

def NamedBody772_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody772_227 : StackLang.HolProg 64 :=
.seq NamedBody772_225 NamedBody772_226

def NamedBody772_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_229 : StackLang.HolProg 64 :=
.seq NamedBody772_227 NamedBody772_228

def NamedBody772_230 : StackLang.HolProg 64 :=
.seq NamedBody772_222 NamedBody772_229

def NamedBody772_231 : StackLang.HolProg 64 :=
.seq NamedBody772_221 NamedBody772_230

def NamedBody772_232 : StackLang.HolProg 64 :=
.seq NamedBody772_220 NamedBody772_231

def NamedBody772_233 : StackLang.HolProg 64 :=
.seq NamedBody772_219 NamedBody772_232

def NamedBody772_234 : StackLang.HolProg 64 :=
.seq NamedBody772_218 NamedBody772_233

def NamedBody772_235 : StackLang.HolProg 64 :=
.seq NamedBody772_217 NamedBody772_234

def NamedBody772_236 : StackLang.HolProg 64 :=
.seq NamedBody772_216 NamedBody772_235

def NamedBody772_237 : StackLang.HolProg 64 :=
.seq NamedBody772_215 NamedBody772_236

def NamedBody772_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_245 : StackLang.HolProg 64 :=
.seq NamedBody772_243 NamedBody772_244

def NamedBody772_246 : StackLang.HolProg 64 :=
.seq NamedBody772_242 NamedBody772_245

def NamedBody772_247 : StackLang.HolProg 64 :=
.seq NamedBody772_241 NamedBody772_246

def NamedBody772_248 : StackLang.HolProg 64 :=
.seq NamedBody772_240 NamedBody772_247

def NamedBody772_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody772_251 : StackLang.HolProg 64 :=
.seq NamedBody772_249 NamedBody772_250

def NamedBody772_252 : StackLang.HolProg 64 :=
.call (some (NamedBody772_248, 1, 772, 8)) (Sum.inl 768) (some (NamedBody772_251, 772, 9))

def NamedBody772_253 : StackLang.HolProg 64 :=
.seq NamedBody772_239 NamedBody772_252

def NamedBody772_254 : StackLang.HolProg 64 :=
.seq NamedBody772_238 NamedBody772_253

def NamedBody772_255 : StackLang.HolProg 64 :=
.seq NamedBody772_237 NamedBody772_254

def NamedBody772_256 : StackLang.HolProg 64 :=
.seq NamedBody772_208 NamedBody772_255

def NamedBody772_257 : StackLang.HolProg 64 :=
.seq NamedBody772_205 NamedBody772_256

def NamedBody772_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody772_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_261 : StackLang.HolProg 64 :=
.seq NamedBody772_259 NamedBody772_260

def NamedBody772_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3515#64)

def NamedBody772_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_265 : StackLang.HolProg 64 :=
.seq NamedBody772_263 NamedBody772_264

def NamedBody772_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody772_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody772_269 : StackLang.HolProg 64 :=
.seq NamedBody772_267 NamedBody772_268

def NamedBody772_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_271 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody772_269 NamedBody772_270

def NamedBody772_272 : StackLang.HolProg 64 :=
.seq NamedBody772_266 NamedBody772_271

def NamedBody772_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody772_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 11

def NamedBody772_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody772_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody772_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody772_282 : StackLang.HolProg 64 :=
.seq NamedBody772_280 NamedBody772_281

def NamedBody772_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody772_284 : StackLang.HolProg 64 :=
.seq NamedBody772_282 NamedBody772_283

def NamedBody772_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_286 : StackLang.HolProg 64 :=
.seq NamedBody772_284 NamedBody772_285

def NamedBody772_287 : StackLang.HolProg 64 :=
.seq NamedBody772_279 NamedBody772_286

def NamedBody772_288 : StackLang.HolProg 64 :=
.seq NamedBody772_278 NamedBody772_287

def NamedBody772_289 : StackLang.HolProg 64 :=
.seq NamedBody772_277 NamedBody772_288

def NamedBody772_290 : StackLang.HolProg 64 :=
.seq NamedBody772_276 NamedBody772_289

def NamedBody772_291 : StackLang.HolProg 64 :=
.seq NamedBody772_275 NamedBody772_290

def NamedBody772_292 : StackLang.HolProg 64 :=
.seq NamedBody772_274 NamedBody772_291

def NamedBody772_293 : StackLang.HolProg 64 :=
.seq NamedBody772_273 NamedBody772_292

def NamedBody772_294 : StackLang.HolProg 64 :=
.seq NamedBody772_272 NamedBody772_293

def NamedBody772_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_305 : StackLang.HolProg 64 :=
.seq NamedBody772_303 NamedBody772_304

def NamedBody772_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_308 : StackLang.HolProg 64 :=
.seq NamedBody772_306 NamedBody772_307

def NamedBody772_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody772_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_311 : StackLang.HolProg 64 :=
.seq NamedBody772_309 NamedBody772_310

def NamedBody772_312 : StackLang.HolProg 64 :=
.seq NamedBody772_308 NamedBody772_311

def NamedBody772_313 : StackLang.HolProg 64 :=
.seq NamedBody772_305 NamedBody772_312

def NamedBody772_314 : StackLang.HolProg 64 :=
.seq NamedBody772_302 NamedBody772_313

def NamedBody772_315 : StackLang.HolProg 64 :=
.seq NamedBody772_301 NamedBody772_314

def NamedBody772_316 : StackLang.HolProg 64 :=
.seq NamedBody772_300 NamedBody772_315

def NamedBody772_317 : StackLang.HolProg 64 :=
.seq NamedBody772_299 NamedBody772_316

def NamedBody772_318 : StackLang.HolProg 64 :=
.seq NamedBody772_298 NamedBody772_317

def NamedBody772_319 : StackLang.HolProg 64 :=
.seq NamedBody772_297 NamedBody772_318

def NamedBody772_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_324 : StackLang.HolProg 64 :=
.seq NamedBody772_322 NamedBody772_323

def NamedBody772_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_327 : StackLang.HolProg 64 :=
.seq NamedBody772_325 NamedBody772_326

def NamedBody772_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody772_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_330 : StackLang.HolProg 64 :=
.seq NamedBody772_328 NamedBody772_329

def NamedBody772_331 : StackLang.HolProg 64 :=
.seq NamedBody772_327 NamedBody772_330

def NamedBody772_332 : StackLang.HolProg 64 :=
.seq NamedBody772_324 NamedBody772_331

def NamedBody772_333 : StackLang.HolProg 64 :=
.seq NamedBody772_321 NamedBody772_332

def NamedBody772_334 : StackLang.HolProg 64 :=
.seq NamedBody772_320 NamedBody772_333

def NamedBody772_335 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody772_336 : StackLang.HolProg 64 :=
.seq NamedBody772_334 NamedBody772_335

def NamedBody772_337 : StackLang.HolProg 64 :=
.call (some (NamedBody772_319, 1, 772, 10)) (Sum.inl 766) (some (NamedBody772_336, 772, 11))

def NamedBody772_338 : StackLang.HolProg 64 :=
.seq NamedBody772_296 NamedBody772_337

def NamedBody772_339 : StackLang.HolProg 64 :=
.seq NamedBody772_295 NamedBody772_338

def NamedBody772_340 : StackLang.HolProg 64 :=
.seq NamedBody772_294 NamedBody772_339

def NamedBody772_341 : StackLang.HolProg 64 :=
.seq NamedBody772_265 NamedBody772_340

def NamedBody772_342 : StackLang.HolProg 64 :=
.seq NamedBody772_262 NamedBody772_341

def NamedBody772_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody772_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody772_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody772_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody772_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody772_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody772_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody772_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_360 : StackLang.HolProg 64 :=
.seq NamedBody772_358 NamedBody772_359

def NamedBody772_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody772_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_363 : StackLang.HolProg 64 :=
.seq NamedBody772_361 NamedBody772_362

def NamedBody772_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody772_366 : StackLang.HolProg 64 :=
.seq NamedBody772_364 NamedBody772_365

def NamedBody772_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody772_370 : StackLang.HolProg 64 :=
.seq NamedBody772_368 NamedBody772_369

def NamedBody772_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_373 : StackLang.HolProg 64 :=
.seq NamedBody772_371 NamedBody772_372

def NamedBody772_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_375 : StackLang.HolProg 64 :=
.seq NamedBody772_373 NamedBody772_374

def NamedBody772_376 : StackLang.HolProg 64 :=
.seq NamedBody772_370 NamedBody772_375

def NamedBody772_377 : StackLang.HolProg 64 :=
.seq NamedBody772_367 NamedBody772_376

def NamedBody772_378 : StackLang.HolProg 64 :=
.seq NamedBody772_366 NamedBody772_377

def NamedBody772_379 : StackLang.HolProg 64 :=
.seq NamedBody772_363 NamedBody772_378

def NamedBody772_380 : StackLang.HolProg 64 :=
.seq NamedBody772_360 NamedBody772_379

def NamedBody772_381 : StackLang.HolProg 64 :=
.seq NamedBody772_357 NamedBody772_380

def NamedBody772_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3516#64)

def NamedBody772_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_385 : StackLang.HolProg 64 :=
.seq NamedBody772_383 NamedBody772_384

def NamedBody772_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody772_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody772_389 : StackLang.HolProg 64 :=
.seq NamedBody772_387 NamedBody772_388

def NamedBody772_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_391 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody772_389 NamedBody772_390

def NamedBody772_392 : StackLang.HolProg 64 :=
.seq NamedBody772_386 NamedBody772_391

def NamedBody772_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody772_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 13

def NamedBody772_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody772_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody772_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody772_402 : StackLang.HolProg 64 :=
.seq NamedBody772_400 NamedBody772_401

def NamedBody772_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody772_404 : StackLang.HolProg 64 :=
.seq NamedBody772_402 NamedBody772_403

def NamedBody772_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_406 : StackLang.HolProg 64 :=
.seq NamedBody772_404 NamedBody772_405

def NamedBody772_407 : StackLang.HolProg 64 :=
.seq NamedBody772_399 NamedBody772_406

def NamedBody772_408 : StackLang.HolProg 64 :=
.seq NamedBody772_398 NamedBody772_407

def NamedBody772_409 : StackLang.HolProg 64 :=
.seq NamedBody772_397 NamedBody772_408

def NamedBody772_410 : StackLang.HolProg 64 :=
.seq NamedBody772_396 NamedBody772_409

def NamedBody772_411 : StackLang.HolProg 64 :=
.seq NamedBody772_395 NamedBody772_410

def NamedBody772_412 : StackLang.HolProg 64 :=
.seq NamedBody772_394 NamedBody772_411

def NamedBody772_413 : StackLang.HolProg 64 :=
.seq NamedBody772_393 NamedBody772_412

def NamedBody772_414 : StackLang.HolProg 64 :=
.seq NamedBody772_392 NamedBody772_413

def NamedBody772_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody772_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_426 : StackLang.HolProg 64 :=
.seq NamedBody772_424 NamedBody772_425

def NamedBody772_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody772_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody772_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_431 : StackLang.HolProg 64 :=
.seq NamedBody772_429 NamedBody772_430

def NamedBody772_432 : StackLang.HolProg 64 :=
.seq NamedBody772_428 NamedBody772_431

def NamedBody772_433 : StackLang.HolProg 64 :=
.seq NamedBody772_427 NamedBody772_432

def NamedBody772_434 : StackLang.HolProg 64 :=
.seq NamedBody772_426 NamedBody772_433

def NamedBody772_435 : StackLang.HolProg 64 :=
.seq NamedBody772_423 NamedBody772_434

def NamedBody772_436 : StackLang.HolProg 64 :=
.seq NamedBody772_422 NamedBody772_435

def NamedBody772_437 : StackLang.HolProg 64 :=
.seq NamedBody772_421 NamedBody772_436

def NamedBody772_438 : StackLang.HolProg 64 :=
.seq NamedBody772_420 NamedBody772_437

def NamedBody772_439 : StackLang.HolProg 64 :=
.seq NamedBody772_419 NamedBody772_438

def NamedBody772_440 : StackLang.HolProg 64 :=
.seq NamedBody772_418 NamedBody772_439

def NamedBody772_441 : StackLang.HolProg 64 :=
.seq NamedBody772_417 NamedBody772_440

def NamedBody772_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody772_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_447 : StackLang.HolProg 64 :=
.seq NamedBody772_445 NamedBody772_446

def NamedBody772_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody772_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody772_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_452 : StackLang.HolProg 64 :=
.seq NamedBody772_450 NamedBody772_451

def NamedBody772_453 : StackLang.HolProg 64 :=
.seq NamedBody772_449 NamedBody772_452

def NamedBody772_454 : StackLang.HolProg 64 :=
.seq NamedBody772_448 NamedBody772_453

def NamedBody772_455 : StackLang.HolProg 64 :=
.seq NamedBody772_447 NamedBody772_454

def NamedBody772_456 : StackLang.HolProg 64 :=
.seq NamedBody772_444 NamedBody772_455

def NamedBody772_457 : StackLang.HolProg 64 :=
.seq NamedBody772_443 NamedBody772_456

def NamedBody772_458 : StackLang.HolProg 64 :=
.seq NamedBody772_442 NamedBody772_457

def NamedBody772_459 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody772_460 : StackLang.HolProg 64 :=
.seq NamedBody772_458 NamedBody772_459

def NamedBody772_461 : StackLang.HolProg 64 :=
.call (some (NamedBody772_441, 1, 772, 12)) (Sum.inl 770) (some (NamedBody772_460, 772, 13))

def NamedBody772_462 : StackLang.HolProg 64 :=
.seq NamedBody772_416 NamedBody772_461

def NamedBody772_463 : StackLang.HolProg 64 :=
.seq NamedBody772_415 NamedBody772_462

def NamedBody772_464 : StackLang.HolProg 64 :=
.seq NamedBody772_414 NamedBody772_463

def NamedBody772_465 : StackLang.HolProg 64 :=
.seq NamedBody772_385 NamedBody772_464

def NamedBody772_466 : StackLang.HolProg 64 :=
.seq NamedBody772_382 NamedBody772_465

def NamedBody772_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_469 : StackLang.HolProg 64 :=
.seq NamedBody772_467 NamedBody772_468

def NamedBody772_470 : StackLang.HolProg 64 :=
.seq NamedBody772_466 NamedBody772_469

def NamedBody772_471 : StackLang.HolProg 64 :=
.seq NamedBody772_381 NamedBody772_470

def NamedBody772_472 : StackLang.HolProg 64 :=
.seq NamedBody772_356 NamedBody772_471

def NamedBody772_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_476 : StackLang.HolProg 64 :=
.seq NamedBody772_474 NamedBody772_475

def NamedBody772_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_479 : StackLang.HolProg 64 :=
.seq NamedBody772_477 NamedBody772_478

def NamedBody772_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody772_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_483 : StackLang.HolProg 64 :=
.seq NamedBody772_481 NamedBody772_482

def NamedBody772_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_487 : StackLang.HolProg 64 :=
.seq NamedBody772_485 NamedBody772_486

def NamedBody772_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody772_489 : StackLang.HolProg 64 :=
.seq NamedBody772_487 NamedBody772_488

def NamedBody772_490 : StackLang.HolProg 64 :=
.seq NamedBody772_484 NamedBody772_489

def NamedBody772_491 : StackLang.HolProg 64 :=
.seq NamedBody772_483 NamedBody772_490

def NamedBody772_492 : StackLang.HolProg 64 :=
.seq NamedBody772_480 NamedBody772_491

def NamedBody772_493 : StackLang.HolProg 64 :=
.seq NamedBody772_479 NamedBody772_492

def NamedBody772_494 : StackLang.HolProg 64 :=
.seq NamedBody772_476 NamedBody772_493

def NamedBody772_495 : StackLang.HolProg 64 :=
.seq NamedBody772_473 NamedBody772_494

def NamedBody772_496 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody772_472 NamedBody772_495

def NamedBody772_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody772_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody772_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody772_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody772_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody772_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody772_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody772_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 1#64)

def NamedBody772_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody772_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody772_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody772_517 : StackLang.HolProg 64 :=
.seq NamedBody772_515 NamedBody772_516

def NamedBody772_518 : StackLang.HolProg 64 :=
.seq NamedBody772_514 NamedBody772_517

def NamedBody772_519 : StackLang.HolProg 64 :=
.seq NamedBody772_513 NamedBody772_518

def NamedBody772_520 : StackLang.HolProg 64 :=
.seq NamedBody772_512 NamedBody772_519

def NamedBody772_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3517#64)

def NamedBody772_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_524 : StackLang.HolProg 64 :=
.seq NamedBody772_522 NamedBody772_523

def NamedBody772_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody772_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody772_528 : StackLang.HolProg 64 :=
.seq NamedBody772_526 NamedBody772_527

def NamedBody772_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_530 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody772_528 NamedBody772_529

def NamedBody772_531 : StackLang.HolProg 64 :=
.seq NamedBody772_525 NamedBody772_530

def NamedBody772_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody772_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 15

def NamedBody772_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody772_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody772_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody772_541 : StackLang.HolProg 64 :=
.seq NamedBody772_539 NamedBody772_540

def NamedBody772_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody772_543 : StackLang.HolProg 64 :=
.seq NamedBody772_541 NamedBody772_542

def NamedBody772_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_545 : StackLang.HolProg 64 :=
.seq NamedBody772_543 NamedBody772_544

def NamedBody772_546 : StackLang.HolProg 64 :=
.seq NamedBody772_538 NamedBody772_545

def NamedBody772_547 : StackLang.HolProg 64 :=
.seq NamedBody772_537 NamedBody772_546

def NamedBody772_548 : StackLang.HolProg 64 :=
.seq NamedBody772_536 NamedBody772_547

def NamedBody772_549 : StackLang.HolProg 64 :=
.seq NamedBody772_535 NamedBody772_548

def NamedBody772_550 : StackLang.HolProg 64 :=
.seq NamedBody772_534 NamedBody772_549

def NamedBody772_551 : StackLang.HolProg 64 :=
.seq NamedBody772_533 NamedBody772_550

def NamedBody772_552 : StackLang.HolProg 64 :=
.seq NamedBody772_532 NamedBody772_551

def NamedBody772_553 : StackLang.HolProg 64 :=
.seq NamedBody772_531 NamedBody772_552

def NamedBody772_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody772_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody772_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_569 : StackLang.HolProg 64 :=
.seq NamedBody772_567 NamedBody772_568

def NamedBody772_570 : StackLang.HolProg 64 :=
.seq NamedBody772_566 NamedBody772_569

def NamedBody772_571 : StackLang.HolProg 64 :=
.seq NamedBody772_565 NamedBody772_570

def NamedBody772_572 : StackLang.HolProg 64 :=
.seq NamedBody772_564 NamedBody772_571

def NamedBody772_573 : StackLang.HolProg 64 :=
.seq NamedBody772_563 NamedBody772_572

def NamedBody772_574 : StackLang.HolProg 64 :=
.seq NamedBody772_562 NamedBody772_573

def NamedBody772_575 : StackLang.HolProg 64 :=
.seq NamedBody772_561 NamedBody772_574

def NamedBody772_576 : StackLang.HolProg 64 :=
.seq NamedBody772_560 NamedBody772_575

def NamedBody772_577 : StackLang.HolProg 64 :=
.seq NamedBody772_559 NamedBody772_576

def NamedBody772_578 : StackLang.HolProg 64 :=
.seq NamedBody772_558 NamedBody772_577

def NamedBody772_579 : StackLang.HolProg 64 :=
.seq NamedBody772_557 NamedBody772_578

def NamedBody772_580 : StackLang.HolProg 64 :=
.seq NamedBody772_556 NamedBody772_579

def NamedBody772_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody772_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody772_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_590 : StackLang.HolProg 64 :=
.seq NamedBody772_588 NamedBody772_589

def NamedBody772_591 : StackLang.HolProg 64 :=
.seq NamedBody772_587 NamedBody772_590

def NamedBody772_592 : StackLang.HolProg 64 :=
.seq NamedBody772_586 NamedBody772_591

def NamedBody772_593 : StackLang.HolProg 64 :=
.seq NamedBody772_585 NamedBody772_592

def NamedBody772_594 : StackLang.HolProg 64 :=
.seq NamedBody772_584 NamedBody772_593

def NamedBody772_595 : StackLang.HolProg 64 :=
.seq NamedBody772_583 NamedBody772_594

def NamedBody772_596 : StackLang.HolProg 64 :=
.seq NamedBody772_582 NamedBody772_595

def NamedBody772_597 : StackLang.HolProg 64 :=
.seq NamedBody772_581 NamedBody772_596

def NamedBody772_598 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody772_599 : StackLang.HolProg 64 :=
.seq NamedBody772_597 NamedBody772_598

def NamedBody772_600 : StackLang.HolProg 64 :=
.call (some (NamedBody772_580, 1, 772, 14)) (Sum.inl 771) (some (NamedBody772_599, 772, 15))

def NamedBody772_601 : StackLang.HolProg 64 :=
.seq NamedBody772_555 NamedBody772_600

def NamedBody772_602 : StackLang.HolProg 64 :=
.seq NamedBody772_554 NamedBody772_601

def NamedBody772_603 : StackLang.HolProg 64 :=
.seq NamedBody772_553 NamedBody772_602

def NamedBody772_604 : StackLang.HolProg 64 :=
.seq NamedBody772_524 NamedBody772_603

def NamedBody772_605 : StackLang.HolProg 64 :=
.seq NamedBody772_521 NamedBody772_604

def NamedBody772_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def NamedBody772_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_609 : StackLang.HolProg 64 :=
.seq NamedBody772_607 NamedBody772_608

def NamedBody772_610 : StackLang.HolProg 64 :=
.seq NamedBody772_606 NamedBody772_609

def NamedBody772_611 : StackLang.HolProg 64 :=
.seq NamedBody772_605 NamedBody772_610

def NamedBody772_612 : StackLang.HolProg 64 :=
.seq NamedBody772_520 NamedBody772_611

def NamedBody772_613 : StackLang.HolProg 64 :=
.seq NamedBody772_511 NamedBody772_612

def NamedBody772_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_620 : StackLang.HolProg 64 :=
.seq NamedBody772_618 NamedBody772_619

def NamedBody772_621 : StackLang.HolProg 64 :=
.seq NamedBody772_617 NamedBody772_620

def NamedBody772_622 : StackLang.HolProg 64 :=
.seq NamedBody772_616 NamedBody772_621

def NamedBody772_623 : StackLang.HolProg 64 :=
.seq NamedBody772_615 NamedBody772_622

def NamedBody772_624 : StackLang.HolProg 64 :=
.seq NamedBody772_614 NamedBody772_623

def NamedBody772_625 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody772_613 NamedBody772_624

def NamedBody772_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody772_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_632 : StackLang.HolProg 64 :=
.seq NamedBody772_630 NamedBody772_631

def NamedBody772_633 : StackLang.HolProg 64 :=
.seq NamedBody772_629 NamedBody772_632

def NamedBody772_634 : StackLang.HolProg 64 :=
.seq NamedBody772_628 NamedBody772_633

def NamedBody772_635 : StackLang.HolProg 64 :=
.seq NamedBody772_627 NamedBody772_634

def NamedBody772_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody772_637 : StackLang.HolProg 64 :=
.seq NamedBody772_635 NamedBody772_636

def NamedBody772_638 : StackLang.HolProg 64 :=
.seq NamedBody772_626 NamedBody772_637

def NamedBody772_639 : StackLang.HolProg 64 :=
.seq NamedBody772_625 NamedBody772_638

def NamedBody772_640 : StackLang.HolProg 64 :=
.seq NamedBody772_510 NamedBody772_639

def NamedBody772_641 : StackLang.HolProg 64 :=
.seq NamedBody772_509 NamedBody772_640

def NamedBody772_642 : StackLang.HolProg 64 :=
.seq NamedBody772_508 NamedBody772_641

def NamedBody772_643 : StackLang.HolProg 64 :=
.seq NamedBody772_507 NamedBody772_642

def NamedBody772_644 : StackLang.HolProg 64 :=
.seq NamedBody772_506 NamedBody772_643

def NamedBody772_645 : StackLang.HolProg 64 :=
.seq NamedBody772_505 NamedBody772_644

def NamedBody772_646 : StackLang.HolProg 64 :=
.seq NamedBody772_504 NamedBody772_645

def NamedBody772_647 : StackLang.HolProg 64 :=
.seq NamedBody772_503 NamedBody772_646

def NamedBody772_648 : StackLang.HolProg 64 :=
.seq NamedBody772_502 NamedBody772_647

def NamedBody772_649 : StackLang.HolProg 64 :=
.seq NamedBody772_501 NamedBody772_648

def NamedBody772_650 : StackLang.HolProg 64 :=
.seq NamedBody772_500 NamedBody772_649

def NamedBody772_651 : StackLang.HolProg 64 :=
.seq NamedBody772_499 NamedBody772_650

def NamedBody772_652 : StackLang.HolProg 64 :=
.seq NamedBody772_498 NamedBody772_651

def NamedBody772_653 : StackLang.HolProg 64 :=
.seq NamedBody772_497 NamedBody772_652

def NamedBody772_654 : StackLang.HolProg 64 :=
.seq NamedBody772_496 NamedBody772_653

def NamedBody772_655 : StackLang.HolProg 64 :=
.seq NamedBody772_355 NamedBody772_654

def NamedBody772_656 : StackLang.HolProg 64 :=
.seq NamedBody772_354 NamedBody772_655

def NamedBody772_657 : StackLang.HolProg 64 :=
.seq NamedBody772_353 NamedBody772_656

def NamedBody772_658 : StackLang.HolProg 64 :=
.seq NamedBody772_352 NamedBody772_657

def NamedBody772_659 : StackLang.HolProg 64 :=
.seq NamedBody772_351 NamedBody772_658

def NamedBody772_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody772_662 : StackLang.HolProg 64 :=
.seq NamedBody772_660 NamedBody772_661

def NamedBody772_663 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody772_659 NamedBody772_662

def NamedBody772_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody772_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody772_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody772_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody772_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody772_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_672 : StackLang.HolProg 64 :=
.seq NamedBody772_670 NamedBody772_671

def NamedBody772_673 : StackLang.HolProg 64 :=
.seq NamedBody772_669 NamedBody772_672

def NamedBody772_674 : StackLang.HolProg 64 :=
.seq NamedBody772_668 NamedBody772_673

def NamedBody772_675 : StackLang.HolProg 64 :=
.seq NamedBody772_667 NamedBody772_674

def NamedBody772_676 : StackLang.HolProg 64 :=
.seq NamedBody772_666 NamedBody772_675

def NamedBody772_677 : StackLang.HolProg 64 :=
.seq NamedBody772_665 NamedBody772_676

def NamedBody772_678 : StackLang.HolProg 64 :=
.seq NamedBody772_664 NamedBody772_677

def NamedBody772_679 : StackLang.HolProg 64 :=
.seq NamedBody772_663 NamedBody772_678

def NamedBody772_680 : StackLang.HolProg 64 :=
.seq NamedBody772_350 NamedBody772_679

def NamedBody772_681 : StackLang.HolProg 64 :=
.seq NamedBody772_349 NamedBody772_680

def NamedBody772_682 : StackLang.HolProg 64 :=
.loop NamedBody772_681

def NamedBody772_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody772_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_687 : StackLang.HolProg 64 :=
.seq NamedBody772_685 NamedBody772_686

def NamedBody772_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody772_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody772_690 : StackLang.HolProg 64 :=
.seq NamedBody772_688 NamedBody772_689

def NamedBody772_691 : StackLang.HolProg 64 :=
.seq NamedBody772_687 NamedBody772_690

def NamedBody772_692 : StackLang.HolProg 64 :=
.seq NamedBody772_684 NamedBody772_691

def NamedBody772_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3518#64)

def NamedBody772_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_696 : StackLang.HolProg 64 :=
.seq NamedBody772_694 NamedBody772_695

def NamedBody772_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody772_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody772_700 : StackLang.HolProg 64 :=
.seq NamedBody772_698 NamedBody772_699

def NamedBody772_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_702 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody772_700 NamedBody772_701

def NamedBody772_703 : StackLang.HolProg 64 :=
.seq NamedBody772_697 NamedBody772_702

def NamedBody772_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody772_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 17

def NamedBody772_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody772_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody772_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody772_713 : StackLang.HolProg 64 :=
.seq NamedBody772_711 NamedBody772_712

def NamedBody772_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody772_715 : StackLang.HolProg 64 :=
.seq NamedBody772_713 NamedBody772_714

def NamedBody772_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_717 : StackLang.HolProg 64 :=
.seq NamedBody772_715 NamedBody772_716

def NamedBody772_718 : StackLang.HolProg 64 :=
.seq NamedBody772_710 NamedBody772_717

def NamedBody772_719 : StackLang.HolProg 64 :=
.seq NamedBody772_709 NamedBody772_718

def NamedBody772_720 : StackLang.HolProg 64 :=
.seq NamedBody772_708 NamedBody772_719

def NamedBody772_721 : StackLang.HolProg 64 :=
.seq NamedBody772_707 NamedBody772_720

def NamedBody772_722 : StackLang.HolProg 64 :=
.seq NamedBody772_706 NamedBody772_721

def NamedBody772_723 : StackLang.HolProg 64 :=
.seq NamedBody772_705 NamedBody772_722

def NamedBody772_724 : StackLang.HolProg 64 :=
.seq NamedBody772_704 NamedBody772_723

def NamedBody772_725 : StackLang.HolProg 64 :=
.seq NamedBody772_703 NamedBody772_724

def NamedBody772_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody772_733 : StackLang.HolProg 64 :=
.seq NamedBody772_731 NamedBody772_732

def NamedBody772_734 : StackLang.HolProg 64 :=
.seq NamedBody772_730 NamedBody772_733

def NamedBody772_735 : StackLang.HolProg 64 :=
.seq NamedBody772_729 NamedBody772_734

def NamedBody772_736 : StackLang.HolProg 64 :=
.seq NamedBody772_728 NamedBody772_735

def NamedBody772_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody772_738 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody772_739 : StackLang.HolProg 64 :=
.seq NamedBody772_737 NamedBody772_738

def NamedBody772_740 : StackLang.HolProg 64 :=
.call (some (NamedBody772_736, 1, 772, 16)) (Sum.inl 768) (some (NamedBody772_739, 772, 17))

def NamedBody772_741 : StackLang.HolProg 64 :=
.seq NamedBody772_727 NamedBody772_740

def NamedBody772_742 : StackLang.HolProg 64 :=
.seq NamedBody772_726 NamedBody772_741

def NamedBody772_743 : StackLang.HolProg 64 :=
.seq NamedBody772_725 NamedBody772_742

def NamedBody772_744 : StackLang.HolProg 64 :=
.seq NamedBody772_696 NamedBody772_743

def NamedBody772_745 : StackLang.HolProg 64 :=
.seq NamedBody772_693 NamedBody772_744

def NamedBody772_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody772_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3519#64)

def NamedBody772_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_751 : StackLang.HolProg 64 :=
.seq NamedBody772_749 NamedBody772_750

def NamedBody772_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody772_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody772_755 : StackLang.HolProg 64 :=
.seq NamedBody772_753 NamedBody772_754

def NamedBody772_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_757 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody772_755 NamedBody772_756

def NamedBody772_758 : StackLang.HolProg 64 :=
.seq NamedBody772_752 NamedBody772_757

def NamedBody772_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody772_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody772_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 19

def NamedBody772_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody772_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody772_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody772_768 : StackLang.HolProg 64 :=
.seq NamedBody772_766 NamedBody772_767

def NamedBody772_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody772_770 : StackLang.HolProg 64 :=
.seq NamedBody772_768 NamedBody772_769

def NamedBody772_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_772 : StackLang.HolProg 64 :=
.seq NamedBody772_770 NamedBody772_771

def NamedBody772_773 : StackLang.HolProg 64 :=
.seq NamedBody772_765 NamedBody772_772

def NamedBody772_774 : StackLang.HolProg 64 :=
.seq NamedBody772_764 NamedBody772_773

def NamedBody772_775 : StackLang.HolProg 64 :=
.seq NamedBody772_763 NamedBody772_774

def NamedBody772_776 : StackLang.HolProg 64 :=
.seq NamedBody772_762 NamedBody772_775

def NamedBody772_777 : StackLang.HolProg 64 :=
.seq NamedBody772_761 NamedBody772_776

def NamedBody772_778 : StackLang.HolProg 64 :=
.seq NamedBody772_760 NamedBody772_777

def NamedBody772_779 : StackLang.HolProg 64 :=
.seq NamedBody772_759 NamedBody772_778

def NamedBody772_780 : StackLang.HolProg 64 :=
.seq NamedBody772_758 NamedBody772_779

def NamedBody772_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody772_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody772_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody772_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_788 : StackLang.HolProg 64 :=
.seq NamedBody772_786 NamedBody772_787

def NamedBody772_789 : StackLang.HolProg 64 :=
.seq NamedBody772_785 NamedBody772_788

def NamedBody772_790 : StackLang.HolProg 64 :=
.seq NamedBody772_784 NamedBody772_789

def NamedBody772_791 : StackLang.HolProg 64 :=
.seq NamedBody772_783 NamedBody772_790

def NamedBody772_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody772_793 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody772_794 : StackLang.HolProg 64 :=
.seq NamedBody772_792 NamedBody772_793

def NamedBody772_795 : StackLang.HolProg 64 :=
.call (some (NamedBody772_791, 1, 772, 18)) (Sum.inl 70) (some (NamedBody772_794, 772, 19))

def NamedBody772_796 : StackLang.HolProg 64 :=
.seq NamedBody772_782 NamedBody772_795

def NamedBody772_797 : StackLang.HolProg 64 :=
.seq NamedBody772_781 NamedBody772_796

def NamedBody772_798 : StackLang.HolProg 64 :=
.seq NamedBody772_780 NamedBody772_797

def NamedBody772_799 : StackLang.HolProg 64 :=
.seq NamedBody772_751 NamedBody772_798

def NamedBody772_800 : StackLang.HolProg 64 :=
.seq NamedBody772_748 NamedBody772_799

def NamedBody772_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody772_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody772_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody772_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody772_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody772_806 : StackLang.HolProg 64 :=
.seq NamedBody772_804 NamedBody772_805

def NamedBody772_807 : StackLang.HolProg 64 :=
.seq NamedBody772_803 NamedBody772_806

def NamedBody772_808 : StackLang.HolProg 64 :=
.seq NamedBody772_802 NamedBody772_807

def NamedBody772_809 : StackLang.HolProg 64 :=
.seq NamedBody772_801 NamedBody772_808

def NamedBody772_810 : StackLang.HolProg 64 :=
.seq NamedBody772_800 NamedBody772_809

def NamedBody772_811 : StackLang.HolProg 64 :=
.seq NamedBody772_747 NamedBody772_810

def NamedBody772_812 : StackLang.HolProg 64 :=
.seq NamedBody772_746 NamedBody772_811

def NamedBody772_813 : StackLang.HolProg 64 :=
.seq NamedBody772_745 NamedBody772_812

def NamedBody772_814 : StackLang.HolProg 64 :=
.seq NamedBody772_692 NamedBody772_813

def NamedBody772_815 : StackLang.HolProg 64 :=
.seq NamedBody772_683 NamedBody772_814

def NamedBody772_816 : StackLang.HolProg 64 :=
.seq NamedBody772_682 NamedBody772_815

def NamedBody772_817 : StackLang.HolProg 64 :=
.seq NamedBody772_348 NamedBody772_816

def NamedBody772_818 : StackLang.HolProg 64 :=
.seq NamedBody772_347 NamedBody772_817

def NamedBody772_819 : StackLang.HolProg 64 :=
.seq NamedBody772_346 NamedBody772_818

def NamedBody772_820 : StackLang.HolProg 64 :=
.seq NamedBody772_345 NamedBody772_819

def NamedBody772_821 : StackLang.HolProg 64 :=
.seq NamedBody772_344 NamedBody772_820

def NamedBody772_822 : StackLang.HolProg 64 :=
.seq NamedBody772_343 NamedBody772_821

def NamedBody772_823 : StackLang.HolProg 64 :=
.seq NamedBody772_342 NamedBody772_822

def NamedBody772_824 : StackLang.HolProg 64 :=
.seq NamedBody772_261 NamedBody772_823

def NamedBody772_825 : StackLang.HolProg 64 :=
.seq NamedBody772_258 NamedBody772_824

def NamedBody772_826 : StackLang.HolProg 64 :=
.seq NamedBody772_257 NamedBody772_825

def NamedBody772_827 : StackLang.HolProg 64 :=
.seq NamedBody772_204 NamedBody772_826

def NamedBody772_828 : StackLang.HolProg 64 :=
.seq NamedBody772_199 NamedBody772_827

def NamedBody772_829 : StackLang.HolProg 64 :=
.seq NamedBody772_198 NamedBody772_828

def NamedBody772_830 : StackLang.HolProg 64 :=
.seq NamedBody772_127 NamedBody772_829

def NamedBody772_831 : StackLang.HolProg 64 :=
.seq NamedBody772_126 NamedBody772_830

def NamedBody772_832 : StackLang.HolProg 64 :=
.seq NamedBody772_125 NamedBody772_831

def NamedBody772_833 : StackLang.HolProg 64 :=
.seq NamedBody772_124 NamedBody772_832

def NamedBody772_834 : StackLang.HolProg 64 :=
.seq NamedBody772_71 NamedBody772_833

def NamedBody772_835 : StackLang.HolProg 64 :=
.seq NamedBody772_70 NamedBody772_834

def NamedBody772_836 : StackLang.HolProg 64 :=
.seq NamedBody772_69 NamedBody772_835

def NamedBody772_837 : StackLang.HolProg 64 :=
.seq NamedBody772_68 NamedBody772_836

def NamedBody772_838 : StackLang.HolProg 64 :=
.seq NamedBody772_15 NamedBody772_837

def NamedBody772_839 : StackLang.HolProg 64 :=
.seq NamedBody772_6 NamedBody772_838

def Named772 : Nat × StackLang.HolProg 64 := (772, NamedBody772_839)
theorem Named772_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed772 = Named772 := by
  kernel_rfl
#print axioms Named772_eq
end InitECandidate.Proofs.BackendStages
