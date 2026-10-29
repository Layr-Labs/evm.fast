import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed682
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody682_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody682_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_3 : StackLang.HolProg 64 :=
.seq NamedBody682_1 NamedBody682_2

def NamedBody682_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_3 NamedBody682_4

def NamedBody682_6 : StackLang.HolProg 64 :=
.seq NamedBody682_0 NamedBody682_5

def NamedBody682_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody682_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody682_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_14 : StackLang.HolProg 64 :=
.seq NamedBody682_12 NamedBody682_13

def NamedBody682_15 : StackLang.HolProg 64 :=
.seq NamedBody682_11 NamedBody682_14

def NamedBody682_16 : StackLang.HolProg 64 :=
.seq NamedBody682_10 NamedBody682_15

def NamedBody682_17 : StackLang.HolProg 64 :=
.seq NamedBody682_9 NamedBody682_16

def NamedBody682_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2797#64)

def NamedBody682_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_21 : StackLang.HolProg 64 :=
.seq NamedBody682_19 NamedBody682_20

def NamedBody682_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_25 : StackLang.HolProg 64 :=
.seq NamedBody682_23 NamedBody682_24

def NamedBody682_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_25 NamedBody682_26

def NamedBody682_28 : StackLang.HolProg 64 :=
.seq NamedBody682_22 NamedBody682_27

def NamedBody682_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 3

def NamedBody682_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_38 : StackLang.HolProg 64 :=
.seq NamedBody682_36 NamedBody682_37

def NamedBody682_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_40 : StackLang.HolProg 64 :=
.seq NamedBody682_38 NamedBody682_39

def NamedBody682_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_42 : StackLang.HolProg 64 :=
.seq NamedBody682_40 NamedBody682_41

def NamedBody682_43 : StackLang.HolProg 64 :=
.seq NamedBody682_35 NamedBody682_42

def NamedBody682_44 : StackLang.HolProg 64 :=
.seq NamedBody682_34 NamedBody682_43

def NamedBody682_45 : StackLang.HolProg 64 :=
.seq NamedBody682_33 NamedBody682_44

def NamedBody682_46 : StackLang.HolProg 64 :=
.seq NamedBody682_32 NamedBody682_45

def NamedBody682_47 : StackLang.HolProg 64 :=
.seq NamedBody682_31 NamedBody682_46

def NamedBody682_48 : StackLang.HolProg 64 :=
.seq NamedBody682_30 NamedBody682_47

def NamedBody682_49 : StackLang.HolProg 64 :=
.seq NamedBody682_29 NamedBody682_48

def NamedBody682_50 : StackLang.HolProg 64 :=
.seq NamedBody682_28 NamedBody682_49

def NamedBody682_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody682_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_60 : StackLang.HolProg 64 :=
.seq NamedBody682_58 NamedBody682_59

def NamedBody682_61 : StackLang.HolProg 64 :=
.seq NamedBody682_57 NamedBody682_60

def NamedBody682_62 : StackLang.HolProg 64 :=
.seq NamedBody682_56 NamedBody682_61

def NamedBody682_63 : StackLang.HolProg 64 :=
.seq NamedBody682_55 NamedBody682_62

def NamedBody682_64 : StackLang.HolProg 64 :=
.seq NamedBody682_54 NamedBody682_63

def NamedBody682_65 : StackLang.HolProg 64 :=
.seq NamedBody682_53 NamedBody682_64

def NamedBody682_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_68 : StackLang.HolProg 64 :=
.seq NamedBody682_66 NamedBody682_67

def NamedBody682_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_70 : StackLang.HolProg 64 :=
.seq NamedBody682_68 NamedBody682_69

def NamedBody682_71 : StackLang.HolProg 64 :=
.call (some (NamedBody682_65, 1, 682, 2)) (Sum.inl 69) (some (NamedBody682_70, 682, 3))

def NamedBody682_72 : StackLang.HolProg 64 :=
.seq NamedBody682_52 NamedBody682_71

def NamedBody682_73 : StackLang.HolProg 64 :=
.seq NamedBody682_51 NamedBody682_72

def NamedBody682_74 : StackLang.HolProg 64 :=
.seq NamedBody682_50 NamedBody682_73

def NamedBody682_75 : StackLang.HolProg 64 :=
.seq NamedBody682_21 NamedBody682_74

def NamedBody682_76 : StackLang.HolProg 64 :=
.seq NamedBody682_18 NamedBody682_75

def NamedBody682_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody682_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody682_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody682_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody682_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_89 : StackLang.HolProg 64 :=
.seq NamedBody682_87 NamedBody682_88

def NamedBody682_90 : StackLang.HolProg 64 :=
.seq NamedBody682_86 NamedBody682_89

def NamedBody682_91 : StackLang.HolProg 64 :=
.seq NamedBody682_85 NamedBody682_90

def NamedBody682_92 : StackLang.HolProg 64 :=
.seq NamedBody682_84 NamedBody682_91

def NamedBody682_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2798#64)

def NamedBody682_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_96 : StackLang.HolProg 64 :=
.seq NamedBody682_94 NamedBody682_95

def NamedBody682_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_100 : StackLang.HolProg 64 :=
.seq NamedBody682_98 NamedBody682_99

def NamedBody682_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_102 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_100 NamedBody682_101

def NamedBody682_103 : StackLang.HolProg 64 :=
.seq NamedBody682_97 NamedBody682_102

def NamedBody682_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 5

def NamedBody682_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_113 : StackLang.HolProg 64 :=
.seq NamedBody682_111 NamedBody682_112

def NamedBody682_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_115 : StackLang.HolProg 64 :=
.seq NamedBody682_113 NamedBody682_114

def NamedBody682_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_117 : StackLang.HolProg 64 :=
.seq NamedBody682_115 NamedBody682_116

def NamedBody682_118 : StackLang.HolProg 64 :=
.seq NamedBody682_110 NamedBody682_117

def NamedBody682_119 : StackLang.HolProg 64 :=
.seq NamedBody682_109 NamedBody682_118

def NamedBody682_120 : StackLang.HolProg 64 :=
.seq NamedBody682_108 NamedBody682_119

def NamedBody682_121 : StackLang.HolProg 64 :=
.seq NamedBody682_107 NamedBody682_120

def NamedBody682_122 : StackLang.HolProg 64 :=
.seq NamedBody682_106 NamedBody682_121

def NamedBody682_123 : StackLang.HolProg 64 :=
.seq NamedBody682_105 NamedBody682_122

def NamedBody682_124 : StackLang.HolProg 64 :=
.seq NamedBody682_104 NamedBody682_123

def NamedBody682_125 : StackLang.HolProg 64 :=
.seq NamedBody682_103 NamedBody682_124

def NamedBody682_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody682_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_134 : StackLang.HolProg 64 :=
.seq NamedBody682_132 NamedBody682_133

def NamedBody682_135 : StackLang.HolProg 64 :=
.seq NamedBody682_131 NamedBody682_134

def NamedBody682_136 : StackLang.HolProg 64 :=
.seq NamedBody682_130 NamedBody682_135

def NamedBody682_137 : StackLang.HolProg 64 :=
.seq NamedBody682_129 NamedBody682_136

def NamedBody682_138 : StackLang.HolProg 64 :=
.seq NamedBody682_128 NamedBody682_137

def NamedBody682_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_141 : StackLang.HolProg 64 :=
.seq NamedBody682_139 NamedBody682_140

def NamedBody682_142 : StackLang.HolProg 64 :=
.call (some (NamedBody682_138, 1, 682, 4)) (Sum.inl 68) (some (NamedBody682_141, 682, 5))

def NamedBody682_143 : StackLang.HolProg 64 :=
.seq NamedBody682_127 NamedBody682_142

def NamedBody682_144 : StackLang.HolProg 64 :=
.seq NamedBody682_126 NamedBody682_143

def NamedBody682_145 : StackLang.HolProg 64 :=
.seq NamedBody682_125 NamedBody682_144

def NamedBody682_146 : StackLang.HolProg 64 :=
.seq NamedBody682_96 NamedBody682_145

def NamedBody682_147 : StackLang.HolProg 64 :=
.seq NamedBody682_93 NamedBody682_146

def NamedBody682_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_152 : StackLang.HolProg 64 :=
.seq NamedBody682_150 NamedBody682_151

def NamedBody682_153 : StackLang.HolProg 64 :=
.seq NamedBody682_149 NamedBody682_152

def NamedBody682_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2799#64)

def NamedBody682_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_157 : StackLang.HolProg 64 :=
.seq NamedBody682_155 NamedBody682_156

def NamedBody682_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_161 : StackLang.HolProg 64 :=
.seq NamedBody682_159 NamedBody682_160

def NamedBody682_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_163 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_161 NamedBody682_162

def NamedBody682_164 : StackLang.HolProg 64 :=
.seq NamedBody682_158 NamedBody682_163

def NamedBody682_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 7

def NamedBody682_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_174 : StackLang.HolProg 64 :=
.seq NamedBody682_172 NamedBody682_173

def NamedBody682_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_176 : StackLang.HolProg 64 :=
.seq NamedBody682_174 NamedBody682_175

def NamedBody682_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_178 : StackLang.HolProg 64 :=
.seq NamedBody682_176 NamedBody682_177

def NamedBody682_179 : StackLang.HolProg 64 :=
.seq NamedBody682_171 NamedBody682_178

def NamedBody682_180 : StackLang.HolProg 64 :=
.seq NamedBody682_170 NamedBody682_179

def NamedBody682_181 : StackLang.HolProg 64 :=
.seq NamedBody682_169 NamedBody682_180

def NamedBody682_182 : StackLang.HolProg 64 :=
.seq NamedBody682_168 NamedBody682_181

def NamedBody682_183 : StackLang.HolProg 64 :=
.seq NamedBody682_167 NamedBody682_182

def NamedBody682_184 : StackLang.HolProg 64 :=
.seq NamedBody682_166 NamedBody682_183

def NamedBody682_185 : StackLang.HolProg 64 :=
.seq NamedBody682_165 NamedBody682_184

def NamedBody682_186 : StackLang.HolProg 64 :=
.seq NamedBody682_164 NamedBody682_185

def NamedBody682_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody682_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_195 : StackLang.HolProg 64 :=
.seq NamedBody682_193 NamedBody682_194

def NamedBody682_196 : StackLang.HolProg 64 :=
.seq NamedBody682_192 NamedBody682_195

def NamedBody682_197 : StackLang.HolProg 64 :=
.seq NamedBody682_191 NamedBody682_196

def NamedBody682_198 : StackLang.HolProg 64 :=
.seq NamedBody682_190 NamedBody682_197

def NamedBody682_199 : StackLang.HolProg 64 :=
.seq NamedBody682_189 NamedBody682_198

def NamedBody682_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_202 : StackLang.HolProg 64 :=
.seq NamedBody682_200 NamedBody682_201

def NamedBody682_203 : StackLang.HolProg 64 :=
.call (some (NamedBody682_199, 1, 682, 6)) (Sum.inl 68) (some (NamedBody682_202, 682, 7))

def NamedBody682_204 : StackLang.HolProg 64 :=
.seq NamedBody682_188 NamedBody682_203

def NamedBody682_205 : StackLang.HolProg 64 :=
.seq NamedBody682_187 NamedBody682_204

def NamedBody682_206 : StackLang.HolProg 64 :=
.seq NamedBody682_186 NamedBody682_205

def NamedBody682_207 : StackLang.HolProg 64 :=
.seq NamedBody682_157 NamedBody682_206

def NamedBody682_208 : StackLang.HolProg 64 :=
.seq NamedBody682_154 NamedBody682_207

def NamedBody682_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_213 : StackLang.HolProg 64 :=
.seq NamedBody682_211 NamedBody682_212

def NamedBody682_214 : StackLang.HolProg 64 :=
.seq NamedBody682_210 NamedBody682_213

def NamedBody682_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2800#64)

def NamedBody682_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_218 : StackLang.HolProg 64 :=
.seq NamedBody682_216 NamedBody682_217

def NamedBody682_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_222 : StackLang.HolProg 64 :=
.seq NamedBody682_220 NamedBody682_221

def NamedBody682_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_224 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_222 NamedBody682_223

def NamedBody682_225 : StackLang.HolProg 64 :=
.seq NamedBody682_219 NamedBody682_224

def NamedBody682_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 9

def NamedBody682_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_235 : StackLang.HolProg 64 :=
.seq NamedBody682_233 NamedBody682_234

def NamedBody682_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_237 : StackLang.HolProg 64 :=
.seq NamedBody682_235 NamedBody682_236

def NamedBody682_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_239 : StackLang.HolProg 64 :=
.seq NamedBody682_237 NamedBody682_238

def NamedBody682_240 : StackLang.HolProg 64 :=
.seq NamedBody682_232 NamedBody682_239

def NamedBody682_241 : StackLang.HolProg 64 :=
.seq NamedBody682_231 NamedBody682_240

def NamedBody682_242 : StackLang.HolProg 64 :=
.seq NamedBody682_230 NamedBody682_241

def NamedBody682_243 : StackLang.HolProg 64 :=
.seq NamedBody682_229 NamedBody682_242

def NamedBody682_244 : StackLang.HolProg 64 :=
.seq NamedBody682_228 NamedBody682_243

def NamedBody682_245 : StackLang.HolProg 64 :=
.seq NamedBody682_227 NamedBody682_244

def NamedBody682_246 : StackLang.HolProg 64 :=
.seq NamedBody682_226 NamedBody682_245

def NamedBody682_247 : StackLang.HolProg 64 :=
.seq NamedBody682_225 NamedBody682_246

def NamedBody682_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody682_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_256 : StackLang.HolProg 64 :=
.seq NamedBody682_254 NamedBody682_255

def NamedBody682_257 : StackLang.HolProg 64 :=
.seq NamedBody682_253 NamedBody682_256

def NamedBody682_258 : StackLang.HolProg 64 :=
.seq NamedBody682_252 NamedBody682_257

def NamedBody682_259 : StackLang.HolProg 64 :=
.seq NamedBody682_251 NamedBody682_258

def NamedBody682_260 : StackLang.HolProg 64 :=
.seq NamedBody682_250 NamedBody682_259

def NamedBody682_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_262 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_263 : StackLang.HolProg 64 :=
.seq NamedBody682_261 NamedBody682_262

def NamedBody682_264 : StackLang.HolProg 64 :=
.call (some (NamedBody682_260, 1, 682, 8)) (Sum.inl 68) (some (NamedBody682_263, 682, 9))

def NamedBody682_265 : StackLang.HolProg 64 :=
.seq NamedBody682_249 NamedBody682_264

def NamedBody682_266 : StackLang.HolProg 64 :=
.seq NamedBody682_248 NamedBody682_265

def NamedBody682_267 : StackLang.HolProg 64 :=
.seq NamedBody682_247 NamedBody682_266

def NamedBody682_268 : StackLang.HolProg 64 :=
.seq NamedBody682_218 NamedBody682_267

def NamedBody682_269 : StackLang.HolProg 64 :=
.seq NamedBody682_215 NamedBody682_268

def NamedBody682_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_274 : StackLang.HolProg 64 :=
.seq NamedBody682_272 NamedBody682_273

def NamedBody682_275 : StackLang.HolProg 64 :=
.seq NamedBody682_271 NamedBody682_274

def NamedBody682_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2801#64)

def NamedBody682_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_279 : StackLang.HolProg 64 :=
.seq NamedBody682_277 NamedBody682_278

def NamedBody682_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_283 : StackLang.HolProg 64 :=
.seq NamedBody682_281 NamedBody682_282

def NamedBody682_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_285 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_283 NamedBody682_284

def NamedBody682_286 : StackLang.HolProg 64 :=
.seq NamedBody682_280 NamedBody682_285

def NamedBody682_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 11

def NamedBody682_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_296 : StackLang.HolProg 64 :=
.seq NamedBody682_294 NamedBody682_295

def NamedBody682_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_298 : StackLang.HolProg 64 :=
.seq NamedBody682_296 NamedBody682_297

def NamedBody682_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_300 : StackLang.HolProg 64 :=
.seq NamedBody682_298 NamedBody682_299

def NamedBody682_301 : StackLang.HolProg 64 :=
.seq NamedBody682_293 NamedBody682_300

def NamedBody682_302 : StackLang.HolProg 64 :=
.seq NamedBody682_292 NamedBody682_301

def NamedBody682_303 : StackLang.HolProg 64 :=
.seq NamedBody682_291 NamedBody682_302

def NamedBody682_304 : StackLang.HolProg 64 :=
.seq NamedBody682_290 NamedBody682_303

def NamedBody682_305 : StackLang.HolProg 64 :=
.seq NamedBody682_289 NamedBody682_304

def NamedBody682_306 : StackLang.HolProg 64 :=
.seq NamedBody682_288 NamedBody682_305

def NamedBody682_307 : StackLang.HolProg 64 :=
.seq NamedBody682_287 NamedBody682_306

def NamedBody682_308 : StackLang.HolProg 64 :=
.seq NamedBody682_286 NamedBody682_307

def NamedBody682_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody682_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_317 : StackLang.HolProg 64 :=
.seq NamedBody682_315 NamedBody682_316

def NamedBody682_318 : StackLang.HolProg 64 :=
.seq NamedBody682_314 NamedBody682_317

def NamedBody682_319 : StackLang.HolProg 64 :=
.seq NamedBody682_313 NamedBody682_318

def NamedBody682_320 : StackLang.HolProg 64 :=
.seq NamedBody682_312 NamedBody682_319

def NamedBody682_321 : StackLang.HolProg 64 :=
.seq NamedBody682_311 NamedBody682_320

def NamedBody682_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_323 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_324 : StackLang.HolProg 64 :=
.seq NamedBody682_322 NamedBody682_323

def NamedBody682_325 : StackLang.HolProg 64 :=
.call (some (NamedBody682_321, 1, 682, 10)) (Sum.inl 68) (some (NamedBody682_324, 682, 11))

def NamedBody682_326 : StackLang.HolProg 64 :=
.seq NamedBody682_310 NamedBody682_325

def NamedBody682_327 : StackLang.HolProg 64 :=
.seq NamedBody682_309 NamedBody682_326

def NamedBody682_328 : StackLang.HolProg 64 :=
.seq NamedBody682_308 NamedBody682_327

def NamedBody682_329 : StackLang.HolProg 64 :=
.seq NamedBody682_279 NamedBody682_328

def NamedBody682_330 : StackLang.HolProg 64 :=
.seq NamedBody682_276 NamedBody682_329

def NamedBody682_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_335 : StackLang.HolProg 64 :=
.seq NamedBody682_333 NamedBody682_334

def NamedBody682_336 : StackLang.HolProg 64 :=
.seq NamedBody682_332 NamedBody682_335

def NamedBody682_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2802#64)

def NamedBody682_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_340 : StackLang.HolProg 64 :=
.seq NamedBody682_338 NamedBody682_339

def NamedBody682_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_344 : StackLang.HolProg 64 :=
.seq NamedBody682_342 NamedBody682_343

def NamedBody682_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_346 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_344 NamedBody682_345

def NamedBody682_347 : StackLang.HolProg 64 :=
.seq NamedBody682_341 NamedBody682_346

def NamedBody682_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 13

def NamedBody682_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_357 : StackLang.HolProg 64 :=
.seq NamedBody682_355 NamedBody682_356

def NamedBody682_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_359 : StackLang.HolProg 64 :=
.seq NamedBody682_357 NamedBody682_358

def NamedBody682_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_361 : StackLang.HolProg 64 :=
.seq NamedBody682_359 NamedBody682_360

def NamedBody682_362 : StackLang.HolProg 64 :=
.seq NamedBody682_354 NamedBody682_361

def NamedBody682_363 : StackLang.HolProg 64 :=
.seq NamedBody682_353 NamedBody682_362

def NamedBody682_364 : StackLang.HolProg 64 :=
.seq NamedBody682_352 NamedBody682_363

