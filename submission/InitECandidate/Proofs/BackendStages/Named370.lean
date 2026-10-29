import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed370
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody370_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody370_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody370_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody370_3 : StackLang.HolProg 64 :=
.seq NamedBody370_1 NamedBody370_2

def NamedBody370_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody370_3 NamedBody370_4

def NamedBody370_6 : StackLang.HolProg 64 :=
.seq NamedBody370_0 NamedBody370_5

def NamedBody370_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody370_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody370_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody370_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody370_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody370_12 : StackLang.HolProg 64 :=
.seq NamedBody370_10 NamedBody370_11

def NamedBody370_13 : StackLang.HolProg 64 :=
.seq NamedBody370_9 NamedBody370_12

def NamedBody370_14 : StackLang.HolProg 64 :=
.seq NamedBody370_8 NamedBody370_13

def NamedBody370_15 : StackLang.HolProg 64 :=
.seq NamedBody370_7 NamedBody370_14

def NamedBody370_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1085#64)

def NamedBody370_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody370_19 : StackLang.HolProg 64 :=
.seq NamedBody370_17 NamedBody370_18

def NamedBody370_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody370_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody370_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody370_23 : StackLang.HolProg 64 :=
.seq NamedBody370_21 NamedBody370_22

def NamedBody370_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody370_23 NamedBody370_24

def NamedBody370_26 : StackLang.HolProg 64 :=
.seq NamedBody370_20 NamedBody370_25

def NamedBody370_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody370_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody370_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 3

def NamedBody370_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody370_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody370_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody370_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody370_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody370_36 : StackLang.HolProg 64 :=
.seq NamedBody370_34 NamedBody370_35

def NamedBody370_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody370_38 : StackLang.HolProg 64 :=
.seq NamedBody370_36 NamedBody370_37

def NamedBody370_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody370_40 : StackLang.HolProg 64 :=
.seq NamedBody370_38 NamedBody370_39

def NamedBody370_41 : StackLang.HolProg 64 :=
.seq NamedBody370_33 NamedBody370_40

def NamedBody370_42 : StackLang.HolProg 64 :=
.seq NamedBody370_32 NamedBody370_41

def NamedBody370_43 : StackLang.HolProg 64 :=
.seq NamedBody370_31 NamedBody370_42

def NamedBody370_44 : StackLang.HolProg 64 :=
.seq NamedBody370_30 NamedBody370_43

def NamedBody370_45 : StackLang.HolProg 64 :=
.seq NamedBody370_29 NamedBody370_44

def NamedBody370_46 : StackLang.HolProg 64 :=
.seq NamedBody370_28 NamedBody370_45

def NamedBody370_47 : StackLang.HolProg 64 :=
.seq NamedBody370_27 NamedBody370_46

def NamedBody370_48 : StackLang.HolProg 64 :=
.seq NamedBody370_26 NamedBody370_47

def NamedBody370_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody370_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody370_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody370_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody370_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody370_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody370_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody370_59 : StackLang.HolProg 64 :=
.seq NamedBody370_57 NamedBody370_58

def NamedBody370_60 : StackLang.HolProg 64 :=
.seq NamedBody370_56 NamedBody370_59

def NamedBody370_61 : StackLang.HolProg 64 :=
.seq NamedBody370_55 NamedBody370_60

def NamedBody370_62 : StackLang.HolProg 64 :=
.seq NamedBody370_54 NamedBody370_61

def NamedBody370_63 : StackLang.HolProg 64 :=
.seq NamedBody370_53 NamedBody370_62

def NamedBody370_64 : StackLang.HolProg 64 :=
.seq NamedBody370_52 NamedBody370_63

def NamedBody370_65 : StackLang.HolProg 64 :=
.seq NamedBody370_51 NamedBody370_64

def NamedBody370_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody370_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody370_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody370_69 : StackLang.HolProg 64 :=
.seq NamedBody370_67 NamedBody370_68

def NamedBody370_70 : StackLang.HolProg 64 :=
.seq NamedBody370_66 NamedBody370_69

def NamedBody370_71 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody370_72 : StackLang.HolProg 64 :=
.seq NamedBody370_70 NamedBody370_71

def NamedBody370_73 : StackLang.HolProg 64 :=
.call (some (NamedBody370_65, 1, 370, 2)) (Sum.inl 69) (some (NamedBody370_72, 370, 3))

def NamedBody370_74 : StackLang.HolProg 64 :=
.seq NamedBody370_50 NamedBody370_73

