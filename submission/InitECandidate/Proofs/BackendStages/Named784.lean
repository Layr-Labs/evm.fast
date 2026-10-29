import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed784
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody784_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody784_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody784_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody784_3 : StackLang.HolProg 64 :=
.seq NamedBody784_1 NamedBody784_2

def NamedBody784_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody784_3 NamedBody784_4

def NamedBody784_6 : StackLang.HolProg 64 :=
.seq NamedBody784_0 NamedBody784_5

def NamedBody784_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody784_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody784_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody784_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody784_12 : StackLang.HolProg 64 :=
.seq NamedBody784_10 NamedBody784_11

def NamedBody784_13 : StackLang.HolProg 64 :=
.seq NamedBody784_9 NamedBody784_12

def NamedBody784_14 : StackLang.HolProg 64 :=
.seq NamedBody784_8 NamedBody784_13

def NamedBody784_15 : StackLang.HolProg 64 :=
.seq NamedBody784_7 NamedBody784_14

def NamedBody784_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3618#64)

def NamedBody784_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody784_19 : StackLang.HolProg 64 :=
.seq NamedBody784_17 NamedBody784_18

def NamedBody784_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody784_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody784_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody784_23 : StackLang.HolProg 64 :=
.seq NamedBody784_21 NamedBody784_22

def NamedBody784_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody784_23 NamedBody784_24

def NamedBody784_26 : StackLang.HolProg 64 :=
.seq NamedBody784_20 NamedBody784_25

def NamedBody784_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody784_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody784_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 3

def NamedBody784_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody784_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody784_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody784_36 : StackLang.HolProg 64 :=
.seq NamedBody784_34 NamedBody784_35

def NamedBody784_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody784_38 : StackLang.HolProg 64 :=
.seq NamedBody784_36 NamedBody784_37

def NamedBody784_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_40 : StackLang.HolProg 64 :=
.seq NamedBody784_38 NamedBody784_39

def NamedBody784_41 : StackLang.HolProg 64 :=
.seq NamedBody784_33 NamedBody784_40

def NamedBody784_42 : StackLang.HolProg 64 :=
.seq NamedBody784_32 NamedBody784_41

def NamedBody784_43 : StackLang.HolProg 64 :=
.seq NamedBody784_31 NamedBody784_42

def NamedBody784_44 : StackLang.HolProg 64 :=
.seq NamedBody784_30 NamedBody784_43

def NamedBody784_45 : StackLang.HolProg 64 :=
.seq NamedBody784_29 NamedBody784_44

def NamedBody784_46 : StackLang.HolProg 64 :=
.seq NamedBody784_28 NamedBody784_45

def NamedBody784_47 : StackLang.HolProg 64 :=
.seq NamedBody784_27 NamedBody784_46

def NamedBody784_48 : StackLang.HolProg 64 :=
.seq NamedBody784_26 NamedBody784_47

def NamedBody784_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody784_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody784_56 : StackLang.HolProg 64 :=
.seq NamedBody784_54 NamedBody784_55

def NamedBody784_57 : StackLang.HolProg 64 :=
.seq NamedBody784_53 NamedBody784_56

def NamedBody784_58 : StackLang.HolProg 64 :=
.seq NamedBody784_52 NamedBody784_57

def NamedBody784_59 : StackLang.HolProg 64 :=
.seq NamedBody784_51 NamedBody784_58

def NamedBody784_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody784_62 : StackLang.HolProg 64 :=
.seq NamedBody784_60 NamedBody784_61

def NamedBody784_63 : StackLang.HolProg 64 :=
.call (some (NamedBody784_59, 1, 784, 2)) (Sum.inl 69) (some (NamedBody784_62, 784, 3))

def NamedBody784_64 : StackLang.HolProg 64 :=
.seq NamedBody784_50 NamedBody784_63

def NamedBody784_65 : StackLang.HolProg 64 :=
.seq NamedBody784_49 NamedBody784_64

def NamedBody784_66 : StackLang.HolProg 64 :=
.seq NamedBody784_48 NamedBody784_65

def NamedBody784_67 : StackLang.HolProg 64 :=
.seq NamedBody784_19 NamedBody784_66

def NamedBody784_68 : StackLang.HolProg 64 :=
.seq NamedBody784_16 NamedBody784_67

def NamedBody784_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 288#64)

def NamedBody784_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody784_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3619#64)

def NamedBody784_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody784_75 : StackLang.HolProg 64 :=
.seq NamedBody784_73 NamedBody784_74

def NamedBody784_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody784_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody784_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody784_79 : StackLang.HolProg 64 :=
.seq NamedBody784_77 NamedBody784_78

def NamedBody784_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody784_79 NamedBody784_80

def NamedBody784_82 : StackLang.HolProg 64 :=
.seq NamedBody784_76 NamedBody784_81

def NamedBody784_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody784_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody784_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 5

def NamedBody784_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody784_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody784_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody784_92 : StackLang.HolProg 64 :=
.seq NamedBody784_90 NamedBody784_91

def NamedBody784_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody784_94 : StackLang.HolProg 64 :=
.seq NamedBody784_92 NamedBody784_93

def NamedBody784_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_96 : StackLang.HolProg 64 :=
.seq NamedBody784_94 NamedBody784_95