def NamedBody682_365 : StackLang.HolProg 64 :=
.seq NamedBody682_351 NamedBody682_364

def NamedBody682_366 : StackLang.HolProg 64 :=
.seq NamedBody682_350 NamedBody682_365

def NamedBody682_367 : StackLang.HolProg 64 :=
.seq NamedBody682_349 NamedBody682_366

def NamedBody682_368 : StackLang.HolProg 64 :=
.seq NamedBody682_348 NamedBody682_367

def NamedBody682_369 : StackLang.HolProg 64 :=
.seq NamedBody682_347 NamedBody682_368

def NamedBody682_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody682_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_378 : StackLang.HolProg 64 :=
.seq NamedBody682_376 NamedBody682_377

def NamedBody682_379 : StackLang.HolProg 64 :=
.seq NamedBody682_375 NamedBody682_378

def NamedBody682_380 : StackLang.HolProg 64 :=
.seq NamedBody682_374 NamedBody682_379

def NamedBody682_381 : StackLang.HolProg 64 :=
.seq NamedBody682_373 NamedBody682_380

def NamedBody682_382 : StackLang.HolProg 64 :=
.seq NamedBody682_372 NamedBody682_381

def NamedBody682_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_384 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_385 : StackLang.HolProg 64 :=
.seq NamedBody682_383 NamedBody682_384

def NamedBody682_386 : StackLang.HolProg 64 :=
.call (some (NamedBody682_382, 1, 682, 12)) (Sum.inl 68) (some (NamedBody682_385, 682, 13))

def NamedBody682_387 : StackLang.HolProg 64 :=
.seq NamedBody682_371 NamedBody682_386

def NamedBody682_388 : StackLang.HolProg 64 :=
.seq NamedBody682_370 NamedBody682_387

def NamedBody682_389 : StackLang.HolProg 64 :=
.seq NamedBody682_369 NamedBody682_388

def NamedBody682_390 : StackLang.HolProg 64 :=
.seq NamedBody682_340 NamedBody682_389

def NamedBody682_391 : StackLang.HolProg 64 :=
.seq NamedBody682_337 NamedBody682_390

def NamedBody682_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_396 : StackLang.HolProg 64 :=
.seq NamedBody682_394 NamedBody682_395

def NamedBody682_397 : StackLang.HolProg 64 :=
.seq NamedBody682_393 NamedBody682_396

def NamedBody682_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2803#64)

def NamedBody682_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_401 : StackLang.HolProg 64 :=
.seq NamedBody682_399 NamedBody682_400

def NamedBody682_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_405 : StackLang.HolProg 64 :=
.seq NamedBody682_403 NamedBody682_404

def NamedBody682_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_407 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_405 NamedBody682_406

def NamedBody682_408 : StackLang.HolProg 64 :=
.seq NamedBody682_402 NamedBody682_407

def NamedBody682_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 15

def NamedBody682_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_418 : StackLang.HolProg 64 :=
.seq NamedBody682_416 NamedBody682_417

def NamedBody682_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_420 : StackLang.HolProg 64 :=
.seq NamedBody682_418 NamedBody682_419

def NamedBody682_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_422 : StackLang.HolProg 64 :=
.seq NamedBody682_420 NamedBody682_421

def NamedBody682_423 : StackLang.HolProg 64 :=
.seq NamedBody682_415 NamedBody682_422

def NamedBody682_424 : StackLang.HolProg 64 :=
.seq NamedBody682_414 NamedBody682_423

def NamedBody682_425 : StackLang.HolProg 64 :=
.seq NamedBody682_413 NamedBody682_424

def NamedBody682_426 : StackLang.HolProg 64 :=
.seq NamedBody682_412 NamedBody682_425

def NamedBody682_427 : StackLang.HolProg 64 :=
.seq NamedBody682_411 NamedBody682_426

def NamedBody682_428 : StackLang.HolProg 64 :=
.seq NamedBody682_410 NamedBody682_427

def NamedBody682_429 : StackLang.HolProg 64 :=
.seq NamedBody682_409 NamedBody682_428

def NamedBody682_430 : StackLang.HolProg 64 :=
.seq NamedBody682_408 NamedBody682_429

def NamedBody682_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody682_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_439 : StackLang.HolProg 64 :=
.seq NamedBody682_437 NamedBody682_438

def NamedBody682_440 : StackLang.HolProg 64 :=
.seq NamedBody682_436 NamedBody682_439

def NamedBody682_441 : StackLang.HolProg 64 :=
.seq NamedBody682_435 NamedBody682_440

def NamedBody682_442 : StackLang.HolProg 64 :=
.seq NamedBody682_434 NamedBody682_441

def NamedBody682_443 : StackLang.HolProg 64 :=
.seq NamedBody682_433 NamedBody682_442

def NamedBody682_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_445 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_446 : StackLang.HolProg 64 :=
.seq NamedBody682_444 NamedBody682_445

def NamedBody682_447 : StackLang.HolProg 64 :=
.call (some (NamedBody682_443, 1, 682, 14)) (Sum.inl 68) (some (NamedBody682_446, 682, 15))

def NamedBody682_448 : StackLang.HolProg 64 :=
.seq NamedBody682_432 NamedBody682_447

def NamedBody682_449 : StackLang.HolProg 64 :=
.seq NamedBody682_431 NamedBody682_448

def NamedBody682_450 : StackLang.HolProg 64 :=
.seq NamedBody682_430 NamedBody682_449

def NamedBody682_451 : StackLang.HolProg 64 :=
.seq NamedBody682_401 NamedBody682_450

def NamedBody682_452 : StackLang.HolProg 64 :=
.seq NamedBody682_398 NamedBody682_451

def NamedBody682_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_457 : StackLang.HolProg 64 :=
.seq NamedBody682_455 NamedBody682_456

def NamedBody682_458 : StackLang.HolProg 64 :=
.seq NamedBody682_454 NamedBody682_457

def NamedBody682_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2804#64)

def NamedBody682_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_462 : StackLang.HolProg 64 :=
.seq NamedBody682_460 NamedBody682_461

def NamedBody682_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_466 : StackLang.HolProg 64 :=
.seq NamedBody682_464 NamedBody682_465

def NamedBody682_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_468 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_466 NamedBody682_467

def NamedBody682_469 : StackLang.HolProg 64 :=
.seq NamedBody682_463 NamedBody682_468

def NamedBody682_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 17

def NamedBody682_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_479 : StackLang.HolProg 64 :=
.seq NamedBody682_477 NamedBody682_478

def NamedBody682_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_481 : StackLang.HolProg 64 :=
.seq NamedBody682_479 NamedBody682_480

def NamedBody682_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_483 : StackLang.HolProg 64 :=
.seq NamedBody682_481 NamedBody682_482

def NamedBody682_484 : StackLang.HolProg 64 :=
.seq NamedBody682_476 NamedBody682_483

def NamedBody682_485 : StackLang.HolProg 64 :=
.seq NamedBody682_475 NamedBody682_484

def NamedBody682_486 : StackLang.HolProg 64 :=
.seq NamedBody682_474 NamedBody682_485

def NamedBody682_487 : StackLang.HolProg 64 :=
.seq NamedBody682_473 NamedBody682_486

def NamedBody682_488 : StackLang.HolProg 64 :=
.seq NamedBody682_472 NamedBody682_487

def NamedBody682_489 : StackLang.HolProg 64 :=
.seq NamedBody682_471 NamedBody682_488

def NamedBody682_490 : StackLang.HolProg 64 :=
.seq NamedBody682_470 NamedBody682_489

def NamedBody682_491 : StackLang.HolProg 64 :=
.seq NamedBody682_469 NamedBody682_490

def NamedBody682_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody682_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_502 : StackLang.HolProg 64 :=
.seq NamedBody682_500 NamedBody682_501

def NamedBody682_503 : StackLang.HolProg 64 :=
.seq NamedBody682_499 NamedBody682_502

def NamedBody682_504 : StackLang.HolProg 64 :=
.seq NamedBody682_498 NamedBody682_503

def NamedBody682_505 : StackLang.HolProg 64 :=
.seq NamedBody682_497 NamedBody682_504

def NamedBody682_506 : StackLang.HolProg 64 :=
.seq NamedBody682_496 NamedBody682_505

def NamedBody682_507 : StackLang.HolProg 64 :=
.seq NamedBody682_495 NamedBody682_506

def NamedBody682_508 : StackLang.HolProg 64 :=
.seq NamedBody682_494 NamedBody682_507

def NamedBody682_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_512 : StackLang.HolProg 64 :=
.seq NamedBody682_510 NamedBody682_511

def NamedBody682_513 : StackLang.HolProg 64 :=
.seq NamedBody682_509 NamedBody682_512

def NamedBody682_514 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_515 : StackLang.HolProg 64 :=
.seq NamedBody682_513 NamedBody682_514

def NamedBody682_516 : StackLang.HolProg 64 :=
.call (some (NamedBody682_508, 1, 682, 16)) (Sum.inl 68) (some (NamedBody682_515, 682, 17))

def NamedBody682_517 : StackLang.HolProg 64 :=
.seq NamedBody682_493 NamedBody682_516

def NamedBody682_518 : StackLang.HolProg 64 :=
.seq NamedBody682_492 NamedBody682_517

def NamedBody682_519 : StackLang.HolProg 64 :=
.seq NamedBody682_491 NamedBody682_518

def NamedBody682_520 : StackLang.HolProg 64 :=
.seq NamedBody682_462 NamedBody682_519

def NamedBody682_521 : StackLang.HolProg 64 :=
.seq NamedBody682_459 NamedBody682_520

def NamedBody682_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_528 : StackLang.HolProg 64 :=
.seq NamedBody682_526 NamedBody682_527

def NamedBody682_529 : StackLang.HolProg 64 :=
.seq NamedBody682_525 NamedBody682_528

def NamedBody682_530 : StackLang.HolProg 64 :=
.seq NamedBody682_524 NamedBody682_529

def NamedBody682_531 : StackLang.HolProg 64 :=
.seq NamedBody682_523 NamedBody682_530

def NamedBody682_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2805#64)

def NamedBody682_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_535 : StackLang.HolProg 64 :=
.seq NamedBody682_533 NamedBody682_534

def NamedBody682_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_539 : StackLang.HolProg 64 :=
.seq NamedBody682_537 NamedBody682_538

def NamedBody682_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_541 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_539 NamedBody682_540

def NamedBody682_542 : StackLang.HolProg 64 :=
.seq NamedBody682_536 NamedBody682_541

def NamedBody682_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 19

def NamedBody682_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_552 : StackLang.HolProg 64 :=
.seq NamedBody682_550 NamedBody682_551

def NamedBody682_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_554 : StackLang.HolProg 64 :=
.seq NamedBody682_552 NamedBody682_553

def NamedBody682_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_556 : StackLang.HolProg 64 :=
.seq NamedBody682_554 NamedBody682_555

def NamedBody682_557 : StackLang.HolProg 64 :=
.seq NamedBody682_549 NamedBody682_556

def NamedBody682_558 : StackLang.HolProg 64 :=
.seq NamedBody682_548 NamedBody682_557

def NamedBody682_559 : StackLang.HolProg 64 :=
.seq NamedBody682_547 NamedBody682_558

def NamedBody682_560 : StackLang.HolProg 64 :=
.seq NamedBody682_546 NamedBody682_559

def NamedBody682_561 : StackLang.HolProg 64 :=
.seq NamedBody682_545 NamedBody682_560

def NamedBody682_562 : StackLang.HolProg 64 :=
.seq NamedBody682_544 NamedBody682_561

def NamedBody682_563 : StackLang.HolProg 64 :=
.seq NamedBody682_543 NamedBody682_562

def NamedBody682_564 : StackLang.HolProg 64 :=
.seq NamedBody682_542 NamedBody682_563

def NamedBody682_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_574 : StackLang.HolProg 64 :=
.seq NamedBody682_572 NamedBody682_573

def NamedBody682_575 : StackLang.HolProg 64 :=
.seq NamedBody682_571 NamedBody682_574

def NamedBody682_576 : StackLang.HolProg 64 :=
.seq NamedBody682_570 NamedBody682_575

def NamedBody682_577 : StackLang.HolProg 64 :=
.seq NamedBody682_569 NamedBody682_576

def NamedBody682_578 : StackLang.HolProg 64 :=
.seq NamedBody682_568 NamedBody682_577

def NamedBody682_579 : StackLang.HolProg 64 :=
.seq NamedBody682_567 NamedBody682_578

def NamedBody682_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_583 : StackLang.HolProg 64 :=
.seq NamedBody682_581 NamedBody682_582

def NamedBody682_584 : StackLang.HolProg 64 :=
.seq NamedBody682_580 NamedBody682_583

def NamedBody682_585 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_586 : StackLang.HolProg 64 :=
.seq NamedBody682_584 NamedBody682_585

def NamedBody682_587 : StackLang.HolProg 64 :=
.call (some (NamedBody682_579, 1, 682, 18)) (Sum.inl 671) (some (NamedBody682_586, 682, 19))

def NamedBody682_588 : StackLang.HolProg 64 :=
.seq NamedBody682_566 NamedBody682_587

def NamedBody682_589 : StackLang.HolProg 64 :=
.seq NamedBody682_565 NamedBody682_588

def NamedBody682_590 : StackLang.HolProg 64 :=
.seq NamedBody682_564 NamedBody682_589

def NamedBody682_591 : StackLang.HolProg 64 :=
.seq NamedBody682_535 NamedBody682_590

def NamedBody682_592 : StackLang.HolProg 64 :=
.seq NamedBody682_532 NamedBody682_591

def NamedBody682_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 3#64)

def NamedBody682_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_599 : StackLang.HolProg 64 :=
.seq NamedBody682_597 NamedBody682_598

def NamedBody682_600 : StackLang.HolProg 64 :=
.seq NamedBody682_596 NamedBody682_599

def NamedBody682_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2806#64)

def NamedBody682_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_604 : StackLang.HolProg 64 :=
.seq NamedBody682_602 NamedBody682_603

def NamedBody682_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_608 : StackLang.HolProg 64 :=
.seq NamedBody682_606 NamedBody682_607

def NamedBody682_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_610 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_608 NamedBody682_609

def NamedBody682_611 : StackLang.HolProg 64 :=
.seq NamedBody682_605 NamedBody682_610

def NamedBody682_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 21

def NamedBody682_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_621 : StackLang.HolProg 64 :=
.seq NamedBody682_619 NamedBody682_620

def NamedBody682_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_623 : StackLang.HolProg 64 :=
.seq NamedBody682_621 NamedBody682_622

def NamedBody682_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_625 : StackLang.HolProg 64 :=
.seq NamedBody682_623 NamedBody682_624

def NamedBody682_626 : StackLang.HolProg 64 :=
.seq NamedBody682_618 NamedBody682_625

def NamedBody682_627 : StackLang.HolProg 64 :=
.seq NamedBody682_617 NamedBody682_626

def NamedBody682_628 : StackLang.HolProg 64 :=
.seq NamedBody682_616 NamedBody682_627

def NamedBody682_629 : StackLang.HolProg 64 :=
.seq NamedBody682_615 NamedBody682_628

def NamedBody682_630 : StackLang.HolProg 64 :=
.seq NamedBody682_614 NamedBody682_629

def NamedBody682_631 : StackLang.HolProg 64 :=
.seq NamedBody682_613 NamedBody682_630

def NamedBody682_632 : StackLang.HolProg 64 :=
.seq NamedBody682_612 NamedBody682_631

def NamedBody682_633 : StackLang.HolProg 64 :=
.seq NamedBody682_611 NamedBody682_632

def NamedBody682_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody682_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody682_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody682_646 : StackLang.HolProg 64 :=
.seq NamedBody682_644 NamedBody682_645

def NamedBody682_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_649 : StackLang.HolProg 64 :=
.seq NamedBody682_647 NamedBody682_648

def NamedBody682_650 : StackLang.HolProg 64 :=
.seq NamedBody682_646 NamedBody682_649

def NamedBody682_651 : StackLang.HolProg 64 :=
.seq NamedBody682_643 NamedBody682_650

def NamedBody682_652 : StackLang.HolProg 64 :=
.seq NamedBody682_642 NamedBody682_651

def NamedBody682_653 : StackLang.HolProg 64 :=
.seq NamedBody682_641 NamedBody682_652

def NamedBody682_654 : StackLang.HolProg 64 :=
.seq NamedBody682_640 NamedBody682_653

def NamedBody682_655 : StackLang.HolProg 64 :=
.seq NamedBody682_639 NamedBody682_654

def NamedBody682_656 : StackLang.HolProg 64 :=
.seq NamedBody682_638 NamedBody682_655

def NamedBody682_657 : StackLang.HolProg 64 :=
.seq NamedBody682_637 NamedBody682_656

def NamedBody682_658 : StackLang.HolProg 64 :=
.seq NamedBody682_636 NamedBody682_657

def NamedBody682_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody682_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody682_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody682_665 : StackLang.HolProg 64 :=
.seq NamedBody682_663 NamedBody682_664

def NamedBody682_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_668 : StackLang.HolProg 64 :=
.seq NamedBody682_666 NamedBody682_667

def NamedBody682_669 : StackLang.HolProg 64 :=
.seq NamedBody682_665 NamedBody682_668

def NamedBody682_670 : StackLang.HolProg 64 :=
.seq NamedBody682_662 NamedBody682_669

def NamedBody682_671 : StackLang.HolProg 64 :=
.seq NamedBody682_661 NamedBody682_670

def NamedBody682_672 : StackLang.HolProg 64 :=
.seq NamedBody682_660 NamedBody682_671

def NamedBody682_673 : StackLang.HolProg 64 :=
.seq NamedBody682_659 NamedBody682_672

def NamedBody682_674 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_675 : StackLang.HolProg 64 :=
.seq NamedBody682_673 NamedBody682_674

def NamedBody682_676 : StackLang.HolProg 64 :=
.call (some (NamedBody682_658, 1, 682, 20)) (Sum.inl 675) (some (NamedBody682_675, 682, 21))

def NamedBody682_677 : StackLang.HolProg 64 :=
.seq NamedBody682_635 NamedBody682_676

def NamedBody682_678 : StackLang.HolProg 64 :=
.seq NamedBody682_634 NamedBody682_677

def NamedBody682_679 : StackLang.HolProg 64 :=
.seq NamedBody682_633 NamedBody682_678

def NamedBody682_680 : StackLang.HolProg 64 :=
.seq NamedBody682_604 NamedBody682_679

def NamedBody682_681 : StackLang.HolProg 64 :=
.seq NamedBody682_601 NamedBody682_680

def NamedBody682_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody682_687 : StackLang.HolProg 64 :=
.seq NamedBody682_685 NamedBody682_686

def NamedBody682_688 : StackLang.HolProg 64 :=
.seq NamedBody682_684 NamedBody682_687

def NamedBody682_689 : StackLang.HolProg 64 :=
.seq NamedBody682_683 NamedBody682_688

def NamedBody682_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2807#64)

def NamedBody682_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_693 : StackLang.HolProg 64 :=
.seq NamedBody682_691 NamedBody682_692

def NamedBody682_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_697 : StackLang.HolProg 64 :=
.seq NamedBody682_695 NamedBody682_696

def NamedBody682_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_699 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_697 NamedBody682_698

def NamedBody682_700 : StackLang.HolProg 64 :=
.seq NamedBody682_694 NamedBody682_699

def NamedBody682_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 23

def NamedBody682_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_710 : StackLang.HolProg 64 :=
.seq NamedBody682_708 NamedBody682_709

def NamedBody682_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_712 : StackLang.HolProg 64 :=
.seq NamedBody682_710 NamedBody682_711

def NamedBody682_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_714 : StackLang.HolProg 64 :=
.seq NamedBody682_712 NamedBody682_713

