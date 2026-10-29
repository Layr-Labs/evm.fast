import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed847
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody847_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody847_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody847_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody847_3 : StackLang.HolProg 64 :=
.seq NamedBody847_1 NamedBody847_2

def NamedBody847_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody847_3 NamedBody847_4

def NamedBody847_6 : StackLang.HolProg 64 :=
.seq NamedBody847_0 NamedBody847_5

def NamedBody847_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody847_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody847_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody847_11 : StackLang.HolProg 64 :=
.seq NamedBody847_9 NamedBody847_10

def NamedBody847_12 : StackLang.HolProg 64 :=
.seq NamedBody847_8 NamedBody847_11

def NamedBody847_13 : StackLang.HolProg 64 :=
.seq NamedBody847_7 NamedBody847_12

def NamedBody847_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4236#64)

def NamedBody847_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody847_17 : StackLang.HolProg 64 :=
.seq NamedBody847_15 NamedBody847_16

def NamedBody847_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody847_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody847_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody847_21 : StackLang.HolProg 64 :=
.seq NamedBody847_19 NamedBody847_20

def NamedBody847_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody847_21 NamedBody847_22

def NamedBody847_24 : StackLang.HolProg 64 :=
.seq NamedBody847_18 NamedBody847_23

def NamedBody847_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody847_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody847_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 3

def NamedBody847_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody847_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody847_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody847_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody847_34 : StackLang.HolProg 64 :=
.seq NamedBody847_32 NamedBody847_33

def NamedBody847_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody847_36 : StackLang.HolProg 64 :=
.seq NamedBody847_34 NamedBody847_35

def NamedBody847_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_38 : StackLang.HolProg 64 :=
.seq NamedBody847_36 NamedBody847_37

def NamedBody847_39 : StackLang.HolProg 64 :=
.seq NamedBody847_31 NamedBody847_38

def NamedBody847_40 : StackLang.HolProg 64 :=
.seq NamedBody847_30 NamedBody847_39

def NamedBody847_41 : StackLang.HolProg 64 :=
.seq NamedBody847_29 NamedBody847_40

def NamedBody847_42 : StackLang.HolProg 64 :=
.seq NamedBody847_28 NamedBody847_41

def NamedBody847_43 : StackLang.HolProg 64 :=
.seq NamedBody847_27 NamedBody847_42

def NamedBody847_44 : StackLang.HolProg 64 :=
.seq NamedBody847_26 NamedBody847_43

def NamedBody847_45 : StackLang.HolProg 64 :=
.seq NamedBody847_25 NamedBody847_44

def NamedBody847_46 : StackLang.HolProg 64 :=
.seq NamedBody847_24 NamedBody847_45

def NamedBody847_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody847_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody847_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody847_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_55 : StackLang.HolProg 64 :=
.seq NamedBody847_53 NamedBody847_54

def NamedBody847_56 : StackLang.HolProg 64 :=
.seq NamedBody847_52 NamedBody847_55

def NamedBody847_57 : StackLang.HolProg 64 :=
.seq NamedBody847_51 NamedBody847_56

def NamedBody847_58 : StackLang.HolProg 64 :=
.seq NamedBody847_50 NamedBody847_57

def NamedBody847_59 : StackLang.HolProg 64 :=
.seq NamedBody847_49 NamedBody847_58

def NamedBody847_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody847_62 : StackLang.HolProg 64 :=
.seq NamedBody847_60 NamedBody847_61

def NamedBody847_63 : StackLang.HolProg 64 :=
.call (some (NamedBody847_59, 1, 847, 2)) (Sum.inl 69) (some (NamedBody847_62, 847, 3))

def NamedBody847_64 : StackLang.HolProg 64 :=
.seq NamedBody847_48 NamedBody847_63

def NamedBody847_65 : StackLang.HolProg 64 :=
.seq NamedBody847_47 NamedBody847_64

def NamedBody847_66 : StackLang.HolProg 64 :=
.seq NamedBody847_46 NamedBody847_65

def NamedBody847_67 : StackLang.HolProg 64 :=
.seq NamedBody847_17 NamedBody847_66

