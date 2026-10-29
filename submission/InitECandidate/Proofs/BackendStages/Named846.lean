import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed846
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody846_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody846_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody846_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody846_3 : StackLang.HolProg 64 :=
.seq NamedBody846_1 NamedBody846_2

def NamedBody846_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody846_3 NamedBody846_4

def NamedBody846_6 : StackLang.HolProg 64 :=
.seq NamedBody846_0 NamedBody846_5

def NamedBody846_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody846_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 80#64)

def NamedBody846_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody846_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody846_11 : StackLang.HolProg 64 :=
.seq NamedBody846_9 NamedBody846_10

def NamedBody846_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4233#64)

def NamedBody846_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody846_15 : StackLang.HolProg 64 :=
.seq NamedBody846_13 NamedBody846_14

def NamedBody846_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody846_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody846_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody846_19 : StackLang.HolProg 64 :=
.seq NamedBody846_17 NamedBody846_18

def NamedBody846_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody846_19 NamedBody846_20

def NamedBody846_22 : StackLang.HolProg 64 :=
.seq NamedBody846_16 NamedBody846_21

def NamedBody846_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody846_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody846_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 846 3

def NamedBody846_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody846_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody846_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody846_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody846_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody846_32 : StackLang.HolProg 64 :=
.seq NamedBody846_30 NamedBody846_31

def NamedBody846_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody846_34 : StackLang.HolProg 64 :=
.seq NamedBody846_32 NamedBody846_33

def NamedBody846_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody846_36 : StackLang.HolProg 64 :=
.seq NamedBody846_34 NamedBody846_35

def NamedBody846_37 : StackLang.HolProg 64 :=
.seq NamedBody846_29 NamedBody846_36

def NamedBody846_38 : StackLang.HolProg 64 :=
.seq NamedBody846_28 NamedBody846_37

def NamedBody846_39 : StackLang.HolProg 64 :=
.seq NamedBody846_27 NamedBody846_38

def NamedBody846_40 : StackLang.HolProg 64 :=
.seq NamedBody846_26 NamedBody846_39

def NamedBody846_41 : StackLang.HolProg 64 :=
.seq NamedBody846_25 NamedBody846_40

def NamedBody846_42 : StackLang.HolProg 64 :=
.seq NamedBody846_24 NamedBody846_41

def NamedBody846_43 : StackLang.HolProg 64 :=
.seq NamedBody846_23 NamedBody846_42

def NamedBody846_44 : StackLang.HolProg 64 :=
.seq NamedBody846_22 NamedBody846_43

def NamedBody846_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody846_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody846_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody846_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody846_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody846_53 : StackLang.HolProg 64 :=
.seq NamedBody846_51 NamedBody846_52

def NamedBody846_54 : StackLang.HolProg 64 :=
.seq NamedBody846_50 NamedBody846_53

def NamedBody846_55 : StackLang.HolProg 64 :=
.seq NamedBody846_49 NamedBody846_54

def NamedBody846_56 : StackLang.HolProg 64 :=
.seq NamedBody846_48 NamedBody846_55

def NamedBody846_57 : StackLang.HolProg 64 :=
.seq NamedBody846_47 NamedBody846_56

def NamedBody846_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody846_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody846_60 : StackLang.HolProg 64 :=
.seq NamedBody846_58 NamedBody846_59

def NamedBody846_61 : StackLang.HolProg 64 :=
.call (some (NamedBody846_57, 1, 846, 2)) (Sum.inl 68) (some (NamedBody846_60, 846, 3))

def NamedBody846_62 : StackLang.HolProg 64 :=
.seq NamedBody846_46 NamedBody846_61

def NamedBody846_63 : StackLang.HolProg 64 :=
.seq NamedBody846_45 NamedBody846_62

def NamedBody846_64 : StackLang.HolProg 64 :=
.seq NamedBody846_44 NamedBody846_63

def NamedBody846_65 : StackLang.HolProg 64 :=
.seq NamedBody846_15 NamedBody846_64

def NamedBody846_66 : StackLang.HolProg 64 :=
.seq NamedBody846_12 NamedBody846_65