def NamedBody370_75 : StackLang.HolProg 64 :=
.seq NamedBody370_49 NamedBody370_74

def NamedBody370_76 : StackLang.HolProg 64 :=
.seq NamedBody370_48 NamedBody370_75

def NamedBody370_77 : StackLang.HolProg 64 :=
.seq NamedBody370_19 NamedBody370_76

def NamedBody370_78 : StackLang.HolProg 64 :=
.seq NamedBody370_16 NamedBody370_77

def NamedBody370_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody370_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody370_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody370_82 : StackLang.HolProg 64 :=
.seq NamedBody370_80 NamedBody370_81

def NamedBody370_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1086#64)

def NamedBody370_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody370_86 : StackLang.HolProg 64 :=
.seq NamedBody370_84 NamedBody370_85

def NamedBody370_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody370_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody370_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody370_90 : StackLang.HolProg 64 :=
.seq NamedBody370_88 NamedBody370_89

def NamedBody370_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody370_90 NamedBody370_91

def NamedBody370_93 : StackLang.HolProg 64 :=
.seq NamedBody370_87 NamedBody370_92

def NamedBody370_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody370_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody370_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 5

def NamedBody370_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody370_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody370_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody370_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody370_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody370_103 : StackLang.HolProg 64 :=
.seq NamedBody370_101 NamedBody370_102

def NamedBody370_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody370_105 : StackLang.HolProg 64 :=
.seq NamedBody370_103 NamedBody370_104

def NamedBody370_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody370_107 : StackLang.HolProg 64 :=
.seq NamedBody370_105 NamedBody370_106

def NamedBody370_108 : StackLang.HolProg 64 :=
.seq NamedBody370_100 NamedBody370_107

def NamedBody370_109 : StackLang.HolProg 64 :=
.seq NamedBody370_99 NamedBody370_108

def NamedBody370_110 : StackLang.HolProg 64 :=
.seq NamedBody370_98 NamedBody370_109

def NamedBody370_111 : StackLang.HolProg 64 :=
.seq NamedBody370_97 NamedBody370_110

def NamedBody370_112 : StackLang.HolProg 64 :=
.seq NamedBody370_96 NamedBody370_111

def NamedBody370_113 : StackLang.HolProg 64 :=
.seq NamedBody370_95 NamedBody370_112

def NamedBody370_114 : StackLang.HolProg 64 :=
.seq NamedBody370_94 NamedBody370_113

def NamedBody370_115 : StackLang.HolProg 64 :=
.seq NamedBody370_93 NamedBody370_114

def NamedBody370_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody370_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody370_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody370_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody370_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody370_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody370_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody370_126 : StackLang.HolProg 64 :=
.seq NamedBody370_124 NamedBody370_125

def NamedBody370_127 : StackLang.HolProg 64 :=
.seq NamedBody370_123 NamedBody370_126

def NamedBody370_128 : StackLang.HolProg 64 :=
.seq NamedBody370_122 NamedBody370_127

def NamedBody370_129 : StackLang.HolProg 64 :=
.seq NamedBody370_121 NamedBody370_128

def NamedBody370_130 : StackLang.HolProg 64 :=
.seq NamedBody370_120 NamedBody370_129

def NamedBody370_131 : StackLang.HolProg 64 :=
.seq NamedBody370_119 NamedBody370_130

def NamedBody370_132 : StackLang.HolProg 64 :=
.seq NamedBody370_118 NamedBody370_131

def NamedBody370_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody370_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody370_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody370_136 : StackLang.HolProg 64 :=
.seq NamedBody370_134 NamedBody370_135

def NamedBody370_137 : StackLang.HolProg 64 :=
.seq NamedBody370_133 NamedBody370_136

def NamedBody370_138 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody370_139 : StackLang.HolProg 64 :=
.seq NamedBody370_137 NamedBody370_138

def NamedBody370_140 : StackLang.HolProg 64 :=
.call (some (NamedBody370_132, 1, 370, 4)) (Sum.inl 367) (some (NamedBody370_139, 370, 5))

def NamedBody370_141 : StackLang.HolProg 64 :=
.seq NamedBody370_117 NamedBody370_140

def NamedBody370_142 : StackLang.HolProg 64 :=
.seq NamedBody370_116 NamedBody370_141

def NamedBody370_143 : StackLang.HolProg 64 :=
.seq NamedBody370_115 NamedBody370_142

def NamedBody370_144 : StackLang.HolProg 64 :=
.seq NamedBody370_86 NamedBody370_143

