import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed799
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody799_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody799_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody799_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody799_3 : StackLang.HolProg 64 :=
.seq NamedBody799_1 NamedBody799_2

def NamedBody799_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody799_3 NamedBody799_4

def NamedBody799_6 : StackLang.HolProg 64 :=
.seq NamedBody799_0 NamedBody799_5

def NamedBody799_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody799_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody799_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody799_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody799_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody799_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody799_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody799_15 : StackLang.HolProg 64 :=
.seq NamedBody799_13 NamedBody799_14

def NamedBody799_16 : StackLang.HolProg 64 :=
.seq NamedBody799_12 NamedBody799_15

def NamedBody799_17 : StackLang.HolProg 64 :=
.seq NamedBody799_11 NamedBody799_16

def NamedBody799_18 : StackLang.HolProg 64 :=
.seq NamedBody799_10 NamedBody799_17

def NamedBody799_19 : StackLang.HolProg 64 :=
.seq NamedBody799_9 NamedBody799_18

def NamedBody799_20 : StackLang.HolProg 64 :=
.seq NamedBody799_8 NamedBody799_19

def NamedBody799_21 : StackLang.HolProg 64 :=
.seq NamedBody799_7 NamedBody799_20

def NamedBody799_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3835#64)

def NamedBody799_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody799_25 : StackLang.HolProg 64 :=
.seq NamedBody799_23 NamedBody799_24

def NamedBody799_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody799_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody799_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody799_29 : StackLang.HolProg 64 :=
.seq NamedBody799_27 NamedBody799_28

def NamedBody799_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody799_29 NamedBody799_30

def NamedBody799_32 : StackLang.HolProg 64 :=
.seq NamedBody799_26 NamedBody799_31

def NamedBody799_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody799_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody799_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 3

def NamedBody799_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody799_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody799_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody799_42 : StackLang.HolProg 64 :=
.seq NamedBody799_40 NamedBody799_41

def NamedBody799_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody799_44 : StackLang.HolProg 64 :=
.seq NamedBody799_42 NamedBody799_43

def NamedBody799_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_46 : StackLang.HolProg 64 :=
.seq NamedBody799_44 NamedBody799_45

def NamedBody799_47 : StackLang.HolProg 64 :=
.seq NamedBody799_39 NamedBody799_46

def NamedBody799_48 : StackLang.HolProg 64 :=
.seq NamedBody799_38 NamedBody799_47

def NamedBody799_49 : StackLang.HolProg 64 :=
.seq NamedBody799_37 NamedBody799_48

def NamedBody799_50 : StackLang.HolProg 64 :=
.seq NamedBody799_36 NamedBody799_49

def NamedBody799_51 : StackLang.HolProg 64 :=
.seq NamedBody799_35 NamedBody799_50

def NamedBody799_52 : StackLang.HolProg 64 :=
.seq NamedBody799_34 NamedBody799_51

def NamedBody799_53 : StackLang.HolProg 64 :=
.seq NamedBody799_33 NamedBody799_52

def NamedBody799_54 : StackLang.HolProg 64 :=
.seq NamedBody799_32 NamedBody799_53

def NamedBody799_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody799_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody799_62 : StackLang.HolProg 64 :=
.seq NamedBody799_60 NamedBody799_61

def NamedBody799_63 : StackLang.HolProg 64 :=
.seq NamedBody799_59 NamedBody799_62

def NamedBody799_64 : StackLang.HolProg 64 :=
.seq NamedBody799_58 NamedBody799_63

def NamedBody799_65 : StackLang.HolProg 64 :=
.seq NamedBody799_57 NamedBody799_64

def NamedBody799_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody799_68 : StackLang.HolProg 64 :=
.seq NamedBody799_66 NamedBody799_67

def NamedBody799_69 : StackLang.HolProg 64 :=
.call (some (NamedBody799_65, 1, 799, 2)) (Sum.inl 69) (some (NamedBody799_68, 799, 3))

def NamedBody799_70 : StackLang.HolProg 64 :=
.seq NamedBody799_56 NamedBody799_69

