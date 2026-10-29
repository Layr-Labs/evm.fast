import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc724
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody724_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody724_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody724_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody724_3 : StackLang.HolProg 64 :=
.seq RemovedBody724_1 RemovedBody724_2

def RemovedBody724_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody724_3 RemovedBody724_4

def RemovedBody724_6 : StackLang.HolProg 64 :=
.seq RemovedBody724_0 RemovedBody724_5

def RemovedBody724_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody724_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3246#64)

def RemovedBody724_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody724_11 : StackLang.HolProg 64 :=
.seq RemovedBody724_9 RemovedBody724_10

def RemovedBody724_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody724_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody724_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody724_15 : StackLang.HolProg 64 :=
.seq RemovedBody724_13 RemovedBody724_14

def RemovedBody724_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody724_15 RemovedBody724_16

def RemovedBody724_18 : StackLang.HolProg 64 :=
.seq RemovedBody724_12 RemovedBody724_17

def RemovedBody724_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody724_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody724_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 724 3

def RemovedBody724_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody724_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody724_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody724_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody724_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody724_28 : StackLang.HolProg 64 :=
.seq RemovedBody724_26 RemovedBody724_27

def RemovedBody724_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody724_30 : StackLang.HolProg 64 :=
.seq RemovedBody724_28 RemovedBody724_29

def RemovedBody724_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody724_32 : StackLang.HolProg 64 :=
.seq RemovedBody724_30 RemovedBody724_31

def RemovedBody724_33 : StackLang.HolProg 64 :=
.seq RemovedBody724_25 RemovedBody724_32

def RemovedBody724_34 : StackLang.HolProg 64 :=
.seq RemovedBody724_24 RemovedBody724_33

def RemovedBody724_35 : StackLang.HolProg 64 :=
.seq RemovedBody724_23 RemovedBody724_34

def RemovedBody724_36 : StackLang.HolProg 64 :=
.seq RemovedBody724_22 RemovedBody724_35

def RemovedBody724_37 : StackLang.HolProg 64 :=
.seq RemovedBody724_21 RemovedBody724_36

def RemovedBody724_38 : StackLang.HolProg 64 :=
.seq RemovedBody724_20 RemovedBody724_37

def RemovedBody724_39 : StackLang.HolProg 64 :=
.seq RemovedBody724_19 RemovedBody724_38

def RemovedBody724_40 : StackLang.HolProg 64 :=
.seq RemovedBody724_18 RemovedBody724_39

def RemovedBody724_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody724_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody724_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody724_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody724_48 : StackLang.HolProg 64 :=
.seq RemovedBody724_46 RemovedBody724_47

def RemovedBody724_49 : StackLang.HolProg 64 :=
.seq RemovedBody724_45 RemovedBody724_48

def RemovedBody724_50 : StackLang.HolProg 64 :=
.seq RemovedBody724_44 RemovedBody724_49

def RemovedBody724_51 : StackLang.HolProg 64 :=
.seq RemovedBody724_43 RemovedBody724_50

def RemovedBody724_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody724_54 : StackLang.HolProg 64 :=
.seq RemovedBody724_52 RemovedBody724_53

def RemovedBody724_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody724_51, 0, 724, 2)) (Sum.inl 717) (some (RemovedBody724_54, 724, 3))

def RemovedBody724_56 : StackLang.HolProg 64 :=
.seq RemovedBody724_42 RemovedBody724_55

def RemovedBody724_57 : StackLang.HolProg 64 :=
.seq RemovedBody724_41 RemovedBody724_56

def RemovedBody724_58 : StackLang.HolProg 64 :=
.seq RemovedBody724_40 RemovedBody724_57

def RemovedBody724_59 : StackLang.HolProg 64 :=
.seq RemovedBody724_11 RemovedBody724_58

def RemovedBody724_60 : StackLang.HolProg 64 :=
.seq RemovedBody724_8 RemovedBody724_59

def RemovedBody724_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody724_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody724_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody724_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody724_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody724_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody724_67 : StackLang.HolProg 64 :=
.seq RemovedBody724_65 RemovedBody724_66

def RemovedBody724_68 : StackLang.HolProg 64 :=
.seq RemovedBody724_64 RemovedBody724_67

def RemovedBody724_69 : StackLang.HolProg 64 :=
.seq RemovedBody724_63 RemovedBody724_68

def RemovedBody724_70 : StackLang.HolProg 64 :=
.seq RemovedBody724_62 RemovedBody724_69

def RemovedBody724_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 936899308823769933#64)

def RemovedBody724_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2706051889235351147#64)

def RemovedBody724_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 12843041017062132063#64)

def RemovedBody724_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 12941209323636816658#64)

def RemovedBody724_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1105070755758604287#64)

def RemovedBody724_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 15924587544893707605#64)

def RemovedBody724_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3247#64)

def RemovedBody724_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody724_81 : StackLang.HolProg 64 :=
.seq RemovedBody724_79 RemovedBody724_80

def RemovedBody724_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody724_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody724_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody724_85 : StackLang.HolProg 64 :=
.seq RemovedBody724_83 RemovedBody724_84

def RemovedBody724_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody724_85 RemovedBody724_86

def RemovedBody724_88 : StackLang.HolProg 64 :=
.seq RemovedBody724_82 RemovedBody724_87

def RemovedBody724_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody724_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody724_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 724 5