def NamedBody846_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody846_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody846_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody846_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody846_73 : StackLang.HolProg 64 :=
.seq NamedBody846_71 NamedBody846_72

def NamedBody846_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def NamedBody846_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody846_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody846_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody846_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody846_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody846_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 192#64)

def NamedBody846_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody846_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 76#64)

def NamedBody846_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_90 : StackLang.HolProg 64 :=
.seq NamedBody846_88 NamedBody846_89

def NamedBody846_91 : StackLang.HolProg 64 :=
.seq NamedBody846_87 NamedBody846_90

def NamedBody846_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_94 : StackLang.HolProg 64 :=
.seq NamedBody846_92 NamedBody846_93

def NamedBody846_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody846_91 NamedBody846_94

def NamedBody846_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody846_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 116#64)

def NamedBody846_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_102 : StackLang.HolProg 64 :=
.seq NamedBody846_100 NamedBody846_101

def NamedBody846_103 : StackLang.HolProg 64 :=
.seq NamedBody846_99 NamedBody846_102

def NamedBody846_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_106 : StackLang.HolProg 64 :=
.seq NamedBody846_104 NamedBody846_105

def NamedBody846_107 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody846_103 NamedBody846_106

def NamedBody846_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody846_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 184#64)

def NamedBody846_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_114 : StackLang.HolProg 64 :=
.seq NamedBody846_112 NamedBody846_113

def NamedBody846_115 : StackLang.HolProg 64 :=
.seq NamedBody846_111 NamedBody846_114

def NamedBody846_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_118 : StackLang.HolProg 64 :=
.seq NamedBody846_116 NamedBody846_117

def NamedBody846_119 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody846_115 NamedBody846_118

def NamedBody846_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody846_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 68#64)

def NamedBody846_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_126 : StackLang.HolProg 64 :=
.seq NamedBody846_124 NamedBody846_125

def NamedBody846_127 : StackLang.HolProg 64 :=
.seq NamedBody846_123 NamedBody846_126

def NamedBody846_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_130 : StackLang.HolProg 64 :=
.seq NamedBody846_128 NamedBody846_129

def NamedBody846_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody846_127 NamedBody846_130

def NamedBody846_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody846_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody846_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody846_138 : StackLang.HolProg 64 :=
.seq NamedBody846_136 NamedBody846_137

def NamedBody846_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody846_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody846_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody846_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody846_144 : StackLang.HolProg 64 :=
.seq NamedBody846_142 NamedBody846_143

def NamedBody846_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody846_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody846_147 : StackLang.HolProg 64 :=
.seq NamedBody846_145 NamedBody846_146

def NamedBody846_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody846_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody846_150 : StackLang.HolProg 64 :=
.seq NamedBody846_148 NamedBody846_149

def NamedBody846_151 : StackLang.HolProg 64 :=
.seq NamedBody846_147 NamedBody846_150

def NamedBody846_152 : StackLang.HolProg 64 :=
.seq NamedBody846_144 NamedBody846_151

def NamedBody846_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4234#64)

def NamedBody846_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody846_156 : StackLang.HolProg 64 :=
.seq NamedBody846_154 NamedBody846_155

def NamedBody846_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody846_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody846_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody846_160 : StackLang.HolProg 64 :=
.seq NamedBody846_158 NamedBody846_159

def NamedBody846_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody846_160 NamedBody846_161

def NamedBody846_163 : StackLang.HolProg 64 :=
.seq NamedBody846_157 NamedBody846_162

def NamedBody846_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody846_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody846_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 846 5

def NamedBody846_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody846_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody846_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody846_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody846_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody846_173 : StackLang.HolProg 64 :=
.seq NamedBody846_171 NamedBody846_172

def NamedBody846_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody846_175 : StackLang.HolProg 64 :=
.seq NamedBody846_173 NamedBody846_174

def NamedBody846_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody846_177 : StackLang.HolProg 64 :=
.seq NamedBody846_175 NamedBody846_176

def NamedBody846_178 : StackLang.HolProg 64 :=
.seq NamedBody846_170 NamedBody846_177