def NamedBody847_68 : StackLang.HolProg 64 :=
.seq NamedBody847_14 NamedBody847_67

def NamedBody847_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody847_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody847_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody847_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody847_75 : StackLang.HolProg 64 :=
.seq NamedBody847_73 NamedBody847_74

def NamedBody847_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4237#64)

def NamedBody847_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody847_79 : StackLang.HolProg 64 :=
.seq NamedBody847_77 NamedBody847_78

def NamedBody847_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody847_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody847_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody847_83 : StackLang.HolProg 64 :=
.seq NamedBody847_81 NamedBody847_82

def NamedBody847_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_85 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody847_83 NamedBody847_84

def NamedBody847_86 : StackLang.HolProg 64 :=
.seq NamedBody847_80 NamedBody847_85

def NamedBody847_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody847_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody847_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 5

def NamedBody847_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody847_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody847_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody847_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody847_96 : StackLang.HolProg 64 :=
.seq NamedBody847_94 NamedBody847_95

def NamedBody847_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody847_98 : StackLang.HolProg 64 :=
.seq NamedBody847_96 NamedBody847_97

def NamedBody847_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_100 : StackLang.HolProg 64 :=
.seq NamedBody847_98 NamedBody847_99

def NamedBody847_101 : StackLang.HolProg 64 :=
.seq NamedBody847_93 NamedBody847_100

def NamedBody847_102 : StackLang.HolProg 64 :=
.seq NamedBody847_92 NamedBody847_101

def NamedBody847_103 : StackLang.HolProg 64 :=
.seq NamedBody847_91 NamedBody847_102

def NamedBody847_104 : StackLang.HolProg 64 :=
.seq NamedBody847_90 NamedBody847_103

def NamedBody847_105 : StackLang.HolProg 64 :=
.seq NamedBody847_89 NamedBody847_104

def NamedBody847_106 : StackLang.HolProg 64 :=
.seq NamedBody847_88 NamedBody847_105

def NamedBody847_107 : StackLang.HolProg 64 :=
.seq NamedBody847_87 NamedBody847_106

def NamedBody847_108 : StackLang.HolProg 64 :=
.seq NamedBody847_86 NamedBody847_107

def NamedBody847_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody847_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody847_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody847_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody847_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody847_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody847_120 : StackLang.HolProg 64 :=
.seq NamedBody847_118 NamedBody847_119

def NamedBody847_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody847_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_123 : StackLang.HolProg 64 :=
.seq NamedBody847_121 NamedBody847_122

def NamedBody847_124 : StackLang.HolProg 64 :=
.seq NamedBody847_120 NamedBody847_123

def NamedBody847_125 : StackLang.HolProg 64 :=
.seq NamedBody847_117 NamedBody847_124

def NamedBody847_126 : StackLang.HolProg 64 :=
.seq NamedBody847_116 NamedBody847_125

def NamedBody847_127 : StackLang.HolProg 64 :=
.seq NamedBody847_115 NamedBody847_126

def NamedBody847_128 : StackLang.HolProg 64 :=
.seq NamedBody847_114 NamedBody847_127

def NamedBody847_129 : StackLang.HolProg 64 :=
.seq NamedBody847_113 NamedBody847_128

def NamedBody847_130 : StackLang.HolProg 64 :=
.seq NamedBody847_112 NamedBody847_129

def NamedBody847_131 : StackLang.HolProg 64 :=
.seq NamedBody847_111 NamedBody847_130

def NamedBody847_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody847_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody847_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody847_136 : StackLang.HolProg 64 :=
.seq NamedBody847_134 NamedBody847_135

def NamedBody847_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody847_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_139 : StackLang.HolProg 64 :=
.seq NamedBody847_137 NamedBody847_138

def NamedBody847_140 : StackLang.HolProg 64 :=
.seq NamedBody847_136 NamedBody847_139

def NamedBody847_141 : StackLang.HolProg 64 :=
.seq NamedBody847_133 NamedBody847_140

def NamedBody847_142 : StackLang.HolProg 64 :=
.seq NamedBody847_132 NamedBody847_141

