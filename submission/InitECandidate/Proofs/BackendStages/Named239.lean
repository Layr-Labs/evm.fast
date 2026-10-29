import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed239
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody239_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody239_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody239_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody239_3 : StackLang.HolProg 64 :=
.seq NamedBody239_1 NamedBody239_2

def NamedBody239_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody239_3 NamedBody239_4

def NamedBody239_6 : StackLang.HolProg 64 :=
.seq NamedBody239_0 NamedBody239_5

def NamedBody239_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody239_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody239_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody239_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody239_11 : StackLang.HolProg 64 :=
.seq NamedBody239_9 NamedBody239_10

def NamedBody239_12 : StackLang.HolProg 64 :=
.seq NamedBody239_8 NamedBody239_11

def NamedBody239_13 : StackLang.HolProg 64 :=
.seq NamedBody239_7 NamedBody239_12

def NamedBody239_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 457#64)

def NamedBody239_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody239_17 : StackLang.HolProg 64 :=
.seq NamedBody239_15 NamedBody239_16

def NamedBody239_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody239_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody239_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody239_21 : StackLang.HolProg 64 :=
.seq NamedBody239_19 NamedBody239_20

def NamedBody239_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody239_21 NamedBody239_22

def NamedBody239_24 : StackLang.HolProg 64 :=
.seq NamedBody239_18 NamedBody239_23

def NamedBody239_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody239_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody239_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 239 3

def NamedBody239_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody239_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody239_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody239_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody239_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody239_34 : StackLang.HolProg 64 :=
.seq NamedBody239_32 NamedBody239_33

def NamedBody239_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody239_36 : StackLang.HolProg 64 :=
.seq NamedBody239_34 NamedBody239_35

def NamedBody239_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody239_38 : StackLang.HolProg 64 :=
.seq NamedBody239_36 NamedBody239_37

def NamedBody239_39 : StackLang.HolProg 64 :=
.seq NamedBody239_31 NamedBody239_38

def NamedBody239_40 : StackLang.HolProg 64 :=
.seq NamedBody239_30 NamedBody239_39

def NamedBody239_41 : StackLang.HolProg 64 :=
.seq NamedBody239_29 NamedBody239_40

def NamedBody239_42 : StackLang.HolProg 64 :=
.seq NamedBody239_28 NamedBody239_41

def NamedBody239_43 : StackLang.HolProg 64 :=
.seq NamedBody239_27 NamedBody239_42

def NamedBody239_44 : StackLang.HolProg 64 :=
.seq NamedBody239_26 NamedBody239_43

def NamedBody239_45 : StackLang.HolProg 64 :=
.seq NamedBody239_25 NamedBody239_44

def NamedBody239_46 : StackLang.HolProg 64 :=
.seq NamedBody239_24 NamedBody239_45

def NamedBody239_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody239_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody239_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody239_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody239_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody239_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody239_56 : StackLang.HolProg 64 :=
.seq NamedBody239_54 NamedBody239_55

def NamedBody239_57 : StackLang.HolProg 64 :=
.seq NamedBody239_53 NamedBody239_56

def NamedBody239_58 : StackLang.HolProg 64 :=
.seq NamedBody239_52 NamedBody239_57

def NamedBody239_59 : StackLang.HolProg 64 :=
.seq NamedBody239_51 NamedBody239_58

def NamedBody239_60 : StackLang.HolProg 64 :=
.seq NamedBody239_50 NamedBody239_59

def NamedBody239_61 : StackLang.HolProg 64 :=
.seq NamedBody239_49 NamedBody239_60

def NamedBody239_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody239_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody239_64 : StackLang.HolProg 64 :=
.seq NamedBody239_62 NamedBody239_63

def NamedBody239_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody239_66 : StackLang.HolProg 64 :=
.seq NamedBody239_64 NamedBody239_65

def NamedBody239_67 : StackLang.HolProg 64 :=
.call (some (NamedBody239_61, 1, 239, 2)) (Sum.inl 69) (some (NamedBody239_66, 239, 3))

def NamedBody239_68 : StackLang.HolProg 64 :=
.seq NamedBody239_48 NamedBody239_67

def NamedBody239_69 : StackLang.HolProg 64 :=
.seq NamedBody239_47 NamedBody239_68

def NamedBody239_70 : StackLang.HolProg 64 :=
.seq NamedBody239_46 NamedBody239_69

def NamedBody239_71 : StackLang.HolProg 64 :=
.seq NamedBody239_17 NamedBody239_70

