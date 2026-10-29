import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed380
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody380_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody380_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody380_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody380_3 : StackLang.HolProg 64 :=
.seq NamedBody380_1 NamedBody380_2

def NamedBody380_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody380_3 NamedBody380_4

def NamedBody380_6 : StackLang.HolProg 64 :=
.seq NamedBody380_0 NamedBody380_5

def NamedBody380_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody380_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody380_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody380_10 : StackLang.HolProg 64 :=
.seq NamedBody380_8 NamedBody380_9

def NamedBody380_11 : StackLang.HolProg 64 :=
.seq NamedBody380_7 NamedBody380_10

def NamedBody380_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1114#64)

def NamedBody380_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody380_15 : StackLang.HolProg 64 :=
.seq NamedBody380_13 NamedBody380_14

def NamedBody380_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody380_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody380_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody380_19 : StackLang.HolProg 64 :=
.seq NamedBody380_17 NamedBody380_18

def NamedBody380_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody380_19 NamedBody380_20

def NamedBody380_22 : StackLang.HolProg 64 :=
.seq NamedBody380_16 NamedBody380_21

def NamedBody380_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody380_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody380_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 3

def NamedBody380_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody380_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody380_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody380_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody380_32 : StackLang.HolProg 64 :=
.seq NamedBody380_30 NamedBody380_31

def NamedBody380_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody380_34 : StackLang.HolProg 64 :=
.seq NamedBody380_32 NamedBody380_33

def NamedBody380_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_36 : StackLang.HolProg 64 :=
.seq NamedBody380_34 NamedBody380_35

def NamedBody380_37 : StackLang.HolProg 64 :=
.seq NamedBody380_29 NamedBody380_36

def NamedBody380_38 : StackLang.HolProg 64 :=
.seq NamedBody380_28 NamedBody380_37

def NamedBody380_39 : StackLang.HolProg 64 :=
.seq NamedBody380_27 NamedBody380_38

def NamedBody380_40 : StackLang.HolProg 64 :=
.seq NamedBody380_26 NamedBody380_39

def NamedBody380_41 : StackLang.HolProg 64 :=
.seq NamedBody380_25 NamedBody380_40

def NamedBody380_42 : StackLang.HolProg 64 :=
.seq NamedBody380_24 NamedBody380_41

def NamedBody380_43 : StackLang.HolProg 64 :=
.seq NamedBody380_23 NamedBody380_42

def NamedBody380_44 : StackLang.HolProg 64 :=
.seq NamedBody380_22 NamedBody380_43

def NamedBody380_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody380_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody380_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody380_52 : StackLang.HolProg 64 :=
.seq NamedBody380_50 NamedBody380_51

def NamedBody380_53 : StackLang.HolProg 64 :=
.seq NamedBody380_49 NamedBody380_52

def NamedBody380_54 : StackLang.HolProg 64 :=
.seq NamedBody380_48 NamedBody380_53

def NamedBody380_55 : StackLang.HolProg 64 :=
.seq NamedBody380_47 NamedBody380_54

def NamedBody380_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody380_58 : StackLang.HolProg 64 :=
.seq NamedBody380_56 NamedBody380_57

def NamedBody380_59 : StackLang.HolProg 64 :=
.call (some (NamedBody380_55, 1, 380, 2)) (Sum.inl 69) (some (NamedBody380_58, 380, 3))

def NamedBody380_60 : StackLang.HolProg 64 :=
.seq NamedBody380_46 NamedBody380_59

def NamedBody380_61 : StackLang.HolProg 64 :=
.seq NamedBody380_45 NamedBody380_60

def NamedBody380_62 : StackLang.HolProg 64 :=
.seq NamedBody380_44 NamedBody380_61

def NamedBody380_63 : StackLang.HolProg 64 :=
.seq NamedBody380_15 NamedBody380_62

def NamedBody380_64 : StackLang.HolProg 64 :=
.seq NamedBody380_12 NamedBody380_63

def NamedBody380_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody380_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody380_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody380_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1115#64)

def NamedBody380_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody380_71 : StackLang.HolProg 64 :=
.seq NamedBody380_69 NamedBody380_70

def NamedBody380_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody380_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody380_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody380_75 : StackLang.HolProg 64 :=
.seq NamedBody380_73 NamedBody380_74

def NamedBody380_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody380_75 NamedBody380_76

