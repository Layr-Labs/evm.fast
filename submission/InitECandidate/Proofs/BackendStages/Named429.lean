import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed429
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody429_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody429_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody429_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody429_3 : StackLang.HolProg 64 :=
.seq NamedBody429_1 NamedBody429_2

def NamedBody429_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody429_3 NamedBody429_4

def NamedBody429_6 : StackLang.HolProg 64 :=
.seq NamedBody429_0 NamedBody429_5

def NamedBody429_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody429_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody429_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody429_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody429_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody429_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody429_13 : StackLang.HolProg 64 :=
.seq NamedBody429_11 NamedBody429_12

def NamedBody429_14 : StackLang.HolProg 64 :=
.seq NamedBody429_10 NamedBody429_13

def NamedBody429_15 : StackLang.HolProg 64 :=
.seq NamedBody429_9 NamedBody429_14

def NamedBody429_16 : StackLang.HolProg 64 :=
.seq NamedBody429_8 NamedBody429_15

def NamedBody429_17 : StackLang.HolProg 64 :=
.seq NamedBody429_7 NamedBody429_16

def NamedBody429_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1287#64)

def NamedBody429_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody429_21 : StackLang.HolProg 64 :=
.seq NamedBody429_19 NamedBody429_20

def NamedBody429_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody429_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody429_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody429_25 : StackLang.HolProg 64 :=
.seq NamedBody429_23 NamedBody429_24

def NamedBody429_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody429_25 NamedBody429_26

def NamedBody429_28 : StackLang.HolProg 64 :=
.seq NamedBody429_22 NamedBody429_27

def NamedBody429_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody429_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody429_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 429 3

def NamedBody429_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody429_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody429_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody429_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody429_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody429_38 : StackLang.HolProg 64 :=
.seq NamedBody429_36 NamedBody429_37

def NamedBody429_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody429_40 : StackLang.HolProg 64 :=
.seq NamedBody429_38 NamedBody429_39

def NamedBody429_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody429_42 : StackLang.HolProg 64 :=
.seq NamedBody429_40 NamedBody429_41

def NamedBody429_43 : StackLang.HolProg 64 :=
.seq NamedBody429_35 NamedBody429_42

def NamedBody429_44 : StackLang.HolProg 64 :=
.seq NamedBody429_34 NamedBody429_43

def NamedBody429_45 : StackLang.HolProg 64 :=
.seq NamedBody429_33 NamedBody429_44

def NamedBody429_46 : StackLang.HolProg 64 :=
.seq NamedBody429_32 NamedBody429_45

def NamedBody429_47 : StackLang.HolProg 64 :=
.seq NamedBody429_31 NamedBody429_46

def NamedBody429_48 : StackLang.HolProg 64 :=
.seq NamedBody429_30 NamedBody429_47

def NamedBody429_49 : StackLang.HolProg 64 :=
.seq NamedBody429_29 NamedBody429_48

def NamedBody429_50 : StackLang.HolProg 64 :=
.seq NamedBody429_28 NamedBody429_49

def NamedBody429_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody429_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody429_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody429_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody429_58 : StackLang.HolProg 64 :=
.seq NamedBody429_56 NamedBody429_57

def NamedBody429_59 : StackLang.HolProg 64 :=
.seq NamedBody429_55 NamedBody429_58

def NamedBody429_60 : StackLang.HolProg 64 :=
.seq NamedBody429_54 NamedBody429_59

def NamedBody429_61 : StackLang.HolProg 64 :=
.seq NamedBody429_53 NamedBody429_60

def NamedBody429_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody429_64 : StackLang.HolProg 64 :=
.seq NamedBody429_62 NamedBody429_63

def NamedBody429_65 : StackLang.HolProg 64 :=
.call (some (NamedBody429_61, 1, 429, 2)) (Sum.inl 407) (some (NamedBody429_64, 429, 3))

def NamedBody429_66 : StackLang.HolProg 64 :=
.seq NamedBody429_52 NamedBody429_65

def NamedBody429_67 : StackLang.HolProg 64 :=
.seq NamedBody429_51 NamedBody429_66

def NamedBody429_68 : StackLang.HolProg 64 :=
.seq NamedBody429_50 NamedBody429_67

def NamedBody429_69 : StackLang.HolProg 64 :=
.seq NamedBody429_21 NamedBody429_68

def NamedBody429_70 : StackLang.HolProg 64 :=
.seq NamedBody429_18 NamedBody429_69

def NamedBody429_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody429_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody429_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1288#64)

def NamedBody429_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody429_76 : StackLang.HolProg 64 :=
.seq NamedBody429_74 NamedBody429_75

def NamedBody429_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody429_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody429_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody429_80 : StackLang.HolProg 64 :=
.seq NamedBody429_78 NamedBody429_79

def NamedBody429_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody429_80 NamedBody429_81

def NamedBody429_83 : StackLang.HolProg 64 :=
.seq NamedBody429_77 NamedBody429_82

def NamedBody429_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody429_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody429_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 429 5

def NamedBody429_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody429_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody429_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody429_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody429_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody429_93 : StackLang.HolProg 64 :=
.seq NamedBody429_91 NamedBody429_92