def NamedBody846_179 : StackLang.HolProg 64 :=
.seq NamedBody846_169 NamedBody846_178

def NamedBody846_180 : StackLang.HolProg 64 :=
.seq NamedBody846_168 NamedBody846_179

def NamedBody846_181 : StackLang.HolProg 64 :=
.seq NamedBody846_167 NamedBody846_180

def NamedBody846_182 : StackLang.HolProg 64 :=
.seq NamedBody846_166 NamedBody846_181

def NamedBody846_183 : StackLang.HolProg 64 :=
.seq NamedBody846_165 NamedBody846_182

def NamedBody846_184 : StackLang.HolProg 64 :=
.seq NamedBody846_164 NamedBody846_183

def NamedBody846_185 : StackLang.HolProg 64 :=
.seq NamedBody846_163 NamedBody846_184

def NamedBody846_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody846_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody846_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody846_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody846_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody846_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody846_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody846_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody846_197 : StackLang.HolProg 64 :=
.seq NamedBody846_195 NamedBody846_196

def NamedBody846_198 : StackLang.HolProg 64 :=
.seq NamedBody846_194 NamedBody846_197

def NamedBody846_199 : StackLang.HolProg 64 :=
.seq NamedBody846_193 NamedBody846_198

def NamedBody846_200 : StackLang.HolProg 64 :=
.seq NamedBody846_192 NamedBody846_199

def NamedBody846_201 : StackLang.HolProg 64 :=
.seq NamedBody846_191 NamedBody846_200

def NamedBody846_202 : StackLang.HolProg 64 :=
.seq NamedBody846_190 NamedBody846_201

def NamedBody846_203 : StackLang.HolProg 64 :=
.seq NamedBody846_189 NamedBody846_202

def NamedBody846_204 : StackLang.HolProg 64 :=
.seq NamedBody846_188 NamedBody846_203

def NamedBody846_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody846_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody846_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody846_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody846_209 : StackLang.HolProg 64 :=
.seq NamedBody846_207 NamedBody846_208

def NamedBody846_210 : StackLang.HolProg 64 :=
.seq NamedBody846_206 NamedBody846_209

def NamedBody846_211 : StackLang.HolProg 64 :=
.seq NamedBody846_205 NamedBody846_210

def NamedBody846_212 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody846_213 : StackLang.HolProg 64 :=
.seq NamedBody846_211 NamedBody846_212

def NamedBody846_214 : StackLang.HolProg 64 :=
.call (some (NamedBody846_204, 1, 846, 4)) (Sum.inl 68) (some (NamedBody846_213, 846, 5))

def NamedBody846_215 : StackLang.HolProg 64 :=
.seq NamedBody846_187 NamedBody846_214

def NamedBody846_216 : StackLang.HolProg 64 :=
.seq NamedBody846_186 NamedBody846_215

def NamedBody846_217 : StackLang.HolProg 64 :=
.seq NamedBody846_185 NamedBody846_216

def NamedBody846_218 : StackLang.HolProg 64 :=
.seq NamedBody846_156 NamedBody846_217

def NamedBody846_219 : StackLang.HolProg 64 :=
.seq NamedBody846_153 NamedBody846_218

def NamedBody846_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody846_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody846_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody846_225 : StackLang.HolProg 64 :=
.seq NamedBody846_223 NamedBody846_224

def NamedBody846_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody846_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody846_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody846_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody846_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody846_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody846_232 : StackLang.HolProg 64 :=
.seq NamedBody846_230 NamedBody846_231

def NamedBody846_233 : StackLang.HolProg 64 :=
.seq NamedBody846_229 NamedBody846_232

def NamedBody846_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4235#64)

def NamedBody846_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody846_237 : StackLang.HolProg 64 :=
.seq NamedBody846_235 NamedBody846_236

def NamedBody846_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody846_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody846_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody846_241 : StackLang.HolProg 64 :=
.seq NamedBody846_239 NamedBody846_240

def NamedBody846_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_243 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody846_241 NamedBody846_242

def NamedBody846_244 : StackLang.HolProg 64 :=
.seq NamedBody846_238 NamedBody846_243

