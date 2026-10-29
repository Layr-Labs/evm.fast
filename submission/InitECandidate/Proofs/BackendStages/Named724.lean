import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed724
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody724_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody724_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody724_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody724_3 : StackLang.HolProg 64 :=
.seq NamedBody724_1 NamedBody724_2

def NamedBody724_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody724_3 NamedBody724_4

def NamedBody724_6 : StackLang.HolProg 64 :=
.seq NamedBody724_0 NamedBody724_5

def NamedBody724_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody724_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3246#64)

def NamedBody724_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody724_11 : StackLang.HolProg 64 :=
.seq NamedBody724_9 NamedBody724_10

def NamedBody724_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody724_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody724_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody724_15 : StackLang.HolProg 64 :=
.seq NamedBody724_13 NamedBody724_14

def NamedBody724_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody724_15 NamedBody724_16

def NamedBody724_18 : StackLang.HolProg 64 :=
.seq NamedBody724_12 NamedBody724_17

def NamedBody724_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody724_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody724_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 724 3

def NamedBody724_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody724_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody724_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody724_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody724_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody724_28 : StackLang.HolProg 64 :=
.seq NamedBody724_26 NamedBody724_27

def NamedBody724_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody724_30 : StackLang.HolProg 64 :=
.seq NamedBody724_28 NamedBody724_29

def NamedBody724_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody724_32 : StackLang.HolProg 64 :=
.seq NamedBody724_30 NamedBody724_31

def NamedBody724_33 : StackLang.HolProg 64 :=
.seq NamedBody724_25 NamedBody724_32

def NamedBody724_34 : StackLang.HolProg 64 :=
.seq NamedBody724_24 NamedBody724_33

def NamedBody724_35 : StackLang.HolProg 64 :=
.seq NamedBody724_23 NamedBody724_34

def NamedBody724_36 : StackLang.HolProg 64 :=
.seq NamedBody724_22 NamedBody724_35

def NamedBody724_37 : StackLang.HolProg 64 :=
.seq NamedBody724_21 NamedBody724_36

def NamedBody724_38 : StackLang.HolProg 64 :=
.seq NamedBody724_20 NamedBody724_37

def NamedBody724_39 : StackLang.HolProg 64 :=
.seq NamedBody724_19 NamedBody724_38

def NamedBody724_40 : StackLang.HolProg 64 :=
.seq NamedBody724_18 NamedBody724_39

def NamedBody724_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody724_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody724_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody724_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody724_48 : StackLang.HolProg 64 :=
.seq NamedBody724_46 NamedBody724_47

def NamedBody724_49 : StackLang.HolProg 64 :=
.seq NamedBody724_45 NamedBody724_48

def NamedBody724_50 : StackLang.HolProg 64 :=
.seq NamedBody724_44 NamedBody724_49

def NamedBody724_51 : StackLang.HolProg 64 :=
.seq NamedBody724_43 NamedBody724_50

def NamedBody724_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody724_54 : StackLang.HolProg 64 :=
.seq NamedBody724_52 NamedBody724_53

def NamedBody724_55 : StackLang.HolProg 64 :=
.call (some (NamedBody724_51, 1, 724, 2)) (Sum.inl 717) (some (NamedBody724_54, 724, 3))

def NamedBody724_56 : StackLang.HolProg 64 :=
.seq NamedBody724_42 NamedBody724_55

def NamedBody724_57 : StackLang.HolProg 64 :=
.seq NamedBody724_41 NamedBody724_56

def NamedBody724_58 : StackLang.HolProg 64 :=
.seq NamedBody724_40 NamedBody724_57

def NamedBody724_59 : StackLang.HolProg 64 :=
.seq NamedBody724_11 NamedBody724_58

def NamedBody724_60 : StackLang.HolProg 64 :=
.seq NamedBody724_8 NamedBody724_59

def NamedBody724_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody724_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 29 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody724_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 28 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody724_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody724_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody724_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody724_67 : StackLang.HolProg 64 :=
.seq NamedBody724_65 NamedBody724_66

def NamedBody724_68 : StackLang.HolProg 64 :=
.seq NamedBody724_64 NamedBody724_67

def NamedBody724_69 : StackLang.HolProg 64 :=
.seq NamedBody724_63 NamedBody724_68

def NamedBody724_70 : StackLang.HolProg 64 :=
.seq NamedBody724_62 NamedBody724_69

def NamedBody724_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 936899308823769933#64)

def NamedBody724_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2706051889235351147#64)

def NamedBody724_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 12843041017062132063#64)

def NamedBody724_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 12941209323636816658#64)

def NamedBody724_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1105070755758604287#64)

def NamedBody724_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 15924587544893707605#64)

def NamedBody724_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3247#64)

def NamedBody724_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody724_81 : StackLang.HolProg 64 :=
.seq NamedBody724_79 NamedBody724_80

def NamedBody724_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody724_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody724_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody724_85 : StackLang.HolProg 64 :=
.seq NamedBody724_83 NamedBody724_84

def NamedBody724_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody724_85 NamedBody724_86

def NamedBody724_88 : StackLang.HolProg 64 :=
.seq NamedBody724_82 NamedBody724_87