def NamedBody682_715 : StackLang.HolProg 64 :=
.seq NamedBody682_707 NamedBody682_714

def NamedBody682_716 : StackLang.HolProg 64 :=
.seq NamedBody682_706 NamedBody682_715

def NamedBody682_717 : StackLang.HolProg 64 :=
.seq NamedBody682_705 NamedBody682_716

def NamedBody682_718 : StackLang.HolProg 64 :=
.seq NamedBody682_704 NamedBody682_717

def NamedBody682_719 : StackLang.HolProg 64 :=
.seq NamedBody682_703 NamedBody682_718

def NamedBody682_720 : StackLang.HolProg 64 :=
.seq NamedBody682_702 NamedBody682_719

def NamedBody682_721 : StackLang.HolProg 64 :=
.seq NamedBody682_701 NamedBody682_720

def NamedBody682_722 : StackLang.HolProg 64 :=
.seq NamedBody682_700 NamedBody682_721

def NamedBody682_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody682_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody682_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody682_735 : StackLang.HolProg 64 :=
.seq NamedBody682_733 NamedBody682_734

def NamedBody682_736 : StackLang.HolProg 64 :=
.seq NamedBody682_732 NamedBody682_735

def NamedBody682_737 : StackLang.HolProg 64 :=
.seq NamedBody682_731 NamedBody682_736

def NamedBody682_738 : StackLang.HolProg 64 :=
.seq NamedBody682_730 NamedBody682_737

def NamedBody682_739 : StackLang.HolProg 64 :=
.seq NamedBody682_729 NamedBody682_738

def NamedBody682_740 : StackLang.HolProg 64 :=
.seq NamedBody682_728 NamedBody682_739

def NamedBody682_741 : StackLang.HolProg 64 :=
.seq NamedBody682_727 NamedBody682_740

def NamedBody682_742 : StackLang.HolProg 64 :=
.seq NamedBody682_726 NamedBody682_741

def NamedBody682_743 : StackLang.HolProg 64 :=
.seq NamedBody682_725 NamedBody682_742

def NamedBody682_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody682_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody682_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody682_750 : StackLang.HolProg 64 :=
.seq NamedBody682_748 NamedBody682_749

def NamedBody682_751 : StackLang.HolProg 64 :=
.seq NamedBody682_747 NamedBody682_750

def NamedBody682_752 : StackLang.HolProg 64 :=
.seq NamedBody682_746 NamedBody682_751

def NamedBody682_753 : StackLang.HolProg 64 :=
.seq NamedBody682_745 NamedBody682_752

def NamedBody682_754 : StackLang.HolProg 64 :=
.seq NamedBody682_744 NamedBody682_753

def NamedBody682_755 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_756 : StackLang.HolProg 64 :=
.seq NamedBody682_754 NamedBody682_755

def NamedBody682_757 : StackLang.HolProg 64 :=
.call (some (NamedBody682_743, 1, 682, 22)) (Sum.inl 670) (some (NamedBody682_756, 682, 23))

def NamedBody682_758 : StackLang.HolProg 64 :=
.seq NamedBody682_724 NamedBody682_757

def NamedBody682_759 : StackLang.HolProg 64 :=
.seq NamedBody682_723 NamedBody682_758

def NamedBody682_760 : StackLang.HolProg 64 :=
.seq NamedBody682_722 NamedBody682_759

def NamedBody682_761 : StackLang.HolProg 64 :=
.seq NamedBody682_693 NamedBody682_760

def NamedBody682_762 : StackLang.HolProg 64 :=
.seq NamedBody682_690 NamedBody682_761

def NamedBody682_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody682_768 : StackLang.HolProg 64 :=
.seq NamedBody682_766 NamedBody682_767

def NamedBody682_769 : StackLang.HolProg 64 :=
.seq NamedBody682_765 NamedBody682_768

def NamedBody682_770 : StackLang.HolProg 64 :=
.seq NamedBody682_764 NamedBody682_769

def NamedBody682_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2808#64)

def NamedBody682_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_774 : StackLang.HolProg 64 :=
.seq NamedBody682_772 NamedBody682_773

def NamedBody682_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_778 : StackLang.HolProg 64 :=
.seq NamedBody682_776 NamedBody682_777

def NamedBody682_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_780 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_778 NamedBody682_779

def NamedBody682_781 : StackLang.HolProg 64 :=
.seq NamedBody682_775 NamedBody682_780

def NamedBody682_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 25

def NamedBody682_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_791 : StackLang.HolProg 64 :=
.seq NamedBody682_789 NamedBody682_790

def NamedBody682_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_793 : StackLang.HolProg 64 :=
.seq NamedBody682_791 NamedBody682_792

def NamedBody682_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_795 : StackLang.HolProg 64 :=
.seq NamedBody682_793 NamedBody682_794

def NamedBody682_796 : StackLang.HolProg 64 :=
.seq NamedBody682_788 NamedBody682_795

def NamedBody682_797 : StackLang.HolProg 64 :=
.seq NamedBody682_787 NamedBody682_796

def NamedBody682_798 : StackLang.HolProg 64 :=
.seq NamedBody682_786 NamedBody682_797

def NamedBody682_799 : StackLang.HolProg 64 :=
.seq NamedBody682_785 NamedBody682_798

def NamedBody682_800 : StackLang.HolProg 64 :=
.seq NamedBody682_784 NamedBody682_799

def NamedBody682_801 : StackLang.HolProg 64 :=
.seq NamedBody682_783 NamedBody682_800

def NamedBody682_802 : StackLang.HolProg 64 :=
.seq NamedBody682_782 NamedBody682_801

def NamedBody682_803 : StackLang.HolProg 64 :=
.seq NamedBody682_781 NamedBody682_802

def NamedBody682_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_814 : StackLang.HolProg 64 :=
.seq NamedBody682_812 NamedBody682_813

def NamedBody682_815 : StackLang.HolProg 64 :=
.seq NamedBody682_811 NamedBody682_814

def NamedBody682_816 : StackLang.HolProg 64 :=
.seq NamedBody682_810 NamedBody682_815

def NamedBody682_817 : StackLang.HolProg 64 :=
.seq NamedBody682_809 NamedBody682_816

def NamedBody682_818 : StackLang.HolProg 64 :=
.seq NamedBody682_808 NamedBody682_817

def NamedBody682_819 : StackLang.HolProg 64 :=
.seq NamedBody682_807 NamedBody682_818

def NamedBody682_820 : StackLang.HolProg 64 :=
.seq NamedBody682_806 NamedBody682_819

def NamedBody682_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_825 : StackLang.HolProg 64 :=
.seq NamedBody682_823 NamedBody682_824

def NamedBody682_826 : StackLang.HolProg 64 :=
.seq NamedBody682_822 NamedBody682_825

def NamedBody682_827 : StackLang.HolProg 64 :=
.seq NamedBody682_821 NamedBody682_826

def NamedBody682_828 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_829 : StackLang.HolProg 64 :=
.seq NamedBody682_827 NamedBody682_828

def NamedBody682_830 : StackLang.HolProg 64 :=
.call (some (NamedBody682_820, 1, 682, 24)) (Sum.inl 670) (some (NamedBody682_829, 682, 25))

def NamedBody682_831 : StackLang.HolProg 64 :=
.seq NamedBody682_805 NamedBody682_830

def NamedBody682_832 : StackLang.HolProg 64 :=
.seq NamedBody682_804 NamedBody682_831

def NamedBody682_833 : StackLang.HolProg 64 :=
.seq NamedBody682_803 NamedBody682_832

def NamedBody682_834 : StackLang.HolProg 64 :=
.seq NamedBody682_774 NamedBody682_833

def NamedBody682_835 : StackLang.HolProg 64 :=
.seq NamedBody682_771 NamedBody682_834

def NamedBody682_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_842 : StackLang.HolProg 64 :=
.seq NamedBody682_840 NamedBody682_841

def NamedBody682_843 : StackLang.HolProg 64 :=
.seq NamedBody682_839 NamedBody682_842

def NamedBody682_844 : StackLang.HolProg 64 :=
.seq NamedBody682_838 NamedBody682_843

def NamedBody682_845 : StackLang.HolProg 64 :=
.seq NamedBody682_837 NamedBody682_844

def NamedBody682_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2809#64)

def NamedBody682_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_849 : StackLang.HolProg 64 :=
.seq NamedBody682_847 NamedBody682_848

def NamedBody682_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_853 : StackLang.HolProg 64 :=
.seq NamedBody682_851 NamedBody682_852

def NamedBody682_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_855 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_853 NamedBody682_854

def NamedBody682_856 : StackLang.HolProg 64 :=
.seq NamedBody682_850 NamedBody682_855

def NamedBody682_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 27

def NamedBody682_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_866 : StackLang.HolProg 64 :=
.seq NamedBody682_864 NamedBody682_865

def NamedBody682_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_868 : StackLang.HolProg 64 :=
.seq NamedBody682_866 NamedBody682_867

def NamedBody682_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_870 : StackLang.HolProg 64 :=
.seq NamedBody682_868 NamedBody682_869

def NamedBody682_871 : StackLang.HolProg 64 :=
.seq NamedBody682_863 NamedBody682_870

def NamedBody682_872 : StackLang.HolProg 64 :=
.seq NamedBody682_862 NamedBody682_871

def NamedBody682_873 : StackLang.HolProg 64 :=
.seq NamedBody682_861 NamedBody682_872

def NamedBody682_874 : StackLang.HolProg 64 :=
.seq NamedBody682_860 NamedBody682_873

def NamedBody682_875 : StackLang.HolProg 64 :=
.seq NamedBody682_859 NamedBody682_874

def NamedBody682_876 : StackLang.HolProg 64 :=
.seq NamedBody682_858 NamedBody682_875

def NamedBody682_877 : StackLang.HolProg 64 :=
.seq NamedBody682_857 NamedBody682_876

def NamedBody682_878 : StackLang.HolProg 64 :=
.seq NamedBody682_856 NamedBody682_877

def NamedBody682_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_887 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_888 : StackLang.HolProg 64 :=
.seq NamedBody682_886 NamedBody682_887

def NamedBody682_889 : StackLang.HolProg 64 :=
.seq NamedBody682_885 NamedBody682_888

def NamedBody682_890 : StackLang.HolProg 64 :=
.seq NamedBody682_884 NamedBody682_889

def NamedBody682_891 : StackLang.HolProg 64 :=
.seq NamedBody682_883 NamedBody682_890

def NamedBody682_892 : StackLang.HolProg 64 :=
.seq NamedBody682_882 NamedBody682_891

def NamedBody682_893 : StackLang.HolProg 64 :=
.seq NamedBody682_881 NamedBody682_892

def NamedBody682_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_897 : StackLang.HolProg 64 :=
.seq NamedBody682_895 NamedBody682_896

def NamedBody682_898 : StackLang.HolProg 64 :=
.seq NamedBody682_894 NamedBody682_897

def NamedBody682_899 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_900 : StackLang.HolProg 64 :=
.seq NamedBody682_898 NamedBody682_899

def NamedBody682_901 : StackLang.HolProg 64 :=
.call (some (NamedBody682_893, 1, 682, 26)) (Sum.inl 670) (some (NamedBody682_900, 682, 27))

def NamedBody682_902 : StackLang.HolProg 64 :=
.seq NamedBody682_880 NamedBody682_901

def NamedBody682_903 : StackLang.HolProg 64 :=
.seq NamedBody682_879 NamedBody682_902

def NamedBody682_904 : StackLang.HolProg 64 :=
.seq NamedBody682_878 NamedBody682_903

def NamedBody682_905 : StackLang.HolProg 64 :=
.seq NamedBody682_849 NamedBody682_904

def NamedBody682_906 : StackLang.HolProg 64 :=
.seq NamedBody682_846 NamedBody682_905

def NamedBody682_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_912 : StackLang.HolProg 64 :=
.seq NamedBody682_910 NamedBody682_911

def NamedBody682_913 : StackLang.HolProg 64 :=
.seq NamedBody682_909 NamedBody682_912

def NamedBody682_914 : StackLang.HolProg 64 :=
.seq NamedBody682_908 NamedBody682_913

def NamedBody682_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2810#64)

def NamedBody682_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_918 : StackLang.HolProg 64 :=
.seq NamedBody682_916 NamedBody682_917

def NamedBody682_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_922 : StackLang.HolProg 64 :=
.seq NamedBody682_920 NamedBody682_921

def NamedBody682_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_924 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_922 NamedBody682_923

def NamedBody682_925 : StackLang.HolProg 64 :=
.seq NamedBody682_919 NamedBody682_924

def NamedBody682_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 29

def NamedBody682_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_935 : StackLang.HolProg 64 :=
.seq NamedBody682_933 NamedBody682_934

def NamedBody682_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_937 : StackLang.HolProg 64 :=
.seq NamedBody682_935 NamedBody682_936

def NamedBody682_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_939 : StackLang.HolProg 64 :=
.seq NamedBody682_937 NamedBody682_938

def NamedBody682_940 : StackLang.HolProg 64 :=
.seq NamedBody682_932 NamedBody682_939

def NamedBody682_941 : StackLang.HolProg 64 :=
.seq NamedBody682_931 NamedBody682_940

def NamedBody682_942 : StackLang.HolProg 64 :=
.seq NamedBody682_930 NamedBody682_941

def NamedBody682_943 : StackLang.HolProg 64 :=
.seq NamedBody682_929 NamedBody682_942

def NamedBody682_944 : StackLang.HolProg 64 :=
.seq NamedBody682_928 NamedBody682_943

def NamedBody682_945 : StackLang.HolProg 64 :=
.seq NamedBody682_927 NamedBody682_944

def NamedBody682_946 : StackLang.HolProg 64 :=
.seq NamedBody682_926 NamedBody682_945

def NamedBody682_947 : StackLang.HolProg 64 :=
.seq NamedBody682_925 NamedBody682_946

def NamedBody682_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_957 : StackLang.HolProg 64 :=
.seq NamedBody682_955 NamedBody682_956

def NamedBody682_958 : StackLang.HolProg 64 :=
.seq NamedBody682_954 NamedBody682_957

def NamedBody682_959 : StackLang.HolProg 64 :=
.seq NamedBody682_953 NamedBody682_958

def NamedBody682_960 : StackLang.HolProg 64 :=
.seq NamedBody682_952 NamedBody682_959

def NamedBody682_961 : StackLang.HolProg 64 :=
.seq NamedBody682_951 NamedBody682_960

def NamedBody682_962 : StackLang.HolProg 64 :=
.seq NamedBody682_950 NamedBody682_961

def NamedBody682_963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_966 : StackLang.HolProg 64 :=
.seq NamedBody682_964 NamedBody682_965

def NamedBody682_967 : StackLang.HolProg 64 :=
.seq NamedBody682_963 NamedBody682_966

def NamedBody682_968 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_969 : StackLang.HolProg 64 :=
.seq NamedBody682_967 NamedBody682_968

def NamedBody682_970 : StackLang.HolProg 64 :=
.call (some (NamedBody682_962, 1, 682, 28)) (Sum.inl 671) (some (NamedBody682_969, 682, 29))

def NamedBody682_971 : StackLang.HolProg 64 :=
.seq NamedBody682_949 NamedBody682_970

def NamedBody682_972 : StackLang.HolProg 64 :=
.seq NamedBody682_948 NamedBody682_971

def NamedBody682_973 : StackLang.HolProg 64 :=
.seq NamedBody682_947 NamedBody682_972

def NamedBody682_974 : StackLang.HolProg 64 :=
.seq NamedBody682_918 NamedBody682_973

def NamedBody682_975 : StackLang.HolProg 64 :=
.seq NamedBody682_915 NamedBody682_974

def NamedBody682_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 8#64)

def NamedBody682_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_982 : StackLang.HolProg 64 :=
.seq NamedBody682_980 NamedBody682_981

def NamedBody682_983 : StackLang.HolProg 64 :=
.seq NamedBody682_979 NamedBody682_982

def NamedBody682_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2811#64)

def NamedBody682_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_987 : StackLang.HolProg 64 :=
.seq NamedBody682_985 NamedBody682_986

def NamedBody682_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_991 : StackLang.HolProg 64 :=
.seq NamedBody682_989 NamedBody682_990

def NamedBody682_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_993 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_991 NamedBody682_992

def NamedBody682_994 : StackLang.HolProg 64 :=
.seq NamedBody682_988 NamedBody682_993

def NamedBody682_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 31

def NamedBody682_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_1004 : StackLang.HolProg 64 :=
.seq NamedBody682_1002 NamedBody682_1003

def NamedBody682_1005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_1006 : StackLang.HolProg 64 :=
.seq NamedBody682_1004 NamedBody682_1005

def NamedBody682_1007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1008 : StackLang.HolProg 64 :=
.seq NamedBody682_1006 NamedBody682_1007

def NamedBody682_1009 : StackLang.HolProg 64 :=
.seq NamedBody682_1001 NamedBody682_1008

def NamedBody682_1010 : StackLang.HolProg 64 :=
.seq NamedBody682_1000 NamedBody682_1009

def NamedBody682_1011 : StackLang.HolProg 64 :=
.seq NamedBody682_999 NamedBody682_1010

def NamedBody682_1012 : StackLang.HolProg 64 :=
.seq NamedBody682_998 NamedBody682_1011

def NamedBody682_1013 : StackLang.HolProg 64 :=
.seq NamedBody682_997 NamedBody682_1012

def NamedBody682_1014 : StackLang.HolProg 64 :=
.seq NamedBody682_996 NamedBody682_1013

def NamedBody682_1015 : StackLang.HolProg 64 :=
.seq NamedBody682_995 NamedBody682_1014

def NamedBody682_1016 : StackLang.HolProg 64 :=
.seq NamedBody682_994 NamedBody682_1015

def NamedBody682_1017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1023 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_1025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1027 : StackLang.HolProg 64 :=
.seq NamedBody682_1025 NamedBody682_1026

def NamedBody682_1028 : StackLang.HolProg 64 :=
.seq NamedBody682_1024 NamedBody682_1027

def NamedBody682_1029 : StackLang.HolProg 64 :=
.seq NamedBody682_1023 NamedBody682_1028

def NamedBody682_1030 : StackLang.HolProg 64 :=
.seq NamedBody682_1022 NamedBody682_1029

def NamedBody682_1031 : StackLang.HolProg 64 :=
.seq NamedBody682_1021 NamedBody682_1030

def NamedBody682_1032 : StackLang.HolProg 64 :=
.seq NamedBody682_1020 NamedBody682_1031

def NamedBody682_1033 : StackLang.HolProg 64 :=
.seq NamedBody682_1019 NamedBody682_1032

def NamedBody682_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1038 : StackLang.HolProg 64 :=
.seq NamedBody682_1036 NamedBody682_1037

def NamedBody682_1039 : StackLang.HolProg 64 :=
.seq NamedBody682_1035 NamedBody682_1038

def NamedBody682_1040 : StackLang.HolProg 64 :=
.seq NamedBody682_1034 NamedBody682_1039

def NamedBody682_1041 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_1042 : StackLang.HolProg 64 :=
.seq NamedBody682_1040 NamedBody682_1041

def NamedBody682_1043 : StackLang.HolProg 64 :=
.call (some (NamedBody682_1033, 1, 682, 30)) (Sum.inl 675) (some (NamedBody682_1042, 682, 31))

def NamedBody682_1044 : StackLang.HolProg 64 :=
.seq NamedBody682_1018 NamedBody682_1043

def NamedBody682_1045 : StackLang.HolProg 64 :=
.seq NamedBody682_1017 NamedBody682_1044

def NamedBody682_1046 : StackLang.HolProg 64 :=
.seq NamedBody682_1016 NamedBody682_1045

def NamedBody682_1047 : StackLang.HolProg 64 :=
.seq NamedBody682_987 NamedBody682_1046

def NamedBody682_1048 : StackLang.HolProg 64 :=
.seq NamedBody682_984 NamedBody682_1047