def NamedBody799_71 : StackLang.HolProg 64 :=
.seq NamedBody799_55 NamedBody799_70

def NamedBody799_72 : StackLang.HolProg 64 :=
.seq NamedBody799_54 NamedBody799_71

def NamedBody799_73 : StackLang.HolProg 64 :=
.seq NamedBody799_25 NamedBody799_72

def NamedBody799_74 : StackLang.HolProg 64 :=
.seq NamedBody799_22 NamedBody799_73

def NamedBody799_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody799_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 144#64)

def NamedBody799_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody799_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3836#64)

def NamedBody799_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody799_81 : StackLang.HolProg 64 :=
.seq NamedBody799_79 NamedBody799_80

def NamedBody799_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody799_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody799_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody799_85 : StackLang.HolProg 64 :=
.seq NamedBody799_83 NamedBody799_84

def NamedBody799_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody799_85 NamedBody799_86

def NamedBody799_88 : StackLang.HolProg 64 :=
.seq NamedBody799_82 NamedBody799_87

def NamedBody799_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody799_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody799_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 5

def NamedBody799_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody799_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody799_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody799_98 : StackLang.HolProg 64 :=
.seq NamedBody799_96 NamedBody799_97

def NamedBody799_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody799_100 : StackLang.HolProg 64 :=
.seq NamedBody799_98 NamedBody799_99

def NamedBody799_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_102 : StackLang.HolProg 64 :=
.seq NamedBody799_100 NamedBody799_101

def NamedBody799_103 : StackLang.HolProg 64 :=
.seq NamedBody799_95 NamedBody799_102

def NamedBody799_104 : StackLang.HolProg 64 :=
.seq NamedBody799_94 NamedBody799_103

def NamedBody799_105 : StackLang.HolProg 64 :=
.seq NamedBody799_93 NamedBody799_104

def NamedBody799_106 : StackLang.HolProg 64 :=
.seq NamedBody799_92 NamedBody799_105

def NamedBody799_107 : StackLang.HolProg 64 :=
.seq NamedBody799_91 NamedBody799_106

def NamedBody799_108 : StackLang.HolProg 64 :=
.seq NamedBody799_90 NamedBody799_107

def NamedBody799_109 : StackLang.HolProg 64 :=
.seq NamedBody799_89 NamedBody799_108

def NamedBody799_110 : StackLang.HolProg 64 :=
.seq NamedBody799_88 NamedBody799_109

def NamedBody799_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody799_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody799_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody799_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody799_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody799_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody799_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody799_123 : StackLang.HolProg 64 :=
.seq NamedBody799_121 NamedBody799_122

def NamedBody799_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody799_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody799_126 : StackLang.HolProg 64 :=
.seq NamedBody799_124 NamedBody799_125

def NamedBody799_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody799_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody799_130 : StackLang.HolProg 64 :=
.seq NamedBody799_128 NamedBody799_129

def NamedBody799_131 : StackLang.HolProg 64 :=
.seq NamedBody799_127 NamedBody799_130

def NamedBody799_132 : StackLang.HolProg 64 :=
.seq NamedBody799_126 NamedBody799_131

def NamedBody799_133 : StackLang.HolProg 64 :=
.seq NamedBody799_123 NamedBody799_132

def NamedBody799_134 : StackLang.HolProg 64 :=
.seq NamedBody799_120 NamedBody799_133

def NamedBody799_135 : StackLang.HolProg 64 :=
.seq NamedBody799_119 NamedBody799_134

def NamedBody799_136 : StackLang.HolProg 64 :=
.seq NamedBody799_118 NamedBody799_135

def NamedBody799_137 : StackLang.HolProg 64 :=
.seq NamedBody799_117 NamedBody799_136

def NamedBody799_138 : StackLang.HolProg 64 :=
.seq NamedBody799_116 NamedBody799_137

def NamedBody799_139 : StackLang.HolProg 64 :=
.seq NamedBody799_115 NamedBody799_138

def NamedBody799_140 : StackLang.HolProg 64 :=
.seq NamedBody799_114 NamedBody799_139

def NamedBody799_141 : StackLang.HolProg 64 :=
.seq NamedBody799_113 NamedBody799_140