def NamedBody370_145 : StackLang.HolProg 64 :=
.seq NamedBody370_83 NamedBody370_144

def NamedBody370_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody370_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody370_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1087#64)

def NamedBody370_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody370_151 : StackLang.HolProg 64 :=
.seq NamedBody370_149 NamedBody370_150

def NamedBody370_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody370_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody370_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody370_155 : StackLang.HolProg 64 :=
.seq NamedBody370_153 NamedBody370_154

def NamedBody370_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_157 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody370_155 NamedBody370_156

def NamedBody370_158 : StackLang.HolProg 64 :=
.seq NamedBody370_152 NamedBody370_157

def NamedBody370_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody370_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody370_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 7

def NamedBody370_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody370_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody370_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody370_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody370_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody370_168 : StackLang.HolProg 64 :=
.seq NamedBody370_166 NamedBody370_167

def NamedBody370_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody370_170 : StackLang.HolProg 64 :=
.seq NamedBody370_168 NamedBody370_169

def NamedBody370_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody370_172 : StackLang.HolProg 64 :=
.seq NamedBody370_170 NamedBody370_171

def NamedBody370_173 : StackLang.HolProg 64 :=
.seq NamedBody370_165 NamedBody370_172

def NamedBody370_174 : StackLang.HolProg 64 :=
.seq NamedBody370_164 NamedBody370_173

def NamedBody370_175 : StackLang.HolProg 64 :=
.seq NamedBody370_163 NamedBody370_174

def NamedBody370_176 : StackLang.HolProg 64 :=
.seq NamedBody370_162 NamedBody370_175

def NamedBody370_177 : StackLang.HolProg 64 :=
.seq NamedBody370_161 NamedBody370_176

def NamedBody370_178 : StackLang.HolProg 64 :=
.seq NamedBody370_160 NamedBody370_177

def NamedBody370_179 : StackLang.HolProg 64 :=
.seq NamedBody370_159 NamedBody370_178

def NamedBody370_180 : StackLang.HolProg 64 :=
.seq NamedBody370_158 NamedBody370_179

def NamedBody370_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody370_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody370_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody370_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody370_188 : StackLang.HolProg 64 :=
.seq NamedBody370_186 NamedBody370_187

def NamedBody370_189 : StackLang.HolProg 64 :=
.seq NamedBody370_185 NamedBody370_188

def NamedBody370_190 : StackLang.HolProg 64 :=
.seq NamedBody370_184 NamedBody370_189

def NamedBody370_191 : StackLang.HolProg 64 :=
.seq NamedBody370_183 NamedBody370_190

def NamedBody370_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody370_193 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody370_194 : StackLang.HolProg 64 :=
.seq NamedBody370_192 NamedBody370_193

def NamedBody370_195 : StackLang.HolProg 64 :=
.call (some (NamedBody370_191, 1, 370, 6)) (Sum.inl 158) (some (NamedBody370_194, 370, 7))

def NamedBody370_196 : StackLang.HolProg 64 :=
.seq NamedBody370_182 NamedBody370_195

def NamedBody370_197 : StackLang.HolProg 64 :=
.seq NamedBody370_181 NamedBody370_196

def NamedBody370_198 : StackLang.HolProg 64 :=
.seq NamedBody370_180 NamedBody370_197

def NamedBody370_199 : StackLang.HolProg 64 :=
.seq NamedBody370_151 NamedBody370_198

def NamedBody370_200 : StackLang.HolProg 64 :=
.seq NamedBody370_148 NamedBody370_199

def NamedBody370_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody370_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody370_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1088#64)

def NamedBody370_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody370_206 : StackLang.HolProg 64 :=
.seq NamedBody370_204 NamedBody370_205

def NamedBody370_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody370_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody370_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody370_210 : StackLang.HolProg 64 :=
.seq NamedBody370_208 NamedBody370_209

def NamedBody370_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody370_210 NamedBody370_211

def NamedBody370_213 : StackLang.HolProg 64 :=
.seq NamedBody370_207 NamedBody370_212

def NamedBody370_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody370_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody370_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 9

def NamedBody370_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody370_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody370_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody370_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody370_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody370_223 : StackLang.HolProg 64 :=
.seq NamedBody370_221 NamedBody370_222

def NamedBody370_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody370_225 : StackLang.HolProg 64 :=
.seq NamedBody370_223 NamedBody370_224

def NamedBody370_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody370_227 : StackLang.HolProg 64 :=
.seq NamedBody370_225 NamedBody370_226

