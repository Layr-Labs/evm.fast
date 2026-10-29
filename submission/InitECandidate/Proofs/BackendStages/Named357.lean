import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed357
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody357_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody357_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody357_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody357_3 : StackLang.HolProg 64 :=
.seq NamedBody357_1 NamedBody357_2

def NamedBody357_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody357_3 NamedBody357_4

def NamedBody357_6 : StackLang.HolProg 64 :=
.seq NamedBody357_0 NamedBody357_5

def NamedBody357_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody357_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody357_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody357_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody357_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody357_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody357_13 : StackLang.HolProg 64 :=
.seq NamedBody357_11 NamedBody357_12

def NamedBody357_14 : StackLang.HolProg 64 :=
.seq NamedBody357_10 NamedBody357_13

def NamedBody357_15 : StackLang.HolProg 64 :=
.seq NamedBody357_9 NamedBody357_14

def NamedBody357_16 : StackLang.HolProg 64 :=
.seq NamedBody357_8 NamedBody357_15

def NamedBody357_17 : StackLang.HolProg 64 :=
.seq NamedBody357_7 NamedBody357_16

def NamedBody357_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1027#64)

def NamedBody357_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody357_21 : StackLang.HolProg 64 :=
.seq NamedBody357_19 NamedBody357_20

def NamedBody357_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody357_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody357_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody357_25 : StackLang.HolProg 64 :=
.seq NamedBody357_23 NamedBody357_24

def NamedBody357_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody357_25 NamedBody357_26

def NamedBody357_28 : StackLang.HolProg 64 :=
.seq NamedBody357_22 NamedBody357_27

def NamedBody357_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody357_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody357_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 3

def NamedBody357_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody357_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody357_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody357_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody357_38 : StackLang.HolProg 64 :=
.seq NamedBody357_36 NamedBody357_37

def NamedBody357_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody357_40 : StackLang.HolProg 64 :=
.seq NamedBody357_38 NamedBody357_39

def NamedBody357_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_42 : StackLang.HolProg 64 :=
.seq NamedBody357_40 NamedBody357_41

def NamedBody357_43 : StackLang.HolProg 64 :=
.seq NamedBody357_35 NamedBody357_42

def NamedBody357_44 : StackLang.HolProg 64 :=
.seq NamedBody357_34 NamedBody357_43

def NamedBody357_45 : StackLang.HolProg 64 :=
.seq NamedBody357_33 NamedBody357_44

def NamedBody357_46 : StackLang.HolProg 64 :=
.seq NamedBody357_32 NamedBody357_45

def NamedBody357_47 : StackLang.HolProg 64 :=
.seq NamedBody357_31 NamedBody357_46

def NamedBody357_48 : StackLang.HolProg 64 :=
.seq NamedBody357_30 NamedBody357_47

def NamedBody357_49 : StackLang.HolProg 64 :=
.seq NamedBody357_29 NamedBody357_48

def NamedBody357_50 : StackLang.HolProg 64 :=
.seq NamedBody357_28 NamedBody357_49

def NamedBody357_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody357_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody357_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody357_58 : StackLang.HolProg 64 :=
.seq NamedBody357_56 NamedBody357_57

def NamedBody357_59 : StackLang.HolProg 64 :=
.seq NamedBody357_55 NamedBody357_58

def NamedBody357_60 : StackLang.HolProg 64 :=
.seq NamedBody357_54 NamedBody357_59

def NamedBody357_61 : StackLang.HolProg 64 :=
.seq NamedBody357_53 NamedBody357_60

def NamedBody357_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody357_64 : StackLang.HolProg 64 :=
.seq NamedBody357_62 NamedBody357_63

def NamedBody357_65 : StackLang.HolProg 64 :=
.call (some (NamedBody357_61, 1, 357, 2)) (Sum.inl 69) (some (NamedBody357_64, 357, 3))

def NamedBody357_66 : StackLang.HolProg 64 :=
.seq NamedBody357_52 NamedBody357_65

