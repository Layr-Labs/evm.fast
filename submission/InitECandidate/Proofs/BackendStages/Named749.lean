import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed749
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody749_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody749_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody749_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody749_3 : StackLang.HolProg 64 :=
.seq NamedBody749_1 NamedBody749_2

def NamedBody749_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody749_3 NamedBody749_4

def NamedBody749_6 : StackLang.HolProg 64 :=
.seq NamedBody749_0 NamedBody749_5

def NamedBody749_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody749_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody749_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody749_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody749_11 : StackLang.HolProg 64 :=
.seq NamedBody749_9 NamedBody749_10

def NamedBody749_12 : StackLang.HolProg 64 :=
.seq NamedBody749_8 NamedBody749_11

def NamedBody749_13 : StackLang.HolProg 64 :=
.seq NamedBody749_7 NamedBody749_12

def NamedBody749_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3311#64)

def NamedBody749_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody749_17 : StackLang.HolProg 64 :=
.seq NamedBody749_15 NamedBody749_16

def NamedBody749_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody749_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody749_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody749_21 : StackLang.HolProg 64 :=
.seq NamedBody749_19 NamedBody749_20

def NamedBody749_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody749_21 NamedBody749_22

def NamedBody749_24 : StackLang.HolProg 64 :=
.seq NamedBody749_18 NamedBody749_23

def NamedBody749_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody749_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody749_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 749 3

def NamedBody749_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody749_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody749_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody749_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody749_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody749_34 : StackLang.HolProg 64 :=
.seq NamedBody749_32 NamedBody749_33

def NamedBody749_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody749_36 : StackLang.HolProg 64 :=
.seq NamedBody749_34 NamedBody749_35

def NamedBody749_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody749_38 : StackLang.HolProg 64 :=
.seq NamedBody749_36 NamedBody749_37

def NamedBody749_39 : StackLang.HolProg 64 :=
.seq NamedBody749_31 NamedBody749_38

def NamedBody749_40 : StackLang.HolProg 64 :=
.seq NamedBody749_30 NamedBody749_39

def NamedBody749_41 : StackLang.HolProg 64 :=
.seq NamedBody749_29 NamedBody749_40

def NamedBody749_42 : StackLang.HolProg 64 :=
.seq NamedBody749_28 NamedBody749_41

def NamedBody749_43 : StackLang.HolProg 64 :=
.seq NamedBody749_27 NamedBody749_42

def NamedBody749_44 : StackLang.HolProg 64 :=
.seq NamedBody749_26 NamedBody749_43

def NamedBody749_45 : StackLang.HolProg 64 :=
.seq NamedBody749_25 NamedBody749_44

def NamedBody749_46 : StackLang.HolProg 64 :=
.seq NamedBody749_24 NamedBody749_45

def NamedBody749_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody749_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody749_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody749_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody749_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody749_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody749_56 : StackLang.HolProg 64 :=
.seq NamedBody749_54 NamedBody749_55

def NamedBody749_57 : StackLang.HolProg 64 :=
.seq NamedBody749_53 NamedBody749_56

def NamedBody749_58 : StackLang.HolProg 64 :=
.seq NamedBody749_52 NamedBody749_57

def NamedBody749_59 : StackLang.HolProg 64 :=
.seq NamedBody749_51 NamedBody749_58

def NamedBody749_60 : StackLang.HolProg 64 :=
.seq NamedBody749_50 NamedBody749_59

def NamedBody749_61 : StackLang.HolProg 64 :=
.seq NamedBody749_49 NamedBody749_60

def NamedBody749_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody749_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody749_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody749_65 : StackLang.HolProg 64 :=
.seq NamedBody749_63 NamedBody749_64

def NamedBody749_66 : StackLang.HolProg 64 :=
.seq NamedBody749_62 NamedBody749_65

def NamedBody749_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody749_68 : StackLang.HolProg 64 :=
.seq NamedBody749_66 NamedBody749_67

