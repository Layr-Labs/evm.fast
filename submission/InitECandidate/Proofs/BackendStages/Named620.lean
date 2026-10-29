import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed620
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody620_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody620_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody620_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody620_3 : StackLang.HolProg 64 :=
.seq NamedBody620_1 NamedBody620_2

def NamedBody620_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody620_3 NamedBody620_4

def NamedBody620_6 : StackLang.HolProg 64 :=
.seq NamedBody620_0 NamedBody620_5

def NamedBody620_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody620_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody620_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody620_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody620_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody620_12 : StackLang.HolProg 64 :=
.seq NamedBody620_10 NamedBody620_11

def NamedBody620_13 : StackLang.HolProg 64 :=
.seq NamedBody620_9 NamedBody620_12

def NamedBody620_14 : StackLang.HolProg 64 :=
.seq NamedBody620_8 NamedBody620_13

def NamedBody620_15 : StackLang.HolProg 64 :=
.seq NamedBody620_7 NamedBody620_14

def NamedBody620_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2429#64)

def NamedBody620_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody620_19 : StackLang.HolProg 64 :=
.seq NamedBody620_17 NamedBody620_18

def NamedBody620_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody620_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody620_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody620_23 : StackLang.HolProg 64 :=
.seq NamedBody620_21 NamedBody620_22

def NamedBody620_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody620_23 NamedBody620_24

def NamedBody620_26 : StackLang.HolProg 64 :=
.seq NamedBody620_20 NamedBody620_25

def NamedBody620_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody620_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody620_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 3

def NamedBody620_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody620_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody620_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody620_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody620_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody620_36 : StackLang.HolProg 64 :=
.seq NamedBody620_34 NamedBody620_35

def NamedBody620_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody620_38 : StackLang.HolProg 64 :=
.seq NamedBody620_36 NamedBody620_37

def NamedBody620_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody620_40 : StackLang.HolProg 64 :=
.seq NamedBody620_38 NamedBody620_39

def NamedBody620_41 : StackLang.HolProg 64 :=
.seq NamedBody620_33 NamedBody620_40

def NamedBody620_42 : StackLang.HolProg 64 :=
.seq NamedBody620_32 NamedBody620_41

def NamedBody620_43 : StackLang.HolProg 64 :=
.seq NamedBody620_31 NamedBody620_42

def NamedBody620_44 : StackLang.HolProg 64 :=
.seq NamedBody620_30 NamedBody620_43

def NamedBody620_45 : StackLang.HolProg 64 :=
.seq NamedBody620_29 NamedBody620_44

def NamedBody620_46 : StackLang.HolProg 64 :=
.seq NamedBody620_28 NamedBody620_45

def NamedBody620_47 : StackLang.HolProg 64 :=
.seq NamedBody620_27 NamedBody620_46

def NamedBody620_48 : StackLang.HolProg 64 :=
.seq NamedBody620_26 NamedBody620_47

def NamedBody620_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody620_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody620_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody620_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody620_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody620_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody620_58 : StackLang.HolProg 64 :=
.seq NamedBody620_56 NamedBody620_57

def NamedBody620_59 : StackLang.HolProg 64 :=
.seq NamedBody620_55 NamedBody620_58

def NamedBody620_60 : StackLang.HolProg 64 :=
.seq NamedBody620_54 NamedBody620_59

def NamedBody620_61 : StackLang.HolProg 64 :=
.seq NamedBody620_53 NamedBody620_60

def NamedBody620_62 : StackLang.HolProg 64 :=
.seq NamedBody620_52 NamedBody620_61

def NamedBody620_63 : StackLang.HolProg 64 :=
.seq NamedBody620_51 NamedBody620_62

def NamedBody620_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody620_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody620_66 : StackLang.HolProg 64 :=
.seq NamedBody620_64 NamedBody620_65

def NamedBody620_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody620_68 : StackLang.HolProg 64 :=
.seq NamedBody620_66 NamedBody620_67

