import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed428
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody428_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody428_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody428_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody428_3 : StackLang.HolProg 64 :=
.seq NamedBody428_1 NamedBody428_2

def NamedBody428_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody428_3 NamedBody428_4

def NamedBody428_6 : StackLang.HolProg 64 :=
.seq NamedBody428_0 NamedBody428_5

def NamedBody428_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody428_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody428_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody428_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody428_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody428_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody428_13 : StackLang.HolProg 64 :=
.seq NamedBody428_11 NamedBody428_12

def NamedBody428_14 : StackLang.HolProg 64 :=
.seq NamedBody428_10 NamedBody428_13

def NamedBody428_15 : StackLang.HolProg 64 :=
.seq NamedBody428_9 NamedBody428_14

def NamedBody428_16 : StackLang.HolProg 64 :=
.seq NamedBody428_8 NamedBody428_15

def NamedBody428_17 : StackLang.HolProg 64 :=
.seq NamedBody428_7 NamedBody428_16

def NamedBody428_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1283#64)

def NamedBody428_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody428_21 : StackLang.HolProg 64 :=
.seq NamedBody428_19 NamedBody428_20

def NamedBody428_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody428_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody428_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody428_25 : StackLang.HolProg 64 :=
.seq NamedBody428_23 NamedBody428_24

def NamedBody428_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody428_25 NamedBody428_26

def NamedBody428_28 : StackLang.HolProg 64 :=
.seq NamedBody428_22 NamedBody428_27

def NamedBody428_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody428_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody428_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 428 3

def NamedBody428_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody428_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody428_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody428_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody428_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody428_38 : StackLang.HolProg 64 :=
.seq NamedBody428_36 NamedBody428_37

def NamedBody428_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody428_40 : StackLang.HolProg 64 :=
.seq NamedBody428_38 NamedBody428_39

def NamedBody428_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody428_42 : StackLang.HolProg 64 :=
.seq NamedBody428_40 NamedBody428_41

def NamedBody428_43 : StackLang.HolProg 64 :=
.seq NamedBody428_35 NamedBody428_42

def NamedBody428_44 : StackLang.HolProg 64 :=
.seq NamedBody428_34 NamedBody428_43

def NamedBody428_45 : StackLang.HolProg 64 :=
.seq NamedBody428_33 NamedBody428_44

def NamedBody428_46 : StackLang.HolProg 64 :=
.seq NamedBody428_32 NamedBody428_45

def NamedBody428_47 : StackLang.HolProg 64 :=
.seq NamedBody428_31 NamedBody428_46

def NamedBody428_48 : StackLang.HolProg 64 :=
.seq NamedBody428_30 NamedBody428_47

def NamedBody428_49 : StackLang.HolProg 64 :=
.seq NamedBody428_29 NamedBody428_48

def NamedBody428_50 : StackLang.HolProg 64 :=
.seq NamedBody428_28 NamedBody428_49

def NamedBody428_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody428_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody428_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody428_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody428_58 : StackLang.HolProg 64 :=
.seq NamedBody428_56 NamedBody428_57

def NamedBody428_59 : StackLang.HolProg 64 :=
.seq NamedBody428_55 NamedBody428_58

def NamedBody428_60 : StackLang.HolProg 64 :=
.seq NamedBody428_54 NamedBody428_59

def NamedBody428_61 : StackLang.HolProg 64 :=
.seq NamedBody428_53 NamedBody428_60

def NamedBody428_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody428_64 : StackLang.HolProg 64 :=
.seq NamedBody428_62 NamedBody428_63

def NamedBody428_65 : StackLang.HolProg 64 :=
.call (some (NamedBody428_61, 1, 428, 2)) (Sum.inl 407) (some (NamedBody428_64, 428, 3))

def NamedBody428_66 : StackLang.HolProg 64 :=
.seq NamedBody428_52 NamedBody428_65

def NamedBody428_67 : StackLang.HolProg 64 :=
.seq NamedBody428_51 NamedBody428_66

def NamedBody428_68 : StackLang.HolProg 64 :=
.seq NamedBody428_50 NamedBody428_67