def NamedBody357_67 : StackLang.HolProg 64 :=
.seq NamedBody357_51 NamedBody357_66

def NamedBody357_68 : StackLang.HolProg 64 :=
.seq NamedBody357_50 NamedBody357_67

def NamedBody357_69 : StackLang.HolProg 64 :=
.seq NamedBody357_21 NamedBody357_68

def NamedBody357_70 : StackLang.HolProg 64 :=
.seq NamedBody357_18 NamedBody357_69

def NamedBody357_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody357_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody357_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody357_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1028#64)

def NamedBody357_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody357_77 : StackLang.HolProg 64 :=
.seq NamedBody357_75 NamedBody357_76

def NamedBody357_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody357_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody357_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody357_81 : StackLang.HolProg 64 :=
.seq NamedBody357_79 NamedBody357_80

def NamedBody357_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody357_81 NamedBody357_82

def NamedBody357_84 : StackLang.HolProg 64 :=
.seq NamedBody357_78 NamedBody357_83

def NamedBody357_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody357_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody357_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 5

def NamedBody357_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody357_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody357_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody357_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody357_94 : StackLang.HolProg 64 :=
.seq NamedBody357_92 NamedBody357_93

def NamedBody357_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody357_96 : StackLang.HolProg 64 :=
.seq NamedBody357_94 NamedBody357_95

def NamedBody357_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_98 : StackLang.HolProg 64 :=
.seq NamedBody357_96 NamedBody357_97

def NamedBody357_99 : StackLang.HolProg 64 :=
.seq NamedBody357_91 NamedBody357_98

def NamedBody357_100 : StackLang.HolProg 64 :=
.seq NamedBody357_90 NamedBody357_99

def NamedBody357_101 : StackLang.HolProg 64 :=
.seq NamedBody357_89 NamedBody357_100

def NamedBody357_102 : StackLang.HolProg 64 :=
.seq NamedBody357_88 NamedBody357_101

def NamedBody357_103 : StackLang.HolProg 64 :=
.seq NamedBody357_87 NamedBody357_102

def NamedBody357_104 : StackLang.HolProg 64 :=
.seq NamedBody357_86 NamedBody357_103

def NamedBody357_105 : StackLang.HolProg 64 :=
.seq NamedBody357_85 NamedBody357_104

def NamedBody357_106 : StackLang.HolProg 64 :=
.seq NamedBody357_84 NamedBody357_105

def NamedBody357_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody357_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody357_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody357_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody357_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody357_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody357_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody357_118 : StackLang.HolProg 64 :=
.seq NamedBody357_116 NamedBody357_117

def NamedBody357_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody357_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody357_121 : StackLang.HolProg 64 :=
.seq NamedBody357_119 NamedBody357_120

def NamedBody357_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody357_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody357_124 : StackLang.HolProg 64 :=
.seq NamedBody357_122 NamedBody357_123

def NamedBody357_125 : StackLang.HolProg 64 :=
.seq NamedBody357_121 NamedBody357_124

def NamedBody357_126 : StackLang.HolProg 64 :=
.seq NamedBody357_118 NamedBody357_125

def NamedBody357_127 : StackLang.HolProg 64 :=
.seq NamedBody357_115 NamedBody357_126

def NamedBody357_128 : StackLang.HolProg 64 :=
.seq NamedBody357_114 NamedBody357_127

def NamedBody357_129 : StackLang.HolProg 64 :=
.seq NamedBody357_113 NamedBody357_128

def NamedBody357_130 : StackLang.HolProg 64 :=
.seq NamedBody357_112 NamedBody357_129

def NamedBody357_131 : StackLang.HolProg 64 :=
.seq NamedBody357_111 NamedBody357_130

def NamedBody357_132 : StackLang.HolProg 64 :=
.seq NamedBody357_110 NamedBody357_131

def NamedBody357_133 : StackLang.HolProg 64 :=
.seq NamedBody357_109 NamedBody357_132