def NamedBody620_69 : StackLang.HolProg 64 :=
.call (some (NamedBody620_63, 1, 620, 2)) (Sum.inl 102) (some (NamedBody620_68, 620, 3))

def NamedBody620_70 : StackLang.HolProg 64 :=
.seq NamedBody620_50 NamedBody620_69

def NamedBody620_71 : StackLang.HolProg 64 :=
.seq NamedBody620_49 NamedBody620_70

def NamedBody620_72 : StackLang.HolProg 64 :=
.seq NamedBody620_48 NamedBody620_71

def NamedBody620_73 : StackLang.HolProg 64 :=
.seq NamedBody620_19 NamedBody620_72

def NamedBody620_74 : StackLang.HolProg 64 :=
.seq NamedBody620_16 NamedBody620_73

def NamedBody620_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody620_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody620_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody620_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody620_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2300#64)

def NamedBody620_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody620_82 : StackLang.HolProg 64 :=
.seq NamedBody620_80 NamedBody620_81

def NamedBody620_83 : StackLang.HolProg 64 :=
.seq NamedBody620_79 NamedBody620_82

def NamedBody620_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody620_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody620_86 : StackLang.HolProg 64 :=
.seq NamedBody620_84 NamedBody620_85

def NamedBody620_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody620_83 NamedBody620_86

def NamedBody620_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody620_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody620_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody620_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody620_92 : StackLang.HolProg 64 :=
.seq NamedBody620_90 NamedBody620_91

def NamedBody620_93 : StackLang.HolProg 64 :=
.seq NamedBody620_89 NamedBody620_92

def NamedBody620_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2430#64)

def NamedBody620_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody620_97 : StackLang.HolProg 64 :=
.seq NamedBody620_95 NamedBody620_96

def NamedBody620_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody620_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody620_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody620_101 : StackLang.HolProg 64 :=
.seq NamedBody620_99 NamedBody620_100

def NamedBody620_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody620_101 NamedBody620_102

def NamedBody620_104 : StackLang.HolProg 64 :=
.seq NamedBody620_98 NamedBody620_103

def NamedBody620_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody620_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody620_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 5

def NamedBody620_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody620_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody620_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody620_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody620_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody620_114 : StackLang.HolProg 64 :=
.seq NamedBody620_112 NamedBody620_113

def NamedBody620_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody620_116 : StackLang.HolProg 64 :=
.seq NamedBody620_114 NamedBody620_115

def NamedBody620_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody620_118 : StackLang.HolProg 64 :=
.seq NamedBody620_116 NamedBody620_117

def NamedBody620_119 : StackLang.HolProg 64 :=
.seq NamedBody620_111 NamedBody620_118

def NamedBody620_120 : StackLang.HolProg 64 :=
.seq NamedBody620_110 NamedBody620_119

def NamedBody620_121 : StackLang.HolProg 64 :=
.seq NamedBody620_109 NamedBody620_120

def NamedBody620_122 : StackLang.HolProg 64 :=
.seq NamedBody620_108 NamedBody620_121

def NamedBody620_123 : StackLang.HolProg 64 :=
.seq NamedBody620_107 NamedBody620_122

def NamedBody620_124 : StackLang.HolProg 64 :=
.seq NamedBody620_106 NamedBody620_123

def NamedBody620_125 : StackLang.HolProg 64 :=
.seq NamedBody620_105 NamedBody620_124

def NamedBody620_126 : StackLang.HolProg 64 :=
.seq NamedBody620_104 NamedBody620_125

def NamedBody620_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody620_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody620_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody620_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody620_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody620_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody620_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody620_137 : StackLang.HolProg 64 :=
.seq NamedBody620_135 NamedBody620_136

def NamedBody620_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody620_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody620_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody620_141 : StackLang.HolProg 64 :=
.seq NamedBody620_139 NamedBody620_140

def NamedBody620_142 : StackLang.HolProg 64 :=
.seq NamedBody620_138 NamedBody620_141

def NamedBody620_143 : StackLang.HolProg 64 :=
.seq NamedBody620_137 NamedBody620_142