def NamedBody847_143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody847_144 : StackLang.HolProg 64 :=
.seq NamedBody847_142 NamedBody847_143

def NamedBody847_145 : StackLang.HolProg 64 :=
.call (some (NamedBody847_131, 1, 847, 4)) (Sum.inl 68) (some (NamedBody847_144, 847, 5))

def NamedBody847_146 : StackLang.HolProg 64 :=
.seq NamedBody847_110 NamedBody847_145

def NamedBody847_147 : StackLang.HolProg 64 :=
.seq NamedBody847_109 NamedBody847_146

def NamedBody847_148 : StackLang.HolProg 64 :=
.seq NamedBody847_108 NamedBody847_147

def NamedBody847_149 : StackLang.HolProg 64 :=
.seq NamedBody847_79 NamedBody847_148

def NamedBody847_150 : StackLang.HolProg 64 :=
.seq NamedBody847_76 NamedBody847_149

def NamedBody847_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody847_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody847_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody847_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody847_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody847_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody847_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody847_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody847_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 8#64))

def NamedBody847_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody847_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody847_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody847_170 : StackLang.HolProg 64 :=
.seq NamedBody847_168 NamedBody847_169

def NamedBody847_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody847_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody847_174 : StackLang.HolProg 64 :=
.seq NamedBody847_172 NamedBody847_173

def NamedBody847_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody847_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody847_177 : StackLang.HolProg 64 :=
.seq NamedBody847_175 NamedBody847_176

def NamedBody847_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody847_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody847_180 : StackLang.HolProg 64 :=
.seq NamedBody847_178 NamedBody847_179

def NamedBody847_181 : StackLang.HolProg 64 :=
.seq NamedBody847_177 NamedBody847_180

def NamedBody847_182 : StackLang.HolProg 64 :=
.seq NamedBody847_174 NamedBody847_181

def NamedBody847_183 : StackLang.HolProg 64 :=
.seq NamedBody847_171 NamedBody847_182

def NamedBody847_184 : StackLang.HolProg 64 :=
.seq NamedBody847_170 NamedBody847_183

def NamedBody847_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4238#64)

def NamedBody847_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody847_188 : StackLang.HolProg 64 :=
.seq NamedBody847_186 NamedBody847_187

def NamedBody847_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody847_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody847_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody847_192 : StackLang.HolProg 64 :=
.seq NamedBody847_190 NamedBody847_191

def NamedBody847_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody847_192 NamedBody847_193

def NamedBody847_195 : StackLang.HolProg 64 :=
.seq NamedBody847_189 NamedBody847_194

def NamedBody847_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody847_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody847_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 7

def NamedBody847_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody847_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody847_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody847_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody847_205 : StackLang.HolProg 64 :=
.seq NamedBody847_203 NamedBody847_204

def NamedBody847_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody847_207 : StackLang.HolProg 64 :=
.seq NamedBody847_205 NamedBody847_206

def NamedBody847_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_209 : StackLang.HolProg 64 :=
.seq NamedBody847_207 NamedBody847_208

def NamedBody847_210 : StackLang.HolProg 64 :=
.seq NamedBody847_202 NamedBody847_209

def NamedBody847_211 : StackLang.HolProg 64 :=
.seq NamedBody847_201 NamedBody847_210

def NamedBody847_212 : StackLang.HolProg 64 :=
.seq NamedBody847_200 NamedBody847_211

def NamedBody847_213 : StackLang.HolProg 64 :=
.seq NamedBody847_199 NamedBody847_212

def NamedBody847_214 : StackLang.HolProg 64 :=
.seq NamedBody847_198 NamedBody847_213

def NamedBody847_215 : StackLang.HolProg 64 :=
.seq NamedBody847_197 NamedBody847_214

def NamedBody847_216 : StackLang.HolProg 64 :=
.seq NamedBody847_196 NamedBody847_215

def NamedBody847_217 : StackLang.HolProg 64 :=
.seq NamedBody847_195 NamedBody847_216

def NamedBody847_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody847_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody847_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody847_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody847_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody847_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody847_229 : StackLang.HolProg 64 :=
.seq NamedBody847_227 NamedBody847_228