def NamedBody357_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody357_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody357_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody357_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody357_138 : StackLang.HolProg 64 :=
.seq NamedBody357_136 NamedBody357_137

def NamedBody357_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody357_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody357_141 : StackLang.HolProg 64 :=
.seq NamedBody357_139 NamedBody357_140

def NamedBody357_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody357_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody357_144 : StackLang.HolProg 64 :=
.seq NamedBody357_142 NamedBody357_143

def NamedBody357_145 : StackLang.HolProg 64 :=
.seq NamedBody357_141 NamedBody357_144

def NamedBody357_146 : StackLang.HolProg 64 :=
.seq NamedBody357_138 NamedBody357_145

def NamedBody357_147 : StackLang.HolProg 64 :=
.seq NamedBody357_135 NamedBody357_146

def NamedBody357_148 : StackLang.HolProg 64 :=
.seq NamedBody357_134 NamedBody357_147

def NamedBody357_149 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody357_150 : StackLang.HolProg 64 :=
.seq NamedBody357_148 NamedBody357_149

def NamedBody357_151 : StackLang.HolProg 64 :=
.call (some (NamedBody357_133, 1, 357, 4)) (Sum.inl 68) (some (NamedBody357_150, 357, 5))

def NamedBody357_152 : StackLang.HolProg 64 :=
.seq NamedBody357_108 NamedBody357_151

def NamedBody357_153 : StackLang.HolProg 64 :=
.seq NamedBody357_107 NamedBody357_152

def NamedBody357_154 : StackLang.HolProg 64 :=
.seq NamedBody357_106 NamedBody357_153

def NamedBody357_155 : StackLang.HolProg 64 :=
.seq NamedBody357_77 NamedBody357_154

def NamedBody357_156 : StackLang.HolProg 64 :=
.seq NamedBody357_74 NamedBody357_155

def NamedBody357_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody357_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody357_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody357_160 : StackLang.HolProg 64 :=
.seq NamedBody357_158 NamedBody357_159

def NamedBody357_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1029#64)

def NamedBody357_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody357_164 : StackLang.HolProg 64 :=
.seq NamedBody357_162 NamedBody357_163

def NamedBody357_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody357_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody357_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody357_168 : StackLang.HolProg 64 :=
.seq NamedBody357_166 NamedBody357_167

def NamedBody357_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody357_168 NamedBody357_169

def NamedBody357_171 : StackLang.HolProg 64 :=
.seq NamedBody357_165 NamedBody357_170

def NamedBody357_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody357_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody357_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 7

def NamedBody357_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody357_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody357_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody357_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody357_181 : StackLang.HolProg 64 :=
.seq NamedBody357_179 NamedBody357_180

def NamedBody357_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody357_183 : StackLang.HolProg 64 :=
.seq NamedBody357_181 NamedBody357_182

def NamedBody357_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_185 : StackLang.HolProg 64 :=
.seq NamedBody357_183 NamedBody357_184

def NamedBody357_186 : StackLang.HolProg 64 :=
.seq NamedBody357_178 NamedBody357_185

def NamedBody357_187 : StackLang.HolProg 64 :=
.seq NamedBody357_177 NamedBody357_186

def NamedBody357_188 : StackLang.HolProg 64 :=
.seq NamedBody357_176 NamedBody357_187

def NamedBody357_189 : StackLang.HolProg 64 :=
.seq NamedBody357_175 NamedBody357_188

def NamedBody357_190 : StackLang.HolProg 64 :=
.seq NamedBody357_174 NamedBody357_189

def NamedBody357_191 : StackLang.HolProg 64 :=
.seq NamedBody357_173 NamedBody357_190

def NamedBody357_192 : StackLang.HolProg 64 :=
.seq NamedBody357_172 NamedBody357_191

def NamedBody357_193 : StackLang.HolProg 64 :=
.seq NamedBody357_171 NamedBody357_192

def NamedBody357_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody357_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody357_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody357_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody357_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody357_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody357_204 : StackLang.HolProg 64 :=
.seq NamedBody357_202 NamedBody357_203