def NamedBody620_144 : StackLang.HolProg 64 :=
.seq NamedBody620_134 NamedBody620_143

def NamedBody620_145 : StackLang.HolProg 64 :=
.seq NamedBody620_133 NamedBody620_144

def NamedBody620_146 : StackLang.HolProg 64 :=
.seq NamedBody620_132 NamedBody620_145

def NamedBody620_147 : StackLang.HolProg 64 :=
.seq NamedBody620_131 NamedBody620_146

def NamedBody620_148 : StackLang.HolProg 64 :=
.seq NamedBody620_130 NamedBody620_147

def NamedBody620_149 : StackLang.HolProg 64 :=
.seq NamedBody620_129 NamedBody620_148

def NamedBody620_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody620_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody620_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody620_153 : StackLang.HolProg 64 :=
.seq NamedBody620_151 NamedBody620_152

def NamedBody620_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody620_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody620_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody620_157 : StackLang.HolProg 64 :=
.seq NamedBody620_155 NamedBody620_156

def NamedBody620_158 : StackLang.HolProg 64 :=
.seq NamedBody620_154 NamedBody620_157

def NamedBody620_159 : StackLang.HolProg 64 :=
.seq NamedBody620_153 NamedBody620_158

def NamedBody620_160 : StackLang.HolProg 64 :=
.seq NamedBody620_150 NamedBody620_159

def NamedBody620_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody620_162 : StackLang.HolProg 64 :=
.seq NamedBody620_160 NamedBody620_161

def NamedBody620_163 : StackLang.HolProg 64 :=
.call (some (NamedBody620_149, 1, 620, 4)) (Sum.inl 463) (some (NamedBody620_162, 620, 5))

def NamedBody620_164 : StackLang.HolProg 64 :=
.seq NamedBody620_128 NamedBody620_163

def NamedBody620_165 : StackLang.HolProg 64 :=
.seq NamedBody620_127 NamedBody620_164

def NamedBody620_166 : StackLang.HolProg 64 :=
.seq NamedBody620_126 NamedBody620_165

def NamedBody620_167 : StackLang.HolProg 64 :=
.seq NamedBody620_97 NamedBody620_166

def NamedBody620_168 : StackLang.HolProg 64 :=
.seq NamedBody620_94 NamedBody620_167

def NamedBody620_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody620_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody620_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody620_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody620_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody620_175 : StackLang.HolProg 64 :=
.seq NamedBody620_173 NamedBody620_174

def NamedBody620_176 : StackLang.HolProg 64 :=
.seq NamedBody620_172 NamedBody620_175

def NamedBody620_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2431#64)

def NamedBody620_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody620_180 : StackLang.HolProg 64 :=
.seq NamedBody620_178 NamedBody620_179

def NamedBody620_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody620_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody620_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody620_184 : StackLang.HolProg 64 :=
.seq NamedBody620_182 NamedBody620_183

def NamedBody620_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody620_184 NamedBody620_185

def NamedBody620_187 : StackLang.HolProg 64 :=
.seq NamedBody620_181 NamedBody620_186

def NamedBody620_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody620_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody620_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 7

def NamedBody620_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody620_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody620_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody620_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody620_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody620_197 : StackLang.HolProg 64 :=
.seq NamedBody620_195 NamedBody620_196

def NamedBody620_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody620_199 : StackLang.HolProg 64 :=
.seq NamedBody620_197 NamedBody620_198

def NamedBody620_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody620_201 : StackLang.HolProg 64 :=
.seq NamedBody620_199 NamedBody620_200

def NamedBody620_202 : StackLang.HolProg 64 :=
.seq NamedBody620_194 NamedBody620_201

def NamedBody620_203 : StackLang.HolProg 64 :=
.seq NamedBody620_193 NamedBody620_202

def NamedBody620_204 : StackLang.HolProg 64 :=
.seq NamedBody620_192 NamedBody620_203

def NamedBody620_205 : StackLang.HolProg 64 :=
.seq NamedBody620_191 NamedBody620_204