def NamedBody380_78 : StackLang.HolProg 64 :=
.seq NamedBody380_72 NamedBody380_77

def NamedBody380_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody380_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody380_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 5

def NamedBody380_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody380_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody380_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody380_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody380_88 : StackLang.HolProg 64 :=
.seq NamedBody380_86 NamedBody380_87

def NamedBody380_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody380_90 : StackLang.HolProg 64 :=
.seq NamedBody380_88 NamedBody380_89

def NamedBody380_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_92 : StackLang.HolProg 64 :=
.seq NamedBody380_90 NamedBody380_91

def NamedBody380_93 : StackLang.HolProg 64 :=
.seq NamedBody380_85 NamedBody380_92

def NamedBody380_94 : StackLang.HolProg 64 :=
.seq NamedBody380_84 NamedBody380_93

def NamedBody380_95 : StackLang.HolProg 64 :=
.seq NamedBody380_83 NamedBody380_94

def NamedBody380_96 : StackLang.HolProg 64 :=
.seq NamedBody380_82 NamedBody380_95

def NamedBody380_97 : StackLang.HolProg 64 :=
.seq NamedBody380_81 NamedBody380_96

def NamedBody380_98 : StackLang.HolProg 64 :=
.seq NamedBody380_80 NamedBody380_97

def NamedBody380_99 : StackLang.HolProg 64 :=
.seq NamedBody380_79 NamedBody380_98

def NamedBody380_100 : StackLang.HolProg 64 :=
.seq NamedBody380_78 NamedBody380_99

def NamedBody380_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody380_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody380_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody380_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody380_109 : StackLang.HolProg 64 :=
.seq NamedBody380_107 NamedBody380_108

def NamedBody380_110 : StackLang.HolProg 64 :=
.seq NamedBody380_106 NamedBody380_109

def NamedBody380_111 : StackLang.HolProg 64 :=
.seq NamedBody380_105 NamedBody380_110

def NamedBody380_112 : StackLang.HolProg 64 :=
.seq NamedBody380_104 NamedBody380_111

def NamedBody380_113 : StackLang.HolProg 64 :=
.seq NamedBody380_103 NamedBody380_112

def NamedBody380_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody380_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody380_116 : StackLang.HolProg 64 :=
.seq NamedBody380_114 NamedBody380_115

def NamedBody380_117 : StackLang.HolProg 64 :=
.call (some (NamedBody380_113, 1, 380, 4)) (Sum.inl 68) (some (NamedBody380_116, 380, 5))

def NamedBody380_118 : StackLang.HolProg 64 :=
.seq NamedBody380_102 NamedBody380_117

def NamedBody380_119 : StackLang.HolProg 64 :=
.seq NamedBody380_101 NamedBody380_118

def NamedBody380_120 : StackLang.HolProg 64 :=
.seq NamedBody380_100 NamedBody380_119

def NamedBody380_121 : StackLang.HolProg 64 :=
.seq NamedBody380_71 NamedBody380_120

def NamedBody380_122 : StackLang.HolProg 64 :=
.seq NamedBody380_68 NamedBody380_121

def NamedBody380_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody380_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody380_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 64#64)

def NamedBody380_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody380_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1116#64)

def NamedBody380_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody380_132 : StackLang.HolProg 64 :=
.seq NamedBody380_130 NamedBody380_131

def NamedBody380_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody380_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody380_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody380_136 : StackLang.HolProg 64 :=
.seq NamedBody380_134 NamedBody380_135

def NamedBody380_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody380_136 NamedBody380_137

def NamedBody380_139 : StackLang.HolProg 64 :=
.seq NamedBody380_133 NamedBody380_138

def NamedBody380_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody380_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody380_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 7

def NamedBody380_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody380_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody380_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody380_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody380_149 : StackLang.HolProg 64 :=
.seq NamedBody380_147 NamedBody380_148

def NamedBody380_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody380_151 : StackLang.HolProg 64 :=
.seq NamedBody380_149 NamedBody380_150

def NamedBody380_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_153 : StackLang.HolProg 64 :=
.seq NamedBody380_151 NamedBody380_152

def NamedBody380_154 : StackLang.HolProg 64 :=
.seq NamedBody380_146 NamedBody380_153

def NamedBody380_155 : StackLang.HolProg 64 :=
.seq NamedBody380_145 NamedBody380_154