def NamedBody428_69 : StackLang.HolProg 64 :=
.seq NamedBody428_21 NamedBody428_68

def NamedBody428_70 : StackLang.HolProg 64 :=
.seq NamedBody428_18 NamedBody428_69

def NamedBody428_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody428_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody428_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1284#64)

def NamedBody428_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody428_76 : StackLang.HolProg 64 :=
.seq NamedBody428_74 NamedBody428_75

def NamedBody428_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody428_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody428_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody428_80 : StackLang.HolProg 64 :=
.seq NamedBody428_78 NamedBody428_79

def NamedBody428_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody428_80 NamedBody428_81

def NamedBody428_83 : StackLang.HolProg 64 :=
.seq NamedBody428_77 NamedBody428_82

def NamedBody428_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody428_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody428_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 428 5

def NamedBody428_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody428_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody428_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody428_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody428_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody428_93 : StackLang.HolProg 64 :=
.seq NamedBody428_91 NamedBody428_92

def NamedBody428_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody428_95 : StackLang.HolProg 64 :=
.seq NamedBody428_93 NamedBody428_94

def NamedBody428_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody428_97 : StackLang.HolProg 64 :=
.seq NamedBody428_95 NamedBody428_96

def NamedBody428_98 : StackLang.HolProg 64 :=
.seq NamedBody428_90 NamedBody428_97

def NamedBody428_99 : StackLang.HolProg 64 :=
.seq NamedBody428_89 NamedBody428_98

def NamedBody428_100 : StackLang.HolProg 64 :=
.seq NamedBody428_88 NamedBody428_99

def NamedBody428_101 : StackLang.HolProg 64 :=
.seq NamedBody428_87 NamedBody428_100

def NamedBody428_102 : StackLang.HolProg 64 :=
.seq NamedBody428_86 NamedBody428_101

def NamedBody428_103 : StackLang.HolProg 64 :=
.seq NamedBody428_85 NamedBody428_102

def NamedBody428_104 : StackLang.HolProg 64 :=
.seq NamedBody428_84 NamedBody428_103

def NamedBody428_105 : StackLang.HolProg 64 :=
.seq NamedBody428_83 NamedBody428_104

def NamedBody428_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody428_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody428_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody428_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody428_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody428_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody428_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody428_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody428_117 : StackLang.HolProg 64 :=
.seq NamedBody428_115 NamedBody428_116

def NamedBody428_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody428_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody428_120 : StackLang.HolProg 64 :=
.seq NamedBody428_118 NamedBody428_119

def NamedBody428_121 : StackLang.HolProg 64 :=
.seq NamedBody428_117 NamedBody428_120

def NamedBody428_122 : StackLang.HolProg 64 :=
.seq NamedBody428_114 NamedBody428_121

def NamedBody428_123 : StackLang.HolProg 64 :=
.seq NamedBody428_113 NamedBody428_122

def NamedBody428_124 : StackLang.HolProg 64 :=
.seq NamedBody428_112 NamedBody428_123

def NamedBody428_125 : StackLang.HolProg 64 :=
.seq NamedBody428_111 NamedBody428_124

def NamedBody428_126 : StackLang.HolProg 64 :=
.seq NamedBody428_110 NamedBody428_125

def NamedBody428_127 : StackLang.HolProg 64 :=
.seq NamedBody428_109 NamedBody428_126

def NamedBody428_128 : StackLang.HolProg 64 :=
.seq NamedBody428_108 NamedBody428_127

def NamedBody428_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody428_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody428_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody428_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody428_133 : StackLang.HolProg 64 :=
.seq NamedBody428_131 NamedBody428_132

def NamedBody428_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody428_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody428_136 : StackLang.HolProg 64 :=
.seq NamedBody428_134 NamedBody428_135

def NamedBody428_137 : StackLang.HolProg 64 :=
.seq NamedBody428_133 NamedBody428_136

def NamedBody428_138 : StackLang.HolProg 64 :=
.seq NamedBody428_130 NamedBody428_137

def NamedBody428_139 : StackLang.HolProg 64 :=
.seq NamedBody428_129 NamedBody428_138

def NamedBody428_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody428_141 : StackLang.HolProg 64 :=
.seq NamedBody428_139 NamedBody428_140