def NamedBody847_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody847_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody847_232 : StackLang.HolProg 64 :=
.seq NamedBody847_230 NamedBody847_231

def NamedBody847_233 : StackLang.HolProg 64 :=
.seq NamedBody847_229 NamedBody847_232

def NamedBody847_234 : StackLang.HolProg 64 :=
.seq NamedBody847_226 NamedBody847_233

def NamedBody847_235 : StackLang.HolProg 64 :=
.seq NamedBody847_225 NamedBody847_234

def NamedBody847_236 : StackLang.HolProg 64 :=
.seq NamedBody847_224 NamedBody847_235

def NamedBody847_237 : StackLang.HolProg 64 :=
.seq NamedBody847_223 NamedBody847_236

def NamedBody847_238 : StackLang.HolProg 64 :=
.seq NamedBody847_222 NamedBody847_237

def NamedBody847_239 : StackLang.HolProg 64 :=
.seq NamedBody847_221 NamedBody847_238

def NamedBody847_240 : StackLang.HolProg 64 :=
.seq NamedBody847_220 NamedBody847_239

def NamedBody847_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody847_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody847_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody847_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody847_246 : StackLang.HolProg 64 :=
.seq NamedBody847_244 NamedBody847_245

def NamedBody847_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody847_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody847_249 : StackLang.HolProg 64 :=
.seq NamedBody847_247 NamedBody847_248

def NamedBody847_250 : StackLang.HolProg 64 :=
.seq NamedBody847_246 NamedBody847_249

def NamedBody847_251 : StackLang.HolProg 64 :=
.seq NamedBody847_243 NamedBody847_250

def NamedBody847_252 : StackLang.HolProg 64 :=
.seq NamedBody847_242 NamedBody847_251

def NamedBody847_253 : StackLang.HolProg 64 :=
.seq NamedBody847_241 NamedBody847_252

def NamedBody847_254 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody847_255 : StackLang.HolProg 64 :=
.seq NamedBody847_253 NamedBody847_254

def NamedBody847_256 : StackLang.HolProg 64 :=
.call (some (NamedBody847_240, 1, 847, 6)) (Sum.inl 153) (some (NamedBody847_255, 847, 7))

def NamedBody847_257 : StackLang.HolProg 64 :=
.seq NamedBody847_219 NamedBody847_256

def NamedBody847_258 : StackLang.HolProg 64 :=
.seq NamedBody847_218 NamedBody847_257

def NamedBody847_259 : StackLang.HolProg 64 :=
.seq NamedBody847_217 NamedBody847_258

def NamedBody847_260 : StackLang.HolProg 64 :=
.seq NamedBody847_188 NamedBody847_259

def NamedBody847_261 : StackLang.HolProg 64 :=
.seq NamedBody847_185 NamedBody847_260

def NamedBody847_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody847_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody847_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody847_267 : StackLang.HolProg 64 :=
.seq NamedBody847_265 NamedBody847_266

def NamedBody847_268 : StackLang.HolProg 64 :=
.seq NamedBody847_264 NamedBody847_267

def NamedBody847_269 : StackLang.HolProg 64 :=
.seq NamedBody847_263 NamedBody847_268

def NamedBody847_270 : StackLang.HolProg 64 :=
.seq NamedBody847_262 NamedBody847_269

def NamedBody847_271 : StackLang.HolProg 64 :=
.seq NamedBody847_261 NamedBody847_270

def NamedBody847_272 : StackLang.HolProg 64 :=
.seq NamedBody847_184 NamedBody847_271

def NamedBody847_273 : StackLang.HolProg 64 :=
.seq NamedBody847_167 NamedBody847_272

def NamedBody847_274 : StackLang.HolProg 64 :=
.seq NamedBody847_166 NamedBody847_273

def NamedBody847_275 : StackLang.HolProg 64 :=
.seq NamedBody847_165 NamedBody847_274

def NamedBody847_276 : StackLang.HolProg 64 :=
.seq NamedBody847_164 NamedBody847_275

def NamedBody847_277 : StackLang.HolProg 64 :=
.seq NamedBody847_163 NamedBody847_276