def NamedBody749_69 : StackLang.HolProg 64 :=
.call (some (NamedBody749_61, 1, 749, 2)) (Sum.inl 734) (some (NamedBody749_68, 749, 3))

def NamedBody749_70 : StackLang.HolProg 64 :=
.seq NamedBody749_48 NamedBody749_69

def NamedBody749_71 : StackLang.HolProg 64 :=
.seq NamedBody749_47 NamedBody749_70

def NamedBody749_72 : StackLang.HolProg 64 :=
.seq NamedBody749_46 NamedBody749_71

def NamedBody749_73 : StackLang.HolProg 64 :=
.seq NamedBody749_17 NamedBody749_72

def NamedBody749_74 : StackLang.HolProg 64 :=
.seq NamedBody749_14 NamedBody749_73

def NamedBody749_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody749_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody749_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody749_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody749_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody749_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody749_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody749_85 : StackLang.HolProg 64 :=
.seq NamedBody749_83 NamedBody749_84

def NamedBody749_86 : StackLang.HolProg 64 :=
.seq NamedBody749_82 NamedBody749_85

def NamedBody749_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3312#64)

def NamedBody749_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody749_90 : StackLang.HolProg 64 :=
.seq NamedBody749_88 NamedBody749_89

def NamedBody749_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody749_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody749_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody749_94 : StackLang.HolProg 64 :=
.seq NamedBody749_92 NamedBody749_93

def NamedBody749_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody749_94 NamedBody749_95

def NamedBody749_97 : StackLang.HolProg 64 :=
.seq NamedBody749_91 NamedBody749_96

def NamedBody749_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody749_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody749_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 749 5

def NamedBody749_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody749_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody749_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody749_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody749_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody749_107 : StackLang.HolProg 64 :=
.seq NamedBody749_105 NamedBody749_106

def NamedBody749_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody749_109 : StackLang.HolProg 64 :=
.seq NamedBody749_107 NamedBody749_108

def NamedBody749_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody749_111 : StackLang.HolProg 64 :=
.seq NamedBody749_109 NamedBody749_110

def NamedBody749_112 : StackLang.HolProg 64 :=
.seq NamedBody749_104 NamedBody749_111

def NamedBody749_113 : StackLang.HolProg 64 :=
.seq NamedBody749_103 NamedBody749_112

def NamedBody749_114 : StackLang.HolProg 64 :=
.seq NamedBody749_102 NamedBody749_113

def NamedBody749_115 : StackLang.HolProg 64 :=
.seq NamedBody749_101 NamedBody749_114

def NamedBody749_116 : StackLang.HolProg 64 :=
.seq NamedBody749_100 NamedBody749_115

def NamedBody749_117 : StackLang.HolProg 64 :=
.seq NamedBody749_99 NamedBody749_116

def NamedBody749_118 : StackLang.HolProg 64 :=
.seq NamedBody749_98 NamedBody749_117

def NamedBody749_119 : StackLang.HolProg 64 :=
.seq NamedBody749_97 NamedBody749_118

def NamedBody749_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody749_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody749_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody749_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody749_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody749_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody749_129 : StackLang.HolProg 64 :=
.seq NamedBody749_127 NamedBody749_128

def NamedBody749_130 : StackLang.HolProg 64 :=
.seq NamedBody749_126 NamedBody749_129

def NamedBody749_131 : StackLang.HolProg 64 :=
.seq NamedBody749_125 NamedBody749_130

def NamedBody749_132 : StackLang.HolProg 64 :=
.seq NamedBody749_124 NamedBody749_131

def NamedBody749_133 : StackLang.HolProg 64 :=
.seq NamedBody749_123 NamedBody749_132

def NamedBody749_134 : StackLang.HolProg 64 :=
.seq NamedBody749_122 NamedBody749_133

