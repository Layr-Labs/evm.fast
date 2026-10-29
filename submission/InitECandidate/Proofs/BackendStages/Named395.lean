import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed395
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody395_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody395_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody395_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody395_3 : StackLang.HolProg 64 :=
.seq NamedBody395_1 NamedBody395_2

def NamedBody395_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody395_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody395_3 NamedBody395_4

def NamedBody395_6 : StackLang.HolProg 64 :=
.seq NamedBody395_0 NamedBody395_5

def NamedBody395_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody395_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 56#64)

def NamedBody395_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody395_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody395_11 : StackLang.HolProg 64 :=
.seq NamedBody395_9 NamedBody395_10

def NamedBody395_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody395_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1173#64)

def NamedBody395_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody395_15 : StackLang.HolProg 64 :=
.seq NamedBody395_13 NamedBody395_14

def NamedBody395_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody395_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody395_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody395_19 : StackLang.HolProg 64 :=
.seq NamedBody395_17 NamedBody395_18

def NamedBody395_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody395_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody395_19 NamedBody395_20

def NamedBody395_22 : StackLang.HolProg 64 :=
.seq NamedBody395_16 NamedBody395_21

def NamedBody395_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody395_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody395_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 395 3

def NamedBody395_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody395_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody395_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody395_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody395_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody395_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody395_32 : StackLang.HolProg 64 :=
.seq NamedBody395_30 NamedBody395_31

def NamedBody395_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody395_34 : StackLang.HolProg 64 :=
.seq NamedBody395_32 NamedBody395_33

def NamedBody395_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody395_36 : StackLang.HolProg 64 :=
.seq NamedBody395_34 NamedBody395_35

def NamedBody395_37 : StackLang.HolProg 64 :=
.seq NamedBody395_29 NamedBody395_36

def NamedBody395_38 : StackLang.HolProg 64 :=
.seq NamedBody395_28 NamedBody395_37

def NamedBody395_39 : StackLang.HolProg 64 :=
.seq NamedBody395_27 NamedBody395_38

def NamedBody395_40 : StackLang.HolProg 64 :=
.seq NamedBody395_26 NamedBody395_39

def NamedBody395_41 : StackLang.HolProg 64 :=
.seq NamedBody395_25 NamedBody395_40

def NamedBody395_42 : StackLang.HolProg 64 :=
.seq NamedBody395_24 NamedBody395_41

def NamedBody395_43 : StackLang.HolProg 64 :=
.seq NamedBody395_23 NamedBody395_42

def NamedBody395_44 : StackLang.HolProg 64 :=
.seq NamedBody395_22 NamedBody395_43

def NamedBody395_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody395_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody395_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody395_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody395_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody395_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody395_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody395_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody395_53 : StackLang.HolProg 64 :=
.seq NamedBody395_51 NamedBody395_52

def NamedBody395_54 : StackLang.HolProg 64 :=
.seq NamedBody395_50 NamedBody395_53

def NamedBody395_55 : StackLang.HolProg 64 :=
.seq NamedBody395_49 NamedBody395_54

def NamedBody395_56 : StackLang.HolProg 64 :=
.seq NamedBody395_48 NamedBody395_55

def NamedBody395_57 : StackLang.HolProg 64 :=
.seq NamedBody395_47 NamedBody395_56

def NamedBody395_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody395_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody395_60 : StackLang.HolProg 64 :=
.seq NamedBody395_58 NamedBody395_59

def NamedBody395_61 : StackLang.HolProg 64 :=
.call (some (NamedBody395_57, 1, 395, 2)) (Sum.inl 68) (some (NamedBody395_60, 395, 3))

def NamedBody395_62 : StackLang.HolProg 64 :=
.seq NamedBody395_46 NamedBody395_61

def NamedBody395_63 : StackLang.HolProg 64 :=
.seq NamedBody395_45 NamedBody395_62

def NamedBody395_64 : StackLang.HolProg 64 :=
.seq NamedBody395_44 NamedBody395_63

def NamedBody395_65 : StackLang.HolProg 64 :=
.seq NamedBody395_15 NamedBody395_64

def NamedBody395_66 : StackLang.HolProg 64 :=
.seq NamedBody395_12 NamedBody395_65

def NamedBody395_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody395_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody395_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 56#64)

def NamedBody395_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody395_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody395_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1174#64)

def NamedBody395_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody395_74 : StackLang.HolProg 64 :=
.seq NamedBody395_72 NamedBody395_73

def NamedBody395_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody395_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody395_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody395_78 : StackLang.HolProg 64 :=
.seq NamedBody395_76 NamedBody395_77

def NamedBody395_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody395_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody395_78 NamedBody395_79

def NamedBody395_81 : StackLang.HolProg 64 :=
.seq NamedBody395_75 NamedBody395_80

def NamedBody395_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody395_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody395_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 395 5