def NamedBody429_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody429_95 : StackLang.HolProg 64 :=
.seq NamedBody429_93 NamedBody429_94

def NamedBody429_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody429_97 : StackLang.HolProg 64 :=
.seq NamedBody429_95 NamedBody429_96

def NamedBody429_98 : StackLang.HolProg 64 :=
.seq NamedBody429_90 NamedBody429_97

def NamedBody429_99 : StackLang.HolProg 64 :=
.seq NamedBody429_89 NamedBody429_98

def NamedBody429_100 : StackLang.HolProg 64 :=
.seq NamedBody429_88 NamedBody429_99

def NamedBody429_101 : StackLang.HolProg 64 :=
.seq NamedBody429_87 NamedBody429_100

def NamedBody429_102 : StackLang.HolProg 64 :=
.seq NamedBody429_86 NamedBody429_101

def NamedBody429_103 : StackLang.HolProg 64 :=
.seq NamedBody429_85 NamedBody429_102

def NamedBody429_104 : StackLang.HolProg 64 :=
.seq NamedBody429_84 NamedBody429_103

def NamedBody429_105 : StackLang.HolProg 64 :=
.seq NamedBody429_83 NamedBody429_104

def NamedBody429_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody429_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody429_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody429_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody429_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody429_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody429_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody429_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody429_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody429_118 : StackLang.HolProg 64 :=
.seq NamedBody429_116 NamedBody429_117

def NamedBody429_119 : StackLang.HolProg 64 :=
.seq NamedBody429_115 NamedBody429_118

def NamedBody429_120 : StackLang.HolProg 64 :=
.seq NamedBody429_114 NamedBody429_119

def NamedBody429_121 : StackLang.HolProg 64 :=
.seq NamedBody429_113 NamedBody429_120

def NamedBody429_122 : StackLang.HolProg 64 :=
.seq NamedBody429_112 NamedBody429_121

def NamedBody429_123 : StackLang.HolProg 64 :=
.seq NamedBody429_111 NamedBody429_122

def NamedBody429_124 : StackLang.HolProg 64 :=
.seq NamedBody429_110 NamedBody429_123

def NamedBody429_125 : StackLang.HolProg 64 :=
.seq NamedBody429_109 NamedBody429_124

def NamedBody429_126 : StackLang.HolProg 64 :=
.seq NamedBody429_108 NamedBody429_125

def NamedBody429_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody429_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody429_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody429_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody429_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody429_132 : StackLang.HolProg 64 :=
.seq NamedBody429_130 NamedBody429_131

def NamedBody429_133 : StackLang.HolProg 64 :=
.seq NamedBody429_129 NamedBody429_132

def NamedBody429_134 : StackLang.HolProg 64 :=
.seq NamedBody429_128 NamedBody429_133

def NamedBody429_135 : StackLang.HolProg 64 :=
.seq NamedBody429_127 NamedBody429_134

def NamedBody429_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody429_137 : StackLang.HolProg 64 :=
.seq NamedBody429_135 NamedBody429_136

def NamedBody429_138 : StackLang.HolProg 64 :=
.call (some (NamedBody429_126, 1, 429, 4)) (Sum.inl 395) (some (NamedBody429_137, 429, 5))

def NamedBody429_139 : StackLang.HolProg 64 :=
.seq NamedBody429_107 NamedBody429_138

def NamedBody429_140 : StackLang.HolProg 64 :=
.seq NamedBody429_106 NamedBody429_139

def NamedBody429_141 : StackLang.HolProg 64 :=
.seq NamedBody429_105 NamedBody429_140

def NamedBody429_142 : StackLang.HolProg 64 :=
.seq NamedBody429_76 NamedBody429_141

def NamedBody429_143 : StackLang.HolProg 64 :=
.seq NamedBody429_73 NamedBody429_142

def NamedBody429_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody429_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody429_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody429_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody429_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody429_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody429_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody429_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1289#64)

def NamedBody429_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody429_159 : StackLang.HolProg 64 :=
.seq NamedBody429_157 NamedBody429_158

def NamedBody429_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody429_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody429_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody429_163 : StackLang.HolProg 64 :=
.seq NamedBody429_161 NamedBody429_162

def NamedBody429_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_165 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody429_163 NamedBody429_164

def NamedBody429_166 : StackLang.HolProg 64 :=
.seq NamedBody429_160 NamedBody429_165

def NamedBody429_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody429_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody429_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 429 7

def NamedBody429_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody429_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody429_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody429_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody429_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody429_176 : StackLang.HolProg 64 :=
.seq NamedBody429_174 NamedBody429_175

def NamedBody429_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody429_178 : StackLang.HolProg 64 :=
.seq NamedBody429_176 NamedBody429_177

def NamedBody429_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody429_180 : StackLang.HolProg 64 :=
.seq NamedBody429_178 NamedBody429_179

def NamedBody429_181 : StackLang.HolProg 64 :=
.seq NamedBody429_173 NamedBody429_180

def NamedBody429_182 : StackLang.HolProg 64 :=
.seq NamedBody429_172 NamedBody429_181