def NamedBody682_1049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_1050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1055 : StackLang.HolProg 64 :=
.seq NamedBody682_1053 NamedBody682_1054

def NamedBody682_1056 : StackLang.HolProg 64 :=
.seq NamedBody682_1052 NamedBody682_1055

def NamedBody682_1057 : StackLang.HolProg 64 :=
.seq NamedBody682_1051 NamedBody682_1056

def NamedBody682_1058 : StackLang.HolProg 64 :=
.seq NamedBody682_1050 NamedBody682_1057

def NamedBody682_1059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2812#64)

def NamedBody682_1061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1062 : StackLang.HolProg 64 :=
.seq NamedBody682_1060 NamedBody682_1061

def NamedBody682_1063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_1065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_1066 : StackLang.HolProg 64 :=
.seq NamedBody682_1064 NamedBody682_1065

def NamedBody682_1067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1068 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_1066 NamedBody682_1067

def NamedBody682_1069 : StackLang.HolProg 64 :=
.seq NamedBody682_1063 NamedBody682_1068

def NamedBody682_1070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_1071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 33

def NamedBody682_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_1078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_1079 : StackLang.HolProg 64 :=
.seq NamedBody682_1077 NamedBody682_1078

def NamedBody682_1080 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_1081 : StackLang.HolProg 64 :=
.seq NamedBody682_1079 NamedBody682_1080

def NamedBody682_1082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1083 : StackLang.HolProg 64 :=
.seq NamedBody682_1081 NamedBody682_1082

def NamedBody682_1084 : StackLang.HolProg 64 :=
.seq NamedBody682_1076 NamedBody682_1083

def NamedBody682_1085 : StackLang.HolProg 64 :=
.seq NamedBody682_1075 NamedBody682_1084

def NamedBody682_1086 : StackLang.HolProg 64 :=
.seq NamedBody682_1074 NamedBody682_1085

def NamedBody682_1087 : StackLang.HolProg 64 :=
.seq NamedBody682_1073 NamedBody682_1086

def NamedBody682_1088 : StackLang.HolProg 64 :=
.seq NamedBody682_1072 NamedBody682_1087

def NamedBody682_1089 : StackLang.HolProg 64 :=
.seq NamedBody682_1071 NamedBody682_1088

def NamedBody682_1090 : StackLang.HolProg 64 :=
.seq NamedBody682_1070 NamedBody682_1089

def NamedBody682_1091 : StackLang.HolProg 64 :=
.seq NamedBody682_1069 NamedBody682_1090

def NamedBody682_1092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_1099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1101 : StackLang.HolProg 64 :=
.seq NamedBody682_1099 NamedBody682_1100

def NamedBody682_1102 : StackLang.HolProg 64 :=
.seq NamedBody682_1098 NamedBody682_1101

def NamedBody682_1103 : StackLang.HolProg 64 :=
.seq NamedBody682_1097 NamedBody682_1102

def NamedBody682_1104 : StackLang.HolProg 64 :=
.seq NamedBody682_1096 NamedBody682_1103

def NamedBody682_1105 : StackLang.HolProg 64 :=
.seq NamedBody682_1095 NamedBody682_1104

def NamedBody682_1106 : StackLang.HolProg 64 :=
.seq NamedBody682_1094 NamedBody682_1105

def NamedBody682_1107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_1108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1110 : StackLang.HolProg 64 :=
.seq NamedBody682_1108 NamedBody682_1109

def NamedBody682_1111 : StackLang.HolProg 64 :=
.seq NamedBody682_1107 NamedBody682_1110

def NamedBody682_1112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_1113 : StackLang.HolProg 64 :=
.seq NamedBody682_1111 NamedBody682_1112

def NamedBody682_1114 : StackLang.HolProg 64 :=
.call (some (NamedBody682_1106, 1, 682, 32)) (Sum.inl 673) (some (NamedBody682_1113, 682, 33))

def NamedBody682_1115 : StackLang.HolProg 64 :=
.seq NamedBody682_1093 NamedBody682_1114

def NamedBody682_1116 : StackLang.HolProg 64 :=
.seq NamedBody682_1092 NamedBody682_1115

def NamedBody682_1117 : StackLang.HolProg 64 :=
.seq NamedBody682_1091 NamedBody682_1116

def NamedBody682_1118 : StackLang.HolProg 64 :=
.seq NamedBody682_1062 NamedBody682_1117

def NamedBody682_1119 : StackLang.HolProg 64 :=
.seq NamedBody682_1059 NamedBody682_1118

def NamedBody682_1120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_1121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_1122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_1123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1125 : StackLang.HolProg 64 :=
.seq NamedBody682_1123 NamedBody682_1124

def NamedBody682_1126 : StackLang.HolProg 64 :=
.seq NamedBody682_1122 NamedBody682_1125

def NamedBody682_1127 : StackLang.HolProg 64 :=
.seq NamedBody682_1121 NamedBody682_1126

def NamedBody682_1128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2813#64)

def NamedBody682_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1131 : StackLang.HolProg 64 :=
.seq NamedBody682_1129 NamedBody682_1130

def NamedBody682_1132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_1134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_1135 : StackLang.HolProg 64 :=
.seq NamedBody682_1133 NamedBody682_1134

def NamedBody682_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_1135 NamedBody682_1136

def NamedBody682_1138 : StackLang.HolProg 64 :=
.seq NamedBody682_1132 NamedBody682_1137

def NamedBody682_1139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 35

def NamedBody682_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_1143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_1147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_1148 : StackLang.HolProg 64 :=
.seq NamedBody682_1146 NamedBody682_1147

def NamedBody682_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_1150 : StackLang.HolProg 64 :=
.seq NamedBody682_1148 NamedBody682_1149

def NamedBody682_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1152 : StackLang.HolProg 64 :=
.seq NamedBody682_1150 NamedBody682_1151

def NamedBody682_1153 : StackLang.HolProg 64 :=
.seq NamedBody682_1145 NamedBody682_1152

def NamedBody682_1154 : StackLang.HolProg 64 :=
.seq NamedBody682_1144 NamedBody682_1153

def NamedBody682_1155 : StackLang.HolProg 64 :=
.seq NamedBody682_1143 NamedBody682_1154

def NamedBody682_1156 : StackLang.HolProg 64 :=
.seq NamedBody682_1142 NamedBody682_1155

def NamedBody682_1157 : StackLang.HolProg 64 :=
.seq NamedBody682_1141 NamedBody682_1156

def NamedBody682_1158 : StackLang.HolProg 64 :=
.seq NamedBody682_1140 NamedBody682_1157

def NamedBody682_1159 : StackLang.HolProg 64 :=
.seq NamedBody682_1139 NamedBody682_1158

def NamedBody682_1160 : StackLang.HolProg 64 :=
.seq NamedBody682_1138 NamedBody682_1159

def NamedBody682_1161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1171 : StackLang.HolProg 64 :=
.seq NamedBody682_1169 NamedBody682_1170

def NamedBody682_1172 : StackLang.HolProg 64 :=
.seq NamedBody682_1168 NamedBody682_1171

def NamedBody682_1173 : StackLang.HolProg 64 :=
.seq NamedBody682_1167 NamedBody682_1172

def NamedBody682_1174 : StackLang.HolProg 64 :=
.seq NamedBody682_1166 NamedBody682_1173

def NamedBody682_1175 : StackLang.HolProg 64 :=
.seq NamedBody682_1165 NamedBody682_1174

def NamedBody682_1176 : StackLang.HolProg 64 :=
.seq NamedBody682_1164 NamedBody682_1175

def NamedBody682_1177 : StackLang.HolProg 64 :=
.seq NamedBody682_1163 NamedBody682_1176

def NamedBody682_1178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1182 : StackLang.HolProg 64 :=
.seq NamedBody682_1180 NamedBody682_1181

def NamedBody682_1183 : StackLang.HolProg 64 :=
.seq NamedBody682_1179 NamedBody682_1182

def NamedBody682_1184 : StackLang.HolProg 64 :=
.seq NamedBody682_1178 NamedBody682_1183

def NamedBody682_1185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_1186 : StackLang.HolProg 64 :=
.seq NamedBody682_1184 NamedBody682_1185

def NamedBody682_1187 : StackLang.HolProg 64 :=
.call (some (NamedBody682_1177, 1, 682, 34)) (Sum.inl 671) (some (NamedBody682_1186, 682, 35))

def NamedBody682_1188 : StackLang.HolProg 64 :=
.seq NamedBody682_1162 NamedBody682_1187

def NamedBody682_1189 : StackLang.HolProg 64 :=
.seq NamedBody682_1161 NamedBody682_1188

def NamedBody682_1190 : StackLang.HolProg 64 :=
.seq NamedBody682_1160 NamedBody682_1189

def NamedBody682_1191 : StackLang.HolProg 64 :=
.seq NamedBody682_1131 NamedBody682_1190

def NamedBody682_1192 : StackLang.HolProg 64 :=
.seq NamedBody682_1128 NamedBody682_1191

def NamedBody682_1193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_1195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1199 : StackLang.HolProg 64 :=
.seq NamedBody682_1197 NamedBody682_1198

def NamedBody682_1200 : StackLang.HolProg 64 :=
.seq NamedBody682_1196 NamedBody682_1199

def NamedBody682_1201 : StackLang.HolProg 64 :=
.seq NamedBody682_1195 NamedBody682_1200

def NamedBody682_1202 : StackLang.HolProg 64 :=
.seq NamedBody682_1194 NamedBody682_1201

def NamedBody682_1203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2814#64)

def NamedBody682_1205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1206 : StackLang.HolProg 64 :=
.seq NamedBody682_1204 NamedBody682_1205

def NamedBody682_1207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_1209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_1210 : StackLang.HolProg 64 :=
.seq NamedBody682_1208 NamedBody682_1209

def NamedBody682_1211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_1210 NamedBody682_1211

def NamedBody682_1213 : StackLang.HolProg 64 :=
.seq NamedBody682_1207 NamedBody682_1212

def NamedBody682_1214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_1215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 37

def NamedBody682_1217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_1218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_1223 : StackLang.HolProg 64 :=
.seq NamedBody682_1221 NamedBody682_1222

def NamedBody682_1224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_1225 : StackLang.HolProg 64 :=
.seq NamedBody682_1223 NamedBody682_1224

def NamedBody682_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1227 : StackLang.HolProg 64 :=
.seq NamedBody682_1225 NamedBody682_1226

def NamedBody682_1228 : StackLang.HolProg 64 :=
.seq NamedBody682_1220 NamedBody682_1227

def NamedBody682_1229 : StackLang.HolProg 64 :=
.seq NamedBody682_1219 NamedBody682_1228

def NamedBody682_1230 : StackLang.HolProg 64 :=
.seq NamedBody682_1218 NamedBody682_1229

def NamedBody682_1231 : StackLang.HolProg 64 :=
.seq NamedBody682_1217 NamedBody682_1230

def NamedBody682_1232 : StackLang.HolProg 64 :=
.seq NamedBody682_1216 NamedBody682_1231

def NamedBody682_1233 : StackLang.HolProg 64 :=
.seq NamedBody682_1215 NamedBody682_1232

def NamedBody682_1234 : StackLang.HolProg 64 :=
.seq NamedBody682_1214 NamedBody682_1233

def NamedBody682_1235 : StackLang.HolProg 64 :=
.seq NamedBody682_1213 NamedBody682_1234

def NamedBody682_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1244 : StackLang.HolProg 64 :=
.seq NamedBody682_1242 NamedBody682_1243

def NamedBody682_1245 : StackLang.HolProg 64 :=
.seq NamedBody682_1241 NamedBody682_1244

def NamedBody682_1246 : StackLang.HolProg 64 :=
.seq NamedBody682_1240 NamedBody682_1245

def NamedBody682_1247 : StackLang.HolProg 64 :=
.seq NamedBody682_1239 NamedBody682_1246

def NamedBody682_1248 : StackLang.HolProg 64 :=
.seq NamedBody682_1238 NamedBody682_1247

def NamedBody682_1249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1251 : StackLang.HolProg 64 :=
.seq NamedBody682_1249 NamedBody682_1250

def NamedBody682_1252 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_1253 : StackLang.HolProg 64 :=
.seq NamedBody682_1251 NamedBody682_1252

def NamedBody682_1254 : StackLang.HolProg 64 :=
.call (some (NamedBody682_1248, 1, 682, 36)) (Sum.inl 670) (some (NamedBody682_1253, 682, 37))

def NamedBody682_1255 : StackLang.HolProg 64 :=
.seq NamedBody682_1237 NamedBody682_1254

def NamedBody682_1256 : StackLang.HolProg 64 :=
.seq NamedBody682_1236 NamedBody682_1255

def NamedBody682_1257 : StackLang.HolProg 64 :=
.seq NamedBody682_1235 NamedBody682_1256

def NamedBody682_1258 : StackLang.HolProg 64 :=
.seq NamedBody682_1206 NamedBody682_1257

def NamedBody682_1259 : StackLang.HolProg 64 :=
.seq NamedBody682_1203 NamedBody682_1258

def NamedBody682_1260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_1261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_1262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 2#64)

def NamedBody682_1263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody682_1264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1266 : StackLang.HolProg 64 :=
.seq NamedBody682_1264 NamedBody682_1265

def NamedBody682_1267 : StackLang.HolProg 64 :=
.seq NamedBody682_1263 NamedBody682_1266

def NamedBody682_1268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2815#64)

def NamedBody682_1270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1271 : StackLang.HolProg 64 :=
.seq NamedBody682_1269 NamedBody682_1270

def NamedBody682_1272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_1274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_1275 : StackLang.HolProg 64 :=
.seq NamedBody682_1273 NamedBody682_1274

def NamedBody682_1276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1277 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_1275 NamedBody682_1276

def NamedBody682_1278 : StackLang.HolProg 64 :=
.seq NamedBody682_1272 NamedBody682_1277

def NamedBody682_1279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_1280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 39

def NamedBody682_1282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_1283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_1287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_1288 : StackLang.HolProg 64 :=
.seq NamedBody682_1286 NamedBody682_1287

def NamedBody682_1289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_1290 : StackLang.HolProg 64 :=
.seq NamedBody682_1288 NamedBody682_1289

def NamedBody682_1291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1292 : StackLang.HolProg 64 :=
.seq NamedBody682_1290 NamedBody682_1291

def NamedBody682_1293 : StackLang.HolProg 64 :=
.seq NamedBody682_1285 NamedBody682_1292

def NamedBody682_1294 : StackLang.HolProg 64 :=
.seq NamedBody682_1284 NamedBody682_1293

def NamedBody682_1295 : StackLang.HolProg 64 :=
.seq NamedBody682_1283 NamedBody682_1294

def NamedBody682_1296 : StackLang.HolProg 64 :=
.seq NamedBody682_1282 NamedBody682_1295

def NamedBody682_1297 : StackLang.HolProg 64 :=
.seq NamedBody682_1281 NamedBody682_1296

def NamedBody682_1298 : StackLang.HolProg 64 :=
.seq NamedBody682_1280 NamedBody682_1297

def NamedBody682_1299 : StackLang.HolProg 64 :=
.seq NamedBody682_1279 NamedBody682_1298

def NamedBody682_1300 : StackLang.HolProg 64 :=
.seq NamedBody682_1278 NamedBody682_1299

def NamedBody682_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_1308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_1309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_1311 : StackLang.HolProg 64 :=
.seq NamedBody682_1309 NamedBody682_1310

def NamedBody682_1312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1314 : StackLang.HolProg 64 :=
.seq NamedBody682_1312 NamedBody682_1313

def NamedBody682_1315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_1316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1317 : StackLang.HolProg 64 :=
.seq NamedBody682_1315 NamedBody682_1316

def NamedBody682_1318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody682_1320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1321 : StackLang.HolProg 64 :=
.seq NamedBody682_1319 NamedBody682_1320

def NamedBody682_1322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody682_1323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody682_1324 : StackLang.HolProg 64 :=
.seq NamedBody682_1322 NamedBody682_1323

def NamedBody682_1325 : StackLang.HolProg 64 :=
.seq NamedBody682_1321 NamedBody682_1324

def NamedBody682_1326 : StackLang.HolProg 64 :=
.seq NamedBody682_1318 NamedBody682_1325

def NamedBody682_1327 : StackLang.HolProg 64 :=
.seq NamedBody682_1317 NamedBody682_1326

def NamedBody682_1328 : StackLang.HolProg 64 :=
.seq NamedBody682_1314 NamedBody682_1327

def NamedBody682_1329 : StackLang.HolProg 64 :=
.seq NamedBody682_1311 NamedBody682_1328

def NamedBody682_1330 : StackLang.HolProg 64 :=
.seq NamedBody682_1308 NamedBody682_1329

def NamedBody682_1331 : StackLang.HolProg 64 :=
.seq NamedBody682_1307 NamedBody682_1330

def NamedBody682_1332 : StackLang.HolProg 64 :=
.seq NamedBody682_1306 NamedBody682_1331

def NamedBody682_1333 : StackLang.HolProg 64 :=
.seq NamedBody682_1305 NamedBody682_1332

def NamedBody682_1334 : StackLang.HolProg 64 :=
.seq NamedBody682_1304 NamedBody682_1333

def NamedBody682_1335 : StackLang.HolProg 64 :=
.seq NamedBody682_1303 NamedBody682_1334

def NamedBody682_1336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_1337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_1338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_1340 : StackLang.HolProg 64 :=
.seq NamedBody682_1338 NamedBody682_1339

def NamedBody682_1341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1343 : StackLang.HolProg 64 :=
.seq NamedBody682_1341 NamedBody682_1342

def NamedBody682_1344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_1345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1346 : StackLang.HolProg 64 :=
.seq NamedBody682_1344 NamedBody682_1345

def NamedBody682_1347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody682_1349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1350 : StackLang.HolProg 64 :=
.seq NamedBody682_1348 NamedBody682_1349

def NamedBody682_1351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody682_1352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody682_1353 : StackLang.HolProg 64 :=
.seq NamedBody682_1351 NamedBody682_1352

def NamedBody682_1354 : StackLang.HolProg 64 :=
.seq NamedBody682_1350 NamedBody682_1353

def NamedBody682_1355 : StackLang.HolProg 64 :=
.seq NamedBody682_1347 NamedBody682_1354

def NamedBody682_1356 : StackLang.HolProg 64 :=
.seq NamedBody682_1346 NamedBody682_1355

def NamedBody682_1357 : StackLang.HolProg 64 :=
.seq NamedBody682_1343 NamedBody682_1356

def NamedBody682_1358 : StackLang.HolProg 64 :=
.seq NamedBody682_1340 NamedBody682_1357

def NamedBody682_1359 : StackLang.HolProg 64 :=
.seq NamedBody682_1337 NamedBody682_1358

def NamedBody682_1360 : StackLang.HolProg 64 :=
.seq NamedBody682_1336 NamedBody682_1359

def NamedBody682_1361 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_1362 : StackLang.HolProg 64 :=
.seq NamedBody682_1360 NamedBody682_1361

def NamedBody682_1363 : StackLang.HolProg 64 :=
.call (some (NamedBody682_1335, 1, 682, 38)) (Sum.inl 675) (some (NamedBody682_1362, 682, 39))

def NamedBody682_1364 : StackLang.HolProg 64 :=
.seq NamedBody682_1302 NamedBody682_1363

def NamedBody682_1365 : StackLang.HolProg 64 :=
.seq NamedBody682_1301 NamedBody682_1364

def NamedBody682_1366 : StackLang.HolProg 64 :=
.seq NamedBody682_1300 NamedBody682_1365

def NamedBody682_1367 : StackLang.HolProg 64 :=
.seq NamedBody682_1271 NamedBody682_1366

def NamedBody682_1368 : StackLang.HolProg 64 :=
.seq NamedBody682_1268 NamedBody682_1367