def NamedBody357_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody357_206 : StackLang.HolProg 64 :=
.seq NamedBody357_204 NamedBody357_205

def NamedBody357_207 : StackLang.HolProg 64 :=
.seq NamedBody357_201 NamedBody357_206

def NamedBody357_208 : StackLang.HolProg 64 :=
.seq NamedBody357_200 NamedBody357_207

def NamedBody357_209 : StackLang.HolProg 64 :=
.seq NamedBody357_199 NamedBody357_208

def NamedBody357_210 : StackLang.HolProg 64 :=
.seq NamedBody357_198 NamedBody357_209

def NamedBody357_211 : StackLang.HolProg 64 :=
.seq NamedBody357_197 NamedBody357_210

def NamedBody357_212 : StackLang.HolProg 64 :=
.seq NamedBody357_196 NamedBody357_211

def NamedBody357_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody357_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody357_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody357_216 : StackLang.HolProg 64 :=
.seq NamedBody357_214 NamedBody357_215

def NamedBody357_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody357_218 : StackLang.HolProg 64 :=
.seq NamedBody357_216 NamedBody357_217

def NamedBody357_219 : StackLang.HolProg 64 :=
.seq NamedBody357_213 NamedBody357_218

def NamedBody357_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody357_221 : StackLang.HolProg 64 :=
.seq NamedBody357_219 NamedBody357_220

def NamedBody357_222 : StackLang.HolProg 64 :=
.call (some (NamedBody357_212, 1, 357, 6)) (Sum.inl 148) (some (NamedBody357_221, 357, 7))

def NamedBody357_223 : StackLang.HolProg 64 :=
.seq NamedBody357_195 NamedBody357_222

def NamedBody357_224 : StackLang.HolProg 64 :=
.seq NamedBody357_194 NamedBody357_223

def NamedBody357_225 : StackLang.HolProg 64 :=
.seq NamedBody357_193 NamedBody357_224

def NamedBody357_226 : StackLang.HolProg 64 :=
.seq NamedBody357_164 NamedBody357_225

def NamedBody357_227 : StackLang.HolProg 64 :=
.seq NamedBody357_161 NamedBody357_226

def NamedBody357_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody357_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody357_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1030#64)

def NamedBody357_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody357_233 : StackLang.HolProg 64 :=
.seq NamedBody357_231 NamedBody357_232

def NamedBody357_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody357_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody357_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody357_237 : StackLang.HolProg 64 :=
.seq NamedBody357_235 NamedBody357_236

def NamedBody357_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody357_237 NamedBody357_238

def NamedBody357_240 : StackLang.HolProg 64 :=
.seq NamedBody357_234 NamedBody357_239

def NamedBody357_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody357_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody357_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 9

def NamedBody357_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody357_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody357_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody357_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody357_250 : StackLang.HolProg 64 :=
.seq NamedBody357_248 NamedBody357_249

def NamedBody357_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody357_252 : StackLang.HolProg 64 :=
.seq NamedBody357_250 NamedBody357_251

def NamedBody357_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_254 : StackLang.HolProg 64 :=
.seq NamedBody357_252 NamedBody357_253

def NamedBody357_255 : StackLang.HolProg 64 :=
.seq NamedBody357_247 NamedBody357_254

def NamedBody357_256 : StackLang.HolProg 64 :=
.seq NamedBody357_246 NamedBody357_255

def NamedBody357_257 : StackLang.HolProg 64 :=
.seq NamedBody357_245 NamedBody357_256

def NamedBody357_258 : StackLang.HolProg 64 :=
.seq NamedBody357_244 NamedBody357_257

def NamedBody357_259 : StackLang.HolProg 64 :=
.seq NamedBody357_243 NamedBody357_258

def NamedBody357_260 : StackLang.HolProg 64 :=
.seq NamedBody357_242 NamedBody357_259

def NamedBody357_261 : StackLang.HolProg 64 :=
.seq NamedBody357_241 NamedBody357_260