def NamedBody784_97 : StackLang.HolProg 64 :=
.seq NamedBody784_89 NamedBody784_96

def NamedBody784_98 : StackLang.HolProg 64 :=
.seq NamedBody784_88 NamedBody784_97

def NamedBody784_99 : StackLang.HolProg 64 :=
.seq NamedBody784_87 NamedBody784_98

def NamedBody784_100 : StackLang.HolProg 64 :=
.seq NamedBody784_86 NamedBody784_99

def NamedBody784_101 : StackLang.HolProg 64 :=
.seq NamedBody784_85 NamedBody784_100

def NamedBody784_102 : StackLang.HolProg 64 :=
.seq NamedBody784_84 NamedBody784_101

def NamedBody784_103 : StackLang.HolProg 64 :=
.seq NamedBody784_83 NamedBody784_102

def NamedBody784_104 : StackLang.HolProg 64 :=
.seq NamedBody784_82 NamedBody784_103

def NamedBody784_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody784_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody784_112 : StackLang.HolProg 64 :=
.seq NamedBody784_110 NamedBody784_111

def NamedBody784_113 : StackLang.HolProg 64 :=
.seq NamedBody784_109 NamedBody784_112

def NamedBody784_114 : StackLang.HolProg 64 :=
.seq NamedBody784_108 NamedBody784_113

def NamedBody784_115 : StackLang.HolProg 64 :=
.seq NamedBody784_107 NamedBody784_114

def NamedBody784_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody784_118 : StackLang.HolProg 64 :=
.seq NamedBody784_116 NamedBody784_117

def NamedBody784_119 : StackLang.HolProg 64 :=
.call (some (NamedBody784_115, 1, 784, 4)) (Sum.inl 68) (some (NamedBody784_118, 784, 5))

def NamedBody784_120 : StackLang.HolProg 64 :=
.seq NamedBody784_106 NamedBody784_119

def NamedBody784_121 : StackLang.HolProg 64 :=
.seq NamedBody784_105 NamedBody784_120

def NamedBody784_122 : StackLang.HolProg 64 :=
.seq NamedBody784_104 NamedBody784_121

def NamedBody784_123 : StackLang.HolProg 64 :=
.seq NamedBody784_75 NamedBody784_122

def NamedBody784_124 : StackLang.HolProg 64 :=
.seq NamedBody784_72 NamedBody784_123

def NamedBody784_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody784_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_128 : StackLang.HolProg 64 :=
.seq NamedBody784_126 NamedBody784_127

def NamedBody784_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3620#64)

def NamedBody784_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody784_132 : StackLang.HolProg 64 :=
.seq NamedBody784_130 NamedBody784_131

def NamedBody784_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody784_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody784_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody784_136 : StackLang.HolProg 64 :=
.seq NamedBody784_134 NamedBody784_135

def NamedBody784_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody784_136 NamedBody784_137

def NamedBody784_139 : StackLang.HolProg 64 :=
.seq NamedBody784_133 NamedBody784_138

def NamedBody784_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody784_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody784_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 7

def NamedBody784_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody784_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody784_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody784_149 : StackLang.HolProg 64 :=
.seq NamedBody784_147 NamedBody784_148

def NamedBody784_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody784_151 : StackLang.HolProg 64 :=
.seq NamedBody784_149 NamedBody784_150

def NamedBody784_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_153 : StackLang.HolProg 64 :=
.seq NamedBody784_151 NamedBody784_152

def NamedBody784_154 : StackLang.HolProg 64 :=
.seq NamedBody784_146 NamedBody784_153

def NamedBody784_155 : StackLang.HolProg 64 :=
.seq NamedBody784_145 NamedBody784_154

def NamedBody784_156 : StackLang.HolProg 64 :=
.seq NamedBody784_144 NamedBody784_155

def NamedBody784_157 : StackLang.HolProg 64 :=
.seq NamedBody784_143 NamedBody784_156

def NamedBody784_158 : StackLang.HolProg 64 :=
.seq NamedBody784_142 NamedBody784_157

def NamedBody784_159 : StackLang.HolProg 64 :=
.seq NamedBody784_141 NamedBody784_158

def NamedBody784_160 : StackLang.HolProg 64 :=
.seq NamedBody784_140 NamedBody784_159

def NamedBody784_161 : StackLang.HolProg 64 :=
.seq NamedBody784_139 NamedBody784_160

def NamedBody784_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody784_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody784_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_172 : StackLang.HolProg 64 :=
.seq NamedBody784_170 NamedBody784_171

def NamedBody784_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody784_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_175 : StackLang.HolProg 64 :=
.seq NamedBody784_173 NamedBody784_174

def NamedBody784_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody784_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody784_178 : StackLang.HolProg 64 :=
.seq NamedBody784_176 NamedBody784_177

def NamedBody784_179 : StackLang.HolProg 64 :=
.seq NamedBody784_175 NamedBody784_178

def NamedBody784_180 : StackLang.HolProg 64 :=
.seq NamedBody784_172 NamedBody784_179

def NamedBody784_181 : StackLang.HolProg 64 :=
.seq NamedBody784_169 NamedBody784_180

def NamedBody784_182 : StackLang.HolProg 64 :=
.seq NamedBody784_168 NamedBody784_181

def NamedBody784_183 : StackLang.HolProg 64 :=
.seq NamedBody784_167 NamedBody784_182