def NamedBody724_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody724_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody724_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 724 5

def NamedBody724_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody724_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody724_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody724_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody724_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody724_98 : StackLang.HolProg 64 :=
.seq NamedBody724_96 NamedBody724_97

def NamedBody724_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody724_100 : StackLang.HolProg 64 :=
.seq NamedBody724_98 NamedBody724_99

def NamedBody724_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody724_102 : StackLang.HolProg 64 :=
.seq NamedBody724_100 NamedBody724_101

def NamedBody724_103 : StackLang.HolProg 64 :=
.seq NamedBody724_95 NamedBody724_102

def NamedBody724_104 : StackLang.HolProg 64 :=
.seq NamedBody724_94 NamedBody724_103

def NamedBody724_105 : StackLang.HolProg 64 :=
.seq NamedBody724_93 NamedBody724_104

def NamedBody724_106 : StackLang.HolProg 64 :=
.seq NamedBody724_92 NamedBody724_105

def NamedBody724_107 : StackLang.HolProg 64 :=
.seq NamedBody724_91 NamedBody724_106

def NamedBody724_108 : StackLang.HolProg 64 :=
.seq NamedBody724_90 NamedBody724_107

def NamedBody724_109 : StackLang.HolProg 64 :=
.seq NamedBody724_89 NamedBody724_108

def NamedBody724_110 : StackLang.HolProg 64 :=
.seq NamedBody724_88 NamedBody724_109

def NamedBody724_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody724_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody724_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody724_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody724_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody724_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody724_119 : StackLang.HolProg 64 :=
.seq NamedBody724_117 NamedBody724_118

def NamedBody724_120 : StackLang.HolProg 64 :=
.seq NamedBody724_116 NamedBody724_119

def NamedBody724_121 : StackLang.HolProg 64 :=
.seq NamedBody724_115 NamedBody724_120

def NamedBody724_122 : StackLang.HolProg 64 :=
.seq NamedBody724_114 NamedBody724_121

def NamedBody724_123 : StackLang.HolProg 64 :=
.seq NamedBody724_113 NamedBody724_122

def NamedBody724_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody724_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody724_126 : StackLang.HolProg 64 :=
.seq NamedBody724_124 NamedBody724_125

def NamedBody724_127 : StackLang.HolProg 64 :=
.call (some (NamedBody724_123, 1, 724, 4)) (Sum.inl 707) (some (NamedBody724_126, 724, 5))

def NamedBody724_128 : StackLang.HolProg 64 :=
.seq NamedBody724_112 NamedBody724_127

def NamedBody724_129 : StackLang.HolProg 64 :=
.seq NamedBody724_111 NamedBody724_128

def NamedBody724_130 : StackLang.HolProg 64 :=
.seq NamedBody724_110 NamedBody724_129

def NamedBody724_131 : StackLang.HolProg 64 :=
.seq NamedBody724_81 NamedBody724_130

def NamedBody724_132 : StackLang.HolProg 64 :=
.seq NamedBody724_78 NamedBody724_131

def NamedBody724_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody724_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody724_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody724_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody724_137 : StackLang.HolProg 64 :=
.seq NamedBody724_135 NamedBody724_136

def NamedBody724_138 : StackLang.HolProg 64 :=
.seq NamedBody724_134 NamedBody724_137

def NamedBody724_139 : StackLang.HolProg 64 :=
.seq NamedBody724_133 NamedBody724_138

def NamedBody724_140 : StackLang.HolProg 64 :=
.seq NamedBody724_132 NamedBody724_139

def NamedBody724_141 : StackLang.HolProg 64 :=
.seq NamedBody724_77 NamedBody724_140

def NamedBody724_142 : StackLang.HolProg 64 :=
.seq NamedBody724_76 NamedBody724_141

def NamedBody724_143 : StackLang.HolProg 64 :=
.seq NamedBody724_75 NamedBody724_142

def NamedBody724_144 : StackLang.HolProg 64 :=
.seq NamedBody724_74 NamedBody724_143

def NamedBody724_145 : StackLang.HolProg 64 :=
.seq NamedBody724_73 NamedBody724_144

def NamedBody724_146 : StackLang.HolProg 64 :=
.seq NamedBody724_72 NamedBody724_145

def NamedBody724_147 : StackLang.HolProg 64 :=
.seq NamedBody724_71 NamedBody724_146

def NamedBody724_148 : StackLang.HolProg 64 :=
.seq NamedBody724_70 NamedBody724_147

def NamedBody724_149 : StackLang.HolProg 64 :=
.seq NamedBody724_61 NamedBody724_148

def NamedBody724_150 : StackLang.HolProg 64 :=
.seq NamedBody724_60 NamedBody724_149

def NamedBody724_151 : StackLang.HolProg 64 :=
.seq NamedBody724_7 NamedBody724_150

def NamedBody724_152 : StackLang.HolProg 64 :=
.seq NamedBody724_6 NamedBody724_151

def Named724 : Nat × StackLang.HolProg 64 := (724, NamedBody724_152)
theorem Named724_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed724 = Named724 := by
  kernel_rfl
#print axioms Named724_eq
end InitECandidate.Proofs.BackendStages