def NamedBody620_206 : StackLang.HolProg 64 :=
.seq NamedBody620_190 NamedBody620_205

def NamedBody620_207 : StackLang.HolProg 64 :=
.seq NamedBody620_189 NamedBody620_206

def NamedBody620_208 : StackLang.HolProg 64 :=
.seq NamedBody620_188 NamedBody620_207

def NamedBody620_209 : StackLang.HolProg 64 :=
.seq NamedBody620_187 NamedBody620_208

def NamedBody620_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody620_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody620_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody620_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody620_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody620_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody620_219 : StackLang.HolProg 64 :=
.seq NamedBody620_217 NamedBody620_218

def NamedBody620_220 : StackLang.HolProg 64 :=
.seq NamedBody620_216 NamedBody620_219

def NamedBody620_221 : StackLang.HolProg 64 :=
.seq NamedBody620_215 NamedBody620_220

def NamedBody620_222 : StackLang.HolProg 64 :=
.seq NamedBody620_214 NamedBody620_221

def NamedBody620_223 : StackLang.HolProg 64 :=
.seq NamedBody620_213 NamedBody620_222

def NamedBody620_224 : StackLang.HolProg 64 :=
.seq NamedBody620_212 NamedBody620_223

def NamedBody620_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody620_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody620_227 : StackLang.HolProg 64 :=
.seq NamedBody620_225 NamedBody620_226

def NamedBody620_228 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody620_229 : StackLang.HolProg 64 :=
.seq NamedBody620_227 NamedBody620_228

def NamedBody620_230 : StackLang.HolProg 64 :=
.call (some (NamedBody620_224, 1, 620, 6)) (Sum.inl 463) (some (NamedBody620_229, 620, 7))

def NamedBody620_231 : StackLang.HolProg 64 :=
.seq NamedBody620_211 NamedBody620_230

def NamedBody620_232 : StackLang.HolProg 64 :=
.seq NamedBody620_210 NamedBody620_231

def NamedBody620_233 : StackLang.HolProg 64 :=
.seq NamedBody620_209 NamedBody620_232

def NamedBody620_234 : StackLang.HolProg 64 :=
.seq NamedBody620_180 NamedBody620_233

def NamedBody620_235 : StackLang.HolProg 64 :=
.seq NamedBody620_177 NamedBody620_234

def NamedBody620_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody620_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody620_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody620_239 : StackLang.HolProg 64 :=
.seq NamedBody620_237 NamedBody620_238

def NamedBody620_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2432#64)

def NamedBody620_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody620_243 : StackLang.HolProg 64 :=
.seq NamedBody620_241 NamedBody620_242

def NamedBody620_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody620_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody620_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody620_247 : StackLang.HolProg 64 :=
.seq NamedBody620_245 NamedBody620_246

def NamedBody620_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_249 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody620_247 NamedBody620_248

def NamedBody620_250 : StackLang.HolProg 64 :=
.seq NamedBody620_244 NamedBody620_249

def NamedBody620_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody620_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody620_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 9

def NamedBody620_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody620_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody620_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody620_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody620_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody620_260 : StackLang.HolProg 64 :=
.seq NamedBody620_258 NamedBody620_259

def NamedBody620_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody620_262 : StackLang.HolProg 64 :=
.seq NamedBody620_260 NamedBody620_261

def NamedBody620_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody620_264 : StackLang.HolProg 64 :=
.seq NamedBody620_262 NamedBody620_263

def NamedBody620_265 : StackLang.HolProg 64 :=
.seq NamedBody620_257 NamedBody620_264

def NamedBody620_266 : StackLang.HolProg 64 :=
.seq NamedBody620_256 NamedBody620_265

def NamedBody620_267 : StackLang.HolProg 64 :=
.seq NamedBody620_255 NamedBody620_266

def NamedBody620_268 : StackLang.HolProg 64 :=
.seq NamedBody620_254 NamedBody620_267