def NamedBody380_156 : StackLang.HolProg 64 :=
.seq NamedBody380_144 NamedBody380_155

def NamedBody380_157 : StackLang.HolProg 64 :=
.seq NamedBody380_143 NamedBody380_156

def NamedBody380_158 : StackLang.HolProg 64 :=
.seq NamedBody380_142 NamedBody380_157

def NamedBody380_159 : StackLang.HolProg 64 :=
.seq NamedBody380_141 NamedBody380_158

def NamedBody380_160 : StackLang.HolProg 64 :=
.seq NamedBody380_140 NamedBody380_159

def NamedBody380_161 : StackLang.HolProg 64 :=
.seq NamedBody380_139 NamedBody380_160

def NamedBody380_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody380_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody380_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody380_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody380_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody380_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody380_172 : StackLang.HolProg 64 :=
.seq NamedBody380_170 NamedBody380_171

def NamedBody380_173 : StackLang.HolProg 64 :=
.seq NamedBody380_169 NamedBody380_172

def NamedBody380_174 : StackLang.HolProg 64 :=
.seq NamedBody380_168 NamedBody380_173

def NamedBody380_175 : StackLang.HolProg 64 :=
.seq NamedBody380_167 NamedBody380_174

def NamedBody380_176 : StackLang.HolProg 64 :=
.seq NamedBody380_166 NamedBody380_175

def NamedBody380_177 : StackLang.HolProg 64 :=
.seq NamedBody380_165 NamedBody380_176

def NamedBody380_178 : StackLang.HolProg 64 :=
.seq NamedBody380_164 NamedBody380_177

def NamedBody380_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody380_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody380_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody380_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody380_183 : StackLang.HolProg 64 :=
.seq NamedBody380_181 NamedBody380_182

def NamedBody380_184 : StackLang.HolProg 64 :=
.seq NamedBody380_180 NamedBody380_183

def NamedBody380_185 : StackLang.HolProg 64 :=
.seq NamedBody380_179 NamedBody380_184

def NamedBody380_186 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody380_187 : StackLang.HolProg 64 :=
.seq NamedBody380_185 NamedBody380_186

def NamedBody380_188 : StackLang.HolProg 64 :=
.call (some (NamedBody380_178, 1, 380, 6)) (Sum.inl 158) (some (NamedBody380_187, 380, 7))

def NamedBody380_189 : StackLang.HolProg 64 :=
.seq NamedBody380_163 NamedBody380_188

def NamedBody380_190 : StackLang.HolProg 64 :=
.seq NamedBody380_162 NamedBody380_189

def NamedBody380_191 : StackLang.HolProg 64 :=
.seq NamedBody380_161 NamedBody380_190

def NamedBody380_192 : StackLang.HolProg 64 :=
.seq NamedBody380_132 NamedBody380_191

def NamedBody380_193 : StackLang.HolProg 64 :=
.seq NamedBody380_129 NamedBody380_192

def NamedBody380_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody380_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody380_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def NamedBody380_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 20#64)

def NamedBody380_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1117#64)

def NamedBody380_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody380_202 : StackLang.HolProg 64 :=
.seq NamedBody380_200 NamedBody380_201

def NamedBody380_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody380_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody380_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody380_206 : StackLang.HolProg 64 :=
.seq NamedBody380_204 NamedBody380_205

def NamedBody380_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_208 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody380_206 NamedBody380_207

def NamedBody380_209 : StackLang.HolProg 64 :=
.seq NamedBody380_203 NamedBody380_208

def NamedBody380_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody380_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody380_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 9

def NamedBody380_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody380_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody380_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody380_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody380_219 : StackLang.HolProg 64 :=
.seq NamedBody380_217 NamedBody380_218

def NamedBody380_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody380_221 : StackLang.HolProg 64 :=
.seq NamedBody380_219 NamedBody380_220

def NamedBody380_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_223 : StackLang.HolProg 64 :=
.seq NamedBody380_221 NamedBody380_222

def NamedBody380_224 : StackLang.HolProg 64 :=
.seq NamedBody380_216 NamedBody380_223

def NamedBody380_225 : StackLang.HolProg 64 :=
.seq NamedBody380_215 NamedBody380_224

def NamedBody380_226 : StackLang.HolProg 64 :=
.seq NamedBody380_214 NamedBody380_225

def NamedBody380_227 : StackLang.HolProg 64 :=
.seq NamedBody380_213 NamedBody380_226