def NamedBody784_184 : StackLang.HolProg 64 :=
.seq NamedBody784_166 NamedBody784_183

def NamedBody784_185 : StackLang.HolProg 64 :=
.seq NamedBody784_165 NamedBody784_184

def NamedBody784_186 : StackLang.HolProg 64 :=
.seq NamedBody784_164 NamedBody784_185

def NamedBody784_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody784_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_191 : StackLang.HolProg 64 :=
.seq NamedBody784_189 NamedBody784_190

def NamedBody784_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody784_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_194 : StackLang.HolProg 64 :=
.seq NamedBody784_192 NamedBody784_193

def NamedBody784_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody784_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody784_197 : StackLang.HolProg 64 :=
.seq NamedBody784_195 NamedBody784_196

def NamedBody784_198 : StackLang.HolProg 64 :=
.seq NamedBody784_194 NamedBody784_197

def NamedBody784_199 : StackLang.HolProg 64 :=
.seq NamedBody784_191 NamedBody784_198

def NamedBody784_200 : StackLang.HolProg 64 :=
.seq NamedBody784_188 NamedBody784_199

def NamedBody784_201 : StackLang.HolProg 64 :=
.seq NamedBody784_187 NamedBody784_200

def NamedBody784_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody784_203 : StackLang.HolProg 64 :=
.seq NamedBody784_201 NamedBody784_202

def NamedBody784_204 : StackLang.HolProg 64 :=
.call (some (NamedBody784_186, 1, 784, 6)) (Sum.inl 778) (some (NamedBody784_203, 784, 7))

def NamedBody784_205 : StackLang.HolProg 64 :=
.seq NamedBody784_163 NamedBody784_204

def NamedBody784_206 : StackLang.HolProg 64 :=
.seq NamedBody784_162 NamedBody784_205

def NamedBody784_207 : StackLang.HolProg 64 :=
.seq NamedBody784_161 NamedBody784_206

def NamedBody784_208 : StackLang.HolProg 64 :=
.seq NamedBody784_132 NamedBody784_207

def NamedBody784_209 : StackLang.HolProg 64 :=
.seq NamedBody784_129 NamedBody784_208

def NamedBody784_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody784_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody784_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody784_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody784_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody784_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody784_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody784_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody784_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody784_227 : StackLang.HolProg 64 :=
.seq NamedBody784_225 NamedBody784_226

def NamedBody784_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody784_230 : StackLang.HolProg 64 :=
.seq NamedBody784_228 NamedBody784_229

def NamedBody784_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody784_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_233 : StackLang.HolProg 64 :=
.seq NamedBody784_231 NamedBody784_232

def NamedBody784_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody784_236 : StackLang.HolProg 64 :=
.seq NamedBody784_234 NamedBody784_235

def NamedBody784_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody784_239 : StackLang.HolProg 64 :=
.seq NamedBody784_237 NamedBody784_238

def NamedBody784_240 : StackLang.HolProg 64 :=
.seq NamedBody784_236 NamedBody784_239

def NamedBody784_241 : StackLang.HolProg 64 :=
.seq NamedBody784_233 NamedBody784_240

def NamedBody784_242 : StackLang.HolProg 64 :=
.seq NamedBody784_230 NamedBody784_241

def NamedBody784_243 : StackLang.HolProg 64 :=
.seq NamedBody784_227 NamedBody784_242

def NamedBody784_244 : StackLang.HolProg 64 :=
.seq NamedBody784_224 NamedBody784_243

def NamedBody784_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3621#64)

def NamedBody784_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody784_248 : StackLang.HolProg 64 :=
.seq NamedBody784_246 NamedBody784_247

def NamedBody784_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody784_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody784_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody784_252 : StackLang.HolProg 64 :=
.seq NamedBody784_250 NamedBody784_251

def NamedBody784_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_254 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody784_252 NamedBody784_253

def NamedBody784_255 : StackLang.HolProg 64 :=
.seq NamedBody784_249 NamedBody784_254

def NamedBody784_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody784_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody784_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 9

def NamedBody784_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody784_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody784_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody784_265 : StackLang.HolProg 64 :=
.seq NamedBody784_263 NamedBody784_264

def NamedBody784_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody784_267 : StackLang.HolProg 64 :=
.seq NamedBody784_265 NamedBody784_266

def NamedBody784_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_269 : StackLang.HolProg 64 :=
.seq NamedBody784_267 NamedBody784_268

def NamedBody784_270 : StackLang.HolProg 64 :=
.seq NamedBody784_262 NamedBody784_269

def NamedBody784_271 : StackLang.HolProg 64 :=
.seq NamedBody784_261 NamedBody784_270

def NamedBody784_272 : StackLang.HolProg 64 :=
.seq NamedBody784_260 NamedBody784_271

def NamedBody784_273 : StackLang.HolProg 64 :=
.seq NamedBody784_259 NamedBody784_272

def NamedBody784_274 : StackLang.HolProg 64 :=
.seq NamedBody784_258 NamedBody784_273

def NamedBody784_275 : StackLang.HolProg 64 :=
.seq NamedBody784_257 NamedBody784_274

def NamedBody784_276 : StackLang.HolProg 64 :=
.seq NamedBody784_256 NamedBody784_275