def NamedBody682_1369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_1370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_1371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 4#64)

def NamedBody682_1372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_1373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_1374 : StackLang.HolProg 64 :=
.seq NamedBody682_1372 NamedBody682_1373

def NamedBody682_1375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2816#64)

def NamedBody682_1377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1378 : StackLang.HolProg 64 :=
.seq NamedBody682_1376 NamedBody682_1377

def NamedBody682_1379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_1381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_1382 : StackLang.HolProg 64 :=
.seq NamedBody682_1380 NamedBody682_1381

def NamedBody682_1383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1384 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_1382 NamedBody682_1383

def NamedBody682_1385 : StackLang.HolProg 64 :=
.seq NamedBody682_1379 NamedBody682_1384

def NamedBody682_1386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_1387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 41

def NamedBody682_1389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_1390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_1394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_1395 : StackLang.HolProg 64 :=
.seq NamedBody682_1393 NamedBody682_1394

def NamedBody682_1396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_1397 : StackLang.HolProg 64 :=
.seq NamedBody682_1395 NamedBody682_1396

def NamedBody682_1398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1399 : StackLang.HolProg 64 :=
.seq NamedBody682_1397 NamedBody682_1398

def NamedBody682_1400 : StackLang.HolProg 64 :=
.seq NamedBody682_1392 NamedBody682_1399

def NamedBody682_1401 : StackLang.HolProg 64 :=
.seq NamedBody682_1391 NamedBody682_1400

def NamedBody682_1402 : StackLang.HolProg 64 :=
.seq NamedBody682_1390 NamedBody682_1401

def NamedBody682_1403 : StackLang.HolProg 64 :=
.seq NamedBody682_1389 NamedBody682_1402

def NamedBody682_1404 : StackLang.HolProg 64 :=
.seq NamedBody682_1388 NamedBody682_1403

def NamedBody682_1405 : StackLang.HolProg 64 :=
.seq NamedBody682_1387 NamedBody682_1404

def NamedBody682_1406 : StackLang.HolProg 64 :=
.seq NamedBody682_1386 NamedBody682_1405

def NamedBody682_1407 : StackLang.HolProg 64 :=
.seq NamedBody682_1385 NamedBody682_1406

def NamedBody682_1408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_1416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_1418 : StackLang.HolProg 64 :=
.seq NamedBody682_1416 NamedBody682_1417

def NamedBody682_1419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_1420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1421 : StackLang.HolProg 64 :=
.seq NamedBody682_1419 NamedBody682_1420

def NamedBody682_1422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_1423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_1424 : StackLang.HolProg 64 :=
.seq NamedBody682_1422 NamedBody682_1423

def NamedBody682_1425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_1427 : StackLang.HolProg 64 :=
.seq NamedBody682_1425 NamedBody682_1426

def NamedBody682_1428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1430 : StackLang.HolProg 64 :=
.seq NamedBody682_1428 NamedBody682_1429

def NamedBody682_1431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_1432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_1434 : StackLang.HolProg 64 :=
.seq NamedBody682_1432 NamedBody682_1433

def NamedBody682_1435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody682_1436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1437 : StackLang.HolProg 64 :=
.seq NamedBody682_1435 NamedBody682_1436

def NamedBody682_1438 : StackLang.HolProg 64 :=
.seq NamedBody682_1434 NamedBody682_1437

def NamedBody682_1439 : StackLang.HolProg 64 :=
.seq NamedBody682_1431 NamedBody682_1438

def NamedBody682_1440 : StackLang.HolProg 64 :=
.seq NamedBody682_1430 NamedBody682_1439

def NamedBody682_1441 : StackLang.HolProg 64 :=
.seq NamedBody682_1427 NamedBody682_1440

def NamedBody682_1442 : StackLang.HolProg 64 :=
.seq NamedBody682_1424 NamedBody682_1441

def NamedBody682_1443 : StackLang.HolProg 64 :=
.seq NamedBody682_1421 NamedBody682_1442

def NamedBody682_1444 : StackLang.HolProg 64 :=
.seq NamedBody682_1418 NamedBody682_1443

def NamedBody682_1445 : StackLang.HolProg 64 :=
.seq NamedBody682_1415 NamedBody682_1444

def NamedBody682_1446 : StackLang.HolProg 64 :=
.seq NamedBody682_1414 NamedBody682_1445

def NamedBody682_1447 : StackLang.HolProg 64 :=
.seq NamedBody682_1413 NamedBody682_1446

def NamedBody682_1448 : StackLang.HolProg 64 :=
.seq NamedBody682_1412 NamedBody682_1447

def NamedBody682_1449 : StackLang.HolProg 64 :=
.seq NamedBody682_1411 NamedBody682_1448

def NamedBody682_1450 : StackLang.HolProg 64 :=
.seq NamedBody682_1410 NamedBody682_1449

def NamedBody682_1451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_1453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_1455 : StackLang.HolProg 64 :=
.seq NamedBody682_1453 NamedBody682_1454

def NamedBody682_1456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_1457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1458 : StackLang.HolProg 64 :=
.seq NamedBody682_1456 NamedBody682_1457

def NamedBody682_1459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_1460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_1461 : StackLang.HolProg 64 :=
.seq NamedBody682_1459 NamedBody682_1460

def NamedBody682_1462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_1464 : StackLang.HolProg 64 :=
.seq NamedBody682_1462 NamedBody682_1463

def NamedBody682_1465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1467 : StackLang.HolProg 64 :=
.seq NamedBody682_1465 NamedBody682_1466

def NamedBody682_1468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_1469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_1471 : StackLang.HolProg 64 :=
.seq NamedBody682_1469 NamedBody682_1470

def NamedBody682_1472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody682_1473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1474 : StackLang.HolProg 64 :=
.seq NamedBody682_1472 NamedBody682_1473

def NamedBody682_1475 : StackLang.HolProg 64 :=
.seq NamedBody682_1471 NamedBody682_1474

def NamedBody682_1476 : StackLang.HolProg 64 :=
.seq NamedBody682_1468 NamedBody682_1475

def NamedBody682_1477 : StackLang.HolProg 64 :=
.seq NamedBody682_1467 NamedBody682_1476

def NamedBody682_1478 : StackLang.HolProg 64 :=
.seq NamedBody682_1464 NamedBody682_1477

def NamedBody682_1479 : StackLang.HolProg 64 :=
.seq NamedBody682_1461 NamedBody682_1478

def NamedBody682_1480 : StackLang.HolProg 64 :=
.seq NamedBody682_1458 NamedBody682_1479

def NamedBody682_1481 : StackLang.HolProg 64 :=
.seq NamedBody682_1455 NamedBody682_1480

def NamedBody682_1482 : StackLang.HolProg 64 :=
.seq NamedBody682_1452 NamedBody682_1481

def NamedBody682_1483 : StackLang.HolProg 64 :=
.seq NamedBody682_1451 NamedBody682_1482

def NamedBody682_1484 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_1485 : StackLang.HolProg 64 :=
.seq NamedBody682_1483 NamedBody682_1484

def NamedBody682_1486 : StackLang.HolProg 64 :=
.call (some (NamedBody682_1450, 1, 682, 40)) (Sum.inl 675) (some (NamedBody682_1485, 682, 41))

def NamedBody682_1487 : StackLang.HolProg 64 :=
.seq NamedBody682_1409 NamedBody682_1486

def NamedBody682_1488 : StackLang.HolProg 64 :=
.seq NamedBody682_1408 NamedBody682_1487

def NamedBody682_1489 : StackLang.HolProg 64 :=
.seq NamedBody682_1407 NamedBody682_1488

def NamedBody682_1490 : StackLang.HolProg 64 :=
.seq NamedBody682_1378 NamedBody682_1489

def NamedBody682_1491 : StackLang.HolProg 64 :=
.seq NamedBody682_1375 NamedBody682_1490

def NamedBody682_1492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_1493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_1494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody682_1495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1497 : StackLang.HolProg 64 :=
.seq NamedBody682_1495 NamedBody682_1496

def NamedBody682_1498 : StackLang.HolProg 64 :=
.seq NamedBody682_1494 NamedBody682_1497

def NamedBody682_1499 : StackLang.HolProg 64 :=
.seq NamedBody682_1493 NamedBody682_1498

def NamedBody682_1500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2817#64)

def NamedBody682_1502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1503 : StackLang.HolProg 64 :=
.seq NamedBody682_1501 NamedBody682_1502

def NamedBody682_1504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_1506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_1507 : StackLang.HolProg 64 :=
.seq NamedBody682_1505 NamedBody682_1506

def NamedBody682_1508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1509 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_1507 NamedBody682_1508

def NamedBody682_1510 : StackLang.HolProg 64 :=
.seq NamedBody682_1504 NamedBody682_1509

def NamedBody682_1511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_1512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 43

def NamedBody682_1514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_1515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_1519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_1520 : StackLang.HolProg 64 :=
.seq NamedBody682_1518 NamedBody682_1519

def NamedBody682_1521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_1522 : StackLang.HolProg 64 :=
.seq NamedBody682_1520 NamedBody682_1521

def NamedBody682_1523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1524 : StackLang.HolProg 64 :=
.seq NamedBody682_1522 NamedBody682_1523

def NamedBody682_1525 : StackLang.HolProg 64 :=
.seq NamedBody682_1517 NamedBody682_1524

def NamedBody682_1526 : StackLang.HolProg 64 :=
.seq NamedBody682_1516 NamedBody682_1525

def NamedBody682_1527 : StackLang.HolProg 64 :=
.seq NamedBody682_1515 NamedBody682_1526

def NamedBody682_1528 : StackLang.HolProg 64 :=
.seq NamedBody682_1514 NamedBody682_1527

def NamedBody682_1529 : StackLang.HolProg 64 :=
.seq NamedBody682_1513 NamedBody682_1528

def NamedBody682_1530 : StackLang.HolProg 64 :=
.seq NamedBody682_1512 NamedBody682_1529

def NamedBody682_1531 : StackLang.HolProg 64 :=
.seq NamedBody682_1511 NamedBody682_1530

def NamedBody682_1532 : StackLang.HolProg 64 :=
.seq NamedBody682_1510 NamedBody682_1531

def NamedBody682_1533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1542 : StackLang.HolProg 64 :=
.seq NamedBody682_1540 NamedBody682_1541

def NamedBody682_1543 : StackLang.HolProg 64 :=
.seq NamedBody682_1539 NamedBody682_1542

def NamedBody682_1544 : StackLang.HolProg 64 :=
.seq NamedBody682_1538 NamedBody682_1543

def NamedBody682_1545 : StackLang.HolProg 64 :=
.seq NamedBody682_1537 NamedBody682_1544

def NamedBody682_1546 : StackLang.HolProg 64 :=
.seq NamedBody682_1536 NamedBody682_1545

def NamedBody682_1547 : StackLang.HolProg 64 :=
.seq NamedBody682_1535 NamedBody682_1546

def NamedBody682_1548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1551 : StackLang.HolProg 64 :=
.seq NamedBody682_1549 NamedBody682_1550

def NamedBody682_1552 : StackLang.HolProg 64 :=
.seq NamedBody682_1548 NamedBody682_1551

def NamedBody682_1553 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_1554 : StackLang.HolProg 64 :=
.seq NamedBody682_1552 NamedBody682_1553

def NamedBody682_1555 : StackLang.HolProg 64 :=
.call (some (NamedBody682_1547, 1, 682, 42)) (Sum.inl 673) (some (NamedBody682_1554, 682, 43))

def NamedBody682_1556 : StackLang.HolProg 64 :=
.seq NamedBody682_1534 NamedBody682_1555

def NamedBody682_1557 : StackLang.HolProg 64 :=
.seq NamedBody682_1533 NamedBody682_1556

def NamedBody682_1558 : StackLang.HolProg 64 :=
.seq NamedBody682_1532 NamedBody682_1557

def NamedBody682_1559 : StackLang.HolProg 64 :=
.seq NamedBody682_1503 NamedBody682_1558

def NamedBody682_1560 : StackLang.HolProg 64 :=
.seq NamedBody682_1500 NamedBody682_1559

def NamedBody682_1561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_1562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_1563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody682_1564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1567 : StackLang.HolProg 64 :=
.seq NamedBody682_1565 NamedBody682_1566

def NamedBody682_1568 : StackLang.HolProg 64 :=
.seq NamedBody682_1564 NamedBody682_1567

def NamedBody682_1569 : StackLang.HolProg 64 :=
.seq NamedBody682_1563 NamedBody682_1568

def NamedBody682_1570 : StackLang.HolProg 64 :=
.seq NamedBody682_1562 NamedBody682_1569

def NamedBody682_1571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2818#64)

def NamedBody682_1573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1574 : StackLang.HolProg 64 :=
.seq NamedBody682_1572 NamedBody682_1573

def NamedBody682_1575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_1577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_1578 : StackLang.HolProg 64 :=
.seq NamedBody682_1576 NamedBody682_1577

def NamedBody682_1579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1580 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_1578 NamedBody682_1579

def NamedBody682_1581 : StackLang.HolProg 64 :=
.seq NamedBody682_1575 NamedBody682_1580

def NamedBody682_1582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_1583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 45

def NamedBody682_1585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_1586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_1590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_1591 : StackLang.HolProg 64 :=
.seq NamedBody682_1589 NamedBody682_1590

def NamedBody682_1592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_1593 : StackLang.HolProg 64 :=
.seq NamedBody682_1591 NamedBody682_1592

def NamedBody682_1594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1595 : StackLang.HolProg 64 :=
.seq NamedBody682_1593 NamedBody682_1594

def NamedBody682_1596 : StackLang.HolProg 64 :=
.seq NamedBody682_1588 NamedBody682_1595

def NamedBody682_1597 : StackLang.HolProg 64 :=
.seq NamedBody682_1587 NamedBody682_1596

def NamedBody682_1598 : StackLang.HolProg 64 :=
.seq NamedBody682_1586 NamedBody682_1597

def NamedBody682_1599 : StackLang.HolProg 64 :=
.seq NamedBody682_1585 NamedBody682_1598

def NamedBody682_1600 : StackLang.HolProg 64 :=
.seq NamedBody682_1584 NamedBody682_1599

def NamedBody682_1601 : StackLang.HolProg 64 :=
.seq NamedBody682_1583 NamedBody682_1600

def NamedBody682_1602 : StackLang.HolProg 64 :=
.seq NamedBody682_1582 NamedBody682_1601

def NamedBody682_1603 : StackLang.HolProg 64 :=
.seq NamedBody682_1581 NamedBody682_1602

def NamedBody682_1604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_1613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_1615 : StackLang.HolProg 64 :=
.seq NamedBody682_1613 NamedBody682_1614

def NamedBody682_1616 : StackLang.HolProg 64 :=
.seq NamedBody682_1612 NamedBody682_1615

def NamedBody682_1617 : StackLang.HolProg 64 :=
.seq NamedBody682_1611 NamedBody682_1616

def NamedBody682_1618 : StackLang.HolProg 64 :=
.seq NamedBody682_1610 NamedBody682_1617

def NamedBody682_1619 : StackLang.HolProg 64 :=
.seq NamedBody682_1609 NamedBody682_1618

def NamedBody682_1620 : StackLang.HolProg 64 :=
.seq NamedBody682_1608 NamedBody682_1619

def NamedBody682_1621 : StackLang.HolProg 64 :=
.seq NamedBody682_1607 NamedBody682_1620

def NamedBody682_1622 : StackLang.HolProg 64 :=
.seq NamedBody682_1606 NamedBody682_1621

def NamedBody682_1623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_1626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody682_1627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_1628 : StackLang.HolProg 64 :=
.seq NamedBody682_1626 NamedBody682_1627

def NamedBody682_1629 : StackLang.HolProg 64 :=
.seq NamedBody682_1625 NamedBody682_1628

def NamedBody682_1630 : StackLang.HolProg 64 :=
.seq NamedBody682_1624 NamedBody682_1629

def NamedBody682_1631 : StackLang.HolProg 64 :=
.seq NamedBody682_1623 NamedBody682_1630

def NamedBody682_1632 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_1633 : StackLang.HolProg 64 :=
.seq NamedBody682_1631 NamedBody682_1632

def NamedBody682_1634 : StackLang.HolProg 64 :=
.call (some (NamedBody682_1622, 1, 682, 44)) (Sum.inl 670) (some (NamedBody682_1633, 682, 45))

def NamedBody682_1635 : StackLang.HolProg 64 :=
.seq NamedBody682_1605 NamedBody682_1634

def NamedBody682_1636 : StackLang.HolProg 64 :=
.seq NamedBody682_1604 NamedBody682_1635

def NamedBody682_1637 : StackLang.HolProg 64 :=
.seq NamedBody682_1603 NamedBody682_1636

def NamedBody682_1638 : StackLang.HolProg 64 :=
.seq NamedBody682_1574 NamedBody682_1637

def NamedBody682_1639 : StackLang.HolProg 64 :=
.seq NamedBody682_1571 NamedBody682_1638

def NamedBody682_1640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_1641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_1642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1644 : StackLang.HolProg 64 :=
.seq NamedBody682_1642 NamedBody682_1643

def NamedBody682_1645 : StackLang.HolProg 64 :=
.seq NamedBody682_1641 NamedBody682_1644

def NamedBody682_1646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2819#64)

def NamedBody682_1648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1649 : StackLang.HolProg 64 :=
.seq NamedBody682_1647 NamedBody682_1648

def NamedBody682_1650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_1652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_1653 : StackLang.HolProg 64 :=
.seq NamedBody682_1651 NamedBody682_1652

def NamedBody682_1654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1655 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_1653 NamedBody682_1654

def NamedBody682_1656 : StackLang.HolProg 64 :=
.seq NamedBody682_1650 NamedBody682_1655

def NamedBody682_1657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_1658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 47

def NamedBody682_1660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_1661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_1665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_1666 : StackLang.HolProg 64 :=
.seq NamedBody682_1664 NamedBody682_1665

def NamedBody682_1667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_1668 : StackLang.HolProg 64 :=
.seq NamedBody682_1666 NamedBody682_1667

def NamedBody682_1669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1670 : StackLang.HolProg 64 :=
.seq NamedBody682_1668 NamedBody682_1669

def NamedBody682_1671 : StackLang.HolProg 64 :=
.seq NamedBody682_1663 NamedBody682_1670

def NamedBody682_1672 : StackLang.HolProg 64 :=
.seq NamedBody682_1662 NamedBody682_1671

def NamedBody682_1673 : StackLang.HolProg 64 :=
.seq NamedBody682_1661 NamedBody682_1672

def NamedBody682_1674 : StackLang.HolProg 64 :=
.seq NamedBody682_1660 NamedBody682_1673

def NamedBody682_1675 : StackLang.HolProg 64 :=
.seq NamedBody682_1659 NamedBody682_1674

def NamedBody682_1676 : StackLang.HolProg 64 :=
.seq NamedBody682_1658 NamedBody682_1675

def NamedBody682_1677 : StackLang.HolProg 64 :=
.seq NamedBody682_1657 NamedBody682_1676

def NamedBody682_1678 : StackLang.HolProg 64 :=
.seq NamedBody682_1656 NamedBody682_1677

def NamedBody682_1679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_1686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1688 : StackLang.HolProg 64 :=
.seq NamedBody682_1686 NamedBody682_1687

def NamedBody682_1689 : StackLang.HolProg 64 :=
.seq NamedBody682_1685 NamedBody682_1688

def NamedBody682_1690 : StackLang.HolProg 64 :=
.seq NamedBody682_1684 NamedBody682_1689

def NamedBody682_1691 : StackLang.HolProg 64 :=
.seq NamedBody682_1683 NamedBody682_1690

def NamedBody682_1692 : StackLang.HolProg 64 :=
.seq NamedBody682_1682 NamedBody682_1691

def NamedBody682_1693 : StackLang.HolProg 64 :=
.seq NamedBody682_1681 NamedBody682_1692