def NamedBody395_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody395_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody395_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody395_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody395_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody395_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody395_91 : StackLang.HolProg 64 :=
.seq NamedBody395_89 NamedBody395_90

def NamedBody395_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody395_93 : StackLang.HolProg 64 :=
.seq NamedBody395_91 NamedBody395_92

def NamedBody395_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody395_95 : StackLang.HolProg 64 :=
.seq NamedBody395_93 NamedBody395_94

def NamedBody395_96 : StackLang.HolProg 64 :=
.seq NamedBody395_88 NamedBody395_95

def NamedBody395_97 : StackLang.HolProg 64 :=
.seq NamedBody395_87 NamedBody395_96

def NamedBody395_98 : StackLang.HolProg 64 :=
.seq NamedBody395_86 NamedBody395_97

def NamedBody395_99 : StackLang.HolProg 64 :=
.seq NamedBody395_85 NamedBody395_98

def NamedBody395_100 : StackLang.HolProg 64 :=
.seq NamedBody395_84 NamedBody395_99

def NamedBody395_101 : StackLang.HolProg 64 :=
.seq NamedBody395_83 NamedBody395_100

def NamedBody395_102 : StackLang.HolProg 64 :=
.seq NamedBody395_82 NamedBody395_101

def NamedBody395_103 : StackLang.HolProg 64 :=
.seq NamedBody395_81 NamedBody395_102

def NamedBody395_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody395_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody395_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody395_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody395_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody395_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody395_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody395_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody395_112 : StackLang.HolProg 64 :=
.seq NamedBody395_110 NamedBody395_111

def NamedBody395_113 : StackLang.HolProg 64 :=
.seq NamedBody395_109 NamedBody395_112

def NamedBody395_114 : StackLang.HolProg 64 :=
.seq NamedBody395_108 NamedBody395_113

def NamedBody395_115 : StackLang.HolProg 64 :=
.seq NamedBody395_107 NamedBody395_114

def NamedBody395_116 : StackLang.HolProg 64 :=
.seq NamedBody395_106 NamedBody395_115

def NamedBody395_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody395_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody395_119 : StackLang.HolProg 64 :=
.seq NamedBody395_117 NamedBody395_118

def NamedBody395_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody395_121 : StackLang.HolProg 64 :=
.seq NamedBody395_119 NamedBody395_120

def NamedBody395_122 : StackLang.HolProg 64 :=
.call (some (NamedBody395_116, 1, 395, 4)) (Sum.inl 77) (some (NamedBody395_121, 395, 5))

def NamedBody395_123 : StackLang.HolProg 64 :=
.seq NamedBody395_105 NamedBody395_122

def NamedBody395_124 : StackLang.HolProg 64 :=
.seq NamedBody395_104 NamedBody395_123

def NamedBody395_125 : StackLang.HolProg 64 :=
.seq NamedBody395_103 NamedBody395_124

def NamedBody395_126 : StackLang.HolProg 64 :=
.seq NamedBody395_74 NamedBody395_125

def NamedBody395_127 : StackLang.HolProg 64 :=
.seq NamedBody395_71 NamedBody395_126

def NamedBody395_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody395_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody395_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody395_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody395_132 : StackLang.HolProg 64 :=
.seq NamedBody395_130 NamedBody395_131

def NamedBody395_133 : StackLang.HolProg 64 :=
.seq NamedBody395_129 NamedBody395_132

def NamedBody395_134 : StackLang.HolProg 64 :=
.seq NamedBody395_128 NamedBody395_133

def NamedBody395_135 : StackLang.HolProg 64 :=
.seq NamedBody395_127 NamedBody395_134

def NamedBody395_136 : StackLang.HolProg 64 :=
.seq NamedBody395_70 NamedBody395_135

def NamedBody395_137 : StackLang.HolProg 64 :=
.seq NamedBody395_69 NamedBody395_136

def NamedBody395_138 : StackLang.HolProg 64 :=
.seq NamedBody395_68 NamedBody395_137

def NamedBody395_139 : StackLang.HolProg 64 :=
.seq NamedBody395_67 NamedBody395_138

def NamedBody395_140 : StackLang.HolProg 64 :=
.seq NamedBody395_66 NamedBody395_139

def NamedBody395_141 : StackLang.HolProg 64 :=
.seq NamedBody395_11 NamedBody395_140

def NamedBody395_142 : StackLang.HolProg 64 :=
.seq NamedBody395_8 NamedBody395_141

def NamedBody395_143 : StackLang.HolProg 64 :=
.seq NamedBody395_7 NamedBody395_142

def NamedBody395_144 : StackLang.HolProg 64 :=
.seq NamedBody395_6 NamedBody395_143

def Named395 : Nat × StackLang.HolProg 64 := (395, NamedBody395_144)
theorem Named395_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed395 = Named395 := by
  kernel_rfl
#print axioms Named395_eq
end InitECandidate.Proofs.BackendStages