def NamedBody799_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody799_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody799_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody799_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody799_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody799_147 : StackLang.HolProg 64 :=
.seq NamedBody799_145 NamedBody799_146

def NamedBody799_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody799_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody799_150 : StackLang.HolProg 64 :=
.seq NamedBody799_148 NamedBody799_149

def NamedBody799_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody799_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody799_154 : StackLang.HolProg 64 :=
.seq NamedBody799_152 NamedBody799_153

def NamedBody799_155 : StackLang.HolProg 64 :=
.seq NamedBody799_151 NamedBody799_154

def NamedBody799_156 : StackLang.HolProg 64 :=
.seq NamedBody799_150 NamedBody799_155

def NamedBody799_157 : StackLang.HolProg 64 :=
.seq NamedBody799_147 NamedBody799_156

def NamedBody799_158 : StackLang.HolProg 64 :=
.seq NamedBody799_144 NamedBody799_157

def NamedBody799_159 : StackLang.HolProg 64 :=
.seq NamedBody799_143 NamedBody799_158

def NamedBody799_160 : StackLang.HolProg 64 :=
.seq NamedBody799_142 NamedBody799_159

def NamedBody799_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody799_162 : StackLang.HolProg 64 :=
.seq NamedBody799_160 NamedBody799_161

def NamedBody799_163 : StackLang.HolProg 64 :=
.call (some (NamedBody799_141, 1, 799, 4)) (Sum.inl 68) (some (NamedBody799_162, 799, 5))

def NamedBody799_164 : StackLang.HolProg 64 :=
.seq NamedBody799_112 NamedBody799_163

def NamedBody799_165 : StackLang.HolProg 64 :=
.seq NamedBody799_111 NamedBody799_164

def NamedBody799_166 : StackLang.HolProg 64 :=
.seq NamedBody799_110 NamedBody799_165

def NamedBody799_167 : StackLang.HolProg 64 :=
.seq NamedBody799_81 NamedBody799_166

def NamedBody799_168 : StackLang.HolProg 64 :=
.seq NamedBody799_78 NamedBody799_167

def NamedBody799_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody799_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody799_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody799_172 : StackLang.HolProg 64 :=
.seq NamedBody799_170 NamedBody799_171

def NamedBody799_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3837#64)

def NamedBody799_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody799_176 : StackLang.HolProg 64 :=
.seq NamedBody799_174 NamedBody799_175

def NamedBody799_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody799_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody799_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody799_180 : StackLang.HolProg 64 :=
.seq NamedBody799_178 NamedBody799_179

def NamedBody799_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_182 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody799_180 NamedBody799_181

def NamedBody799_183 : StackLang.HolProg 64 :=
.seq NamedBody799_177 NamedBody799_182

def NamedBody799_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody799_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody799_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 7

def NamedBody799_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody799_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody799_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody799_193 : StackLang.HolProg 64 :=
.seq NamedBody799_191 NamedBody799_192

def NamedBody799_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody799_195 : StackLang.HolProg 64 :=
.seq NamedBody799_193 NamedBody799_194

def NamedBody799_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_197 : StackLang.HolProg 64 :=
.seq NamedBody799_195 NamedBody799_196

def NamedBody799_198 : StackLang.HolProg 64 :=
.seq NamedBody799_190 NamedBody799_197

def NamedBody799_199 : StackLang.HolProg 64 :=
.seq NamedBody799_189 NamedBody799_198

def NamedBody799_200 : StackLang.HolProg 64 :=
.seq NamedBody799_188 NamedBody799_199

def NamedBody799_201 : StackLang.HolProg 64 :=
.seq NamedBody799_187 NamedBody799_200

def NamedBody799_202 : StackLang.HolProg 64 :=
.seq NamedBody799_186 NamedBody799_201

def NamedBody799_203 : StackLang.HolProg 64 :=
.seq NamedBody799_185 NamedBody799_202

def NamedBody799_204 : StackLang.HolProg 64 :=
.seq NamedBody799_184 NamedBody799_203