def NamedBody357_262 : StackLang.HolProg 64 :=
.seq NamedBody357_240 NamedBody357_261

def NamedBody357_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody357_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody357_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody357_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody357_271 : StackLang.HolProg 64 :=
.seq NamedBody357_269 NamedBody357_270

def NamedBody357_272 : StackLang.HolProg 64 :=
.seq NamedBody357_268 NamedBody357_271

def NamedBody357_273 : StackLang.HolProg 64 :=
.seq NamedBody357_267 NamedBody357_272

def NamedBody357_274 : StackLang.HolProg 64 :=
.seq NamedBody357_266 NamedBody357_273

def NamedBody357_275 : StackLang.HolProg 64 :=
.seq NamedBody357_265 NamedBody357_274

def NamedBody357_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody357_277 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody357_278 : StackLang.HolProg 64 :=
.seq NamedBody357_276 NamedBody357_277

def NamedBody357_279 : StackLang.HolProg 64 :=
.call (some (NamedBody357_275, 1, 357, 8)) (Sum.inl 176) (some (NamedBody357_278, 357, 9))

def NamedBody357_280 : StackLang.HolProg 64 :=
.seq NamedBody357_264 NamedBody357_279

def NamedBody357_281 : StackLang.HolProg 64 :=
.seq NamedBody357_263 NamedBody357_280

def NamedBody357_282 : StackLang.HolProg 64 :=
.seq NamedBody357_262 NamedBody357_281

def NamedBody357_283 : StackLang.HolProg 64 :=
.seq NamedBody357_233 NamedBody357_282

def NamedBody357_284 : StackLang.HolProg 64 :=
.seq NamedBody357_230 NamedBody357_283

def NamedBody357_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody357_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody357_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody357_288 : StackLang.HolProg 64 :=
.seq NamedBody357_286 NamedBody357_287

def NamedBody357_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1031#64)

def NamedBody357_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody357_292 : StackLang.HolProg 64 :=
.seq NamedBody357_290 NamedBody357_291

def NamedBody357_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody357_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody357_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody357_296 : StackLang.HolProg 64 :=
.seq NamedBody357_294 NamedBody357_295

def NamedBody357_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_298 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody357_296 NamedBody357_297

def NamedBody357_299 : StackLang.HolProg 64 :=
.seq NamedBody357_293 NamedBody357_298

def NamedBody357_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody357_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody357_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 11

def NamedBody357_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody357_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody357_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody357_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody357_309 : StackLang.HolProg 64 :=
.seq NamedBody357_307 NamedBody357_308

def NamedBody357_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody357_311 : StackLang.HolProg 64 :=
.seq NamedBody357_309 NamedBody357_310

def NamedBody357_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_313 : StackLang.HolProg 64 :=
.seq NamedBody357_311 NamedBody357_312

def NamedBody357_314 : StackLang.HolProg 64 :=
.seq NamedBody357_306 NamedBody357_313

def NamedBody357_315 : StackLang.HolProg 64 :=
.seq NamedBody357_305 NamedBody357_314

def NamedBody357_316 : StackLang.HolProg 64 :=
.seq NamedBody357_304 NamedBody357_315

def NamedBody357_317 : StackLang.HolProg 64 :=
.seq NamedBody357_303 NamedBody357_316

def NamedBody357_318 : StackLang.HolProg 64 :=
.seq NamedBody357_302 NamedBody357_317

def NamedBody357_319 : StackLang.HolProg 64 :=
.seq NamedBody357_301 NamedBody357_318

def NamedBody357_320 : StackLang.HolProg 64 :=
.seq NamedBody357_300 NamedBody357_319

def NamedBody357_321 : StackLang.HolProg 64 :=
.seq NamedBody357_299 NamedBody357_320

def NamedBody357_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody357_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody357_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody357_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody357_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody357_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody357_330 : StackLang.HolProg 64 :=
.seq NamedBody357_328 NamedBody357_329