def NamedBody784_277 : StackLang.HolProg 64 :=
.seq NamedBody784_255 NamedBody784_276

def NamedBody784_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody784_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody784_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody784_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody784_288 : StackLang.HolProg 64 :=
.seq NamedBody784_286 NamedBody784_287

def NamedBody784_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody784_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody784_292 : StackLang.HolProg 64 :=
.seq NamedBody784_290 NamedBody784_291

def NamedBody784_293 : StackLang.HolProg 64 :=
.seq NamedBody784_289 NamedBody784_292

def NamedBody784_294 : StackLang.HolProg 64 :=
.seq NamedBody784_288 NamedBody784_293

def NamedBody784_295 : StackLang.HolProg 64 :=
.seq NamedBody784_285 NamedBody784_294

def NamedBody784_296 : StackLang.HolProg 64 :=
.seq NamedBody784_284 NamedBody784_295

def NamedBody784_297 : StackLang.HolProg 64 :=
.seq NamedBody784_283 NamedBody784_296

def NamedBody784_298 : StackLang.HolProg 64 :=
.seq NamedBody784_282 NamedBody784_297

def NamedBody784_299 : StackLang.HolProg 64 :=
.seq NamedBody784_281 NamedBody784_298

def NamedBody784_300 : StackLang.HolProg 64 :=
.seq NamedBody784_280 NamedBody784_299

def NamedBody784_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody784_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody784_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody784_305 : StackLang.HolProg 64 :=
.seq NamedBody784_303 NamedBody784_304

def NamedBody784_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody784_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody784_309 : StackLang.HolProg 64 :=
.seq NamedBody784_307 NamedBody784_308

def NamedBody784_310 : StackLang.HolProg 64 :=
.seq NamedBody784_306 NamedBody784_309

def NamedBody784_311 : StackLang.HolProg 64 :=
.seq NamedBody784_305 NamedBody784_310

def NamedBody784_312 : StackLang.HolProg 64 :=
.seq NamedBody784_302 NamedBody784_311

def NamedBody784_313 : StackLang.HolProg 64 :=
.seq NamedBody784_301 NamedBody784_312

def NamedBody784_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody784_315 : StackLang.HolProg 64 :=
.seq NamedBody784_313 NamedBody784_314

def NamedBody784_316 : StackLang.HolProg 64 :=
.call (some (NamedBody784_300, 1, 784, 8)) (Sum.inl 782) (some (NamedBody784_315, 784, 9))

def NamedBody784_317 : StackLang.HolProg 64 :=
.seq NamedBody784_279 NamedBody784_316

def NamedBody784_318 : StackLang.HolProg 64 :=
.seq NamedBody784_278 NamedBody784_317

def NamedBody784_319 : StackLang.HolProg 64 :=
.seq NamedBody784_277 NamedBody784_318

def NamedBody784_320 : StackLang.HolProg 64 :=
.seq NamedBody784_248 NamedBody784_319

def NamedBody784_321 : StackLang.HolProg 64 :=
.seq NamedBody784_245 NamedBody784_320

def NamedBody784_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_324 : StackLang.HolProg 64 :=
.seq NamedBody784_322 NamedBody784_323

def NamedBody784_325 : StackLang.HolProg 64 :=
.seq NamedBody784_321 NamedBody784_324

def NamedBody784_326 : StackLang.HolProg 64 :=
.seq NamedBody784_244 NamedBody784_325

def NamedBody784_327 : StackLang.HolProg 64 :=
.seq NamedBody784_223 NamedBody784_326

def NamedBody784_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody784_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody784_332 : StackLang.HolProg 64 :=
.seq NamedBody784_330 NamedBody784_331

def NamedBody784_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody784_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_335 : StackLang.HolProg 64 :=
.seq NamedBody784_333 NamedBody784_334

def NamedBody784_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody784_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody784_339 : StackLang.HolProg 64 :=
.seq NamedBody784_337 NamedBody784_338

def NamedBody784_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_341 : StackLang.HolProg 64 :=
.seq NamedBody784_339 NamedBody784_340

def NamedBody784_342 : StackLang.HolProg 64 :=
.seq NamedBody784_336 NamedBody784_341

def NamedBody784_343 : StackLang.HolProg 64 :=
.seq NamedBody784_335 NamedBody784_342

def NamedBody784_344 : StackLang.HolProg 64 :=
.seq NamedBody784_332 NamedBody784_343

def NamedBody784_345 : StackLang.HolProg 64 :=
.seq NamedBody784_329 NamedBody784_344

def NamedBody784_346 : StackLang.HolProg 64 :=
.seq NamedBody784_328 NamedBody784_345

def NamedBody784_347 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody784_327 NamedBody784_346

def NamedBody784_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody784_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody784_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody784_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody784_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody784_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody784_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody784_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 1#64)

def NamedBody784_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody784_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody784_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody784_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_368 : StackLang.HolProg 64 :=
.seq NamedBody784_366 NamedBody784_367

def NamedBody784_369 : StackLang.HolProg 64 :=
.seq NamedBody784_365 NamedBody784_368

def NamedBody784_370 : StackLang.HolProg 64 :=
.seq NamedBody784_364 NamedBody784_369

def NamedBody784_371 : StackLang.HolProg 64 :=
.seq NamedBody784_363 NamedBody784_370

def NamedBody784_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3622#64)