def NamedBody799_205 : StackLang.HolProg 64 :=
.seq NamedBody799_183 NamedBody799_204

def NamedBody799_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody799_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody799_213 : StackLang.HolProg 64 :=
.seq NamedBody799_211 NamedBody799_212

def NamedBody799_214 : StackLang.HolProg 64 :=
.seq NamedBody799_210 NamedBody799_213

def NamedBody799_215 : StackLang.HolProg 64 :=
.seq NamedBody799_209 NamedBody799_214

def NamedBody799_216 : StackLang.HolProg 64 :=
.seq NamedBody799_208 NamedBody799_215

def NamedBody799_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody799_218 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody799_219 : StackLang.HolProg 64 :=
.seq NamedBody799_217 NamedBody799_218

def NamedBody799_220 : StackLang.HolProg 64 :=
.call (some (NamedBody799_216, 1, 799, 6)) (Sum.inl 796) (some (NamedBody799_219, 799, 7))

def NamedBody799_221 : StackLang.HolProg 64 :=
.seq NamedBody799_207 NamedBody799_220

def NamedBody799_222 : StackLang.HolProg 64 :=
.seq NamedBody799_206 NamedBody799_221

def NamedBody799_223 : StackLang.HolProg 64 :=
.seq NamedBody799_205 NamedBody799_222

def NamedBody799_224 : StackLang.HolProg 64 :=
.seq NamedBody799_176 NamedBody799_223

def NamedBody799_225 : StackLang.HolProg 64 :=
.seq NamedBody799_173 NamedBody799_224

def NamedBody799_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody799_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody799_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody799_229 : StackLang.HolProg 64 :=
.seq NamedBody799_227 NamedBody799_228

def NamedBody799_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3838#64)

def NamedBody799_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody799_233 : StackLang.HolProg 64 :=
.seq NamedBody799_231 NamedBody799_232

def NamedBody799_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody799_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody799_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody799_237 : StackLang.HolProg 64 :=
.seq NamedBody799_235 NamedBody799_236

def NamedBody799_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody799_237 NamedBody799_238

def NamedBody799_240 : StackLang.HolProg 64 :=
.seq NamedBody799_234 NamedBody799_239

def NamedBody799_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody799_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody799_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 9

def NamedBody799_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody799_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody799_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody799_250 : StackLang.HolProg 64 :=
.seq NamedBody799_248 NamedBody799_249

def NamedBody799_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody799_252 : StackLang.HolProg 64 :=
.seq NamedBody799_250 NamedBody799_251

def NamedBody799_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_254 : StackLang.HolProg 64 :=
.seq NamedBody799_252 NamedBody799_253

def NamedBody799_255 : StackLang.HolProg 64 :=
.seq NamedBody799_247 NamedBody799_254

def NamedBody799_256 : StackLang.HolProg 64 :=
.seq NamedBody799_246 NamedBody799_255

def NamedBody799_257 : StackLang.HolProg 64 :=
.seq NamedBody799_245 NamedBody799_256

def NamedBody799_258 : StackLang.HolProg 64 :=
.seq NamedBody799_244 NamedBody799_257

def NamedBody799_259 : StackLang.HolProg 64 :=
.seq NamedBody799_243 NamedBody799_258

def NamedBody799_260 : StackLang.HolProg 64 :=
.seq NamedBody799_242 NamedBody799_259

def NamedBody799_261 : StackLang.HolProg 64 :=
.seq NamedBody799_241 NamedBody799_260

def NamedBody799_262 : StackLang.HolProg 64 :=
.seq NamedBody799_240 NamedBody799_261

def NamedBody799_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody799_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody799_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody799_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody799_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody799_273 : StackLang.HolProg 64 :=
.seq NamedBody799_271 NamedBody799_272

def NamedBody799_274 : StackLang.HolProg 64 :=
.seq NamedBody799_270 NamedBody799_273

def NamedBody799_275 : StackLang.HolProg 64 :=
.seq NamedBody799_269 NamedBody799_274

def NamedBody799_276 : StackLang.HolProg 64 :=
.seq NamedBody799_268 NamedBody799_275