def NamedBody429_183 : StackLang.HolProg 64 :=
.seq NamedBody429_171 NamedBody429_182

def NamedBody429_184 : StackLang.HolProg 64 :=
.seq NamedBody429_170 NamedBody429_183

def NamedBody429_185 : StackLang.HolProg 64 :=
.seq NamedBody429_169 NamedBody429_184

def NamedBody429_186 : StackLang.HolProg 64 :=
.seq NamedBody429_168 NamedBody429_185

def NamedBody429_187 : StackLang.HolProg 64 :=
.seq NamedBody429_167 NamedBody429_186

def NamedBody429_188 : StackLang.HolProg 64 :=
.seq NamedBody429_166 NamedBody429_187

def NamedBody429_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody429_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody429_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody429_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody429_196 : StackLang.HolProg 64 :=
.seq NamedBody429_194 NamedBody429_195

def NamedBody429_197 : StackLang.HolProg 64 :=
.seq NamedBody429_193 NamedBody429_196

def NamedBody429_198 : StackLang.HolProg 64 :=
.seq NamedBody429_192 NamedBody429_197

def NamedBody429_199 : StackLang.HolProg 64 :=
.seq NamedBody429_191 NamedBody429_198

def NamedBody429_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody429_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody429_202 : StackLang.HolProg 64 :=
.seq NamedBody429_200 NamedBody429_201

def NamedBody429_203 : StackLang.HolProg 64 :=
.call (some (NamedBody429_199, 1, 429, 6)) (Sum.inl 423) (some (NamedBody429_202, 429, 7))

def NamedBody429_204 : StackLang.HolProg 64 :=
.seq NamedBody429_190 NamedBody429_203

def NamedBody429_205 : StackLang.HolProg 64 :=
.seq NamedBody429_189 NamedBody429_204

def NamedBody429_206 : StackLang.HolProg 64 :=
.seq NamedBody429_188 NamedBody429_205

def NamedBody429_207 : StackLang.HolProg 64 :=
.seq NamedBody429_159 NamedBody429_206

def NamedBody429_208 : StackLang.HolProg 64 :=
.seq NamedBody429_156 NamedBody429_207

def NamedBody429_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody429_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody429_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody429_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody429_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody429_214 : StackLang.HolProg 64 :=
.seq NamedBody429_212 NamedBody429_213

def NamedBody429_215 : StackLang.HolProg 64 :=
.seq NamedBody429_211 NamedBody429_214

def NamedBody429_216 : StackLang.HolProg 64 :=
.seq NamedBody429_210 NamedBody429_215

def NamedBody429_217 : StackLang.HolProg 64 :=
.seq NamedBody429_209 NamedBody429_216

def NamedBody429_218 : StackLang.HolProg 64 :=
.seq NamedBody429_208 NamedBody429_217

def NamedBody429_219 : StackLang.HolProg 64 :=
.seq NamedBody429_155 NamedBody429_218

def NamedBody429_220 : StackLang.HolProg 64 :=
.seq NamedBody429_154 NamedBody429_219

def NamedBody429_221 : StackLang.HolProg 64 :=
.seq NamedBody429_153 NamedBody429_220

def NamedBody429_222 : StackLang.HolProg 64 :=
.seq NamedBody429_152 NamedBody429_221

def NamedBody429_223 : StackLang.HolProg 64 :=
.seq NamedBody429_151 NamedBody429_222

def NamedBody429_224 : StackLang.HolProg 64 :=
.seq NamedBody429_150 NamedBody429_223

def NamedBody429_225 : StackLang.HolProg 64 :=
.seq NamedBody429_149 NamedBody429_224

def NamedBody429_226 : StackLang.HolProg 64 :=
.seq NamedBody429_148 NamedBody429_225

def NamedBody429_227 : StackLang.HolProg 64 :=
.seq NamedBody429_147 NamedBody429_226

def NamedBody429_228 : StackLang.HolProg 64 :=
.seq NamedBody429_146 NamedBody429_227

def NamedBody429_229 : StackLang.HolProg 64 :=
.seq NamedBody429_145 NamedBody429_228

def NamedBody429_230 : StackLang.HolProg 64 :=
.seq NamedBody429_144 NamedBody429_229

def NamedBody429_231 : StackLang.HolProg 64 :=
.seq NamedBody429_143 NamedBody429_230

def NamedBody429_232 : StackLang.HolProg 64 :=
.seq NamedBody429_72 NamedBody429_231

def NamedBody429_233 : StackLang.HolProg 64 :=
.seq NamedBody429_71 NamedBody429_232

def NamedBody429_234 : StackLang.HolProg 64 :=
.seq NamedBody429_70 NamedBody429_233

def NamedBody429_235 : StackLang.HolProg 64 :=
.seq NamedBody429_17 NamedBody429_234

def NamedBody429_236 : StackLang.HolProg 64 :=
.seq NamedBody429_6 NamedBody429_235

def Named429 : Nat × StackLang.HolProg 64 := (429, NamedBody429_236)
theorem Named429_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed429 = Named429 := by
  kernel_rfl
#print axioms Named429_eq
end InitECandidate.Proofs.BackendStages