def NamedBody784_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody784_375 : StackLang.HolProg 64 :=
.seq NamedBody784_373 NamedBody784_374

def NamedBody784_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody784_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody784_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody784_379 : StackLang.HolProg 64 :=
.seq NamedBody784_377 NamedBody784_378

def NamedBody784_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_381 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody784_379 NamedBody784_380

def NamedBody784_382 : StackLang.HolProg 64 :=
.seq NamedBody784_376 NamedBody784_381

def NamedBody784_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody784_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody784_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 11

def NamedBody784_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody784_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody784_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody784_392 : StackLang.HolProg 64 :=
.seq NamedBody784_390 NamedBody784_391

def NamedBody784_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody784_394 : StackLang.HolProg 64 :=
.seq NamedBody784_392 NamedBody784_393

def NamedBody784_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_396 : StackLang.HolProg 64 :=
.seq NamedBody784_394 NamedBody784_395

def NamedBody784_397 : StackLang.HolProg 64 :=
.seq NamedBody784_389 NamedBody784_396

def NamedBody784_398 : StackLang.HolProg 64 :=
.seq NamedBody784_388 NamedBody784_397

def NamedBody784_399 : StackLang.HolProg 64 :=
.seq NamedBody784_387 NamedBody784_398

def NamedBody784_400 : StackLang.HolProg 64 :=
.seq NamedBody784_386 NamedBody784_399

def NamedBody784_401 : StackLang.HolProg 64 :=
.seq NamedBody784_385 NamedBody784_400

def NamedBody784_402 : StackLang.HolProg 64 :=
.seq NamedBody784_384 NamedBody784_401

def NamedBody784_403 : StackLang.HolProg 64 :=
.seq NamedBody784_383 NamedBody784_402

def NamedBody784_404 : StackLang.HolProg 64 :=
.seq NamedBody784_382 NamedBody784_403

def NamedBody784_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody784_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody784_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody784_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_416 : StackLang.HolProg 64 :=
.seq NamedBody784_414 NamedBody784_415

def NamedBody784_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody784_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody784_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_420 : StackLang.HolProg 64 :=
.seq NamedBody784_418 NamedBody784_419

def NamedBody784_421 : StackLang.HolProg 64 :=
.seq NamedBody784_417 NamedBody784_420

def NamedBody784_422 : StackLang.HolProg 64 :=
.seq NamedBody784_416 NamedBody784_421

def NamedBody784_423 : StackLang.HolProg 64 :=
.seq NamedBody784_413 NamedBody784_422

def NamedBody784_424 : StackLang.HolProg 64 :=
.seq NamedBody784_412 NamedBody784_423

def NamedBody784_425 : StackLang.HolProg 64 :=
.seq NamedBody784_411 NamedBody784_424

def NamedBody784_426 : StackLang.HolProg 64 :=
.seq NamedBody784_410 NamedBody784_425

def NamedBody784_427 : StackLang.HolProg 64 :=
.seq NamedBody784_409 NamedBody784_426

def NamedBody784_428 : StackLang.HolProg 64 :=
.seq NamedBody784_408 NamedBody784_427

def NamedBody784_429 : StackLang.HolProg 64 :=
.seq NamedBody784_407 NamedBody784_428

def NamedBody784_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody784_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody784_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_435 : StackLang.HolProg 64 :=
.seq NamedBody784_433 NamedBody784_434

def NamedBody784_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody784_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody784_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_439 : StackLang.HolProg 64 :=
.seq NamedBody784_437 NamedBody784_438

def NamedBody784_440 : StackLang.HolProg 64 :=
.seq NamedBody784_436 NamedBody784_439

def NamedBody784_441 : StackLang.HolProg 64 :=
.seq NamedBody784_435 NamedBody784_440

def NamedBody784_442 : StackLang.HolProg 64 :=
.seq NamedBody784_432 NamedBody784_441

def NamedBody784_443 : StackLang.HolProg 64 :=
.seq NamedBody784_431 NamedBody784_442

def NamedBody784_444 : StackLang.HolProg 64 :=
.seq NamedBody784_430 NamedBody784_443

def NamedBody784_445 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody784_446 : StackLang.HolProg 64 :=
.seq NamedBody784_444 NamedBody784_445

def NamedBody784_447 : StackLang.HolProg 64 :=
.call (some (NamedBody784_429, 1, 784, 10)) (Sum.inl 783) (some (NamedBody784_446, 784, 11))

def NamedBody784_448 : StackLang.HolProg 64 :=
.seq NamedBody784_406 NamedBody784_447

def NamedBody784_449 : StackLang.HolProg 64 :=
.seq NamedBody784_405 NamedBody784_448

def NamedBody784_450 : StackLang.HolProg 64 :=
.seq NamedBody784_404 NamedBody784_449

def NamedBody784_451 : StackLang.HolProg 64 :=
.seq NamedBody784_375 NamedBody784_450

def NamedBody784_452 : StackLang.HolProg 64 :=
.seq NamedBody784_372 NamedBody784_451

def NamedBody784_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def NamedBody784_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_456 : StackLang.HolProg 64 :=
.seq NamedBody784_454 NamedBody784_455

def NamedBody784_457 : StackLang.HolProg 64 :=
.seq NamedBody784_453 NamedBody784_456