def NamedBody846_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody846_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody846_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 846 7

def NamedBody846_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody846_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody846_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody846_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody846_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody846_254 : StackLang.HolProg 64 :=
.seq NamedBody846_252 NamedBody846_253

def NamedBody846_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody846_256 : StackLang.HolProg 64 :=
.seq NamedBody846_254 NamedBody846_255

def NamedBody846_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody846_258 : StackLang.HolProg 64 :=
.seq NamedBody846_256 NamedBody846_257

def NamedBody846_259 : StackLang.HolProg 64 :=
.seq NamedBody846_251 NamedBody846_258

def NamedBody846_260 : StackLang.HolProg 64 :=
.seq NamedBody846_250 NamedBody846_259

def NamedBody846_261 : StackLang.HolProg 64 :=
.seq NamedBody846_249 NamedBody846_260

def NamedBody846_262 : StackLang.HolProg 64 :=
.seq NamedBody846_248 NamedBody846_261

def NamedBody846_263 : StackLang.HolProg 64 :=
.seq NamedBody846_247 NamedBody846_262

def NamedBody846_264 : StackLang.HolProg 64 :=
.seq NamedBody846_246 NamedBody846_263

def NamedBody846_265 : StackLang.HolProg 64 :=
.seq NamedBody846_245 NamedBody846_264

def NamedBody846_266 : StackLang.HolProg 64 :=
.seq NamedBody846_244 NamedBody846_265

def NamedBody846_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody846_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody846_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody846_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody846_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody846_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody846_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody846_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody846_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody846_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody846_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody846_281 : StackLang.HolProg 64 :=
.seq NamedBody846_279 NamedBody846_280

def NamedBody846_282 : StackLang.HolProg 64 :=
.seq NamedBody846_278 NamedBody846_281

def NamedBody846_283 : StackLang.HolProg 64 :=
.seq NamedBody846_277 NamedBody846_282

def NamedBody846_284 : StackLang.HolProg 64 :=
.seq NamedBody846_276 NamedBody846_283

def NamedBody846_285 : StackLang.HolProg 64 :=
.seq NamedBody846_275 NamedBody846_284

def NamedBody846_286 : StackLang.HolProg 64 :=
.seq NamedBody846_274 NamedBody846_285

def NamedBody846_287 : StackLang.HolProg 64 :=
.seq NamedBody846_273 NamedBody846_286

def NamedBody846_288 : StackLang.HolProg 64 :=
.seq NamedBody846_272 NamedBody846_287

def NamedBody846_289 : StackLang.HolProg 64 :=
.seq NamedBody846_271 NamedBody846_288

def NamedBody846_290 : StackLang.HolProg 64 :=
.seq NamedBody846_270 NamedBody846_289

def NamedBody846_291 : StackLang.HolProg 64 :=
.seq NamedBody846_269 NamedBody846_290

def NamedBody846_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody846_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody846_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody846_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody846_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody846_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody846_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody846_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody846_300 : StackLang.HolProg 64 :=
.seq NamedBody846_298 NamedBody846_299

def NamedBody846_301 : StackLang.HolProg 64 :=
.seq NamedBody846_297 NamedBody846_300

def NamedBody846_302 : StackLang.HolProg 64 :=
.seq NamedBody846_296 NamedBody846_301

def NamedBody846_303 : StackLang.HolProg 64 :=
.seq NamedBody846_295 NamedBody846_302

def NamedBody846_304 : StackLang.HolProg 64 :=
.seq NamedBody846_294 NamedBody846_303

def NamedBody846_305 : StackLang.HolProg 64 :=
.seq NamedBody846_293 NamedBody846_304

def NamedBody846_306 : StackLang.HolProg 64 :=
.seq NamedBody846_292 NamedBody846_305

def NamedBody846_307 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody846_308 : StackLang.HolProg 64 :=
.seq NamedBody846_306 NamedBody846_307

def NamedBody846_309 : StackLang.HolProg 64 :=
.call (some (NamedBody846_291, 1, 846, 6)) (Sum.inl 77) (some (NamedBody846_308, 846, 7))