def NamedBody682_1694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_1695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1697 : StackLang.HolProg 64 :=
.seq NamedBody682_1695 NamedBody682_1696

def NamedBody682_1698 : StackLang.HolProg 64 :=
.seq NamedBody682_1694 NamedBody682_1697

def NamedBody682_1699 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_1700 : StackLang.HolProg 64 :=
.seq NamedBody682_1698 NamedBody682_1699

def NamedBody682_1701 : StackLang.HolProg 64 :=
.call (some (NamedBody682_1693, 1, 682, 46)) (Sum.inl 671) (some (NamedBody682_1700, 682, 47))

def NamedBody682_1702 : StackLang.HolProg 64 :=
.seq NamedBody682_1680 NamedBody682_1701

def NamedBody682_1703 : StackLang.HolProg 64 :=
.seq NamedBody682_1679 NamedBody682_1702

def NamedBody682_1704 : StackLang.HolProg 64 :=
.seq NamedBody682_1678 NamedBody682_1703

def NamedBody682_1705 : StackLang.HolProg 64 :=
.seq NamedBody682_1649 NamedBody682_1704

def NamedBody682_1706 : StackLang.HolProg 64 :=
.seq NamedBody682_1646 NamedBody682_1705

def NamedBody682_1707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_1708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_1709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody682_1710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_1711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1713 : StackLang.HolProg 64 :=
.seq NamedBody682_1711 NamedBody682_1712

def NamedBody682_1714 : StackLang.HolProg 64 :=
.seq NamedBody682_1710 NamedBody682_1713

def NamedBody682_1715 : StackLang.HolProg 64 :=
.seq NamedBody682_1709 NamedBody682_1714

def NamedBody682_1716 : StackLang.HolProg 64 :=
.seq NamedBody682_1708 NamedBody682_1715

def NamedBody682_1717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2820#64)

def NamedBody682_1719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1720 : StackLang.HolProg 64 :=
.seq NamedBody682_1718 NamedBody682_1719

def NamedBody682_1721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_1723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_1724 : StackLang.HolProg 64 :=
.seq NamedBody682_1722 NamedBody682_1723

def NamedBody682_1725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1726 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_1724 NamedBody682_1725

def NamedBody682_1727 : StackLang.HolProg 64 :=
.seq NamedBody682_1721 NamedBody682_1726

def NamedBody682_1728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_1729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 49

def NamedBody682_1731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_1732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_1736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_1737 : StackLang.HolProg 64 :=
.seq NamedBody682_1735 NamedBody682_1736

def NamedBody682_1738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_1739 : StackLang.HolProg 64 :=
.seq NamedBody682_1737 NamedBody682_1738

def NamedBody682_1740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1741 : StackLang.HolProg 64 :=
.seq NamedBody682_1739 NamedBody682_1740

def NamedBody682_1742 : StackLang.HolProg 64 :=
.seq NamedBody682_1734 NamedBody682_1741

def NamedBody682_1743 : StackLang.HolProg 64 :=
.seq NamedBody682_1733 NamedBody682_1742

def NamedBody682_1744 : StackLang.HolProg 64 :=
.seq NamedBody682_1732 NamedBody682_1743

def NamedBody682_1745 : StackLang.HolProg 64 :=
.seq NamedBody682_1731 NamedBody682_1744

def NamedBody682_1746 : StackLang.HolProg 64 :=
.seq NamedBody682_1730 NamedBody682_1745

def NamedBody682_1747 : StackLang.HolProg 64 :=
.seq NamedBody682_1729 NamedBody682_1746

def NamedBody682_1748 : StackLang.HolProg 64 :=
.seq NamedBody682_1728 NamedBody682_1747

def NamedBody682_1749 : StackLang.HolProg 64 :=
.seq NamedBody682_1727 NamedBody682_1748

def NamedBody682_1750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1758 : StackLang.HolProg 64 :=
.seq NamedBody682_1756 NamedBody682_1757

def NamedBody682_1759 : StackLang.HolProg 64 :=
.seq NamedBody682_1755 NamedBody682_1758

def NamedBody682_1760 : StackLang.HolProg 64 :=
.seq NamedBody682_1754 NamedBody682_1759

def NamedBody682_1761 : StackLang.HolProg 64 :=
.seq NamedBody682_1753 NamedBody682_1760

def NamedBody682_1762 : StackLang.HolProg 64 :=
.seq NamedBody682_1752 NamedBody682_1761

def NamedBody682_1763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1765 : StackLang.HolProg 64 :=
.seq NamedBody682_1763 NamedBody682_1764

def NamedBody682_1766 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_1767 : StackLang.HolProg 64 :=
.seq NamedBody682_1765 NamedBody682_1766

def NamedBody682_1768 : StackLang.HolProg 64 :=
.call (some (NamedBody682_1762, 1, 682, 48)) (Sum.inl 670) (some (NamedBody682_1767, 682, 49))

def NamedBody682_1769 : StackLang.HolProg 64 :=
.seq NamedBody682_1751 NamedBody682_1768

def NamedBody682_1770 : StackLang.HolProg 64 :=
.seq NamedBody682_1750 NamedBody682_1769

def NamedBody682_1771 : StackLang.HolProg 64 :=
.seq NamedBody682_1749 NamedBody682_1770

def NamedBody682_1772 : StackLang.HolProg 64 :=
.seq NamedBody682_1720 NamedBody682_1771

def NamedBody682_1773 : StackLang.HolProg 64 :=
.seq NamedBody682_1717 NamedBody682_1772

def NamedBody682_1774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_1775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_1776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 8#64)

def NamedBody682_1777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody682_1778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1780 : StackLang.HolProg 64 :=
.seq NamedBody682_1778 NamedBody682_1779

def NamedBody682_1781 : StackLang.HolProg 64 :=
.seq NamedBody682_1777 NamedBody682_1780

def NamedBody682_1782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2821#64)

def NamedBody682_1784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1785 : StackLang.HolProg 64 :=
.seq NamedBody682_1783 NamedBody682_1784

def NamedBody682_1786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_1788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_1789 : StackLang.HolProg 64 :=
.seq NamedBody682_1787 NamedBody682_1788

def NamedBody682_1790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1791 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_1789 NamedBody682_1790

def NamedBody682_1792 : StackLang.HolProg 64 :=
.seq NamedBody682_1786 NamedBody682_1791

def NamedBody682_1793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_1794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 51

def NamedBody682_1796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_1797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_1801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_1802 : StackLang.HolProg 64 :=
.seq NamedBody682_1800 NamedBody682_1801

def NamedBody682_1803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_1804 : StackLang.HolProg 64 :=
.seq NamedBody682_1802 NamedBody682_1803

def NamedBody682_1805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1806 : StackLang.HolProg 64 :=
.seq NamedBody682_1804 NamedBody682_1805

def NamedBody682_1807 : StackLang.HolProg 64 :=
.seq NamedBody682_1799 NamedBody682_1806

def NamedBody682_1808 : StackLang.HolProg 64 :=
.seq NamedBody682_1798 NamedBody682_1807

def NamedBody682_1809 : StackLang.HolProg 64 :=
.seq NamedBody682_1797 NamedBody682_1808

def NamedBody682_1810 : StackLang.HolProg 64 :=
.seq NamedBody682_1796 NamedBody682_1809

def NamedBody682_1811 : StackLang.HolProg 64 :=
.seq NamedBody682_1795 NamedBody682_1810

def NamedBody682_1812 : StackLang.HolProg 64 :=
.seq NamedBody682_1794 NamedBody682_1811

def NamedBody682_1813 : StackLang.HolProg 64 :=
.seq NamedBody682_1793 NamedBody682_1812

def NamedBody682_1814 : StackLang.HolProg 64 :=
.seq NamedBody682_1792 NamedBody682_1813

def NamedBody682_1815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_1825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1826 : StackLang.HolProg 64 :=
.seq NamedBody682_1824 NamedBody682_1825

def NamedBody682_1827 : StackLang.HolProg 64 :=
.seq NamedBody682_1823 NamedBody682_1826

def NamedBody682_1828 : StackLang.HolProg 64 :=
.seq NamedBody682_1822 NamedBody682_1827

def NamedBody682_1829 : StackLang.HolProg 64 :=
.seq NamedBody682_1821 NamedBody682_1828

def NamedBody682_1830 : StackLang.HolProg 64 :=
.seq NamedBody682_1820 NamedBody682_1829

def NamedBody682_1831 : StackLang.HolProg 64 :=
.seq NamedBody682_1819 NamedBody682_1830

def NamedBody682_1832 : StackLang.HolProg 64 :=
.seq NamedBody682_1818 NamedBody682_1831

def NamedBody682_1833 : StackLang.HolProg 64 :=
.seq NamedBody682_1817 NamedBody682_1832

def NamedBody682_1834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody682_1838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1839 : StackLang.HolProg 64 :=
.seq NamedBody682_1837 NamedBody682_1838

def NamedBody682_1840 : StackLang.HolProg 64 :=
.seq NamedBody682_1836 NamedBody682_1839

def NamedBody682_1841 : StackLang.HolProg 64 :=
.seq NamedBody682_1835 NamedBody682_1840

def NamedBody682_1842 : StackLang.HolProg 64 :=
.seq NamedBody682_1834 NamedBody682_1841

def NamedBody682_1843 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_1844 : StackLang.HolProg 64 :=
.seq NamedBody682_1842 NamedBody682_1843

def NamedBody682_1845 : StackLang.HolProg 64 :=
.call (some (NamedBody682_1833, 1, 682, 50)) (Sum.inl 675) (some (NamedBody682_1844, 682, 51))

def NamedBody682_1846 : StackLang.HolProg 64 :=
.seq NamedBody682_1816 NamedBody682_1845

def NamedBody682_1847 : StackLang.HolProg 64 :=
.seq NamedBody682_1815 NamedBody682_1846

def NamedBody682_1848 : StackLang.HolProg 64 :=
.seq NamedBody682_1814 NamedBody682_1847

def NamedBody682_1849 : StackLang.HolProg 64 :=
.seq NamedBody682_1785 NamedBody682_1848

def NamedBody682_1850 : StackLang.HolProg 64 :=
.seq NamedBody682_1782 NamedBody682_1849

def NamedBody682_1851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_1852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_1853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody682_1854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1856 : StackLang.HolProg 64 :=
.seq NamedBody682_1854 NamedBody682_1855

def NamedBody682_1857 : StackLang.HolProg 64 :=
.seq NamedBody682_1853 NamedBody682_1856

def NamedBody682_1858 : StackLang.HolProg 64 :=
.seq NamedBody682_1852 NamedBody682_1857

def NamedBody682_1859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2822#64)

def NamedBody682_1861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1862 : StackLang.HolProg 64 :=
.seq NamedBody682_1860 NamedBody682_1861

def NamedBody682_1863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_1865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_1866 : StackLang.HolProg 64 :=
.seq NamedBody682_1864 NamedBody682_1865

def NamedBody682_1867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1868 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_1866 NamedBody682_1867

def NamedBody682_1869 : StackLang.HolProg 64 :=
.seq NamedBody682_1863 NamedBody682_1868

def NamedBody682_1870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_1871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 53

def NamedBody682_1873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_1874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_1878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_1879 : StackLang.HolProg 64 :=
.seq NamedBody682_1877 NamedBody682_1878

def NamedBody682_1880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_1881 : StackLang.HolProg 64 :=
.seq NamedBody682_1879 NamedBody682_1880

def NamedBody682_1882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1883 : StackLang.HolProg 64 :=
.seq NamedBody682_1881 NamedBody682_1882

def NamedBody682_1884 : StackLang.HolProg 64 :=
.seq NamedBody682_1876 NamedBody682_1883

def NamedBody682_1885 : StackLang.HolProg 64 :=
.seq NamedBody682_1875 NamedBody682_1884

def NamedBody682_1886 : StackLang.HolProg 64 :=
.seq NamedBody682_1874 NamedBody682_1885

def NamedBody682_1887 : StackLang.HolProg 64 :=
.seq NamedBody682_1873 NamedBody682_1886

def NamedBody682_1888 : StackLang.HolProg 64 :=
.seq NamedBody682_1872 NamedBody682_1887

def NamedBody682_1889 : StackLang.HolProg 64 :=
.seq NamedBody682_1871 NamedBody682_1888

def NamedBody682_1890 : StackLang.HolProg 64 :=
.seq NamedBody682_1870 NamedBody682_1889

def NamedBody682_1891 : StackLang.HolProg 64 :=
.seq NamedBody682_1869 NamedBody682_1890

def NamedBody682_1892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_1899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_1901 : StackLang.HolProg 64 :=
.seq NamedBody682_1899 NamedBody682_1900

def NamedBody682_1902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_1903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1904 : StackLang.HolProg 64 :=
.seq NamedBody682_1902 NamedBody682_1903

def NamedBody682_1905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_1907 : StackLang.HolProg 64 :=
.seq NamedBody682_1905 NamedBody682_1906

def NamedBody682_1908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_1909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_1910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_1911 : StackLang.HolProg 64 :=
.seq NamedBody682_1909 NamedBody682_1910

def NamedBody682_1912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1915 : StackLang.HolProg 64 :=
.seq NamedBody682_1913 NamedBody682_1914

def NamedBody682_1916 : StackLang.HolProg 64 :=
.seq NamedBody682_1912 NamedBody682_1915

def NamedBody682_1917 : StackLang.HolProg 64 :=
.seq NamedBody682_1911 NamedBody682_1916

def NamedBody682_1918 : StackLang.HolProg 64 :=
.seq NamedBody682_1908 NamedBody682_1917

def NamedBody682_1919 : StackLang.HolProg 64 :=
.seq NamedBody682_1907 NamedBody682_1918

def NamedBody682_1920 : StackLang.HolProg 64 :=
.seq NamedBody682_1904 NamedBody682_1919

def NamedBody682_1921 : StackLang.HolProg 64 :=
.seq NamedBody682_1901 NamedBody682_1920

def NamedBody682_1922 : StackLang.HolProg 64 :=
.seq NamedBody682_1898 NamedBody682_1921

def NamedBody682_1923 : StackLang.HolProg 64 :=
.seq NamedBody682_1897 NamedBody682_1922

def NamedBody682_1924 : StackLang.HolProg 64 :=
.seq NamedBody682_1896 NamedBody682_1923

def NamedBody682_1925 : StackLang.HolProg 64 :=
.seq NamedBody682_1895 NamedBody682_1924

def NamedBody682_1926 : StackLang.HolProg 64 :=
.seq NamedBody682_1894 NamedBody682_1925

def NamedBody682_1927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_1928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_1930 : StackLang.HolProg 64 :=
.seq NamedBody682_1928 NamedBody682_1929

def NamedBody682_1931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_1932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_1933 : StackLang.HolProg 64 :=
.seq NamedBody682_1931 NamedBody682_1932

def NamedBody682_1934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_1936 : StackLang.HolProg 64 :=
.seq NamedBody682_1934 NamedBody682_1935

def NamedBody682_1937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_1938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_1939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_1940 : StackLang.HolProg 64 :=
.seq NamedBody682_1938 NamedBody682_1939

def NamedBody682_1941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody682_1943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_1944 : StackLang.HolProg 64 :=
.seq NamedBody682_1942 NamedBody682_1943

def NamedBody682_1945 : StackLang.HolProg 64 :=
.seq NamedBody682_1941 NamedBody682_1944

def NamedBody682_1946 : StackLang.HolProg 64 :=
.seq NamedBody682_1940 NamedBody682_1945

def NamedBody682_1947 : StackLang.HolProg 64 :=
.seq NamedBody682_1937 NamedBody682_1946

def NamedBody682_1948 : StackLang.HolProg 64 :=
.seq NamedBody682_1936 NamedBody682_1947

def NamedBody682_1949 : StackLang.HolProg 64 :=
.seq NamedBody682_1933 NamedBody682_1948

def NamedBody682_1950 : StackLang.HolProg 64 :=
.seq NamedBody682_1930 NamedBody682_1949

def NamedBody682_1951 : StackLang.HolProg 64 :=
.seq NamedBody682_1927 NamedBody682_1950

def NamedBody682_1952 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_1953 : StackLang.HolProg 64 :=
.seq NamedBody682_1951 NamedBody682_1952

def NamedBody682_1954 : StackLang.HolProg 64 :=
.call (some (NamedBody682_1926, 1, 682, 52)) (Sum.inl 673) (some (NamedBody682_1953, 682, 53))

def NamedBody682_1955 : StackLang.HolProg 64 :=
.seq NamedBody682_1893 NamedBody682_1954

def NamedBody682_1956 : StackLang.HolProg 64 :=
.seq NamedBody682_1892 NamedBody682_1955

def NamedBody682_1957 : StackLang.HolProg 64 :=
.seq NamedBody682_1891 NamedBody682_1956

def NamedBody682_1958 : StackLang.HolProg 64 :=
.seq NamedBody682_1862 NamedBody682_1957

def NamedBody682_1959 : StackLang.HolProg 64 :=
.seq NamedBody682_1859 NamedBody682_1958

def NamedBody682_1960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_1961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_1962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody682_1963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_1964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_1965 : StackLang.HolProg 64 :=
.seq NamedBody682_1963 NamedBody682_1964

def NamedBody682_1966 : StackLang.HolProg 64 :=
.seq NamedBody682_1962 NamedBody682_1965

def NamedBody682_1967 : StackLang.HolProg 64 :=
.seq NamedBody682_1961 NamedBody682_1966

def NamedBody682_1968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2823#64)

def NamedBody682_1970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1971 : StackLang.HolProg 64 :=
.seq NamedBody682_1969 NamedBody682_1970

def NamedBody682_1972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_1973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_1974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_1975 : StackLang.HolProg 64 :=
.seq NamedBody682_1973 NamedBody682_1974

def NamedBody682_1976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1977 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_1975 NamedBody682_1976

def NamedBody682_1978 : StackLang.HolProg 64 :=
.seq NamedBody682_1972 NamedBody682_1977

def NamedBody682_1979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_1980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_1981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 55

def NamedBody682_1982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_1983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_1985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_1986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_1987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_1988 : StackLang.HolProg 64 :=
.seq NamedBody682_1986 NamedBody682_1987

def NamedBody682_1989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_1990 : StackLang.HolProg 64 :=
.seq NamedBody682_1988 NamedBody682_1989

def NamedBody682_1991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_1992 : StackLang.HolProg 64 :=
.seq NamedBody682_1990 NamedBody682_1991

def NamedBody682_1993 : StackLang.HolProg 64 :=
.seq NamedBody682_1985 NamedBody682_1992

def NamedBody682_1994 : StackLang.HolProg 64 :=
.seq NamedBody682_1984 NamedBody682_1993

def NamedBody682_1995 : StackLang.HolProg 64 :=
.seq NamedBody682_1983 NamedBody682_1994

def NamedBody682_1996 : StackLang.HolProg 64 :=
.seq NamedBody682_1982 NamedBody682_1995

def NamedBody682_1997 : StackLang.HolProg 64 :=
.seq NamedBody682_1981 NamedBody682_1996

def NamedBody682_1998 : StackLang.HolProg 64 :=
.seq NamedBody682_1980 NamedBody682_1997

def NamedBody682_1999 : StackLang.HolProg 64 :=
.seq NamedBody682_1979 NamedBody682_1998

def NamedBody682_2000 : StackLang.HolProg 64 :=
.seq NamedBody682_1978 NamedBody682_1999

def NamedBody682_2001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_2005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_2007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_2008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_2009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_2010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_2011 : StackLang.HolProg 64 :=
.seq NamedBody682_2009 NamedBody682_2010

def NamedBody682_2012 : StackLang.HolProg 64 :=
.seq NamedBody682_2008 NamedBody682_2011

def NamedBody682_2013 : StackLang.HolProg 64 :=
.seq NamedBody682_2007 NamedBody682_2012