def NamedBody784_458 : StackLang.HolProg 64 :=
.seq NamedBody784_452 NamedBody784_457

def NamedBody784_459 : StackLang.HolProg 64 :=
.seq NamedBody784_371 NamedBody784_458

def NamedBody784_460 : StackLang.HolProg 64 :=
.seq NamedBody784_362 NamedBody784_459

def NamedBody784_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody784_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_465 : StackLang.HolProg 64 :=
.seq NamedBody784_463 NamedBody784_464

def NamedBody784_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody784_467 : StackLang.HolProg 64 :=
.seq NamedBody784_465 NamedBody784_466

def NamedBody784_468 : StackLang.HolProg 64 :=
.seq NamedBody784_462 NamedBody784_467

def NamedBody784_469 : StackLang.HolProg 64 :=
.seq NamedBody784_461 NamedBody784_468

def NamedBody784_470 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody784_460 NamedBody784_469

def NamedBody784_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody784_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody784_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody784_476 : StackLang.HolProg 64 :=
.seq NamedBody784_474 NamedBody784_475

def NamedBody784_477 : StackLang.HolProg 64 :=
.seq NamedBody784_473 NamedBody784_476

def NamedBody784_478 : StackLang.HolProg 64 :=
.seq NamedBody784_472 NamedBody784_477

def NamedBody784_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody784_480 : StackLang.HolProg 64 :=
.seq NamedBody784_478 NamedBody784_479

def NamedBody784_481 : StackLang.HolProg 64 :=
.seq NamedBody784_471 NamedBody784_480

def NamedBody784_482 : StackLang.HolProg 64 :=
.seq NamedBody784_470 NamedBody784_481

def NamedBody784_483 : StackLang.HolProg 64 :=
.seq NamedBody784_361 NamedBody784_482

def NamedBody784_484 : StackLang.HolProg 64 :=
.seq NamedBody784_360 NamedBody784_483

def NamedBody784_485 : StackLang.HolProg 64 :=
.seq NamedBody784_359 NamedBody784_484

def NamedBody784_486 : StackLang.HolProg 64 :=
.seq NamedBody784_358 NamedBody784_485

def NamedBody784_487 : StackLang.HolProg 64 :=
.seq NamedBody784_357 NamedBody784_486

def NamedBody784_488 : StackLang.HolProg 64 :=
.seq NamedBody784_356 NamedBody784_487

def NamedBody784_489 : StackLang.HolProg 64 :=
.seq NamedBody784_355 NamedBody784_488

def NamedBody784_490 : StackLang.HolProg 64 :=
.seq NamedBody784_354 NamedBody784_489

def NamedBody784_491 : StackLang.HolProg 64 :=
.seq NamedBody784_353 NamedBody784_490

def NamedBody784_492 : StackLang.HolProg 64 :=
.seq NamedBody784_352 NamedBody784_491

def NamedBody784_493 : StackLang.HolProg 64 :=
.seq NamedBody784_351 NamedBody784_492

def NamedBody784_494 : StackLang.HolProg 64 :=
.seq NamedBody784_350 NamedBody784_493

def NamedBody784_495 : StackLang.HolProg 64 :=
.seq NamedBody784_349 NamedBody784_494

def NamedBody784_496 : StackLang.HolProg 64 :=
.seq NamedBody784_348 NamedBody784_495

def NamedBody784_497 : StackLang.HolProg 64 :=
.seq NamedBody784_347 NamedBody784_496

def NamedBody784_498 : StackLang.HolProg 64 :=
.seq NamedBody784_222 NamedBody784_497

def NamedBody784_499 : StackLang.HolProg 64 :=
.seq NamedBody784_221 NamedBody784_498

def NamedBody784_500 : StackLang.HolProg 64 :=
.seq NamedBody784_220 NamedBody784_499

def NamedBody784_501 : StackLang.HolProg 64 :=
.seq NamedBody784_219 NamedBody784_500

def NamedBody784_502 : StackLang.HolProg 64 :=
.seq NamedBody784_218 NamedBody784_501

def NamedBody784_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody784_505 : StackLang.HolProg 64 :=
.seq NamedBody784_503 NamedBody784_504

def NamedBody784_506 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody784_502 NamedBody784_505

def NamedBody784_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody784_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody784_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody784_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody784_514 : StackLang.HolProg 64 :=
.seq NamedBody784_512 NamedBody784_513

def NamedBody784_515 : StackLang.HolProg 64 :=
.seq NamedBody784_511 NamedBody784_514

def NamedBody784_516 : StackLang.HolProg 64 :=
.seq NamedBody784_510 NamedBody784_515

def NamedBody784_517 : StackLang.HolProg 64 :=
.seq NamedBody784_509 NamedBody784_516

def NamedBody784_518 : StackLang.HolProg 64 :=
.seq NamedBody784_508 NamedBody784_517

def NamedBody784_519 : StackLang.HolProg 64 :=
.seq NamedBody784_507 NamedBody784_518

def NamedBody784_520 : StackLang.HolProg 64 :=
.seq NamedBody784_506 NamedBody784_519

def NamedBody784_521 : StackLang.HolProg 64 :=
.seq NamedBody784_217 NamedBody784_520

def NamedBody784_522 : StackLang.HolProg 64 :=
.seq NamedBody784_216 NamedBody784_521

def NamedBody784_523 : StackLang.HolProg 64 :=
.loop NamedBody784_522