def NamedBody846_310 : StackLang.HolProg 64 :=
.seq NamedBody846_268 NamedBody846_309

def NamedBody846_311 : StackLang.HolProg 64 :=
.seq NamedBody846_267 NamedBody846_310

def NamedBody846_312 : StackLang.HolProg 64 :=
.seq NamedBody846_266 NamedBody846_311

def NamedBody846_313 : StackLang.HolProg 64 :=
.seq NamedBody846_237 NamedBody846_312

def NamedBody846_314 : StackLang.HolProg 64 :=
.seq NamedBody846_234 NamedBody846_313

def NamedBody846_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody846_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody846_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody846_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody846_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody846_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody846_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody846_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody846_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_333 : StackLang.HolProg 64 :=
.seq NamedBody846_331 NamedBody846_332

def NamedBody846_334 : StackLang.HolProg 64 :=
.seq NamedBody846_330 NamedBody846_333

def NamedBody846_335 : StackLang.HolProg 64 :=
.seq NamedBody846_329 NamedBody846_334

def NamedBody846_336 : StackLang.HolProg 64 :=
.seq NamedBody846_328 NamedBody846_335

def NamedBody846_337 : StackLang.HolProg 64 :=
.seq NamedBody846_327 NamedBody846_336

def NamedBody846_338 : StackLang.HolProg 64 :=
.seq NamedBody846_326 NamedBody846_337

def NamedBody846_339 : StackLang.HolProg 64 :=
.seq NamedBody846_325 NamedBody846_338

def NamedBody846_340 : StackLang.HolProg 64 :=
.seq NamedBody846_324 NamedBody846_339

def NamedBody846_341 : StackLang.HolProg 64 :=
.seq NamedBody846_323 NamedBody846_340

def NamedBody846_342 : StackLang.HolProg 64 :=
.seq NamedBody846_322 NamedBody846_341

def NamedBody846_343 : StackLang.HolProg 64 :=
.seq NamedBody846_321 NamedBody846_342

def NamedBody846_344 : StackLang.HolProg 64 :=
.seq NamedBody846_320 NamedBody846_343

def NamedBody846_345 : StackLang.HolProg 64 :=
.seq NamedBody846_319 NamedBody846_344

def NamedBody846_346 : StackLang.HolProg 64 :=
.seq NamedBody846_318 NamedBody846_345

def NamedBody846_347 : StackLang.HolProg 64 :=
.seq NamedBody846_317 NamedBody846_346

def NamedBody846_348 : StackLang.HolProg 64 :=
.seq NamedBody846_316 NamedBody846_347

def NamedBody846_349 : StackLang.HolProg 64 :=
.seq NamedBody846_315 NamedBody846_348

def NamedBody846_350 : StackLang.HolProg 64 :=
.seq NamedBody846_314 NamedBody846_349

def NamedBody846_351 : StackLang.HolProg 64 :=
.seq NamedBody846_233 NamedBody846_350

def NamedBody846_352 : StackLang.HolProg 64 :=
.seq NamedBody846_228 NamedBody846_351

def NamedBody846_353 : StackLang.HolProg 64 :=
.seq NamedBody846_227 NamedBody846_352

def NamedBody846_354 : StackLang.HolProg 64 :=
.seq NamedBody846_226 NamedBody846_353

def NamedBody846_355 : StackLang.HolProg 64 :=
.seq NamedBody846_225 NamedBody846_354

def NamedBody846_356 : StackLang.HolProg 64 :=
.seq NamedBody846_222 NamedBody846_355

def NamedBody846_357 : StackLang.HolProg 64 :=
.seq NamedBody846_221 NamedBody846_356

def NamedBody846_358 : StackLang.HolProg 64 :=
.seq NamedBody846_220 NamedBody846_357

def NamedBody846_359 : StackLang.HolProg 64 :=
.seq NamedBody846_219 NamedBody846_358

def NamedBody846_360 : StackLang.HolProg 64 :=
.seq NamedBody846_152 NamedBody846_359

def NamedBody846_361 : StackLang.HolProg 64 :=
.seq NamedBody846_141 NamedBody846_360