def NamedBody749_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody749_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody749_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody749_138 : StackLang.HolProg 64 :=
.seq NamedBody749_136 NamedBody749_137

def NamedBody749_139 : StackLang.HolProg 64 :=
.seq NamedBody749_135 NamedBody749_138

def NamedBody749_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody749_141 : StackLang.HolProg 64 :=
.seq NamedBody749_139 NamedBody749_140

def NamedBody749_142 : StackLang.HolProg 64 :=
.call (some (NamedBody749_134, 1, 749, 4)) (Sum.inl 734) (some (NamedBody749_141, 749, 5))

def NamedBody749_143 : StackLang.HolProg 64 :=
.seq NamedBody749_121 NamedBody749_142

def NamedBody749_144 : StackLang.HolProg 64 :=
.seq NamedBody749_120 NamedBody749_143

def NamedBody749_145 : StackLang.HolProg 64 :=
.seq NamedBody749_119 NamedBody749_144

def NamedBody749_146 : StackLang.HolProg 64 :=
.seq NamedBody749_90 NamedBody749_145

def NamedBody749_147 : StackLang.HolProg 64 :=
.seq NamedBody749_87 NamedBody749_146

def NamedBody749_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody749_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody749_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody749_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody749_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3313#64)

def NamedBody749_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody749_159 : StackLang.HolProg 64 :=
.seq NamedBody749_157 NamedBody749_158

def NamedBody749_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody749_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody749_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody749_163 : StackLang.HolProg 64 :=
.seq NamedBody749_161 NamedBody749_162

def NamedBody749_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_165 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody749_163 NamedBody749_164

def NamedBody749_166 : StackLang.HolProg 64 :=
.seq NamedBody749_160 NamedBody749_165

def NamedBody749_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody749_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody749_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 749 7

def NamedBody749_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody749_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody749_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody749_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody749_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody749_176 : StackLang.HolProg 64 :=
.seq NamedBody749_174 NamedBody749_175

def NamedBody749_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody749_178 : StackLang.HolProg 64 :=
.seq NamedBody749_176 NamedBody749_177

def NamedBody749_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody749_180 : StackLang.HolProg 64 :=
.seq NamedBody749_178 NamedBody749_179

def NamedBody749_181 : StackLang.HolProg 64 :=
.seq NamedBody749_173 NamedBody749_180

def NamedBody749_182 : StackLang.HolProg 64 :=
.seq NamedBody749_172 NamedBody749_181

def NamedBody749_183 : StackLang.HolProg 64 :=
.seq NamedBody749_171 NamedBody749_182

def NamedBody749_184 : StackLang.HolProg 64 :=
.seq NamedBody749_170 NamedBody749_183

def NamedBody749_185 : StackLang.HolProg 64 :=
.seq NamedBody749_169 NamedBody749_184

def NamedBody749_186 : StackLang.HolProg 64 :=
.seq NamedBody749_168 NamedBody749_185

def NamedBody749_187 : StackLang.HolProg 64 :=
.seq NamedBody749_167 NamedBody749_186

def NamedBody749_188 : StackLang.HolProg 64 :=
.seq NamedBody749_166 NamedBody749_187

def NamedBody749_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody749_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody749_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody749_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody749_196 : StackLang.HolProg 64 :=
.seq NamedBody749_194 NamedBody749_195

def NamedBody749_197 : StackLang.HolProg 64 :=
.seq NamedBody749_193 NamedBody749_196

def NamedBody749_198 : StackLang.HolProg 64 :=
.seq NamedBody749_192 NamedBody749_197

def NamedBody749_199 : StackLang.HolProg 64 :=
.seq NamedBody749_191 NamedBody749_198

def NamedBody749_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody749_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody749_202 : StackLang.HolProg 64 :=
.seq NamedBody749_200 NamedBody749_201

def NamedBody749_203 : StackLang.HolProg 64 :=
.call (some (NamedBody749_199, 1, 749, 6)) (Sum.inl 734) (some (NamedBody749_202, 749, 7))