def RemovedBody724_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody724_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody724_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody724_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody724_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody724_98 : StackLang.HolProg 64 :=
.seq RemovedBody724_96 RemovedBody724_97

def RemovedBody724_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody724_100 : StackLang.HolProg 64 :=
.seq RemovedBody724_98 RemovedBody724_99

def RemovedBody724_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody724_102 : StackLang.HolProg 64 :=
.seq RemovedBody724_100 RemovedBody724_101

def RemovedBody724_103 : StackLang.HolProg 64 :=
.seq RemovedBody724_95 RemovedBody724_102

def RemovedBody724_104 : StackLang.HolProg 64 :=
.seq RemovedBody724_94 RemovedBody724_103

def RemovedBody724_105 : StackLang.HolProg 64 :=
.seq RemovedBody724_93 RemovedBody724_104

def RemovedBody724_106 : StackLang.HolProg 64 :=
.seq RemovedBody724_92 RemovedBody724_105

def RemovedBody724_107 : StackLang.HolProg 64 :=
.seq RemovedBody724_91 RemovedBody724_106

def RemovedBody724_108 : StackLang.HolProg 64 :=
.seq RemovedBody724_90 RemovedBody724_107

def RemovedBody724_109 : StackLang.HolProg 64 :=
.seq RemovedBody724_89 RemovedBody724_108

def RemovedBody724_110 : StackLang.HolProg 64 :=
.seq RemovedBody724_88 RemovedBody724_109

def RemovedBody724_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody724_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody724_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody724_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody724_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody724_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody724_119 : StackLang.HolProg 64 :=
.seq RemovedBody724_117 RemovedBody724_118

def RemovedBody724_120 : StackLang.HolProg 64 :=
.seq RemovedBody724_116 RemovedBody724_119

def RemovedBody724_121 : StackLang.HolProg 64 :=
.seq RemovedBody724_115 RemovedBody724_120

def RemovedBody724_122 : StackLang.HolProg 64 :=
.seq RemovedBody724_114 RemovedBody724_121

def RemovedBody724_123 : StackLang.HolProg 64 :=
.seq RemovedBody724_113 RemovedBody724_122

def RemovedBody724_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody724_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody724_126 : StackLang.HolProg 64 :=
.seq RemovedBody724_124 RemovedBody724_125

def RemovedBody724_127 : StackLang.HolProg 64 :=
.call (some (RemovedBody724_123, 0, 724, 4)) (Sum.inl 707) (some (RemovedBody724_126, 724, 5))

def RemovedBody724_128 : StackLang.HolProg 64 :=
.seq RemovedBody724_112 RemovedBody724_127

def RemovedBody724_129 : StackLang.HolProg 64 :=
.seq RemovedBody724_111 RemovedBody724_128

def RemovedBody724_130 : StackLang.HolProg 64 :=
.seq RemovedBody724_110 RemovedBody724_129

def RemovedBody724_131 : StackLang.HolProg 64 :=
.seq RemovedBody724_81 RemovedBody724_130

def RemovedBody724_132 : StackLang.HolProg 64 :=
.seq RemovedBody724_78 RemovedBody724_131

def RemovedBody724_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody724_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody724_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody724_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody724_137 : StackLang.HolProg 64 :=
.seq RemovedBody724_135 RemovedBody724_136

def RemovedBody724_138 : StackLang.HolProg 64 :=
.seq RemovedBody724_134 RemovedBody724_137

def RemovedBody724_139 : StackLang.HolProg 64 :=
.seq RemovedBody724_133 RemovedBody724_138

def RemovedBody724_140 : StackLang.HolProg 64 :=
.seq RemovedBody724_132 RemovedBody724_139

def RemovedBody724_141 : StackLang.HolProg 64 :=
.seq RemovedBody724_77 RemovedBody724_140

def RemovedBody724_142 : StackLang.HolProg 64 :=
.seq RemovedBody724_76 RemovedBody724_141

def RemovedBody724_143 : StackLang.HolProg 64 :=
.seq RemovedBody724_75 RemovedBody724_142

def RemovedBody724_144 : StackLang.HolProg 64 :=
.seq RemovedBody724_74 RemovedBody724_143

def RemovedBody724_145 : StackLang.HolProg 64 :=
.seq RemovedBody724_73 RemovedBody724_144

def RemovedBody724_146 : StackLang.HolProg 64 :=
.seq RemovedBody724_72 RemovedBody724_145

def RemovedBody724_147 : StackLang.HolProg 64 :=
.seq RemovedBody724_71 RemovedBody724_146

def RemovedBody724_148 : StackLang.HolProg 64 :=
.seq RemovedBody724_70 RemovedBody724_147

def RemovedBody724_149 : StackLang.HolProg 64 :=
.seq RemovedBody724_61 RemovedBody724_148

def RemovedBody724_150 : StackLang.HolProg 64 :=
.seq RemovedBody724_60 RemovedBody724_149

def RemovedBody724_151 : StackLang.HolProg 64 :=
.seq RemovedBody724_7 RemovedBody724_150

def RemovedBody724_152 : StackLang.HolProg 64 :=
.seq RemovedBody724_6 RemovedBody724_151

def Removed724 : Nat × StackLang.HolProg 64 := (724, RemovedBody724_152)
theorem Removed724_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc724 = Removed724 := by
  kernel_rfl
#print axioms Removed724_eq
end InitECandidate.Proofs.BackendStages