def NamedBody620_269 : StackLang.HolProg 64 :=
.seq NamedBody620_253 NamedBody620_268

def NamedBody620_270 : StackLang.HolProg 64 :=
.seq NamedBody620_252 NamedBody620_269

def NamedBody620_271 : StackLang.HolProg 64 :=
.seq NamedBody620_251 NamedBody620_270

def NamedBody620_272 : StackLang.HolProg 64 :=
.seq NamedBody620_250 NamedBody620_271

def NamedBody620_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody620_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody620_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody620_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody620_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody620_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody620_282 : StackLang.HolProg 64 :=
.seq NamedBody620_280 NamedBody620_281

def NamedBody620_283 : StackLang.HolProg 64 :=
.seq NamedBody620_279 NamedBody620_282

def NamedBody620_284 : StackLang.HolProg 64 :=
.seq NamedBody620_278 NamedBody620_283

def NamedBody620_285 : StackLang.HolProg 64 :=
.seq NamedBody620_277 NamedBody620_284

def NamedBody620_286 : StackLang.HolProg 64 :=
.seq NamedBody620_276 NamedBody620_285

def NamedBody620_287 : StackLang.HolProg 64 :=
.seq NamedBody620_275 NamedBody620_286

def NamedBody620_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody620_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody620_290 : StackLang.HolProg 64 :=
.seq NamedBody620_288 NamedBody620_289

def NamedBody620_291 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody620_292 : StackLang.HolProg 64 :=
.seq NamedBody620_290 NamedBody620_291

def NamedBody620_293 : StackLang.HolProg 64 :=
.call (some (NamedBody620_287, 1, 620, 8)) (Sum.inl 463) (some (NamedBody620_292, 620, 9))

def NamedBody620_294 : StackLang.HolProg 64 :=
.seq NamedBody620_274 NamedBody620_293

def NamedBody620_295 : StackLang.HolProg 64 :=
.seq NamedBody620_273 NamedBody620_294

def NamedBody620_296 : StackLang.HolProg 64 :=
.seq NamedBody620_272 NamedBody620_295

def NamedBody620_297 : StackLang.HolProg 64 :=
.seq NamedBody620_243 NamedBody620_296

def NamedBody620_298 : StackLang.HolProg 64 :=
.seq NamedBody620_240 NamedBody620_297

def NamedBody620_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody620_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody620_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody620_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def NamedBody620_303 : StackLang.HolProg 64 :=
.seq NamedBody620_301 NamedBody620_302

def NamedBody620_304 : StackLang.HolProg 64 :=
.seq NamedBody620_300 NamedBody620_303

def NamedBody620_305 : StackLang.HolProg 64 :=
.seq NamedBody620_299 NamedBody620_304

def NamedBody620_306 : StackLang.HolProg 64 :=
.seq NamedBody620_298 NamedBody620_305

def NamedBody620_307 : StackLang.HolProg 64 :=
.seq NamedBody620_239 NamedBody620_306

def NamedBody620_308 : StackLang.HolProg 64 :=
.seq NamedBody620_236 NamedBody620_307

def NamedBody620_309 : StackLang.HolProg 64 :=
.seq NamedBody620_235 NamedBody620_308

def NamedBody620_310 : StackLang.HolProg 64 :=
.seq NamedBody620_176 NamedBody620_309

def NamedBody620_311 : StackLang.HolProg 64 :=
.seq NamedBody620_171 NamedBody620_310

def NamedBody620_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody620_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody620_314 : StackLang.HolProg 64 :=
.seq NamedBody620_312 NamedBody620_313

def NamedBody620_315 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody620_311 NamedBody620_314

def NamedBody620_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody620_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody620_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody620_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody620_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody620_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody620_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody620_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody620_328 : StackLang.HolProg 64 :=
.seq NamedBody620_326 NamedBody620_327

def NamedBody620_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody620_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_331 : StackLang.HolProg 64 :=
.seq NamedBody620_329 NamedBody620_330

def NamedBody620_332 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody620_328 NamedBody620_331