def NamedBody239_72 : StackLang.HolProg 64 :=
.seq NamedBody239_14 NamedBody239_71

def NamedBody239_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody239_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody239_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody239_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody239_77 : StackLang.HolProg 64 :=
.seq NamedBody239_75 NamedBody239_76

def NamedBody239_78 : StackLang.HolProg 64 :=
.seq NamedBody239_74 NamedBody239_77

def NamedBody239_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 458#64)

def NamedBody239_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody239_82 : StackLang.HolProg 64 :=
.seq NamedBody239_80 NamedBody239_81

def NamedBody239_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody239_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody239_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody239_86 : StackLang.HolProg 64 :=
.seq NamedBody239_84 NamedBody239_85

def NamedBody239_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody239_86 NamedBody239_87

def NamedBody239_89 : StackLang.HolProg 64 :=
.seq NamedBody239_83 NamedBody239_88

def NamedBody239_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody239_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody239_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 239 5

def NamedBody239_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody239_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody239_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody239_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody239_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody239_99 : StackLang.HolProg 64 :=
.seq NamedBody239_97 NamedBody239_98

def NamedBody239_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody239_101 : StackLang.HolProg 64 :=
.seq NamedBody239_99 NamedBody239_100

def NamedBody239_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody239_103 : StackLang.HolProg 64 :=
.seq NamedBody239_101 NamedBody239_102

def NamedBody239_104 : StackLang.HolProg 64 :=
.seq NamedBody239_96 NamedBody239_103

def NamedBody239_105 : StackLang.HolProg 64 :=
.seq NamedBody239_95 NamedBody239_104

def NamedBody239_106 : StackLang.HolProg 64 :=
.seq NamedBody239_94 NamedBody239_105

def NamedBody239_107 : StackLang.HolProg 64 :=
.seq NamedBody239_93 NamedBody239_106

def NamedBody239_108 : StackLang.HolProg 64 :=
.seq NamedBody239_92 NamedBody239_107

def NamedBody239_109 : StackLang.HolProg 64 :=
.seq NamedBody239_91 NamedBody239_108

def NamedBody239_110 : StackLang.HolProg 64 :=
.seq NamedBody239_90 NamedBody239_109

def NamedBody239_111 : StackLang.HolProg 64 :=
.seq NamedBody239_89 NamedBody239_110

def NamedBody239_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody239_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody239_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody239_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody239_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody239_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody239_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody239_122 : StackLang.HolProg 64 :=
.seq NamedBody239_120 NamedBody239_121

def NamedBody239_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody239_124 : StackLang.HolProg 64 :=
.seq NamedBody239_122 NamedBody239_123

def NamedBody239_125 : StackLang.HolProg 64 :=
.seq NamedBody239_119 NamedBody239_124

def NamedBody239_126 : StackLang.HolProg 64 :=
.seq NamedBody239_118 NamedBody239_125

def NamedBody239_127 : StackLang.HolProg 64 :=
.seq NamedBody239_117 NamedBody239_126

def NamedBody239_128 : StackLang.HolProg 64 :=
.seq NamedBody239_116 NamedBody239_127

def NamedBody239_129 : StackLang.HolProg 64 :=
.seq NamedBody239_115 NamedBody239_128

def NamedBody239_130 : StackLang.HolProg 64 :=
.seq NamedBody239_114 NamedBody239_129

def NamedBody239_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody239_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody239_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody239_134 : StackLang.HolProg 64 :=
.seq NamedBody239_132 NamedBody239_133

def NamedBody239_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody239_136 : StackLang.HolProg 64 :=
.seq NamedBody239_134 NamedBody239_135

def NamedBody239_137 : StackLang.HolProg 64 :=
.seq NamedBody239_131 NamedBody239_136

def NamedBody239_138 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody239_139 : StackLang.HolProg 64 :=
.seq NamedBody239_137 NamedBody239_138

def NamedBody239_140 : StackLang.HolProg 64 :=
.call (some (NamedBody239_130, 1, 239, 4)) (Sum.inl 241) (some (NamedBody239_139, 239, 5))

def NamedBody239_141 : StackLang.HolProg 64 :=
.seq NamedBody239_113 NamedBody239_140

def NamedBody239_142 : StackLang.HolProg 64 :=
.seq NamedBody239_112 NamedBody239_141

def NamedBody239_143 : StackLang.HolProg 64 :=
.seq NamedBody239_111 NamedBody239_142

def NamedBody239_144 : StackLang.HolProg 64 :=
.seq NamedBody239_82 NamedBody239_143