def NamedBody847_278 : StackLang.HolProg 64 :=
.seq NamedBody847_162 NamedBody847_277

def NamedBody847_279 : StackLang.HolProg 64 :=
.seq NamedBody847_161 NamedBody847_278

def NamedBody847_280 : StackLang.HolProg 64 :=
.seq NamedBody847_160 NamedBody847_279

def NamedBody847_281 : StackLang.HolProg 64 :=
.seq NamedBody847_159 NamedBody847_280

def NamedBody847_282 : StackLang.HolProg 64 :=
.seq NamedBody847_158 NamedBody847_281

def NamedBody847_283 : StackLang.HolProg 64 :=
.seq NamedBody847_157 NamedBody847_282

def NamedBody847_284 : StackLang.HolProg 64 :=
.seq NamedBody847_156 NamedBody847_283

def NamedBody847_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody847_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody847_288 : StackLang.HolProg 64 :=
.seq NamedBody847_286 NamedBody847_287

def NamedBody847_289 : StackLang.HolProg 64 :=
.seq NamedBody847_285 NamedBody847_288

def NamedBody847_290 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody847_284 NamedBody847_289

def NamedBody847_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody847_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody847_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody847_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_295 : StackLang.HolProg 64 :=
.seq NamedBody847_293 NamedBody847_294

def NamedBody847_296 : StackLang.HolProg 64 :=
.seq NamedBody847_292 NamedBody847_295

def NamedBody847_297 : StackLang.HolProg 64 :=
.seq NamedBody847_291 NamedBody847_296

def NamedBody847_298 : StackLang.HolProg 64 :=
.seq NamedBody847_290 NamedBody847_297

def NamedBody847_299 : StackLang.HolProg 64 :=
.seq NamedBody847_155 NamedBody847_298

def NamedBody847_300 : StackLang.HolProg 64 :=
.loop NamedBody847_299

def NamedBody847_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody847_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody847_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody847_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody847_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_307 : StackLang.HolProg 64 :=
.seq NamedBody847_305 NamedBody847_306

def NamedBody847_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody847_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody847_310 : StackLang.HolProg 64 :=
.seq NamedBody847_308 NamedBody847_309

def NamedBody847_311 : StackLang.HolProg 64 :=
.seq NamedBody847_307 NamedBody847_310

def NamedBody847_312 : StackLang.HolProg 64 :=
.seq NamedBody847_304 NamedBody847_311

def NamedBody847_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4239#64)

def NamedBody847_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody847_316 : StackLang.HolProg 64 :=
.seq NamedBody847_314 NamedBody847_315

def NamedBody847_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody847_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody847_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody847_320 : StackLang.HolProg 64 :=
.seq NamedBody847_318 NamedBody847_319

def NamedBody847_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_322 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody847_320 NamedBody847_321

def NamedBody847_323 : StackLang.HolProg 64 :=
.seq NamedBody847_317 NamedBody847_322

def NamedBody847_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody847_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody847_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 9

def NamedBody847_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody847_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody847_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody847_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody847_333 : StackLang.HolProg 64 :=
.seq NamedBody847_331 NamedBody847_332

def NamedBody847_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody847_335 : StackLang.HolProg 64 :=
.seq NamedBody847_333 NamedBody847_334

def NamedBody847_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_337 : StackLang.HolProg 64 :=
.seq NamedBody847_335 NamedBody847_336

def NamedBody847_338 : StackLang.HolProg 64 :=
.seq NamedBody847_330 NamedBody847_337

def NamedBody847_339 : StackLang.HolProg 64 :=
.seq NamedBody847_329 NamedBody847_338

def NamedBody847_340 : StackLang.HolProg 64 :=
.seq NamedBody847_328 NamedBody847_339

def NamedBody847_341 : StackLang.HolProg 64 :=
.seq NamedBody847_327 NamedBody847_340

def NamedBody847_342 : StackLang.HolProg 64 :=
.seq NamedBody847_326 NamedBody847_341

def NamedBody847_343 : StackLang.HolProg 64 :=
.seq NamedBody847_325 NamedBody847_342

def NamedBody847_344 : StackLang.HolProg 64 :=
.seq NamedBody847_324 NamedBody847_343