def NamedBody799_277 : StackLang.HolProg 64 :=
.seq NamedBody799_267 NamedBody799_276

def NamedBody799_278 : StackLang.HolProg 64 :=
.seq NamedBody799_266 NamedBody799_277

def NamedBody799_279 : StackLang.HolProg 64 :=
.seq NamedBody799_265 NamedBody799_278

def NamedBody799_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody799_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody799_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody799_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody799_284 : StackLang.HolProg 64 :=
.seq NamedBody799_282 NamedBody799_283

def NamedBody799_285 : StackLang.HolProg 64 :=
.seq NamedBody799_281 NamedBody799_284

def NamedBody799_286 : StackLang.HolProg 64 :=
.seq NamedBody799_280 NamedBody799_285

def NamedBody799_287 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody799_288 : StackLang.HolProg 64 :=
.seq NamedBody799_286 NamedBody799_287

def NamedBody799_289 : StackLang.HolProg 64 :=
.call (some (NamedBody799_279, 1, 799, 8)) (Sum.inl 798) (some (NamedBody799_288, 799, 9))

def NamedBody799_290 : StackLang.HolProg 64 :=
.seq NamedBody799_264 NamedBody799_289

def NamedBody799_291 : StackLang.HolProg 64 :=
.seq NamedBody799_263 NamedBody799_290

def NamedBody799_292 : StackLang.HolProg 64 :=
.seq NamedBody799_262 NamedBody799_291

def NamedBody799_293 : StackLang.HolProg 64 :=
.seq NamedBody799_233 NamedBody799_292

def NamedBody799_294 : StackLang.HolProg 64 :=
.seq NamedBody799_230 NamedBody799_293

def NamedBody799_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody799_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody799_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody799_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody799_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody799_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551224#64))

def NamedBody799_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1624#64)))

def NamedBody799_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 1#64)

def NamedBody799_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3839#64)

def NamedBody799_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody799_307 : StackLang.HolProg 64 :=
.seq NamedBody799_305 NamedBody799_306

def NamedBody799_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody799_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody799_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody799_311 : StackLang.HolProg 64 :=
.seq NamedBody799_309 NamedBody799_310

def NamedBody799_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_313 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody799_311 NamedBody799_312

def NamedBody799_314 : StackLang.HolProg 64 :=
.seq NamedBody799_308 NamedBody799_313

def NamedBody799_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody799_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody799_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 11

def NamedBody799_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody799_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody799_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody799_324 : StackLang.HolProg 64 :=
.seq NamedBody799_322 NamedBody799_323

def NamedBody799_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody799_326 : StackLang.HolProg 64 :=
.seq NamedBody799_324 NamedBody799_325

def NamedBody799_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_328 : StackLang.HolProg 64 :=
.seq NamedBody799_326 NamedBody799_327

def NamedBody799_329 : StackLang.HolProg 64 :=
.seq NamedBody799_321 NamedBody799_328

def NamedBody799_330 : StackLang.HolProg 64 :=
.seq NamedBody799_320 NamedBody799_329

def NamedBody799_331 : StackLang.HolProg 64 :=
.seq NamedBody799_319 NamedBody799_330

def NamedBody799_332 : StackLang.HolProg 64 :=
.seq NamedBody799_318 NamedBody799_331

def NamedBody799_333 : StackLang.HolProg 64 :=
.seq NamedBody799_317 NamedBody799_332

def NamedBody799_334 : StackLang.HolProg 64 :=
.seq NamedBody799_316 NamedBody799_333

def NamedBody799_335 : StackLang.HolProg 64 :=
.seq NamedBody799_315 NamedBody799_334

def NamedBody799_336 : StackLang.HolProg 64 :=
.seq NamedBody799_314 NamedBody799_335

def NamedBody799_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody799_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody799_344 : StackLang.HolProg 64 :=
.seq NamedBody799_342 NamedBody799_343

def NamedBody799_345 : StackLang.HolProg 64 :=
.seq NamedBody799_341 NamedBody799_344

def NamedBody799_346 : StackLang.HolProg 64 :=
.seq NamedBody799_340 NamedBody799_345