def NamedBody428_142 : StackLang.HolProg 64 :=
.call (some (NamedBody428_128, 1, 428, 4)) (Sum.inl 395) (some (NamedBody428_141, 428, 5))

def NamedBody428_143 : StackLang.HolProg 64 :=
.seq NamedBody428_107 NamedBody428_142

def NamedBody428_144 : StackLang.HolProg 64 :=
.seq NamedBody428_106 NamedBody428_143

def NamedBody428_145 : StackLang.HolProg 64 :=
.seq NamedBody428_105 NamedBody428_144

def NamedBody428_146 : StackLang.HolProg 64 :=
.seq NamedBody428_76 NamedBody428_145

def NamedBody428_147 : StackLang.HolProg 64 :=
.seq NamedBody428_73 NamedBody428_146

def NamedBody428_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody428_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody428_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody428_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody428_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody428_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody428_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1285#64)

def NamedBody428_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody428_161 : StackLang.HolProg 64 :=
.seq NamedBody428_159 NamedBody428_160

def NamedBody428_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody428_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody428_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody428_165 : StackLang.HolProg 64 :=
.seq NamedBody428_163 NamedBody428_164

def NamedBody428_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_167 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody428_165 NamedBody428_166

def NamedBody428_168 : StackLang.HolProg 64 :=
.seq NamedBody428_162 NamedBody428_167

def NamedBody428_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody428_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody428_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 428 7

def NamedBody428_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody428_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody428_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody428_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody428_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody428_178 : StackLang.HolProg 64 :=
.seq NamedBody428_176 NamedBody428_177

def NamedBody428_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody428_180 : StackLang.HolProg 64 :=
.seq NamedBody428_178 NamedBody428_179

def NamedBody428_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody428_182 : StackLang.HolProg 64 :=
.seq NamedBody428_180 NamedBody428_181

def NamedBody428_183 : StackLang.HolProg 64 :=
.seq NamedBody428_175 NamedBody428_182

def NamedBody428_184 : StackLang.HolProg 64 :=
.seq NamedBody428_174 NamedBody428_183

def NamedBody428_185 : StackLang.HolProg 64 :=
.seq NamedBody428_173 NamedBody428_184

def NamedBody428_186 : StackLang.HolProg 64 :=
.seq NamedBody428_172 NamedBody428_185

def NamedBody428_187 : StackLang.HolProg 64 :=
.seq NamedBody428_171 NamedBody428_186

def NamedBody428_188 : StackLang.HolProg 64 :=
.seq NamedBody428_170 NamedBody428_187

def NamedBody428_189 : StackLang.HolProg 64 :=
.seq NamedBody428_169 NamedBody428_188

def NamedBody428_190 : StackLang.HolProg 64 :=
.seq NamedBody428_168 NamedBody428_189

def NamedBody428_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody428_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody428_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody428_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody428_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody428_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody428_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody428_201 : StackLang.HolProg 64 :=
.seq NamedBody428_199 NamedBody428_200

def NamedBody428_202 : StackLang.HolProg 64 :=
.seq NamedBody428_198 NamedBody428_201

def NamedBody428_203 : StackLang.HolProg 64 :=
.seq NamedBody428_197 NamedBody428_202

def NamedBody428_204 : StackLang.HolProg 64 :=
.seq NamedBody428_196 NamedBody428_203

def NamedBody428_205 : StackLang.HolProg 64 :=
.seq NamedBody428_195 NamedBody428_204

def NamedBody428_206 : StackLang.HolProg 64 :=
.seq NamedBody428_194 NamedBody428_205

def NamedBody428_207 : StackLang.HolProg 64 :=
.seq NamedBody428_193 NamedBody428_206

def NamedBody428_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody428_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody428_210 : StackLang.HolProg 64 :=
.seq NamedBody428_208 NamedBody428_209

def NamedBody428_211 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody428_212 : StackLang.HolProg 64 :=
.seq NamedBody428_210 NamedBody428_211

def NamedBody428_213 : StackLang.HolProg 64 :=
.call (some (NamedBody428_207, 1, 428, 6)) (Sum.inl 116) (some (NamedBody428_212, 428, 7))