def NamedBody380_228 : StackLang.HolProg 64 :=
.seq NamedBody380_212 NamedBody380_227

def NamedBody380_229 : StackLang.HolProg 64 :=
.seq NamedBody380_211 NamedBody380_228

def NamedBody380_230 : StackLang.HolProg 64 :=
.seq NamedBody380_210 NamedBody380_229

def NamedBody380_231 : StackLang.HolProg 64 :=
.seq NamedBody380_209 NamedBody380_230

def NamedBody380_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody380_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody380_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody380_239 : StackLang.HolProg 64 :=
.seq NamedBody380_237 NamedBody380_238

def NamedBody380_240 : StackLang.HolProg 64 :=
.seq NamedBody380_236 NamedBody380_239

def NamedBody380_241 : StackLang.HolProg 64 :=
.seq NamedBody380_235 NamedBody380_240

def NamedBody380_242 : StackLang.HolProg 64 :=
.seq NamedBody380_234 NamedBody380_241

def NamedBody380_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody380_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody380_245 : StackLang.HolProg 64 :=
.seq NamedBody380_243 NamedBody380_244

def NamedBody380_246 : StackLang.HolProg 64 :=
.call (some (NamedBody380_242, 1, 380, 8)) (Sum.inl 77) (some (NamedBody380_245, 380, 9))

def NamedBody380_247 : StackLang.HolProg 64 :=
.seq NamedBody380_233 NamedBody380_246

def NamedBody380_248 : StackLang.HolProg 64 :=
.seq NamedBody380_232 NamedBody380_247

def NamedBody380_249 : StackLang.HolProg 64 :=
.seq NamedBody380_231 NamedBody380_248

def NamedBody380_250 : StackLang.HolProg 64 :=
.seq NamedBody380_202 NamedBody380_249

def NamedBody380_251 : StackLang.HolProg 64 :=
.seq NamedBody380_199 NamedBody380_250

def NamedBody380_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody380_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody380_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1118#64)

def NamedBody380_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody380_257 : StackLang.HolProg 64 :=
.seq NamedBody380_255 NamedBody380_256

def NamedBody380_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody380_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody380_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody380_261 : StackLang.HolProg 64 :=
.seq NamedBody380_259 NamedBody380_260

def NamedBody380_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_263 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody380_261 NamedBody380_262

def NamedBody380_264 : StackLang.HolProg 64 :=
.seq NamedBody380_258 NamedBody380_263

def NamedBody380_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody380_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody380_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 11

def NamedBody380_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody380_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody380_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody380_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody380_274 : StackLang.HolProg 64 :=
.seq NamedBody380_272 NamedBody380_273

def NamedBody380_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody380_276 : StackLang.HolProg 64 :=
.seq NamedBody380_274 NamedBody380_275

def NamedBody380_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_278 : StackLang.HolProg 64 :=
.seq NamedBody380_276 NamedBody380_277

def NamedBody380_279 : StackLang.HolProg 64 :=
.seq NamedBody380_271 NamedBody380_278

def NamedBody380_280 : StackLang.HolProg 64 :=
.seq NamedBody380_270 NamedBody380_279

def NamedBody380_281 : StackLang.HolProg 64 :=
.seq NamedBody380_269 NamedBody380_280

def NamedBody380_282 : StackLang.HolProg 64 :=
.seq NamedBody380_268 NamedBody380_281

def NamedBody380_283 : StackLang.HolProg 64 :=
.seq NamedBody380_267 NamedBody380_282

def NamedBody380_284 : StackLang.HolProg 64 :=
.seq NamedBody380_266 NamedBody380_283

def NamedBody380_285 : StackLang.HolProg 64 :=
.seq NamedBody380_265 NamedBody380_284

def NamedBody380_286 : StackLang.HolProg 64 :=
.seq NamedBody380_264 NamedBody380_285

def NamedBody380_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody380_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody380_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody380_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody380_294 : StackLang.HolProg 64 :=
.seq NamedBody380_292 NamedBody380_293

def NamedBody380_295 : StackLang.HolProg 64 :=
.seq NamedBody380_291 NamedBody380_294

def NamedBody380_296 : StackLang.HolProg 64 :=
.seq NamedBody380_290 NamedBody380_295

def NamedBody380_297 : StackLang.HolProg 64 :=
.seq NamedBody380_289 NamedBody380_296