def NamedBody357_331 : StackLang.HolProg 64 :=
.seq NamedBody357_327 NamedBody357_330

def NamedBody357_332 : StackLang.HolProg 64 :=
.seq NamedBody357_326 NamedBody357_331

def NamedBody357_333 : StackLang.HolProg 64 :=
.seq NamedBody357_325 NamedBody357_332

def NamedBody357_334 : StackLang.HolProg 64 :=
.seq NamedBody357_324 NamedBody357_333

def NamedBody357_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody357_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody357_337 : StackLang.HolProg 64 :=
.seq NamedBody357_335 NamedBody357_336

def NamedBody357_338 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody357_339 : StackLang.HolProg 64 :=
.seq NamedBody357_337 NamedBody357_338

def NamedBody357_340 : StackLang.HolProg 64 :=
.call (some (NamedBody357_334, 1, 357, 10)) (Sum.inl 70) (some (NamedBody357_339, 357, 11))

def NamedBody357_341 : StackLang.HolProg 64 :=
.seq NamedBody357_323 NamedBody357_340

def NamedBody357_342 : StackLang.HolProg 64 :=
.seq NamedBody357_322 NamedBody357_341

def NamedBody357_343 : StackLang.HolProg 64 :=
.seq NamedBody357_321 NamedBody357_342

def NamedBody357_344 : StackLang.HolProg 64 :=
.seq NamedBody357_292 NamedBody357_343

def NamedBody357_345 : StackLang.HolProg 64 :=
.seq NamedBody357_289 NamedBody357_344

def NamedBody357_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody357_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody357_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody357_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody357_350 : StackLang.HolProg 64 :=
.seq NamedBody357_348 NamedBody357_349

def NamedBody357_351 : StackLang.HolProg 64 :=
.seq NamedBody357_347 NamedBody357_350

def NamedBody357_352 : StackLang.HolProg 64 :=
.seq NamedBody357_346 NamedBody357_351

def NamedBody357_353 : StackLang.HolProg 64 :=
.seq NamedBody357_345 NamedBody357_352

def NamedBody357_354 : StackLang.HolProg 64 :=
.seq NamedBody357_288 NamedBody357_353

def NamedBody357_355 : StackLang.HolProg 64 :=
.seq NamedBody357_285 NamedBody357_354

def NamedBody357_356 : StackLang.HolProg 64 :=
.seq NamedBody357_284 NamedBody357_355

def NamedBody357_357 : StackLang.HolProg 64 :=
.seq NamedBody357_229 NamedBody357_356

def NamedBody357_358 : StackLang.HolProg 64 :=
.seq NamedBody357_228 NamedBody357_357

def NamedBody357_359 : StackLang.HolProg 64 :=
.seq NamedBody357_227 NamedBody357_358

def NamedBody357_360 : StackLang.HolProg 64 :=
.seq NamedBody357_160 NamedBody357_359

def NamedBody357_361 : StackLang.HolProg 64 :=
.seq NamedBody357_157 NamedBody357_360

def NamedBody357_362 : StackLang.HolProg 64 :=
.seq NamedBody357_156 NamedBody357_361

def NamedBody357_363 : StackLang.HolProg 64 :=
.seq NamedBody357_73 NamedBody357_362

def NamedBody357_364 : StackLang.HolProg 64 :=
.seq NamedBody357_72 NamedBody357_363

def NamedBody357_365 : StackLang.HolProg 64 :=
.seq NamedBody357_71 NamedBody357_364

def NamedBody357_366 : StackLang.HolProg 64 :=
.seq NamedBody357_70 NamedBody357_365

def NamedBody357_367 : StackLang.HolProg 64 :=
.seq NamedBody357_17 NamedBody357_366

def NamedBody357_368 : StackLang.HolProg 64 :=
.seq NamedBody357_6 NamedBody357_367

def Named357 : Nat × StackLang.HolProg 64 := (357, NamedBody357_368)
theorem Named357_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed357 = Named357 := by
  kernel_rfl
#print axioms Named357_eq
end InitECandidate.Proofs.BackendStages