def NamedBody784_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody784_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_528 : StackLang.HolProg 64 :=
.seq NamedBody784_526 NamedBody784_527

def NamedBody784_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody784_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody784_531 : StackLang.HolProg 64 :=
.seq NamedBody784_529 NamedBody784_530

def NamedBody784_532 : StackLang.HolProg 64 :=
.seq NamedBody784_528 NamedBody784_531

def NamedBody784_533 : StackLang.HolProg 64 :=
.seq NamedBody784_525 NamedBody784_532

def NamedBody784_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3623#64)

def NamedBody784_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody784_537 : StackLang.HolProg 64 :=
.seq NamedBody784_535 NamedBody784_536

def NamedBody784_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody784_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody784_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody784_541 : StackLang.HolProg 64 :=
.seq NamedBody784_539 NamedBody784_540

def NamedBody784_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_543 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody784_541 NamedBody784_542

def NamedBody784_544 : StackLang.HolProg 64 :=
.seq NamedBody784_538 NamedBody784_543

def NamedBody784_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody784_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody784_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 13

def NamedBody784_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody784_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody784_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody784_554 : StackLang.HolProg 64 :=
.seq NamedBody784_552 NamedBody784_553

def NamedBody784_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody784_556 : StackLang.HolProg 64 :=
.seq NamedBody784_554 NamedBody784_555

def NamedBody784_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_558 : StackLang.HolProg 64 :=
.seq NamedBody784_556 NamedBody784_557

def NamedBody784_559 : StackLang.HolProg 64 :=
.seq NamedBody784_551 NamedBody784_558

def NamedBody784_560 : StackLang.HolProg 64 :=
.seq NamedBody784_550 NamedBody784_559

def NamedBody784_561 : StackLang.HolProg 64 :=
.seq NamedBody784_549 NamedBody784_560

def NamedBody784_562 : StackLang.HolProg 64 :=
.seq NamedBody784_548 NamedBody784_561

def NamedBody784_563 : StackLang.HolProg 64 :=
.seq NamedBody784_547 NamedBody784_562

def NamedBody784_564 : StackLang.HolProg 64 :=
.seq NamedBody784_546 NamedBody784_563

def NamedBody784_565 : StackLang.HolProg 64 :=
.seq NamedBody784_545 NamedBody784_564

def NamedBody784_566 : StackLang.HolProg 64 :=
.seq NamedBody784_544 NamedBody784_565

def NamedBody784_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody784_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody784_574 : StackLang.HolProg 64 :=
.seq NamedBody784_572 NamedBody784_573

def NamedBody784_575 : StackLang.HolProg 64 :=
.seq NamedBody784_571 NamedBody784_574

def NamedBody784_576 : StackLang.HolProg 64 :=
.seq NamedBody784_570 NamedBody784_575

def NamedBody784_577 : StackLang.HolProg 64 :=
.seq NamedBody784_569 NamedBody784_576

def NamedBody784_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody784_579 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody784_580 : StackLang.HolProg 64 :=
.seq NamedBody784_578 NamedBody784_579

def NamedBody784_581 : StackLang.HolProg 64 :=
.call (some (NamedBody784_577, 1, 784, 12)) (Sum.inl 780) (some (NamedBody784_580, 784, 13))

def NamedBody784_582 : StackLang.HolProg 64 :=
.seq NamedBody784_568 NamedBody784_581

def NamedBody784_583 : StackLang.HolProg 64 :=
.seq NamedBody784_567 NamedBody784_582

def NamedBody784_584 : StackLang.HolProg 64 :=
.seq NamedBody784_566 NamedBody784_583

def NamedBody784_585 : StackLang.HolProg 64 :=
.seq NamedBody784_537 NamedBody784_584

def NamedBody784_586 : StackLang.HolProg 64 :=
.seq NamedBody784_534 NamedBody784_585

def NamedBody784_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody784_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3624#64)

def NamedBody784_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody784_592 : StackLang.HolProg 64 :=
.seq NamedBody784_590 NamedBody784_591

def NamedBody784_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody784_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody784_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody784_596 : StackLang.HolProg 64 :=
.seq NamedBody784_594 NamedBody784_595

def NamedBody784_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_598 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody784_596 NamedBody784_597

def NamedBody784_599 : StackLang.HolProg 64 :=
.seq NamedBody784_593 NamedBody784_598

def NamedBody784_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody784_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody784_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 15

def NamedBody784_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody784_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody784_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody784_609 : StackLang.HolProg 64 :=
.seq NamedBody784_607 NamedBody784_608

def NamedBody784_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody784_611 : StackLang.HolProg 64 :=
.seq NamedBody784_609 NamedBody784_610

def NamedBody784_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_613 : StackLang.HolProg 64 :=
.seq NamedBody784_611 NamedBody784_612

def NamedBody784_614 : StackLang.HolProg 64 :=
.seq NamedBody784_606 NamedBody784_613

def NamedBody784_615 : StackLang.HolProg 64 :=
.seq NamedBody784_605 NamedBody784_614

def NamedBody784_616 : StackLang.HolProg 64 :=
.seq NamedBody784_604 NamedBody784_615

def NamedBody784_617 : StackLang.HolProg 64 :=
.seq NamedBody784_603 NamedBody784_616