def NamedBody799_347 : StackLang.HolProg 64 :=
.seq NamedBody799_339 NamedBody799_346

def NamedBody799_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody799_349 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody799_350 : StackLang.HolProg 64 :=
.seq NamedBody799_348 NamedBody799_349

def NamedBody799_351 : StackLang.HolProg 64 :=
.call (some (NamedBody799_347, 1, 799, 10)) (Sum.inl 772) (some (NamedBody799_350, 799, 11))

def NamedBody799_352 : StackLang.HolProg 64 :=
.seq NamedBody799_338 NamedBody799_351

def NamedBody799_353 : StackLang.HolProg 64 :=
.seq NamedBody799_337 NamedBody799_352

def NamedBody799_354 : StackLang.HolProg 64 :=
.seq NamedBody799_336 NamedBody799_353

def NamedBody799_355 : StackLang.HolProg 64 :=
.seq NamedBody799_307 NamedBody799_354

def NamedBody799_356 : StackLang.HolProg 64 :=
.seq NamedBody799_304 NamedBody799_355

def NamedBody799_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody799_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody799_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3840#64)

def NamedBody799_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody799_362 : StackLang.HolProg 64 :=
.seq NamedBody799_360 NamedBody799_361

def NamedBody799_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody799_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody799_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody799_366 : StackLang.HolProg 64 :=
.seq NamedBody799_364 NamedBody799_365

def NamedBody799_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_368 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody799_366 NamedBody799_367

def NamedBody799_369 : StackLang.HolProg 64 :=
.seq NamedBody799_363 NamedBody799_368

def NamedBody799_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody799_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody799_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 13

def NamedBody799_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody799_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody799_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody799_379 : StackLang.HolProg 64 :=
.seq NamedBody799_377 NamedBody799_378

def NamedBody799_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody799_381 : StackLang.HolProg 64 :=
.seq NamedBody799_379 NamedBody799_380

def NamedBody799_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_383 : StackLang.HolProg 64 :=
.seq NamedBody799_381 NamedBody799_382

def NamedBody799_384 : StackLang.HolProg 64 :=
.seq NamedBody799_376 NamedBody799_383

def NamedBody799_385 : StackLang.HolProg 64 :=
.seq NamedBody799_375 NamedBody799_384

def NamedBody799_386 : StackLang.HolProg 64 :=
.seq NamedBody799_374 NamedBody799_385

def NamedBody799_387 : StackLang.HolProg 64 :=
.seq NamedBody799_373 NamedBody799_386

def NamedBody799_388 : StackLang.HolProg 64 :=
.seq NamedBody799_372 NamedBody799_387

def NamedBody799_389 : StackLang.HolProg 64 :=
.seq NamedBody799_371 NamedBody799_388

def NamedBody799_390 : StackLang.HolProg 64 :=
.seq NamedBody799_370 NamedBody799_389

def NamedBody799_391 : StackLang.HolProg 64 :=
.seq NamedBody799_369 NamedBody799_390

def NamedBody799_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody799_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody799_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody799_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody799_399 : StackLang.HolProg 64 :=
.seq NamedBody799_397 NamedBody799_398

def NamedBody799_400 : StackLang.HolProg 64 :=
.seq NamedBody799_396 NamedBody799_399

def NamedBody799_401 : StackLang.HolProg 64 :=
.seq NamedBody799_395 NamedBody799_400

def NamedBody799_402 : StackLang.HolProg 64 :=
.seq NamedBody799_394 NamedBody799_401

def NamedBody799_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody799_404 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody799_405 : StackLang.HolProg 64 :=
.seq NamedBody799_403 NamedBody799_404

def NamedBody799_406 : StackLang.HolProg 64 :=
.call (some (NamedBody799_402, 1, 799, 12)) (Sum.inl 70) (some (NamedBody799_405, 799, 13))

def NamedBody799_407 : StackLang.HolProg 64 :=
.seq NamedBody799_393 NamedBody799_406

def NamedBody799_408 : StackLang.HolProg 64 :=
.seq NamedBody799_392 NamedBody799_407