def NamedBody846_362 : StackLang.HolProg 64 :=
.seq NamedBody846_140 NamedBody846_361

def NamedBody846_363 : StackLang.HolProg 64 :=
.seq NamedBody846_139 NamedBody846_362

def NamedBody846_364 : StackLang.HolProg 64 :=
.seq NamedBody846_138 NamedBody846_363

def NamedBody846_365 : StackLang.HolProg 64 :=
.seq NamedBody846_135 NamedBody846_364

def NamedBody846_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody846_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody846_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody846_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody846_371 : StackLang.HolProg 64 :=
.seq NamedBody846_369 NamedBody846_370

def NamedBody846_372 : StackLang.HolProg 64 :=
.seq NamedBody846_368 NamedBody846_371

def NamedBody846_373 : StackLang.HolProg 64 :=
.seq NamedBody846_367 NamedBody846_372

def NamedBody846_374 : StackLang.HolProg 64 :=
.seq NamedBody846_366 NamedBody846_373

def NamedBody846_375 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody846_365 NamedBody846_374

def NamedBody846_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody846_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody846_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody846_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody846_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody846_382 : StackLang.HolProg 64 :=
.seq NamedBody846_380 NamedBody846_381

def NamedBody846_383 : StackLang.HolProg 64 :=
.seq NamedBody846_379 NamedBody846_382

def NamedBody846_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody846_385 : StackLang.HolProg 64 :=
.seq NamedBody846_383 NamedBody846_384

def NamedBody846_386 : StackLang.HolProg 64 :=
.seq NamedBody846_378 NamedBody846_385

def NamedBody846_387 : StackLang.HolProg 64 :=
.seq NamedBody846_377 NamedBody846_386

def NamedBody846_388 : StackLang.HolProg 64 :=
.seq NamedBody846_376 NamedBody846_387

def NamedBody846_389 : StackLang.HolProg 64 :=
.seq NamedBody846_375 NamedBody846_388

def NamedBody846_390 : StackLang.HolProg 64 :=
.seq NamedBody846_134 NamedBody846_389

def NamedBody846_391 : StackLang.HolProg 64 :=
.seq NamedBody846_133 NamedBody846_390

def NamedBody846_392 : StackLang.HolProg 64 :=
.seq NamedBody846_132 NamedBody846_391

def NamedBody846_393 : StackLang.HolProg 64 :=
.seq NamedBody846_131 NamedBody846_392

def NamedBody846_394 : StackLang.HolProg 64 :=
.seq NamedBody846_122 NamedBody846_393

def NamedBody846_395 : StackLang.HolProg 64 :=
.seq NamedBody846_121 NamedBody846_394

def NamedBody846_396 : StackLang.HolProg 64 :=
.seq NamedBody846_120 NamedBody846_395

def NamedBody846_397 : StackLang.HolProg 64 :=
.seq NamedBody846_119 NamedBody846_396

def NamedBody846_398 : StackLang.HolProg 64 :=
.seq NamedBody846_110 NamedBody846_397

def NamedBody846_399 : StackLang.HolProg 64 :=
.seq NamedBody846_109 NamedBody846_398

def NamedBody846_400 : StackLang.HolProg 64 :=
.seq NamedBody846_108 NamedBody846_399

def NamedBody846_401 : StackLang.HolProg 64 :=
.seq NamedBody846_107 NamedBody846_400

def NamedBody846_402 : StackLang.HolProg 64 :=
.seq NamedBody846_98 NamedBody846_401

def NamedBody846_403 : StackLang.HolProg 64 :=
.seq NamedBody846_97 NamedBody846_402

def NamedBody846_404 : StackLang.HolProg 64 :=
.seq NamedBody846_96 NamedBody846_403

def NamedBody846_405 : StackLang.HolProg 64 :=
.seq NamedBody846_95 NamedBody846_404

def NamedBody846_406 : StackLang.HolProg 64 :=
.seq NamedBody846_86 NamedBody846_405

def NamedBody846_407 : StackLang.HolProg 64 :=
.seq NamedBody846_85 NamedBody846_406

def NamedBody846_408 : StackLang.HolProg 64 :=
.seq NamedBody846_84 NamedBody846_407