def NamedBody620_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody620_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody620_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody620_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody620_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody620_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def NamedBody620_341 : StackLang.HolProg 64 :=
.seq NamedBody620_339 NamedBody620_340

def NamedBody620_342 : StackLang.HolProg 64 :=
.seq NamedBody620_338 NamedBody620_341

def NamedBody620_343 : StackLang.HolProg 64 :=
.seq NamedBody620_337 NamedBody620_342

def NamedBody620_344 : StackLang.HolProg 64 :=
.seq NamedBody620_336 NamedBody620_343

def NamedBody620_345 : StackLang.HolProg 64 :=
.seq NamedBody620_335 NamedBody620_344

def NamedBody620_346 : StackLang.HolProg 64 :=
.seq NamedBody620_334 NamedBody620_345

def NamedBody620_347 : StackLang.HolProg 64 :=
.seq NamedBody620_333 NamedBody620_346

def NamedBody620_348 : StackLang.HolProg 64 :=
.seq NamedBody620_332 NamedBody620_347

def NamedBody620_349 : StackLang.HolProg 64 :=
.seq NamedBody620_325 NamedBody620_348

def NamedBody620_350 : StackLang.HolProg 64 :=
.seq NamedBody620_324 NamedBody620_349

def NamedBody620_351 : StackLang.HolProg 64 :=
.seq NamedBody620_323 NamedBody620_350

def NamedBody620_352 : StackLang.HolProg 64 :=
.seq NamedBody620_322 NamedBody620_351

def NamedBody620_353 : StackLang.HolProg 64 :=
.seq NamedBody620_321 NamedBody620_352

def NamedBody620_354 : StackLang.HolProg 64 :=
.seq NamedBody620_320 NamedBody620_353

def NamedBody620_355 : StackLang.HolProg 64 :=
.seq NamedBody620_319 NamedBody620_354

def NamedBody620_356 : StackLang.HolProg 64 :=
.seq NamedBody620_318 NamedBody620_355

def NamedBody620_357 : StackLang.HolProg 64 :=
.seq NamedBody620_317 NamedBody620_356

def NamedBody620_358 : StackLang.HolProg 64 :=
.seq NamedBody620_316 NamedBody620_357

def NamedBody620_359 : StackLang.HolProg 64 :=
.seq NamedBody620_315 NamedBody620_358

def NamedBody620_360 : StackLang.HolProg 64 :=
.seq NamedBody620_170 NamedBody620_359

def NamedBody620_361 : StackLang.HolProg 64 :=
.seq NamedBody620_169 NamedBody620_360

def NamedBody620_362 : StackLang.HolProg 64 :=
.seq NamedBody620_168 NamedBody620_361

def NamedBody620_363 : StackLang.HolProg 64 :=
.seq NamedBody620_93 NamedBody620_362

def NamedBody620_364 : StackLang.HolProg 64 :=
.seq NamedBody620_88 NamedBody620_363

def NamedBody620_365 : StackLang.HolProg 64 :=
.seq NamedBody620_87 NamedBody620_364

def NamedBody620_366 : StackLang.HolProg 64 :=
.seq NamedBody620_78 NamedBody620_365

def NamedBody620_367 : StackLang.HolProg 64 :=
.seq NamedBody620_77 NamedBody620_366

def NamedBody620_368 : StackLang.HolProg 64 :=
.seq NamedBody620_76 NamedBody620_367

def NamedBody620_369 : StackLang.HolProg 64 :=
.seq NamedBody620_75 NamedBody620_368

def NamedBody620_370 : StackLang.HolProg 64 :=
.seq NamedBody620_74 NamedBody620_369

def NamedBody620_371 : StackLang.HolProg 64 :=
.seq NamedBody620_15 NamedBody620_370

def NamedBody620_372 : StackLang.HolProg 64 :=
.seq NamedBody620_6 NamedBody620_371

def Named620 : Nat × StackLang.HolProg 64 := (620, NamedBody620_372)
theorem Named620_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed620 = Named620 := by
  kernel_rfl
#print axioms Named620_eq
end InitECandidate.Proofs.BackendStages