def NamedBody428_214 : StackLang.HolProg 64 :=
.seq NamedBody428_192 NamedBody428_213

def NamedBody428_215 : StackLang.HolProg 64 :=
.seq NamedBody428_191 NamedBody428_214

def NamedBody428_216 : StackLang.HolProg 64 :=
.seq NamedBody428_190 NamedBody428_215

def NamedBody428_217 : StackLang.HolProg 64 :=
.seq NamedBody428_161 NamedBody428_216

def NamedBody428_218 : StackLang.HolProg 64 :=
.seq NamedBody428_158 NamedBody428_217

def NamedBody428_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody428_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody428_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody428_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody428_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody428_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody428_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody428_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1286#64)

def NamedBody428_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody428_234 : StackLang.HolProg 64 :=
.seq NamedBody428_232 NamedBody428_233

def NamedBody428_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody428_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody428_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody428_238 : StackLang.HolProg 64 :=
.seq NamedBody428_236 NamedBody428_237

def NamedBody428_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_240 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody428_238 NamedBody428_239

def NamedBody428_241 : StackLang.HolProg 64 :=
.seq NamedBody428_235 NamedBody428_240

def NamedBody428_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody428_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody428_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 428 9

def NamedBody428_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody428_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody428_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody428_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody428_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody428_251 : StackLang.HolProg 64 :=
.seq NamedBody428_249 NamedBody428_250

def NamedBody428_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody428_253 : StackLang.HolProg 64 :=
.seq NamedBody428_251 NamedBody428_252

def NamedBody428_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody428_255 : StackLang.HolProg 64 :=
.seq NamedBody428_253 NamedBody428_254

def NamedBody428_256 : StackLang.HolProg 64 :=
.seq NamedBody428_248 NamedBody428_255

def NamedBody428_257 : StackLang.HolProg 64 :=
.seq NamedBody428_247 NamedBody428_256

def NamedBody428_258 : StackLang.HolProg 64 :=
.seq NamedBody428_246 NamedBody428_257

def NamedBody428_259 : StackLang.HolProg 64 :=
.seq NamedBody428_245 NamedBody428_258

def NamedBody428_260 : StackLang.HolProg 64 :=
.seq NamedBody428_244 NamedBody428_259

def NamedBody428_261 : StackLang.HolProg 64 :=
.seq NamedBody428_243 NamedBody428_260

def NamedBody428_262 : StackLang.HolProg 64 :=
.seq NamedBody428_242 NamedBody428_261

def NamedBody428_263 : StackLang.HolProg 64 :=
.seq NamedBody428_241 NamedBody428_262

def NamedBody428_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody428_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody428_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody428_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody428_271 : StackLang.HolProg 64 :=
.seq NamedBody428_269 NamedBody428_270

def NamedBody428_272 : StackLang.HolProg 64 :=
.seq NamedBody428_268 NamedBody428_271

def NamedBody428_273 : StackLang.HolProg 64 :=
.seq NamedBody428_267 NamedBody428_272

def NamedBody428_274 : StackLang.HolProg 64 :=
.seq NamedBody428_266 NamedBody428_273

def NamedBody428_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody428_276 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody428_277 : StackLang.HolProg 64 :=
.seq NamedBody428_275 NamedBody428_276

def NamedBody428_278 : StackLang.HolProg 64 :=
.call (some (NamedBody428_274, 1, 428, 8)) (Sum.inl 423) (some (NamedBody428_277, 428, 9))

def NamedBody428_279 : StackLang.HolProg 64 :=
.seq NamedBody428_265 NamedBody428_278

def NamedBody428_280 : StackLang.HolProg 64 :=
.seq NamedBody428_264 NamedBody428_279

def NamedBody428_281 : StackLang.HolProg 64 :=
.seq NamedBody428_263 NamedBody428_280

def NamedBody428_282 : StackLang.HolProg 64 :=
.seq NamedBody428_234 NamedBody428_281

def NamedBody428_283 : StackLang.HolProg 64 :=
.seq NamedBody428_231 NamedBody428_282

def NamedBody428_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody428_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody428_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody428_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody428_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody428_289 : StackLang.HolProg 64 :=
.seq NamedBody428_287 NamedBody428_288