def NamedBody239_145 : StackLang.HolProg 64 :=
.seq NamedBody239_79 NamedBody239_144

def NamedBody239_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody239_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody239_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 459#64)

def NamedBody239_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody239_151 : StackLang.HolProg 64 :=
.seq NamedBody239_149 NamedBody239_150

def NamedBody239_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody239_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody239_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody239_155 : StackLang.HolProg 64 :=
.seq NamedBody239_153 NamedBody239_154

def NamedBody239_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_157 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody239_155 NamedBody239_156

def NamedBody239_158 : StackLang.HolProg 64 :=
.seq NamedBody239_152 NamedBody239_157

def NamedBody239_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody239_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody239_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 239 7

def NamedBody239_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody239_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody239_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody239_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody239_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody239_168 : StackLang.HolProg 64 :=
.seq NamedBody239_166 NamedBody239_167

def NamedBody239_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody239_170 : StackLang.HolProg 64 :=
.seq NamedBody239_168 NamedBody239_169

def NamedBody239_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody239_172 : StackLang.HolProg 64 :=
.seq NamedBody239_170 NamedBody239_171

def NamedBody239_173 : StackLang.HolProg 64 :=
.seq NamedBody239_165 NamedBody239_172

def NamedBody239_174 : StackLang.HolProg 64 :=
.seq NamedBody239_164 NamedBody239_173

def NamedBody239_175 : StackLang.HolProg 64 :=
.seq NamedBody239_163 NamedBody239_174

def NamedBody239_176 : StackLang.HolProg 64 :=
.seq NamedBody239_162 NamedBody239_175

def NamedBody239_177 : StackLang.HolProg 64 :=
.seq NamedBody239_161 NamedBody239_176

def NamedBody239_178 : StackLang.HolProg 64 :=
.seq NamedBody239_160 NamedBody239_177

def NamedBody239_179 : StackLang.HolProg 64 :=
.seq NamedBody239_159 NamedBody239_178

def NamedBody239_180 : StackLang.HolProg 64 :=
.seq NamedBody239_158 NamedBody239_179

def NamedBody239_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody239_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody239_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody239_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody239_188 : StackLang.HolProg 64 :=
.seq NamedBody239_186 NamedBody239_187

def NamedBody239_189 : StackLang.HolProg 64 :=
.seq NamedBody239_185 NamedBody239_188

def NamedBody239_190 : StackLang.HolProg 64 :=
.seq NamedBody239_184 NamedBody239_189

def NamedBody239_191 : StackLang.HolProg 64 :=
.seq NamedBody239_183 NamedBody239_190

def NamedBody239_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody239_193 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody239_194 : StackLang.HolProg 64 :=
.seq NamedBody239_192 NamedBody239_193

def NamedBody239_195 : StackLang.HolProg 64 :=
.call (some (NamedBody239_191, 1, 239, 6)) (Sum.inl 238) (some (NamedBody239_194, 239, 7))

def NamedBody239_196 : StackLang.HolProg 64 :=
.seq NamedBody239_182 NamedBody239_195

def NamedBody239_197 : StackLang.HolProg 64 :=
.seq NamedBody239_181 NamedBody239_196

def NamedBody239_198 : StackLang.HolProg 64 :=
.seq NamedBody239_180 NamedBody239_197

def NamedBody239_199 : StackLang.HolProg 64 :=
.seq NamedBody239_151 NamedBody239_198

def NamedBody239_200 : StackLang.HolProg 64 :=
.seq NamedBody239_148 NamedBody239_199

def NamedBody239_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody239_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody239_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 460#64)

def NamedBody239_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody239_206 : StackLang.HolProg 64 :=
.seq NamedBody239_204 NamedBody239_205

def NamedBody239_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody239_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody239_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody239_210 : StackLang.HolProg 64 :=
.seq NamedBody239_208 NamedBody239_209

def NamedBody239_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody239_210 NamedBody239_211

def NamedBody239_213 : StackLang.HolProg 64 :=
.seq NamedBody239_207 NamedBody239_212

def NamedBody239_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody239_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody239_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 239 9

def NamedBody239_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody239_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody239_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody239_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody239_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody239_223 : StackLang.HolProg 64 :=
.seq NamedBody239_221 NamedBody239_222

def NamedBody239_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody239_225 : StackLang.HolProg 64 :=
.seq NamedBody239_223 NamedBody239_224

def NamedBody239_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody239_227 : StackLang.HolProg 64 :=
.seq NamedBody239_225 NamedBody239_226