def NamedBody682_2014 : StackLang.HolProg 64 :=
.seq NamedBody682_2006 NamedBody682_2013

def NamedBody682_2015 : StackLang.HolProg 64 :=
.seq NamedBody682_2005 NamedBody682_2014

def NamedBody682_2016 : StackLang.HolProg 64 :=
.seq NamedBody682_2004 NamedBody682_2015

def NamedBody682_2017 : StackLang.HolProg 64 :=
.seq NamedBody682_2003 NamedBody682_2016

def NamedBody682_2018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_2019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_2020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody682_2021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_2022 : StackLang.HolProg 64 :=
.seq NamedBody682_2020 NamedBody682_2021

def NamedBody682_2023 : StackLang.HolProg 64 :=
.seq NamedBody682_2019 NamedBody682_2022

def NamedBody682_2024 : StackLang.HolProg 64 :=
.seq NamedBody682_2018 NamedBody682_2023

def NamedBody682_2025 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_2026 : StackLang.HolProg 64 :=
.seq NamedBody682_2024 NamedBody682_2025

def NamedBody682_2027 : StackLang.HolProg 64 :=
.call (some (NamedBody682_2017, 1, 682, 54)) (Sum.inl 670) (some (NamedBody682_2026, 682, 55))

def NamedBody682_2028 : StackLang.HolProg 64 :=
.seq NamedBody682_2002 NamedBody682_2027

def NamedBody682_2029 : StackLang.HolProg 64 :=
.seq NamedBody682_2001 NamedBody682_2028

def NamedBody682_2030 : StackLang.HolProg 64 :=
.seq NamedBody682_2000 NamedBody682_2029

def NamedBody682_2031 : StackLang.HolProg 64 :=
.seq NamedBody682_1971 NamedBody682_2030

def NamedBody682_2032 : StackLang.HolProg 64 :=
.seq NamedBody682_1968 NamedBody682_2031

def NamedBody682_2033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_2034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_2035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 8#64)

def NamedBody682_2036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody682_2037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_2038 : StackLang.HolProg 64 :=
.seq NamedBody682_2036 NamedBody682_2037

def NamedBody682_2039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2824#64)

def NamedBody682_2041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_2042 : StackLang.HolProg 64 :=
.seq NamedBody682_2040 NamedBody682_2041

def NamedBody682_2043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_2044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_2045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_2046 : StackLang.HolProg 64 :=
.seq NamedBody682_2044 NamedBody682_2045

def NamedBody682_2047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2048 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_2046 NamedBody682_2047

def NamedBody682_2049 : StackLang.HolProg 64 :=
.seq NamedBody682_2043 NamedBody682_2048

def NamedBody682_2050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_2051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_2052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 57

def NamedBody682_2053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_2054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_2056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_2058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_2059 : StackLang.HolProg 64 :=
.seq NamedBody682_2057 NamedBody682_2058

def NamedBody682_2060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_2061 : StackLang.HolProg 64 :=
.seq NamedBody682_2059 NamedBody682_2060

def NamedBody682_2062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2063 : StackLang.HolProg 64 :=
.seq NamedBody682_2061 NamedBody682_2062

def NamedBody682_2064 : StackLang.HolProg 64 :=
.seq NamedBody682_2056 NamedBody682_2063

def NamedBody682_2065 : StackLang.HolProg 64 :=
.seq NamedBody682_2055 NamedBody682_2064

def NamedBody682_2066 : StackLang.HolProg 64 :=
.seq NamedBody682_2054 NamedBody682_2065

def NamedBody682_2067 : StackLang.HolProg 64 :=
.seq NamedBody682_2053 NamedBody682_2066

def NamedBody682_2068 : StackLang.HolProg 64 :=
.seq NamedBody682_2052 NamedBody682_2067

def NamedBody682_2069 : StackLang.HolProg 64 :=
.seq NamedBody682_2051 NamedBody682_2068

def NamedBody682_2070 : StackLang.HolProg 64 :=
.seq NamedBody682_2050 NamedBody682_2069

def NamedBody682_2071 : StackLang.HolProg 64 :=
.seq NamedBody682_2049 NamedBody682_2070

def NamedBody682_2072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_2076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_2078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_2079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_2080 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_2081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_2082 : StackLang.HolProg 64 :=
.seq NamedBody682_2080 NamedBody682_2081

def NamedBody682_2083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_2084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_2085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_2086 : StackLang.HolProg 64 :=
.seq NamedBody682_2084 NamedBody682_2085

def NamedBody682_2087 : StackLang.HolProg 64 :=
.seq NamedBody682_2083 NamedBody682_2086

def NamedBody682_2088 : StackLang.HolProg 64 :=
.seq NamedBody682_2082 NamedBody682_2087

def NamedBody682_2089 : StackLang.HolProg 64 :=
.seq NamedBody682_2079 NamedBody682_2088

def NamedBody682_2090 : StackLang.HolProg 64 :=
.seq NamedBody682_2078 NamedBody682_2089

def NamedBody682_2091 : StackLang.HolProg 64 :=
.seq NamedBody682_2077 NamedBody682_2090

def NamedBody682_2092 : StackLang.HolProg 64 :=
.seq NamedBody682_2076 NamedBody682_2091

def NamedBody682_2093 : StackLang.HolProg 64 :=
.seq NamedBody682_2075 NamedBody682_2092

def NamedBody682_2094 : StackLang.HolProg 64 :=
.seq NamedBody682_2074 NamedBody682_2093

def NamedBody682_2095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_2096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_2097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_2098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_2099 : StackLang.HolProg 64 :=
.seq NamedBody682_2097 NamedBody682_2098

def NamedBody682_2100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_2101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody682_2102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_2103 : StackLang.HolProg 64 :=
.seq NamedBody682_2101 NamedBody682_2102

def NamedBody682_2104 : StackLang.HolProg 64 :=
.seq NamedBody682_2100 NamedBody682_2103

def NamedBody682_2105 : StackLang.HolProg 64 :=
.seq NamedBody682_2099 NamedBody682_2104

def NamedBody682_2106 : StackLang.HolProg 64 :=
.seq NamedBody682_2096 NamedBody682_2105

def NamedBody682_2107 : StackLang.HolProg 64 :=
.seq NamedBody682_2095 NamedBody682_2106

def NamedBody682_2108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_2109 : StackLang.HolProg 64 :=
.seq NamedBody682_2107 NamedBody682_2108

def NamedBody682_2110 : StackLang.HolProg 64 :=
.call (some (NamedBody682_2094, 1, 682, 56)) (Sum.inl 675) (some (NamedBody682_2109, 682, 57))

def NamedBody682_2111 : StackLang.HolProg 64 :=
.seq NamedBody682_2073 NamedBody682_2110

def NamedBody682_2112 : StackLang.HolProg 64 :=
.seq NamedBody682_2072 NamedBody682_2111

def NamedBody682_2113 : StackLang.HolProg 64 :=
.seq NamedBody682_2071 NamedBody682_2112

def NamedBody682_2114 : StackLang.HolProg 64 :=
.seq NamedBody682_2042 NamedBody682_2113

def NamedBody682_2115 : StackLang.HolProg 64 :=
.seq NamedBody682_2039 NamedBody682_2114

def NamedBody682_2116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_2117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_2118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_2119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_2120 : StackLang.HolProg 64 :=
.seq NamedBody682_2118 NamedBody682_2119

def NamedBody682_2121 : StackLang.HolProg 64 :=
.seq NamedBody682_2117 NamedBody682_2120

def NamedBody682_2122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2825#64)

def NamedBody682_2124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_2125 : StackLang.HolProg 64 :=
.seq NamedBody682_2123 NamedBody682_2124

def NamedBody682_2126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_2127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_2128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_2129 : StackLang.HolProg 64 :=
.seq NamedBody682_2127 NamedBody682_2128

def NamedBody682_2130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_2129 NamedBody682_2130

def NamedBody682_2132 : StackLang.HolProg 64 :=
.seq NamedBody682_2126 NamedBody682_2131

def NamedBody682_2133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_2134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_2135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 59

def NamedBody682_2136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_2137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_2139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_2141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_2142 : StackLang.HolProg 64 :=
.seq NamedBody682_2140 NamedBody682_2141

def NamedBody682_2143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_2144 : StackLang.HolProg 64 :=
.seq NamedBody682_2142 NamedBody682_2143

def NamedBody682_2145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2146 : StackLang.HolProg 64 :=
.seq NamedBody682_2144 NamedBody682_2145

def NamedBody682_2147 : StackLang.HolProg 64 :=
.seq NamedBody682_2139 NamedBody682_2146

def NamedBody682_2148 : StackLang.HolProg 64 :=
.seq NamedBody682_2138 NamedBody682_2147

def NamedBody682_2149 : StackLang.HolProg 64 :=
.seq NamedBody682_2137 NamedBody682_2148

def NamedBody682_2150 : StackLang.HolProg 64 :=
.seq NamedBody682_2136 NamedBody682_2149

def NamedBody682_2151 : StackLang.HolProg 64 :=
.seq NamedBody682_2135 NamedBody682_2150

def NamedBody682_2152 : StackLang.HolProg 64 :=
.seq NamedBody682_2134 NamedBody682_2151

def NamedBody682_2153 : StackLang.HolProg 64 :=
.seq NamedBody682_2133 NamedBody682_2152

def NamedBody682_2154 : StackLang.HolProg 64 :=
.seq NamedBody682_2132 NamedBody682_2153

def NamedBody682_2155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_2159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_2161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_2162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_2163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_2164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_2165 : StackLang.HolProg 64 :=
.seq NamedBody682_2163 NamedBody682_2164

def NamedBody682_2166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_2167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_2168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_2169 : StackLang.HolProg 64 :=
.seq NamedBody682_2167 NamedBody682_2168

def NamedBody682_2170 : StackLang.HolProg 64 :=
.seq NamedBody682_2166 NamedBody682_2169

def NamedBody682_2171 : StackLang.HolProg 64 :=
.seq NamedBody682_2165 NamedBody682_2170

def NamedBody682_2172 : StackLang.HolProg 64 :=
.seq NamedBody682_2162 NamedBody682_2171

def NamedBody682_2173 : StackLang.HolProg 64 :=
.seq NamedBody682_2161 NamedBody682_2172

def NamedBody682_2174 : StackLang.HolProg 64 :=
.seq NamedBody682_2160 NamedBody682_2173

def NamedBody682_2175 : StackLang.HolProg 64 :=
.seq NamedBody682_2159 NamedBody682_2174

def NamedBody682_2176 : StackLang.HolProg 64 :=
.seq NamedBody682_2158 NamedBody682_2175

def NamedBody682_2177 : StackLang.HolProg 64 :=
.seq NamedBody682_2157 NamedBody682_2176

def NamedBody682_2178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_2179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_2180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_2181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_2182 : StackLang.HolProg 64 :=
.seq NamedBody682_2180 NamedBody682_2181

def NamedBody682_2183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_2184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody682_2185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_2186 : StackLang.HolProg 64 :=
.seq NamedBody682_2184 NamedBody682_2185

def NamedBody682_2187 : StackLang.HolProg 64 :=
.seq NamedBody682_2183 NamedBody682_2186

def NamedBody682_2188 : StackLang.HolProg 64 :=
.seq NamedBody682_2182 NamedBody682_2187

def NamedBody682_2189 : StackLang.HolProg 64 :=
.seq NamedBody682_2179 NamedBody682_2188

def NamedBody682_2190 : StackLang.HolProg 64 :=
.seq NamedBody682_2178 NamedBody682_2189

def NamedBody682_2191 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_2192 : StackLang.HolProg 64 :=
.seq NamedBody682_2190 NamedBody682_2191

def NamedBody682_2193 : StackLang.HolProg 64 :=
.call (some (NamedBody682_2177, 1, 682, 58)) (Sum.inl 77) (some (NamedBody682_2192, 682, 59))

def NamedBody682_2194 : StackLang.HolProg 64 :=
.seq NamedBody682_2156 NamedBody682_2193

def NamedBody682_2195 : StackLang.HolProg 64 :=
.seq NamedBody682_2155 NamedBody682_2194

def NamedBody682_2196 : StackLang.HolProg 64 :=
.seq NamedBody682_2154 NamedBody682_2195

def NamedBody682_2197 : StackLang.HolProg 64 :=
.seq NamedBody682_2125 NamedBody682_2196

def NamedBody682_2198 : StackLang.HolProg 64 :=
.seq NamedBody682_2122 NamedBody682_2197

def NamedBody682_2199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_2200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_2202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_2203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_2204 : StackLang.HolProg 64 :=
.seq NamedBody682_2202 NamedBody682_2203

def NamedBody682_2205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2826#64)

def NamedBody682_2207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_2208 : StackLang.HolProg 64 :=
.seq NamedBody682_2206 NamedBody682_2207

def NamedBody682_2209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_2210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_2211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_2212 : StackLang.HolProg 64 :=
.seq NamedBody682_2210 NamedBody682_2211

def NamedBody682_2213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2214 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_2212 NamedBody682_2213

def NamedBody682_2215 : StackLang.HolProg 64 :=
.seq NamedBody682_2209 NamedBody682_2214

def NamedBody682_2216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_2217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_2218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 61

def NamedBody682_2219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_2220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_2222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_2224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_2225 : StackLang.HolProg 64 :=
.seq NamedBody682_2223 NamedBody682_2224

def NamedBody682_2226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_2227 : StackLang.HolProg 64 :=
.seq NamedBody682_2225 NamedBody682_2226

def NamedBody682_2228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2229 : StackLang.HolProg 64 :=
.seq NamedBody682_2227 NamedBody682_2228

def NamedBody682_2230 : StackLang.HolProg 64 :=
.seq NamedBody682_2222 NamedBody682_2229

def NamedBody682_2231 : StackLang.HolProg 64 :=
.seq NamedBody682_2221 NamedBody682_2230

def NamedBody682_2232 : StackLang.HolProg 64 :=
.seq NamedBody682_2220 NamedBody682_2231

def NamedBody682_2233 : StackLang.HolProg 64 :=
.seq NamedBody682_2219 NamedBody682_2232

def NamedBody682_2234 : StackLang.HolProg 64 :=
.seq NamedBody682_2218 NamedBody682_2233

def NamedBody682_2235 : StackLang.HolProg 64 :=
.seq NamedBody682_2217 NamedBody682_2234

def NamedBody682_2236 : StackLang.HolProg 64 :=
.seq NamedBody682_2216 NamedBody682_2235

def NamedBody682_2237 : StackLang.HolProg 64 :=
.seq NamedBody682_2215 NamedBody682_2236

def NamedBody682_2238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_2242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_2244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_2245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_2246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_2247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_2248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_2249 : StackLang.HolProg 64 :=
.seq NamedBody682_2247 NamedBody682_2248

def NamedBody682_2250 : StackLang.HolProg 64 :=
.seq NamedBody682_2246 NamedBody682_2249

def NamedBody682_2251 : StackLang.HolProg 64 :=
.seq NamedBody682_2245 NamedBody682_2250

def NamedBody682_2252 : StackLang.HolProg 64 :=
.seq NamedBody682_2244 NamedBody682_2251

def NamedBody682_2253 : StackLang.HolProg 64 :=
.seq NamedBody682_2243 NamedBody682_2252

def NamedBody682_2254 : StackLang.HolProg 64 :=
.seq NamedBody682_2242 NamedBody682_2253

def NamedBody682_2255 : StackLang.HolProg 64 :=
.seq NamedBody682_2241 NamedBody682_2254

def NamedBody682_2256 : StackLang.HolProg 64 :=
.seq NamedBody682_2240 NamedBody682_2255

def NamedBody682_2257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_2258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody682_2259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody682_2260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody682_2261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_2262 : StackLang.HolProg 64 :=
.seq NamedBody682_2260 NamedBody682_2261

def NamedBody682_2263 : StackLang.HolProg 64 :=
.seq NamedBody682_2259 NamedBody682_2262

def NamedBody682_2264 : StackLang.HolProg 64 :=
.seq NamedBody682_2258 NamedBody682_2263

def NamedBody682_2265 : StackLang.HolProg 64 :=
.seq NamedBody682_2257 NamedBody682_2264

def NamedBody682_2266 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_2267 : StackLang.HolProg 64 :=
.seq NamedBody682_2265 NamedBody682_2266

def NamedBody682_2268 : StackLang.HolProg 64 :=
.call (some (NamedBody682_2256, 1, 682, 60)) (Sum.inl 77) (some (NamedBody682_2267, 682, 61))

def NamedBody682_2269 : StackLang.HolProg 64 :=
.seq NamedBody682_2239 NamedBody682_2268

def NamedBody682_2270 : StackLang.HolProg 64 :=
.seq NamedBody682_2238 NamedBody682_2269

def NamedBody682_2271 : StackLang.HolProg 64 :=
.seq NamedBody682_2237 NamedBody682_2270

def NamedBody682_2272 : StackLang.HolProg 64 :=
.seq NamedBody682_2208 NamedBody682_2271

def NamedBody682_2273 : StackLang.HolProg 64 :=
.seq NamedBody682_2205 NamedBody682_2272

def NamedBody682_2274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_2275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody682_2277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_2279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2827#64)

def NamedBody682_2282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_2283 : StackLang.HolProg 64 :=
.seq NamedBody682_2281 NamedBody682_2282

def NamedBody682_2284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_2285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_2286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_2287 : StackLang.HolProg 64 :=
.seq NamedBody682_2285 NamedBody682_2286

def NamedBody682_2288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2289 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_2287 NamedBody682_2288

def NamedBody682_2290 : StackLang.HolProg 64 :=
.seq NamedBody682_2284 NamedBody682_2289

def NamedBody682_2291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_2292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_2293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 63

def NamedBody682_2294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_2295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_2297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_2299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_2300 : StackLang.HolProg 64 :=
.seq NamedBody682_2298 NamedBody682_2299

def NamedBody682_2301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_2302 : StackLang.HolProg 64 :=
.seq NamedBody682_2300 NamedBody682_2301

def NamedBody682_2303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2304 : StackLang.HolProg 64 :=
.seq NamedBody682_2302 NamedBody682_2303

def NamedBody682_2305 : StackLang.HolProg 64 :=
.seq NamedBody682_2297 NamedBody682_2304

def NamedBody682_2306 : StackLang.HolProg 64 :=
.seq NamedBody682_2296 NamedBody682_2305

def NamedBody682_2307 : StackLang.HolProg 64 :=
.seq NamedBody682_2295 NamedBody682_2306

def NamedBody682_2308 : StackLang.HolProg 64 :=
.seq NamedBody682_2294 NamedBody682_2307

def NamedBody682_2309 : StackLang.HolProg 64 :=
.seq NamedBody682_2293 NamedBody682_2308

def NamedBody682_2310 : StackLang.HolProg 64 :=
.seq NamedBody682_2292 NamedBody682_2309

def NamedBody682_2311 : StackLang.HolProg 64 :=
.seq NamedBody682_2291 NamedBody682_2310

def NamedBody682_2312 : StackLang.HolProg 64 :=
.seq NamedBody682_2290 NamedBody682_2311

def NamedBody682_2313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_2317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_2319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_2320 : StackLang.HolProg 64 :=
.seq NamedBody682_2318 NamedBody682_2319

def NamedBody682_2321 : StackLang.HolProg 64 :=
.seq NamedBody682_2317 NamedBody682_2320

def NamedBody682_2322 : StackLang.HolProg 64 :=
.seq NamedBody682_2316 NamedBody682_2321

def NamedBody682_2323 : StackLang.HolProg 64 :=
.seq NamedBody682_2315 NamedBody682_2322

def NamedBody682_2324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody682_2325 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_2326 : StackLang.HolProg 64 :=
.seq NamedBody682_2324 NamedBody682_2325

def NamedBody682_2327 : StackLang.HolProg 64 :=
.call (some (NamedBody682_2323, 1, 682, 62)) (Sum.inl 77) (some (NamedBody682_2326, 682, 63))