def NamedBody847_345 : StackLang.HolProg 64 :=
.seq NamedBody847_323 NamedBody847_344

def NamedBody847_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody847_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody847_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody847_353 : StackLang.HolProg 64 :=
.seq NamedBody847_351 NamedBody847_352

def NamedBody847_354 : StackLang.HolProg 64 :=
.seq NamedBody847_350 NamedBody847_353

def NamedBody847_355 : StackLang.HolProg 64 :=
.seq NamedBody847_349 NamedBody847_354

def NamedBody847_356 : StackLang.HolProg 64 :=
.seq NamedBody847_348 NamedBody847_355

def NamedBody847_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody847_358 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody847_359 : StackLang.HolProg 64 :=
.seq NamedBody847_357 NamedBody847_358

def NamedBody847_360 : StackLang.HolProg 64 :=
.call (some (NamedBody847_356, 1, 847, 8)) (Sum.inl 153) (some (NamedBody847_359, 847, 9))

def NamedBody847_361 : StackLang.HolProg 64 :=
.seq NamedBody847_347 NamedBody847_360

def NamedBody847_362 : StackLang.HolProg 64 :=
.seq NamedBody847_346 NamedBody847_361

def NamedBody847_363 : StackLang.HolProg 64 :=
.seq NamedBody847_345 NamedBody847_362

def NamedBody847_364 : StackLang.HolProg 64 :=
.seq NamedBody847_316 NamedBody847_363

def NamedBody847_365 : StackLang.HolProg 64 :=
.seq NamedBody847_313 NamedBody847_364

def NamedBody847_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody847_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody847_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4240#64)

def NamedBody847_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody847_371 : StackLang.HolProg 64 :=
.seq NamedBody847_369 NamedBody847_370

def NamedBody847_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody847_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody847_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody847_375 : StackLang.HolProg 64 :=
.seq NamedBody847_373 NamedBody847_374

def NamedBody847_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_377 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody847_375 NamedBody847_376

def NamedBody847_378 : StackLang.HolProg 64 :=
.seq NamedBody847_372 NamedBody847_377

def NamedBody847_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody847_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody847_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 11

def NamedBody847_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody847_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody847_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody847_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody847_388 : StackLang.HolProg 64 :=
.seq NamedBody847_386 NamedBody847_387

def NamedBody847_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody847_390 : StackLang.HolProg 64 :=
.seq NamedBody847_388 NamedBody847_389

def NamedBody847_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_392 : StackLang.HolProg 64 :=
.seq NamedBody847_390 NamedBody847_391

def NamedBody847_393 : StackLang.HolProg 64 :=
.seq NamedBody847_385 NamedBody847_392

def NamedBody847_394 : StackLang.HolProg 64 :=
.seq NamedBody847_384 NamedBody847_393

def NamedBody847_395 : StackLang.HolProg 64 :=
.seq NamedBody847_383 NamedBody847_394

def NamedBody847_396 : StackLang.HolProg 64 :=
.seq NamedBody847_382 NamedBody847_395

def NamedBody847_397 : StackLang.HolProg 64 :=
.seq NamedBody847_381 NamedBody847_396

def NamedBody847_398 : StackLang.HolProg 64 :=
.seq NamedBody847_380 NamedBody847_397

def NamedBody847_399 : StackLang.HolProg 64 :=
.seq NamedBody847_379 NamedBody847_398

def NamedBody847_400 : StackLang.HolProg 64 :=
.seq NamedBody847_378 NamedBody847_399

def NamedBody847_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody847_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody847_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody847_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_408 : StackLang.HolProg 64 :=
.seq NamedBody847_406 NamedBody847_407

def NamedBody847_409 : StackLang.HolProg 64 :=
.seq NamedBody847_405 NamedBody847_408

def NamedBody847_410 : StackLang.HolProg 64 :=
.seq NamedBody847_404 NamedBody847_409

def NamedBody847_411 : StackLang.HolProg 64 :=
.seq NamedBody847_403 NamedBody847_410

def NamedBody847_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody847_413 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody847_414 : StackLang.HolProg 64 :=
.seq NamedBody847_412 NamedBody847_413