def NamedBody784_618 : StackLang.HolProg 64 :=
.seq NamedBody784_602 NamedBody784_617

def NamedBody784_619 : StackLang.HolProg 64 :=
.seq NamedBody784_601 NamedBody784_618

def NamedBody784_620 : StackLang.HolProg 64 :=
.seq NamedBody784_600 NamedBody784_619

def NamedBody784_621 : StackLang.HolProg 64 :=
.seq NamedBody784_599 NamedBody784_620

def NamedBody784_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody784_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody784_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody784_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_629 : StackLang.HolProg 64 :=
.seq NamedBody784_627 NamedBody784_628

def NamedBody784_630 : StackLang.HolProg 64 :=
.seq NamedBody784_626 NamedBody784_629

def NamedBody784_631 : StackLang.HolProg 64 :=
.seq NamedBody784_625 NamedBody784_630

def NamedBody784_632 : StackLang.HolProg 64 :=
.seq NamedBody784_624 NamedBody784_631

def NamedBody784_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody784_634 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody784_635 : StackLang.HolProg 64 :=
.seq NamedBody784_633 NamedBody784_634

def NamedBody784_636 : StackLang.HolProg 64 :=
.call (some (NamedBody784_632, 1, 784, 14)) (Sum.inl 70) (some (NamedBody784_635, 784, 15))

def NamedBody784_637 : StackLang.HolProg 64 :=
.seq NamedBody784_623 NamedBody784_636

def NamedBody784_638 : StackLang.HolProg 64 :=
.seq NamedBody784_622 NamedBody784_637

def NamedBody784_639 : StackLang.HolProg 64 :=
.seq NamedBody784_621 NamedBody784_638

def NamedBody784_640 : StackLang.HolProg 64 :=
.seq NamedBody784_592 NamedBody784_639

def NamedBody784_641 : StackLang.HolProg 64 :=
.seq NamedBody784_589 NamedBody784_640

def NamedBody784_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody784_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody784_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody784_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody784_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody784_647 : StackLang.HolProg 64 :=
.seq NamedBody784_645 NamedBody784_646

def NamedBody784_648 : StackLang.HolProg 64 :=
.seq NamedBody784_644 NamedBody784_647

def NamedBody784_649 : StackLang.HolProg 64 :=
.seq NamedBody784_643 NamedBody784_648

def NamedBody784_650 : StackLang.HolProg 64 :=
.seq NamedBody784_642 NamedBody784_649

def NamedBody784_651 : StackLang.HolProg 64 :=
.seq NamedBody784_641 NamedBody784_650

def NamedBody784_652 : StackLang.HolProg 64 :=
.seq NamedBody784_588 NamedBody784_651

def NamedBody784_653 : StackLang.HolProg 64 :=
.seq NamedBody784_587 NamedBody784_652

def NamedBody784_654 : StackLang.HolProg 64 :=
.seq NamedBody784_586 NamedBody784_653

def NamedBody784_655 : StackLang.HolProg 64 :=
.seq NamedBody784_533 NamedBody784_654

def NamedBody784_656 : StackLang.HolProg 64 :=
.seq NamedBody784_524 NamedBody784_655

def NamedBody784_657 : StackLang.HolProg 64 :=
.seq NamedBody784_523 NamedBody784_656

def NamedBody784_658 : StackLang.HolProg 64 :=
.seq NamedBody784_215 NamedBody784_657

def NamedBody784_659 : StackLang.HolProg 64 :=
.seq NamedBody784_214 NamedBody784_658

def NamedBody784_660 : StackLang.HolProg 64 :=
.seq NamedBody784_213 NamedBody784_659

def NamedBody784_661 : StackLang.HolProg 64 :=
.seq NamedBody784_212 NamedBody784_660

def NamedBody784_662 : StackLang.HolProg 64 :=
.seq NamedBody784_211 NamedBody784_661

def NamedBody784_663 : StackLang.HolProg 64 :=
.seq NamedBody784_210 NamedBody784_662

def NamedBody784_664 : StackLang.HolProg 64 :=
.seq NamedBody784_209 NamedBody784_663

def NamedBody784_665 : StackLang.HolProg 64 :=
.seq NamedBody784_128 NamedBody784_664

def NamedBody784_666 : StackLang.HolProg 64 :=
.seq NamedBody784_125 NamedBody784_665

def NamedBody784_667 : StackLang.HolProg 64 :=
.seq NamedBody784_124 NamedBody784_666

def NamedBody784_668 : StackLang.HolProg 64 :=
.seq NamedBody784_71 NamedBody784_667

def NamedBody784_669 : StackLang.HolProg 64 :=
.seq NamedBody784_70 NamedBody784_668

def NamedBody784_670 : StackLang.HolProg 64 :=
.seq NamedBody784_69 NamedBody784_669

def NamedBody784_671 : StackLang.HolProg 64 :=
.seq NamedBody784_68 NamedBody784_670

def NamedBody784_672 : StackLang.HolProg 64 :=
.seq NamedBody784_15 NamedBody784_671

def NamedBody784_673 : StackLang.HolProg 64 :=
.seq NamedBody784_6 NamedBody784_672

def Named784 : Nat × StackLang.HolProg 64 := (784, NamedBody784_673)
theorem Named784_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed784 = Named784 := by
  kernel_rfl
#print axioms Named784_eq
end InitECandidate.Proofs.BackendStages