def NamedBody846_409 : StackLang.HolProg 64 :=
.seq NamedBody846_83 NamedBody846_408

def NamedBody846_410 : StackLang.HolProg 64 :=
.seq NamedBody846_82 NamedBody846_409

def NamedBody846_411 : StackLang.HolProg 64 :=
.seq NamedBody846_81 NamedBody846_410

def NamedBody846_412 : StackLang.HolProg 64 :=
.seq NamedBody846_80 NamedBody846_411

def NamedBody846_413 : StackLang.HolProg 64 :=
.seq NamedBody846_79 NamedBody846_412

def NamedBody846_414 : StackLang.HolProg 64 :=
.seq NamedBody846_78 NamedBody846_413

def NamedBody846_415 : StackLang.HolProg 64 :=
.seq NamedBody846_77 NamedBody846_414

def NamedBody846_416 : StackLang.HolProg 64 :=
.seq NamedBody846_76 NamedBody846_415

def NamedBody846_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody846_419 : StackLang.HolProg 64 :=
.seq NamedBody846_417 NamedBody846_418

def NamedBody846_420 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody846_416 NamedBody846_419

def NamedBody846_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody846_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody846_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody846_425 : StackLang.HolProg 64 :=
.seq NamedBody846_423 NamedBody846_424

def NamedBody846_426 : StackLang.HolProg 64 :=
.seq NamedBody846_422 NamedBody846_425

def NamedBody846_427 : StackLang.HolProg 64 :=
.seq NamedBody846_421 NamedBody846_426

def NamedBody846_428 : StackLang.HolProg 64 :=
.seq NamedBody846_420 NamedBody846_427

def NamedBody846_429 : StackLang.HolProg 64 :=
.seq NamedBody846_75 NamedBody846_428

def NamedBody846_430 : StackLang.HolProg 64 :=
.seq NamedBody846_74 NamedBody846_429

def NamedBody846_431 : StackLang.HolProg 64 :=
.loop NamedBody846_430

def NamedBody846_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody846_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody846_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody846_435 : StackLang.HolProg 64 :=
.seq NamedBody846_433 NamedBody846_434

def NamedBody846_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody846_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody846_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody846_439 : StackLang.HolProg 64 :=
.seq NamedBody846_437 NamedBody846_438

def NamedBody846_440 : StackLang.HolProg 64 :=
.seq NamedBody846_436 NamedBody846_439

def NamedBody846_441 : StackLang.HolProg 64 :=
.seq NamedBody846_435 NamedBody846_440

def NamedBody846_442 : StackLang.HolProg 64 :=
.seq NamedBody846_432 NamedBody846_441

def NamedBody846_443 : StackLang.HolProg 64 :=
.seq NamedBody846_431 NamedBody846_442

def NamedBody846_444 : StackLang.HolProg 64 :=
.seq NamedBody846_73 NamedBody846_443

def NamedBody846_445 : StackLang.HolProg 64 :=
.seq NamedBody846_70 NamedBody846_444

def NamedBody846_446 : StackLang.HolProg 64 :=
.seq NamedBody846_69 NamedBody846_445

def NamedBody846_447 : StackLang.HolProg 64 :=
.seq NamedBody846_68 NamedBody846_446

def NamedBody846_448 : StackLang.HolProg 64 :=
.seq NamedBody846_67 NamedBody846_447

def NamedBody846_449 : StackLang.HolProg 64 :=
.seq NamedBody846_66 NamedBody846_448

def NamedBody846_450 : StackLang.HolProg 64 :=
.seq NamedBody846_11 NamedBody846_449

def NamedBody846_451 : StackLang.HolProg 64 :=
.seq NamedBody846_8 NamedBody846_450

def NamedBody846_452 : StackLang.HolProg 64 :=
.seq NamedBody846_7 NamedBody846_451

def NamedBody846_453 : StackLang.HolProg 64 :=
.seq NamedBody846_6 NamedBody846_452

def Named846 : Nat × StackLang.HolProg 64 := (846, NamedBody846_453)
theorem Named846_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed846 = Named846 := by
  kernel_rfl
#print axioms Named846_eq
end InitECandidate.Proofs.BackendStages