def NamedBody847_415 : StackLang.HolProg 64 :=
.call (some (NamedBody847_411, 1, 847, 10)) (Sum.inl 70) (some (NamedBody847_414, 847, 11))

def NamedBody847_416 : StackLang.HolProg 64 :=
.seq NamedBody847_402 NamedBody847_415

def NamedBody847_417 : StackLang.HolProg 64 :=
.seq NamedBody847_401 NamedBody847_416

def NamedBody847_418 : StackLang.HolProg 64 :=
.seq NamedBody847_400 NamedBody847_417

def NamedBody847_419 : StackLang.HolProg 64 :=
.seq NamedBody847_371 NamedBody847_418

def NamedBody847_420 : StackLang.HolProg 64 :=
.seq NamedBody847_368 NamedBody847_419

def NamedBody847_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody847_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody847_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody847_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody847_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody847_426 : StackLang.HolProg 64 :=
.seq NamedBody847_424 NamedBody847_425

def NamedBody847_427 : StackLang.HolProg 64 :=
.seq NamedBody847_423 NamedBody847_426

def NamedBody847_428 : StackLang.HolProg 64 :=
.seq NamedBody847_422 NamedBody847_427

def NamedBody847_429 : StackLang.HolProg 64 :=
.seq NamedBody847_421 NamedBody847_428

def NamedBody847_430 : StackLang.HolProg 64 :=
.seq NamedBody847_420 NamedBody847_429

def NamedBody847_431 : StackLang.HolProg 64 :=
.seq NamedBody847_367 NamedBody847_430

def NamedBody847_432 : StackLang.HolProg 64 :=
.seq NamedBody847_366 NamedBody847_431

def NamedBody847_433 : StackLang.HolProg 64 :=
.seq NamedBody847_365 NamedBody847_432

def NamedBody847_434 : StackLang.HolProg 64 :=
.seq NamedBody847_312 NamedBody847_433

def NamedBody847_435 : StackLang.HolProg 64 :=
.seq NamedBody847_303 NamedBody847_434

def NamedBody847_436 : StackLang.HolProg 64 :=
.seq NamedBody847_302 NamedBody847_435

def NamedBody847_437 : StackLang.HolProg 64 :=
.seq NamedBody847_301 NamedBody847_436

def NamedBody847_438 : StackLang.HolProg 64 :=
.seq NamedBody847_300 NamedBody847_437

def NamedBody847_439 : StackLang.HolProg 64 :=
.seq NamedBody847_154 NamedBody847_438

def NamedBody847_440 : StackLang.HolProg 64 :=
.seq NamedBody847_153 NamedBody847_439

def NamedBody847_441 : StackLang.HolProg 64 :=
.seq NamedBody847_152 NamedBody847_440

def NamedBody847_442 : StackLang.HolProg 64 :=
.seq NamedBody847_151 NamedBody847_441

def NamedBody847_443 : StackLang.HolProg 64 :=
.seq NamedBody847_150 NamedBody847_442

def NamedBody847_444 : StackLang.HolProg 64 :=
.seq NamedBody847_75 NamedBody847_443

def NamedBody847_445 : StackLang.HolProg 64 :=
.seq NamedBody847_72 NamedBody847_444

def NamedBody847_446 : StackLang.HolProg 64 :=
.seq NamedBody847_71 NamedBody847_445

def NamedBody847_447 : StackLang.HolProg 64 :=
.seq NamedBody847_70 NamedBody847_446

def NamedBody847_448 : StackLang.HolProg 64 :=
.seq NamedBody847_69 NamedBody847_447

def NamedBody847_449 : StackLang.HolProg 64 :=
.seq NamedBody847_68 NamedBody847_448

def NamedBody847_450 : StackLang.HolProg 64 :=
.seq NamedBody847_13 NamedBody847_449

def NamedBody847_451 : StackLang.HolProg 64 :=
.seq NamedBody847_6 NamedBody847_450

def Named847 : Nat × StackLang.HolProg 64 := (847, NamedBody847_451)
theorem Named847_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed847 = Named847 := by
  kernel_rfl
#print axioms Named847_eq
end InitECandidate.Proofs.BackendStages