def NamedBody799_409 : StackLang.HolProg 64 :=
.seq NamedBody799_391 NamedBody799_408

def NamedBody799_410 : StackLang.HolProg 64 :=
.seq NamedBody799_362 NamedBody799_409

def NamedBody799_411 : StackLang.HolProg 64 :=
.seq NamedBody799_359 NamedBody799_410

def NamedBody799_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody799_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody799_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody799_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody799_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody799_417 : StackLang.HolProg 64 :=
.seq NamedBody799_415 NamedBody799_416

def NamedBody799_418 : StackLang.HolProg 64 :=
.seq NamedBody799_414 NamedBody799_417

def NamedBody799_419 : StackLang.HolProg 64 :=
.seq NamedBody799_413 NamedBody799_418

def NamedBody799_420 : StackLang.HolProg 64 :=
.seq NamedBody799_412 NamedBody799_419

def NamedBody799_421 : StackLang.HolProg 64 :=
.seq NamedBody799_411 NamedBody799_420

def NamedBody799_422 : StackLang.HolProg 64 :=
.seq NamedBody799_358 NamedBody799_421

def NamedBody799_423 : StackLang.HolProg 64 :=
.seq NamedBody799_357 NamedBody799_422

def NamedBody799_424 : StackLang.HolProg 64 :=
.seq NamedBody799_356 NamedBody799_423

def NamedBody799_425 : StackLang.HolProg 64 :=
.seq NamedBody799_303 NamedBody799_424

def NamedBody799_426 : StackLang.HolProg 64 :=
.seq NamedBody799_302 NamedBody799_425

def NamedBody799_427 : StackLang.HolProg 64 :=
.seq NamedBody799_301 NamedBody799_426

def NamedBody799_428 : StackLang.HolProg 64 :=
.seq NamedBody799_300 NamedBody799_427

def NamedBody799_429 : StackLang.HolProg 64 :=
.seq NamedBody799_299 NamedBody799_428

def NamedBody799_430 : StackLang.HolProg 64 :=
.seq NamedBody799_298 NamedBody799_429

def NamedBody799_431 : StackLang.HolProg 64 :=
.seq NamedBody799_297 NamedBody799_430

def NamedBody799_432 : StackLang.HolProg 64 :=
.seq NamedBody799_296 NamedBody799_431

def NamedBody799_433 : StackLang.HolProg 64 :=
.seq NamedBody799_295 NamedBody799_432

def NamedBody799_434 : StackLang.HolProg 64 :=
.seq NamedBody799_294 NamedBody799_433

def NamedBody799_435 : StackLang.HolProg 64 :=
.seq NamedBody799_229 NamedBody799_434

def NamedBody799_436 : StackLang.HolProg 64 :=
.seq NamedBody799_226 NamedBody799_435

def NamedBody799_437 : StackLang.HolProg 64 :=
.seq NamedBody799_225 NamedBody799_436

def NamedBody799_438 : StackLang.HolProg 64 :=
.seq NamedBody799_172 NamedBody799_437

def NamedBody799_439 : StackLang.HolProg 64 :=
.seq NamedBody799_169 NamedBody799_438

def NamedBody799_440 : StackLang.HolProg 64 :=
.seq NamedBody799_168 NamedBody799_439

def NamedBody799_441 : StackLang.HolProg 64 :=
.seq NamedBody799_77 NamedBody799_440

def NamedBody799_442 : StackLang.HolProg 64 :=
.seq NamedBody799_76 NamedBody799_441

def NamedBody799_443 : StackLang.HolProg 64 :=
.seq NamedBody799_75 NamedBody799_442

def NamedBody799_444 : StackLang.HolProg 64 :=
.seq NamedBody799_74 NamedBody799_443

def NamedBody799_445 : StackLang.HolProg 64 :=
.seq NamedBody799_21 NamedBody799_444

def NamedBody799_446 : StackLang.HolProg 64 :=
.seq NamedBody799_6 NamedBody799_445

def Named799 : Nat × StackLang.HolProg 64 := (799, NamedBody799_446)
theorem Named799_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed799 = Named799 := by
  kernel_rfl
#print axioms Named799_eq
end InitECandidate.Proofs.BackendStages