def NamedBody239_228 : StackLang.HolProg 64 :=
.seq NamedBody239_220 NamedBody239_227

def NamedBody239_229 : StackLang.HolProg 64 :=
.seq NamedBody239_219 NamedBody239_228

def NamedBody239_230 : StackLang.HolProg 64 :=
.seq NamedBody239_218 NamedBody239_229

def NamedBody239_231 : StackLang.HolProg 64 :=
.seq NamedBody239_217 NamedBody239_230

def NamedBody239_232 : StackLang.HolProg 64 :=
.seq NamedBody239_216 NamedBody239_231

def NamedBody239_233 : StackLang.HolProg 64 :=
.seq NamedBody239_215 NamedBody239_232

def NamedBody239_234 : StackLang.HolProg 64 :=
.seq NamedBody239_214 NamedBody239_233

def NamedBody239_235 : StackLang.HolProg 64 :=
.seq NamedBody239_213 NamedBody239_234

def NamedBody239_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody239_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody239_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody239_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody239_243 : StackLang.HolProg 64 :=
.seq NamedBody239_241 NamedBody239_242

def NamedBody239_244 : StackLang.HolProg 64 :=
.seq NamedBody239_240 NamedBody239_243

def NamedBody239_245 : StackLang.HolProg 64 :=
.seq NamedBody239_239 NamedBody239_244

def NamedBody239_246 : StackLang.HolProg 64 :=
.seq NamedBody239_238 NamedBody239_245

def NamedBody239_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody239_248 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody239_249 : StackLang.HolProg 64 :=
.seq NamedBody239_247 NamedBody239_248

def NamedBody239_250 : StackLang.HolProg 64 :=
.call (some (NamedBody239_246, 1, 239, 8)) (Sum.inl 70) (some (NamedBody239_249, 239, 9))

def NamedBody239_251 : StackLang.HolProg 64 :=
.seq NamedBody239_237 NamedBody239_250

def NamedBody239_252 : StackLang.HolProg 64 :=
.seq NamedBody239_236 NamedBody239_251

def NamedBody239_253 : StackLang.HolProg 64 :=
.seq NamedBody239_235 NamedBody239_252

def NamedBody239_254 : StackLang.HolProg 64 :=
.seq NamedBody239_206 NamedBody239_253

def NamedBody239_255 : StackLang.HolProg 64 :=
.seq NamedBody239_203 NamedBody239_254

def NamedBody239_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody239_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody239_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody239_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody239_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody239_261 : StackLang.HolProg 64 :=
.seq NamedBody239_259 NamedBody239_260

def NamedBody239_262 : StackLang.HolProg 64 :=
.seq NamedBody239_258 NamedBody239_261

def NamedBody239_263 : StackLang.HolProg 64 :=
.seq NamedBody239_257 NamedBody239_262

def NamedBody239_264 : StackLang.HolProg 64 :=
.seq NamedBody239_256 NamedBody239_263

def NamedBody239_265 : StackLang.HolProg 64 :=
.seq NamedBody239_255 NamedBody239_264

def NamedBody239_266 : StackLang.HolProg 64 :=
.seq NamedBody239_202 NamedBody239_265

def NamedBody239_267 : StackLang.HolProg 64 :=
.seq NamedBody239_201 NamedBody239_266

def NamedBody239_268 : StackLang.HolProg 64 :=
.seq NamedBody239_200 NamedBody239_267

def NamedBody239_269 : StackLang.HolProg 64 :=
.seq NamedBody239_147 NamedBody239_268

def NamedBody239_270 : StackLang.HolProg 64 :=
.seq NamedBody239_146 NamedBody239_269

def NamedBody239_271 : StackLang.HolProg 64 :=
.seq NamedBody239_145 NamedBody239_270

def NamedBody239_272 : StackLang.HolProg 64 :=
.seq NamedBody239_78 NamedBody239_271

def NamedBody239_273 : StackLang.HolProg 64 :=
.seq NamedBody239_73 NamedBody239_272

def NamedBody239_274 : StackLang.HolProg 64 :=
.seq NamedBody239_72 NamedBody239_273

def NamedBody239_275 : StackLang.HolProg 64 :=
.seq NamedBody239_13 NamedBody239_274

def NamedBody239_276 : StackLang.HolProg 64 :=
.seq NamedBody239_6 NamedBody239_275

def Named239 : Nat × StackLang.HolProg 64 := (239, NamedBody239_276)
theorem Named239_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed239 = Named239 := by
  kernel_rfl
#print axioms Named239_eq
end InitECandidate.Proofs.BackendStages