def NamedBody370_228 : StackLang.HolProg 64 :=
.seq NamedBody370_220 NamedBody370_227

def NamedBody370_229 : StackLang.HolProg 64 :=
.seq NamedBody370_219 NamedBody370_228

def NamedBody370_230 : StackLang.HolProg 64 :=
.seq NamedBody370_218 NamedBody370_229

def NamedBody370_231 : StackLang.HolProg 64 :=
.seq NamedBody370_217 NamedBody370_230

def NamedBody370_232 : StackLang.HolProg 64 :=
.seq NamedBody370_216 NamedBody370_231

def NamedBody370_233 : StackLang.HolProg 64 :=
.seq NamedBody370_215 NamedBody370_232

def NamedBody370_234 : StackLang.HolProg 64 :=
.seq NamedBody370_214 NamedBody370_233

def NamedBody370_235 : StackLang.HolProg 64 :=
.seq NamedBody370_213 NamedBody370_234

def NamedBody370_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody370_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody370_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody370_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody370_243 : StackLang.HolProg 64 :=
.seq NamedBody370_241 NamedBody370_242

def NamedBody370_244 : StackLang.HolProg 64 :=
.seq NamedBody370_240 NamedBody370_243

def NamedBody370_245 : StackLang.HolProg 64 :=
.seq NamedBody370_239 NamedBody370_244

def NamedBody370_246 : StackLang.HolProg 64 :=
.seq NamedBody370_238 NamedBody370_245

def NamedBody370_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody370_248 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody370_249 : StackLang.HolProg 64 :=
.seq NamedBody370_247 NamedBody370_248

def NamedBody370_250 : StackLang.HolProg 64 :=
.call (some (NamedBody370_246, 1, 370, 8)) (Sum.inl 70) (some (NamedBody370_249, 370, 9))

def NamedBody370_251 : StackLang.HolProg 64 :=
.seq NamedBody370_237 NamedBody370_250

def NamedBody370_252 : StackLang.HolProg 64 :=
.seq NamedBody370_236 NamedBody370_251

def NamedBody370_253 : StackLang.HolProg 64 :=
.seq NamedBody370_235 NamedBody370_252

def NamedBody370_254 : StackLang.HolProg 64 :=
.seq NamedBody370_206 NamedBody370_253

def NamedBody370_255 : StackLang.HolProg 64 :=
.seq NamedBody370_203 NamedBody370_254

def NamedBody370_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody370_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody370_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody370_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody370_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody370_261 : StackLang.HolProg 64 :=
.seq NamedBody370_259 NamedBody370_260

def NamedBody370_262 : StackLang.HolProg 64 :=
.seq NamedBody370_258 NamedBody370_261

def NamedBody370_263 : StackLang.HolProg 64 :=
.seq NamedBody370_257 NamedBody370_262

def NamedBody370_264 : StackLang.HolProg 64 :=
.seq NamedBody370_256 NamedBody370_263

def NamedBody370_265 : StackLang.HolProg 64 :=
.seq NamedBody370_255 NamedBody370_264

def NamedBody370_266 : StackLang.HolProg 64 :=
.seq NamedBody370_202 NamedBody370_265

def NamedBody370_267 : StackLang.HolProg 64 :=
.seq NamedBody370_201 NamedBody370_266

def NamedBody370_268 : StackLang.HolProg 64 :=
.seq NamedBody370_200 NamedBody370_267

def NamedBody370_269 : StackLang.HolProg 64 :=
.seq NamedBody370_147 NamedBody370_268

def NamedBody370_270 : StackLang.HolProg 64 :=
.seq NamedBody370_146 NamedBody370_269

def NamedBody370_271 : StackLang.HolProg 64 :=
.seq NamedBody370_145 NamedBody370_270

def NamedBody370_272 : StackLang.HolProg 64 :=
.seq NamedBody370_82 NamedBody370_271

def NamedBody370_273 : StackLang.HolProg 64 :=
.seq NamedBody370_79 NamedBody370_272

def NamedBody370_274 : StackLang.HolProg 64 :=
.seq NamedBody370_78 NamedBody370_273

def NamedBody370_275 : StackLang.HolProg 64 :=
.seq NamedBody370_15 NamedBody370_274

def NamedBody370_276 : StackLang.HolProg 64 :=
.seq NamedBody370_6 NamedBody370_275

def Named370 : Nat × StackLang.HolProg 64 := (370, NamedBody370_276)
theorem Named370_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed370 = Named370 := by
  kernel_rfl
#print axioms Named370_eq
end InitECandidate.Proofs.BackendStages