def NamedBody380_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody380_299 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody380_300 : StackLang.HolProg 64 :=
.seq NamedBody380_298 NamedBody380_299

def NamedBody380_301 : StackLang.HolProg 64 :=
.call (some (NamedBody380_297, 1, 380, 10)) (Sum.inl 70) (some (NamedBody380_300, 380, 11))

def NamedBody380_302 : StackLang.HolProg 64 :=
.seq NamedBody380_288 NamedBody380_301

def NamedBody380_303 : StackLang.HolProg 64 :=
.seq NamedBody380_287 NamedBody380_302

def NamedBody380_304 : StackLang.HolProg 64 :=
.seq NamedBody380_286 NamedBody380_303

def NamedBody380_305 : StackLang.HolProg 64 :=
.seq NamedBody380_257 NamedBody380_304

def NamedBody380_306 : StackLang.HolProg 64 :=
.seq NamedBody380_254 NamedBody380_305

def NamedBody380_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody380_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody380_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody380_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody380_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody380_312 : StackLang.HolProg 64 :=
.seq NamedBody380_310 NamedBody380_311

def NamedBody380_313 : StackLang.HolProg 64 :=
.seq NamedBody380_309 NamedBody380_312

def NamedBody380_314 : StackLang.HolProg 64 :=
.seq NamedBody380_308 NamedBody380_313

def NamedBody380_315 : StackLang.HolProg 64 :=
.seq NamedBody380_307 NamedBody380_314

def NamedBody380_316 : StackLang.HolProg 64 :=
.seq NamedBody380_306 NamedBody380_315

def NamedBody380_317 : StackLang.HolProg 64 :=
.seq NamedBody380_253 NamedBody380_316

def NamedBody380_318 : StackLang.HolProg 64 :=
.seq NamedBody380_252 NamedBody380_317

def NamedBody380_319 : StackLang.HolProg 64 :=
.seq NamedBody380_251 NamedBody380_318

def NamedBody380_320 : StackLang.HolProg 64 :=
.seq NamedBody380_198 NamedBody380_319

def NamedBody380_321 : StackLang.HolProg 64 :=
.seq NamedBody380_197 NamedBody380_320

def NamedBody380_322 : StackLang.HolProg 64 :=
.seq NamedBody380_196 NamedBody380_321

def NamedBody380_323 : StackLang.HolProg 64 :=
.seq NamedBody380_195 NamedBody380_322

def NamedBody380_324 : StackLang.HolProg 64 :=
.seq NamedBody380_194 NamedBody380_323

def NamedBody380_325 : StackLang.HolProg 64 :=
.seq NamedBody380_193 NamedBody380_324

def NamedBody380_326 : StackLang.HolProg 64 :=
.seq NamedBody380_128 NamedBody380_325

def NamedBody380_327 : StackLang.HolProg 64 :=
.seq NamedBody380_127 NamedBody380_326

def NamedBody380_328 : StackLang.HolProg 64 :=
.seq NamedBody380_126 NamedBody380_327

def NamedBody380_329 : StackLang.HolProg 64 :=
.seq NamedBody380_125 NamedBody380_328

def NamedBody380_330 : StackLang.HolProg 64 :=
.seq NamedBody380_124 NamedBody380_329

def NamedBody380_331 : StackLang.HolProg 64 :=
.seq NamedBody380_123 NamedBody380_330

def NamedBody380_332 : StackLang.HolProg 64 :=
.seq NamedBody380_122 NamedBody380_331

def NamedBody380_333 : StackLang.HolProg 64 :=
.seq NamedBody380_67 NamedBody380_332

def NamedBody380_334 : StackLang.HolProg 64 :=
.seq NamedBody380_66 NamedBody380_333

def NamedBody380_335 : StackLang.HolProg 64 :=
.seq NamedBody380_65 NamedBody380_334

def NamedBody380_336 : StackLang.HolProg 64 :=
.seq NamedBody380_64 NamedBody380_335

def NamedBody380_337 : StackLang.HolProg 64 :=
.seq NamedBody380_11 NamedBody380_336

def NamedBody380_338 : StackLang.HolProg 64 :=
.seq NamedBody380_6 NamedBody380_337

def Named380 : Nat × StackLang.HolProg 64 := (380, NamedBody380_338)
theorem Named380_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed380 = Named380 := by
  kernel_rfl
#print axioms Named380_eq
end InitECandidate.Proofs.BackendStages