def NamedBody682_2328 : StackLang.HolProg 64 :=
.seq NamedBody682_2314 NamedBody682_2327

def NamedBody682_2329 : StackLang.HolProg 64 :=
.seq NamedBody682_2313 NamedBody682_2328

def NamedBody682_2330 : StackLang.HolProg 64 :=
.seq NamedBody682_2312 NamedBody682_2329

def NamedBody682_2331 : StackLang.HolProg 64 :=
.seq NamedBody682_2283 NamedBody682_2330

def NamedBody682_2332 : StackLang.HolProg 64 :=
.seq NamedBody682_2280 NamedBody682_2331

def NamedBody682_2333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_2334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody682_2335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2828#64)

def NamedBody682_2337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_2338 : StackLang.HolProg 64 :=
.seq NamedBody682_2336 NamedBody682_2337

def NamedBody682_2339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_2340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody682_2341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody682_2342 : StackLang.HolProg 64 :=
.seq NamedBody682_2340 NamedBody682_2341

def NamedBody682_2343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2344 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody682_2342 NamedBody682_2343

def NamedBody682_2345 : StackLang.HolProg 64 :=
.seq NamedBody682_2339 NamedBody682_2344

def NamedBody682_2346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody682_2347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody682_2348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 682 65

def NamedBody682_2349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody682_2350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_2352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody682_2354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody682_2355 : StackLang.HolProg 64 :=
.seq NamedBody682_2353 NamedBody682_2354

def NamedBody682_2356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody682_2357 : StackLang.HolProg 64 :=
.seq NamedBody682_2355 NamedBody682_2356

def NamedBody682_2358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2359 : StackLang.HolProg 64 :=
.seq NamedBody682_2357 NamedBody682_2358

def NamedBody682_2360 : StackLang.HolProg 64 :=
.seq NamedBody682_2352 NamedBody682_2359

def NamedBody682_2361 : StackLang.HolProg 64 :=
.seq NamedBody682_2351 NamedBody682_2360

def NamedBody682_2362 : StackLang.HolProg 64 :=
.seq NamedBody682_2350 NamedBody682_2361

def NamedBody682_2363 : StackLang.HolProg 64 :=
.seq NamedBody682_2349 NamedBody682_2362

def NamedBody682_2364 : StackLang.HolProg 64 :=
.seq NamedBody682_2348 NamedBody682_2363

def NamedBody682_2365 : StackLang.HolProg 64 :=
.seq NamedBody682_2347 NamedBody682_2364

def NamedBody682_2366 : StackLang.HolProg 64 :=
.seq NamedBody682_2346 NamedBody682_2365

def NamedBody682_2367 : StackLang.HolProg 64 :=
.seq NamedBody682_2345 NamedBody682_2366

def NamedBody682_2368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody682_2372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody682_2373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody682_2374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody682_2375 : StackLang.HolProg 64 :=
.seq NamedBody682_2373 NamedBody682_2374

def NamedBody682_2376 : StackLang.HolProg 64 :=
.seq NamedBody682_2372 NamedBody682_2375

def NamedBody682_2377 : StackLang.HolProg 64 :=
.seq NamedBody682_2371 NamedBody682_2376

def NamedBody682_2378 : StackLang.HolProg 64 :=
.seq NamedBody682_2370 NamedBody682_2377

def NamedBody682_2379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody682_2380 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody682_2381 : StackLang.HolProg 64 :=
.seq NamedBody682_2379 NamedBody682_2380

def NamedBody682_2382 : StackLang.HolProg 64 :=
.call (some (NamedBody682_2378, 1, 682, 64)) (Sum.inl 70) (some (NamedBody682_2381, 682, 65))

def NamedBody682_2383 : StackLang.HolProg 64 :=
.seq NamedBody682_2369 NamedBody682_2382

def NamedBody682_2384 : StackLang.HolProg 64 :=
.seq NamedBody682_2368 NamedBody682_2383

def NamedBody682_2385 : StackLang.HolProg 64 :=
.seq NamedBody682_2367 NamedBody682_2384

def NamedBody682_2386 : StackLang.HolProg 64 :=
.seq NamedBody682_2338 NamedBody682_2385

def NamedBody682_2387 : StackLang.HolProg 64 :=
.seq NamedBody682_2335 NamedBody682_2386

def NamedBody682_2388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody682_2389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody682_2390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody682_2391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody682_2392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody682_2393 : StackLang.HolProg 64 :=
.seq NamedBody682_2391 NamedBody682_2392

def NamedBody682_2394 : StackLang.HolProg 64 :=
.seq NamedBody682_2390 NamedBody682_2393

def NamedBody682_2395 : StackLang.HolProg 64 :=
.seq NamedBody682_2389 NamedBody682_2394

def NamedBody682_2396 : StackLang.HolProg 64 :=
.seq NamedBody682_2388 NamedBody682_2395

def NamedBody682_2397 : StackLang.HolProg 64 :=
.seq NamedBody682_2387 NamedBody682_2396

def NamedBody682_2398 : StackLang.HolProg 64 :=
.seq NamedBody682_2334 NamedBody682_2397

def NamedBody682_2399 : StackLang.HolProg 64 :=
.seq NamedBody682_2333 NamedBody682_2398

def NamedBody682_2400 : StackLang.HolProg 64 :=
.seq NamedBody682_2332 NamedBody682_2399

def NamedBody682_2401 : StackLang.HolProg 64 :=
.seq NamedBody682_2279 NamedBody682_2400

def NamedBody682_2402 : StackLang.HolProg 64 :=
.seq NamedBody682_2278 NamedBody682_2401

def NamedBody682_2403 : StackLang.HolProg 64 :=
.seq NamedBody682_2277 NamedBody682_2402

def NamedBody682_2404 : StackLang.HolProg 64 :=
.seq NamedBody682_2276 NamedBody682_2403

def NamedBody682_2405 : StackLang.HolProg 64 :=
.seq NamedBody682_2275 NamedBody682_2404

def NamedBody682_2406 : StackLang.HolProg 64 :=
.seq NamedBody682_2274 NamedBody682_2405

def NamedBody682_2407 : StackLang.HolProg 64 :=
.seq NamedBody682_2273 NamedBody682_2406

def NamedBody682_2408 : StackLang.HolProg 64 :=
.seq NamedBody682_2204 NamedBody682_2407

def NamedBody682_2409 : StackLang.HolProg 64 :=
.seq NamedBody682_2201 NamedBody682_2408

def NamedBody682_2410 : StackLang.HolProg 64 :=
.seq NamedBody682_2200 NamedBody682_2409

def NamedBody682_2411 : StackLang.HolProg 64 :=
.seq NamedBody682_2199 NamedBody682_2410

def NamedBody682_2412 : StackLang.HolProg 64 :=
.seq NamedBody682_2198 NamedBody682_2411

def NamedBody682_2413 : StackLang.HolProg 64 :=
.seq NamedBody682_2121 NamedBody682_2412

def NamedBody682_2414 : StackLang.HolProg 64 :=
.seq NamedBody682_2116 NamedBody682_2413

def NamedBody682_2415 : StackLang.HolProg 64 :=
.seq NamedBody682_2115 NamedBody682_2414

def NamedBody682_2416 : StackLang.HolProg 64 :=
.seq NamedBody682_2038 NamedBody682_2415

def NamedBody682_2417 : StackLang.HolProg 64 :=
.seq NamedBody682_2035 NamedBody682_2416

def NamedBody682_2418 : StackLang.HolProg 64 :=
.seq NamedBody682_2034 NamedBody682_2417

def NamedBody682_2419 : StackLang.HolProg 64 :=
.seq NamedBody682_2033 NamedBody682_2418

def NamedBody682_2420 : StackLang.HolProg 64 :=
.seq NamedBody682_2032 NamedBody682_2419

def NamedBody682_2421 : StackLang.HolProg 64 :=
.seq NamedBody682_1967 NamedBody682_2420

def NamedBody682_2422 : StackLang.HolProg 64 :=
.seq NamedBody682_1960 NamedBody682_2421

def NamedBody682_2423 : StackLang.HolProg 64 :=
.seq NamedBody682_1959 NamedBody682_2422

def NamedBody682_2424 : StackLang.HolProg 64 :=
.seq NamedBody682_1858 NamedBody682_2423

def NamedBody682_2425 : StackLang.HolProg 64 :=
.seq NamedBody682_1851 NamedBody682_2424

def NamedBody682_2426 : StackLang.HolProg 64 :=
.seq NamedBody682_1850 NamedBody682_2425

def NamedBody682_2427 : StackLang.HolProg 64 :=
.seq NamedBody682_1781 NamedBody682_2426

def NamedBody682_2428 : StackLang.HolProg 64 :=
.seq NamedBody682_1776 NamedBody682_2427

def NamedBody682_2429 : StackLang.HolProg 64 :=
.seq NamedBody682_1775 NamedBody682_2428

def NamedBody682_2430 : StackLang.HolProg 64 :=
.seq NamedBody682_1774 NamedBody682_2429

def NamedBody682_2431 : StackLang.HolProg 64 :=
.seq NamedBody682_1773 NamedBody682_2430

def NamedBody682_2432 : StackLang.HolProg 64 :=
.seq NamedBody682_1716 NamedBody682_2431

def NamedBody682_2433 : StackLang.HolProg 64 :=
.seq NamedBody682_1707 NamedBody682_2432

def NamedBody682_2434 : StackLang.HolProg 64 :=
.seq NamedBody682_1706 NamedBody682_2433

def NamedBody682_2435 : StackLang.HolProg 64 :=
.seq NamedBody682_1645 NamedBody682_2434

def NamedBody682_2436 : StackLang.HolProg 64 :=
.seq NamedBody682_1640 NamedBody682_2435

def NamedBody682_2437 : StackLang.HolProg 64 :=
.seq NamedBody682_1639 NamedBody682_2436

def NamedBody682_2438 : StackLang.HolProg 64 :=
.seq NamedBody682_1570 NamedBody682_2437

def NamedBody682_2439 : StackLang.HolProg 64 :=
.seq NamedBody682_1561 NamedBody682_2438

def NamedBody682_2440 : StackLang.HolProg 64 :=
.seq NamedBody682_1560 NamedBody682_2439

def NamedBody682_2441 : StackLang.HolProg 64 :=
.seq NamedBody682_1499 NamedBody682_2440

def NamedBody682_2442 : StackLang.HolProg 64 :=
.seq NamedBody682_1492 NamedBody682_2441

def NamedBody682_2443 : StackLang.HolProg 64 :=
.seq NamedBody682_1491 NamedBody682_2442

def NamedBody682_2444 : StackLang.HolProg 64 :=
.seq NamedBody682_1374 NamedBody682_2443

def NamedBody682_2445 : StackLang.HolProg 64 :=
.seq NamedBody682_1371 NamedBody682_2444

def NamedBody682_2446 : StackLang.HolProg 64 :=
.seq NamedBody682_1370 NamedBody682_2445

def NamedBody682_2447 : StackLang.HolProg 64 :=
.seq NamedBody682_1369 NamedBody682_2446

def NamedBody682_2448 : StackLang.HolProg 64 :=
.seq NamedBody682_1368 NamedBody682_2447

def NamedBody682_2449 : StackLang.HolProg 64 :=
.seq NamedBody682_1267 NamedBody682_2448

def NamedBody682_2450 : StackLang.HolProg 64 :=
.seq NamedBody682_1262 NamedBody682_2449

def NamedBody682_2451 : StackLang.HolProg 64 :=
.seq NamedBody682_1261 NamedBody682_2450

def NamedBody682_2452 : StackLang.HolProg 64 :=
.seq NamedBody682_1260 NamedBody682_2451

def NamedBody682_2453 : StackLang.HolProg 64 :=
.seq NamedBody682_1259 NamedBody682_2452

def NamedBody682_2454 : StackLang.HolProg 64 :=
.seq NamedBody682_1202 NamedBody682_2453

def NamedBody682_2455 : StackLang.HolProg 64 :=
.seq NamedBody682_1193 NamedBody682_2454

def NamedBody682_2456 : StackLang.HolProg 64 :=
.seq NamedBody682_1192 NamedBody682_2455

def NamedBody682_2457 : StackLang.HolProg 64 :=
.seq NamedBody682_1127 NamedBody682_2456

def NamedBody682_2458 : StackLang.HolProg 64 :=
.seq NamedBody682_1120 NamedBody682_2457

def NamedBody682_2459 : StackLang.HolProg 64 :=
.seq NamedBody682_1119 NamedBody682_2458

def NamedBody682_2460 : StackLang.HolProg 64 :=
.seq NamedBody682_1058 NamedBody682_2459

def NamedBody682_2461 : StackLang.HolProg 64 :=
.seq NamedBody682_1049 NamedBody682_2460

def NamedBody682_2462 : StackLang.HolProg 64 :=
.seq NamedBody682_1048 NamedBody682_2461

def NamedBody682_2463 : StackLang.HolProg 64 :=
.seq NamedBody682_983 NamedBody682_2462

def NamedBody682_2464 : StackLang.HolProg 64 :=
.seq NamedBody682_978 NamedBody682_2463

def NamedBody682_2465 : StackLang.HolProg 64 :=
.seq NamedBody682_977 NamedBody682_2464

def NamedBody682_2466 : StackLang.HolProg 64 :=
.seq NamedBody682_976 NamedBody682_2465

def NamedBody682_2467 : StackLang.HolProg 64 :=
.seq NamedBody682_975 NamedBody682_2466

def NamedBody682_2468 : StackLang.HolProg 64 :=
.seq NamedBody682_914 NamedBody682_2467

def NamedBody682_2469 : StackLang.HolProg 64 :=
.seq NamedBody682_907 NamedBody682_2468

def NamedBody682_2470 : StackLang.HolProg 64 :=
.seq NamedBody682_906 NamedBody682_2469

def NamedBody682_2471 : StackLang.HolProg 64 :=
.seq NamedBody682_845 NamedBody682_2470

def NamedBody682_2472 : StackLang.HolProg 64 :=
.seq NamedBody682_836 NamedBody682_2471

def NamedBody682_2473 : StackLang.HolProg 64 :=
.seq NamedBody682_835 NamedBody682_2472

def NamedBody682_2474 : StackLang.HolProg 64 :=
.seq NamedBody682_770 NamedBody682_2473

def NamedBody682_2475 : StackLang.HolProg 64 :=
.seq NamedBody682_763 NamedBody682_2474

def NamedBody682_2476 : StackLang.HolProg 64 :=
.seq NamedBody682_762 NamedBody682_2475

def NamedBody682_2477 : StackLang.HolProg 64 :=
.seq NamedBody682_689 NamedBody682_2476

def NamedBody682_2478 : StackLang.HolProg 64 :=
.seq NamedBody682_682 NamedBody682_2477

def NamedBody682_2479 : StackLang.HolProg 64 :=
.seq NamedBody682_681 NamedBody682_2478

def NamedBody682_2480 : StackLang.HolProg 64 :=
.seq NamedBody682_600 NamedBody682_2479

def NamedBody682_2481 : StackLang.HolProg 64 :=
.seq NamedBody682_595 NamedBody682_2480

def NamedBody682_2482 : StackLang.HolProg 64 :=
.seq NamedBody682_594 NamedBody682_2481

def NamedBody682_2483 : StackLang.HolProg 64 :=
.seq NamedBody682_593 NamedBody682_2482

def NamedBody682_2484 : StackLang.HolProg 64 :=
.seq NamedBody682_592 NamedBody682_2483

def NamedBody682_2485 : StackLang.HolProg 64 :=
.seq NamedBody682_531 NamedBody682_2484

def NamedBody682_2486 : StackLang.HolProg 64 :=
.seq NamedBody682_522 NamedBody682_2485

def NamedBody682_2487 : StackLang.HolProg 64 :=
.seq NamedBody682_521 NamedBody682_2486

def NamedBody682_2488 : StackLang.HolProg 64 :=
.seq NamedBody682_458 NamedBody682_2487

def NamedBody682_2489 : StackLang.HolProg 64 :=
.seq NamedBody682_453 NamedBody682_2488

def NamedBody682_2490 : StackLang.HolProg 64 :=
.seq NamedBody682_452 NamedBody682_2489

def NamedBody682_2491 : StackLang.HolProg 64 :=
.seq NamedBody682_397 NamedBody682_2490

def NamedBody682_2492 : StackLang.HolProg 64 :=
.seq NamedBody682_392 NamedBody682_2491

def NamedBody682_2493 : StackLang.HolProg 64 :=
.seq NamedBody682_391 NamedBody682_2492

def NamedBody682_2494 : StackLang.HolProg 64 :=
.seq NamedBody682_336 NamedBody682_2493

def NamedBody682_2495 : StackLang.HolProg 64 :=
.seq NamedBody682_331 NamedBody682_2494

def NamedBody682_2496 : StackLang.HolProg 64 :=
.seq NamedBody682_330 NamedBody682_2495

def NamedBody682_2497 : StackLang.HolProg 64 :=
.seq NamedBody682_275 NamedBody682_2496

def NamedBody682_2498 : StackLang.HolProg 64 :=
.seq NamedBody682_270 NamedBody682_2497

def NamedBody682_2499 : StackLang.HolProg 64 :=
.seq NamedBody682_269 NamedBody682_2498

def NamedBody682_2500 : StackLang.HolProg 64 :=
.seq NamedBody682_214 NamedBody682_2499

def NamedBody682_2501 : StackLang.HolProg 64 :=
.seq NamedBody682_209 NamedBody682_2500

def NamedBody682_2502 : StackLang.HolProg 64 :=
.seq NamedBody682_208 NamedBody682_2501

def NamedBody682_2503 : StackLang.HolProg 64 :=
.seq NamedBody682_153 NamedBody682_2502

def NamedBody682_2504 : StackLang.HolProg 64 :=
.seq NamedBody682_148 NamedBody682_2503

def NamedBody682_2505 : StackLang.HolProg 64 :=
.seq NamedBody682_147 NamedBody682_2504

def NamedBody682_2506 : StackLang.HolProg 64 :=
.seq NamedBody682_92 NamedBody682_2505

def NamedBody682_2507 : StackLang.HolProg 64 :=
.seq NamedBody682_83 NamedBody682_2506

def NamedBody682_2508 : StackLang.HolProg 64 :=
.seq NamedBody682_82 NamedBody682_2507

def NamedBody682_2509 : StackLang.HolProg 64 :=
.seq NamedBody682_81 NamedBody682_2508

def NamedBody682_2510 : StackLang.HolProg 64 :=
.seq NamedBody682_80 NamedBody682_2509

def NamedBody682_2511 : StackLang.HolProg 64 :=
.seq NamedBody682_79 NamedBody682_2510

def NamedBody682_2512 : StackLang.HolProg 64 :=
.seq NamedBody682_78 NamedBody682_2511

def NamedBody682_2513 : StackLang.HolProg 64 :=
.seq NamedBody682_77 NamedBody682_2512

def NamedBody682_2514 : StackLang.HolProg 64 :=
.seq NamedBody682_76 NamedBody682_2513

def NamedBody682_2515 : StackLang.HolProg 64 :=
.seq NamedBody682_17 NamedBody682_2514

def NamedBody682_2516 : StackLang.HolProg 64 :=
.seq NamedBody682_8 NamedBody682_2515

def NamedBody682_2517 : StackLang.HolProg 64 :=
.seq NamedBody682_7 NamedBody682_2516

def NamedBody682_2518 : StackLang.HolProg 64 :=
.seq NamedBody682_6 NamedBody682_2517

def Named682 : Nat × StackLang.HolProg 64 := (682, NamedBody682_2518)
theorem Named682_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed682 = Named682 := by
  kernel_rfl
#print axioms Named682_eq
end InitECandidate.Proofs.BackendStages