def NamedBody428_290 : StackLang.HolProg 64 :=
.seq NamedBody428_286 NamedBody428_289

def NamedBody428_291 : StackLang.HolProg 64 :=
.seq NamedBody428_285 NamedBody428_290

def NamedBody428_292 : StackLang.HolProg 64 :=
.seq NamedBody428_284 NamedBody428_291

def NamedBody428_293 : StackLang.HolProg 64 :=
.seq NamedBody428_283 NamedBody428_292

def NamedBody428_294 : StackLang.HolProg 64 :=
.seq NamedBody428_230 NamedBody428_293

def NamedBody428_295 : StackLang.HolProg 64 :=
.seq NamedBody428_229 NamedBody428_294

def NamedBody428_296 : StackLang.HolProg 64 :=
.seq NamedBody428_228 NamedBody428_295

def NamedBody428_297 : StackLang.HolProg 64 :=
.seq NamedBody428_227 NamedBody428_296

def NamedBody428_298 : StackLang.HolProg 64 :=
.seq NamedBody428_226 NamedBody428_297

def NamedBody428_299 : StackLang.HolProg 64 :=
.seq NamedBody428_225 NamedBody428_298

def NamedBody428_300 : StackLang.HolProg 64 :=
.seq NamedBody428_224 NamedBody428_299

def NamedBody428_301 : StackLang.HolProg 64 :=
.seq NamedBody428_223 NamedBody428_300

def NamedBody428_302 : StackLang.HolProg 64 :=
.seq NamedBody428_222 NamedBody428_301

def NamedBody428_303 : StackLang.HolProg 64 :=
.seq NamedBody428_221 NamedBody428_302

def NamedBody428_304 : StackLang.HolProg 64 :=
.seq NamedBody428_220 NamedBody428_303

def NamedBody428_305 : StackLang.HolProg 64 :=
.seq NamedBody428_219 NamedBody428_304

def NamedBody428_306 : StackLang.HolProg 64 :=
.seq NamedBody428_218 NamedBody428_305

def NamedBody428_307 : StackLang.HolProg 64 :=
.seq NamedBody428_157 NamedBody428_306

def NamedBody428_308 : StackLang.HolProg 64 :=
.seq NamedBody428_156 NamedBody428_307

def NamedBody428_309 : StackLang.HolProg 64 :=
.seq NamedBody428_155 NamedBody428_308

def NamedBody428_310 : StackLang.HolProg 64 :=
.seq NamedBody428_154 NamedBody428_309

def NamedBody428_311 : StackLang.HolProg 64 :=
.seq NamedBody428_153 NamedBody428_310

def NamedBody428_312 : StackLang.HolProg 64 :=
.seq NamedBody428_152 NamedBody428_311

def NamedBody428_313 : StackLang.HolProg 64 :=
.seq NamedBody428_151 NamedBody428_312

def NamedBody428_314 : StackLang.HolProg 64 :=
.seq NamedBody428_150 NamedBody428_313

def NamedBody428_315 : StackLang.HolProg 64 :=
.seq NamedBody428_149 NamedBody428_314

def NamedBody428_316 : StackLang.HolProg 64 :=
.seq NamedBody428_148 NamedBody428_315

def NamedBody428_317 : StackLang.HolProg 64 :=
.seq NamedBody428_147 NamedBody428_316

def NamedBody428_318 : StackLang.HolProg 64 :=
.seq NamedBody428_72 NamedBody428_317

def NamedBody428_319 : StackLang.HolProg 64 :=
.seq NamedBody428_71 NamedBody428_318

def NamedBody428_320 : StackLang.HolProg 64 :=
.seq NamedBody428_70 NamedBody428_319

def NamedBody428_321 : StackLang.HolProg 64 :=
.seq NamedBody428_17 NamedBody428_320

def NamedBody428_322 : StackLang.HolProg 64 :=
.seq NamedBody428_6 NamedBody428_321

def Named428 : Nat × StackLang.HolProg 64 := (428, NamedBody428_322)
theorem Named428_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed428 = Named428 := by
  kernel_rfl
#print axioms Named428_eq
end InitECandidate.Proofs.BackendStages