def NamedBody749_204 : StackLang.HolProg 64 :=
.seq NamedBody749_190 NamedBody749_203

def NamedBody749_205 : StackLang.HolProg 64 :=
.seq NamedBody749_189 NamedBody749_204

def NamedBody749_206 : StackLang.HolProg 64 :=
.seq NamedBody749_188 NamedBody749_205

def NamedBody749_207 : StackLang.HolProg 64 :=
.seq NamedBody749_159 NamedBody749_206

def NamedBody749_208 : StackLang.HolProg 64 :=
.seq NamedBody749_156 NamedBody749_207

def NamedBody749_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody749_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody749_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody749_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody749_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody749_214 : StackLang.HolProg 64 :=
.seq NamedBody749_212 NamedBody749_213

def NamedBody749_215 : StackLang.HolProg 64 :=
.seq NamedBody749_211 NamedBody749_214

def NamedBody749_216 : StackLang.HolProg 64 :=
.seq NamedBody749_210 NamedBody749_215

def NamedBody749_217 : StackLang.HolProg 64 :=
.seq NamedBody749_209 NamedBody749_216

def NamedBody749_218 : StackLang.HolProg 64 :=
.seq NamedBody749_208 NamedBody749_217

def NamedBody749_219 : StackLang.HolProg 64 :=
.seq NamedBody749_155 NamedBody749_218

def NamedBody749_220 : StackLang.HolProg 64 :=
.seq NamedBody749_154 NamedBody749_219

def NamedBody749_221 : StackLang.HolProg 64 :=
.seq NamedBody749_153 NamedBody749_220

def NamedBody749_222 : StackLang.HolProg 64 :=
.seq NamedBody749_152 NamedBody749_221

def NamedBody749_223 : StackLang.HolProg 64 :=
.seq NamedBody749_151 NamedBody749_222

def NamedBody749_224 : StackLang.HolProg 64 :=
.seq NamedBody749_150 NamedBody749_223

def NamedBody749_225 : StackLang.HolProg 64 :=
.seq NamedBody749_149 NamedBody749_224

def NamedBody749_226 : StackLang.HolProg 64 :=
.seq NamedBody749_148 NamedBody749_225

def NamedBody749_227 : StackLang.HolProg 64 :=
.seq NamedBody749_147 NamedBody749_226

def NamedBody749_228 : StackLang.HolProg 64 :=
.seq NamedBody749_86 NamedBody749_227

def NamedBody749_229 : StackLang.HolProg 64 :=
.seq NamedBody749_81 NamedBody749_228

def NamedBody749_230 : StackLang.HolProg 64 :=
.seq NamedBody749_80 NamedBody749_229

def NamedBody749_231 : StackLang.HolProg 64 :=
.seq NamedBody749_79 NamedBody749_230

def NamedBody749_232 : StackLang.HolProg 64 :=
.seq NamedBody749_78 NamedBody749_231

def NamedBody749_233 : StackLang.HolProg 64 :=
.seq NamedBody749_77 NamedBody749_232

def NamedBody749_234 : StackLang.HolProg 64 :=
.seq NamedBody749_76 NamedBody749_233

def NamedBody749_235 : StackLang.HolProg 64 :=
.seq NamedBody749_75 NamedBody749_234

def NamedBody749_236 : StackLang.HolProg 64 :=
.seq NamedBody749_74 NamedBody749_235

def NamedBody749_237 : StackLang.HolProg 64 :=
.seq NamedBody749_13 NamedBody749_236

def NamedBody749_238 : StackLang.HolProg 64 :=
.seq NamedBody749_6 NamedBody749_237

def Named749 : Nat × StackLang.HolProg 64 := (749, NamedBody749_238)
theorem Named749_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed749 = Named749 := by
  kernel_rfl
#print axioms Named749_eq
end InitECandidate.Proofs.BackendStages
