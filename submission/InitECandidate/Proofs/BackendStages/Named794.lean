import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed794
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody794_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody794_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody794_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody794_3 : StackLang.HolProg 64 :=
.seq NamedBody794_1 NamedBody794_2

def NamedBody794_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody794_3 NamedBody794_4

def NamedBody794_6 : StackLang.HolProg 64 :=
.seq NamedBody794_0 NamedBody794_5

def NamedBody794_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody794_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody794_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody794_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody794_12 : StackLang.HolProg 64 :=
.seq NamedBody794_10 NamedBody794_11

def NamedBody794_13 : StackLang.HolProg 64 :=
.seq NamedBody794_9 NamedBody794_12

def NamedBody794_14 : StackLang.HolProg 64 :=
.seq NamedBody794_8 NamedBody794_13

def NamedBody794_15 : StackLang.HolProg 64 :=
.seq NamedBody794_7 NamedBody794_14

def NamedBody794_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3770#64)

def NamedBody794_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_19 : StackLang.HolProg 64 :=
.seq NamedBody794_17 NamedBody794_18

def NamedBody794_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody794_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody794_23 : StackLang.HolProg 64 :=
.seq NamedBody794_21 NamedBody794_22

def NamedBody794_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody794_23 NamedBody794_24

def NamedBody794_26 : StackLang.HolProg 64 :=
.seq NamedBody794_20 NamedBody794_25

def NamedBody794_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody794_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 3

def NamedBody794_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody794_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody794_36 : StackLang.HolProg 64 :=
.seq NamedBody794_34 NamedBody794_35

def NamedBody794_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody794_38 : StackLang.HolProg 64 :=
.seq NamedBody794_36 NamedBody794_37

def NamedBody794_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_40 : StackLang.HolProg 64 :=
.seq NamedBody794_38 NamedBody794_39

def NamedBody794_41 : StackLang.HolProg 64 :=
.seq NamedBody794_33 NamedBody794_40

def NamedBody794_42 : StackLang.HolProg 64 :=
.seq NamedBody794_32 NamedBody794_41

def NamedBody794_43 : StackLang.HolProg 64 :=
.seq NamedBody794_31 NamedBody794_42

def NamedBody794_44 : StackLang.HolProg 64 :=
.seq NamedBody794_30 NamedBody794_43

def NamedBody794_45 : StackLang.HolProg 64 :=
.seq NamedBody794_29 NamedBody794_44

def NamedBody794_46 : StackLang.HolProg 64 :=
.seq NamedBody794_28 NamedBody794_45

def NamedBody794_47 : StackLang.HolProg 64 :=
.seq NamedBody794_27 NamedBody794_46

def NamedBody794_48 : StackLang.HolProg 64 :=
.seq NamedBody794_26 NamedBody794_47

def NamedBody794_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody794_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody794_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody794_58 : StackLang.HolProg 64 :=
.seq NamedBody794_56 NamedBody794_57

def NamedBody794_59 : StackLang.HolProg 64 :=
.seq NamedBody794_55 NamedBody794_58

def NamedBody794_60 : StackLang.HolProg 64 :=
.seq NamedBody794_54 NamedBody794_59

def NamedBody794_61 : StackLang.HolProg 64 :=
.seq NamedBody794_53 NamedBody794_60

def NamedBody794_62 : StackLang.HolProg 64 :=
.seq NamedBody794_52 NamedBody794_61

def NamedBody794_63 : StackLang.HolProg 64 :=
.seq NamedBody794_51 NamedBody794_62

def NamedBody794_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody794_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody794_66 : StackLang.HolProg 64 :=
.seq NamedBody794_64 NamedBody794_65

def NamedBody794_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody794_68 : StackLang.HolProg 64 :=
.seq NamedBody794_66 NamedBody794_67

def NamedBody794_69 : StackLang.HolProg 64 :=
.call (some (NamedBody794_63, 1, 794, 2)) (Sum.inl 767) (some (NamedBody794_68, 794, 3))

def NamedBody794_70 : StackLang.HolProg 64 :=
.seq NamedBody794_50 NamedBody794_69

def NamedBody794_71 : StackLang.HolProg 64 :=
.seq NamedBody794_49 NamedBody794_70

def NamedBody794_72 : StackLang.HolProg 64 :=
.seq NamedBody794_48 NamedBody794_71

def NamedBody794_73 : StackLang.HolProg 64 :=
.seq NamedBody794_19 NamedBody794_72

def NamedBody794_74 : StackLang.HolProg 64 :=
.seq NamedBody794_16 NamedBody794_73

def NamedBody794_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody794_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody794_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody794_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody794_83 : StackLang.HolProg 64 :=
.seq NamedBody794_81 NamedBody794_82

def NamedBody794_84 : StackLang.HolProg 64 :=
.seq NamedBody794_80 NamedBody794_83

def NamedBody794_85 : StackLang.HolProg 64 :=
.seq NamedBody794_79 NamedBody794_84

def NamedBody794_86 : StackLang.HolProg 64 :=
.seq NamedBody794_78 NamedBody794_85

def NamedBody794_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody794_86 NamedBody794_87

def NamedBody794_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody794_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody794_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_94 : StackLang.HolProg 64 :=
.seq NamedBody794_92 NamedBody794_93

def NamedBody794_95 : StackLang.HolProg 64 :=
.seq NamedBody794_91 NamedBody794_94

def NamedBody794_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3771#64)

def NamedBody794_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_99 : StackLang.HolProg 64 :=
.seq NamedBody794_97 NamedBody794_98

def NamedBody794_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody794_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody794_103 : StackLang.HolProg 64 :=
.seq NamedBody794_101 NamedBody794_102

def NamedBody794_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody794_103 NamedBody794_104

def NamedBody794_106 : StackLang.HolProg 64 :=
.seq NamedBody794_100 NamedBody794_105

def NamedBody794_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody794_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 5

def NamedBody794_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody794_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody794_116 : StackLang.HolProg 64 :=
.seq NamedBody794_114 NamedBody794_115

def NamedBody794_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody794_118 : StackLang.HolProg 64 :=
.seq NamedBody794_116 NamedBody794_117

def NamedBody794_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_120 : StackLang.HolProg 64 :=
.seq NamedBody794_118 NamedBody794_119

def NamedBody794_121 : StackLang.HolProg 64 :=
.seq NamedBody794_113 NamedBody794_120

def NamedBody794_122 : StackLang.HolProg 64 :=
.seq NamedBody794_112 NamedBody794_121

def NamedBody794_123 : StackLang.HolProg 64 :=
.seq NamedBody794_111 NamedBody794_122

def NamedBody794_124 : StackLang.HolProg 64 :=
.seq NamedBody794_110 NamedBody794_123

def NamedBody794_125 : StackLang.HolProg 64 :=
.seq NamedBody794_109 NamedBody794_124

def NamedBody794_126 : StackLang.HolProg 64 :=
.seq NamedBody794_108 NamedBody794_125

def NamedBody794_127 : StackLang.HolProg 64 :=
.seq NamedBody794_107 NamedBody794_126

def NamedBody794_128 : StackLang.HolProg 64 :=
.seq NamedBody794_106 NamedBody794_127

def NamedBody794_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody794_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody794_137 : StackLang.HolProg 64 :=
.seq NamedBody794_135 NamedBody794_136

def NamedBody794_138 : StackLang.HolProg 64 :=
.seq NamedBody794_134 NamedBody794_137

def NamedBody794_139 : StackLang.HolProg 64 :=
.seq NamedBody794_133 NamedBody794_138

def NamedBody794_140 : StackLang.HolProg 64 :=
.seq NamedBody794_132 NamedBody794_139

def NamedBody794_141 : StackLang.HolProg 64 :=
.seq NamedBody794_131 NamedBody794_140

def NamedBody794_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody794_143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody794_144 : StackLang.HolProg 64 :=
.seq NamedBody794_142 NamedBody794_143

def NamedBody794_145 : StackLang.HolProg 64 :=
.call (some (NamedBody794_141, 1, 794, 4)) (Sum.inl 779) (some (NamedBody794_144, 794, 5))

def NamedBody794_146 : StackLang.HolProg 64 :=
.seq NamedBody794_130 NamedBody794_145

def NamedBody794_147 : StackLang.HolProg 64 :=
.seq NamedBody794_129 NamedBody794_146

def NamedBody794_148 : StackLang.HolProg 64 :=
.seq NamedBody794_128 NamedBody794_147

def NamedBody794_149 : StackLang.HolProg 64 :=
.seq NamedBody794_99 NamedBody794_148

def NamedBody794_150 : StackLang.HolProg 64 :=
.seq NamedBody794_96 NamedBody794_149

def NamedBody794_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody794_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody794_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody794_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody794_159 : StackLang.HolProg 64 :=
.seq NamedBody794_157 NamedBody794_158

def NamedBody794_160 : StackLang.HolProg 64 :=
.seq NamedBody794_156 NamedBody794_159

def NamedBody794_161 : StackLang.HolProg 64 :=
.seq NamedBody794_155 NamedBody794_160

def NamedBody794_162 : StackLang.HolProg 64 :=
.seq NamedBody794_154 NamedBody794_161

def NamedBody794_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody794_162 NamedBody794_163

def NamedBody794_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody794_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3772#64)

def NamedBody794_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_171 : StackLang.HolProg 64 :=
.seq NamedBody794_169 NamedBody794_170

def NamedBody794_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody794_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody794_175 : StackLang.HolProg 64 :=
.seq NamedBody794_173 NamedBody794_174

def NamedBody794_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_177 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody794_175 NamedBody794_176

def NamedBody794_178 : StackLang.HolProg 64 :=
.seq NamedBody794_172 NamedBody794_177

def NamedBody794_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody794_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 7

def NamedBody794_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody794_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody794_188 : StackLang.HolProg 64 :=
.seq NamedBody794_186 NamedBody794_187

def NamedBody794_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody794_190 : StackLang.HolProg 64 :=
.seq NamedBody794_188 NamedBody794_189

def NamedBody794_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_192 : StackLang.HolProg 64 :=
.seq NamedBody794_190 NamedBody794_191

def NamedBody794_193 : StackLang.HolProg 64 :=
.seq NamedBody794_185 NamedBody794_192

def NamedBody794_194 : StackLang.HolProg 64 :=
.seq NamedBody794_184 NamedBody794_193

def NamedBody794_195 : StackLang.HolProg 64 :=
.seq NamedBody794_183 NamedBody794_194

def NamedBody794_196 : StackLang.HolProg 64 :=
.seq NamedBody794_182 NamedBody794_195

def NamedBody794_197 : StackLang.HolProg 64 :=
.seq NamedBody794_181 NamedBody794_196

def NamedBody794_198 : StackLang.HolProg 64 :=
.seq NamedBody794_180 NamedBody794_197

def NamedBody794_199 : StackLang.HolProg 64 :=
.seq NamedBody794_179 NamedBody794_198

def NamedBody794_200 : StackLang.HolProg 64 :=
.seq NamedBody794_178 NamedBody794_199

def NamedBody794_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody794_208 : StackLang.HolProg 64 :=
.seq NamedBody794_206 NamedBody794_207

def NamedBody794_209 : StackLang.HolProg 64 :=
.seq NamedBody794_205 NamedBody794_208

def NamedBody794_210 : StackLang.HolProg 64 :=
.seq NamedBody794_204 NamedBody794_209

def NamedBody794_211 : StackLang.HolProg 64 :=
.seq NamedBody794_203 NamedBody794_210

def NamedBody794_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody794_214 : StackLang.HolProg 64 :=
.seq NamedBody794_212 NamedBody794_213

def NamedBody794_215 : StackLang.HolProg 64 :=
.call (some (NamedBody794_211, 1, 794, 6)) (Sum.inl 69) (some (NamedBody794_214, 794, 7))

def NamedBody794_216 : StackLang.HolProg 64 :=
.seq NamedBody794_202 NamedBody794_215

def NamedBody794_217 : StackLang.HolProg 64 :=
.seq NamedBody794_201 NamedBody794_216

def NamedBody794_218 : StackLang.HolProg 64 :=
.seq NamedBody794_200 NamedBody794_217

def NamedBody794_219 : StackLang.HolProg 64 :=
.seq NamedBody794_171 NamedBody794_218

def NamedBody794_220 : StackLang.HolProg 64 :=
.seq NamedBody794_168 NamedBody794_219

def NamedBody794_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 96#64)

def NamedBody794_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3773#64)

def NamedBody794_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_227 : StackLang.HolProg 64 :=
.seq NamedBody794_225 NamedBody794_226

def NamedBody794_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody794_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody794_231 : StackLang.HolProg 64 :=
.seq NamedBody794_229 NamedBody794_230

def NamedBody794_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_233 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody794_231 NamedBody794_232

def NamedBody794_234 : StackLang.HolProg 64 :=
.seq NamedBody794_228 NamedBody794_233

def NamedBody794_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody794_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 9

def NamedBody794_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody794_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody794_244 : StackLang.HolProg 64 :=
.seq NamedBody794_242 NamedBody794_243

def NamedBody794_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody794_246 : StackLang.HolProg 64 :=
.seq NamedBody794_244 NamedBody794_245

def NamedBody794_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_248 : StackLang.HolProg 64 :=
.seq NamedBody794_246 NamedBody794_247

def NamedBody794_249 : StackLang.HolProg 64 :=
.seq NamedBody794_241 NamedBody794_248

def NamedBody794_250 : StackLang.HolProg 64 :=
.seq NamedBody794_240 NamedBody794_249

def NamedBody794_251 : StackLang.HolProg 64 :=
.seq NamedBody794_239 NamedBody794_250

def NamedBody794_252 : StackLang.HolProg 64 :=
.seq NamedBody794_238 NamedBody794_251

def NamedBody794_253 : StackLang.HolProg 64 :=
.seq NamedBody794_237 NamedBody794_252

def NamedBody794_254 : StackLang.HolProg 64 :=
.seq NamedBody794_236 NamedBody794_253

def NamedBody794_255 : StackLang.HolProg 64 :=
.seq NamedBody794_235 NamedBody794_254

def NamedBody794_256 : StackLang.HolProg 64 :=
.seq NamedBody794_234 NamedBody794_255

def NamedBody794_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody794_264 : StackLang.HolProg 64 :=
.seq NamedBody794_262 NamedBody794_263

def NamedBody794_265 : StackLang.HolProg 64 :=
.seq NamedBody794_261 NamedBody794_264

def NamedBody794_266 : StackLang.HolProg 64 :=
.seq NamedBody794_260 NamedBody794_265

def NamedBody794_267 : StackLang.HolProg 64 :=
.seq NamedBody794_259 NamedBody794_266

def NamedBody794_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_269 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody794_270 : StackLang.HolProg 64 :=
.seq NamedBody794_268 NamedBody794_269

def NamedBody794_271 : StackLang.HolProg 64 :=
.call (some (NamedBody794_267, 1, 794, 8)) (Sum.inl 68) (some (NamedBody794_270, 794, 9))

def NamedBody794_272 : StackLang.HolProg 64 :=
.seq NamedBody794_258 NamedBody794_271

def NamedBody794_273 : StackLang.HolProg 64 :=
.seq NamedBody794_257 NamedBody794_272

def NamedBody794_274 : StackLang.HolProg 64 :=
.seq NamedBody794_256 NamedBody794_273

def NamedBody794_275 : StackLang.HolProg 64 :=
.seq NamedBody794_227 NamedBody794_274

def NamedBody794_276 : StackLang.HolProg 64 :=
.seq NamedBody794_224 NamedBody794_275

def NamedBody794_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 192#64)

def NamedBody794_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody794_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3774#64)

def NamedBody794_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_283 : StackLang.HolProg 64 :=
.seq NamedBody794_281 NamedBody794_282

def NamedBody794_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody794_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody794_287 : StackLang.HolProg 64 :=
.seq NamedBody794_285 NamedBody794_286

def NamedBody794_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_289 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody794_287 NamedBody794_288

def NamedBody794_290 : StackLang.HolProg 64 :=
.seq NamedBody794_284 NamedBody794_289

def NamedBody794_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody794_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 11

def NamedBody794_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody794_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody794_300 : StackLang.HolProg 64 :=
.seq NamedBody794_298 NamedBody794_299

def NamedBody794_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody794_302 : StackLang.HolProg 64 :=
.seq NamedBody794_300 NamedBody794_301

def NamedBody794_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_304 : StackLang.HolProg 64 :=
.seq NamedBody794_302 NamedBody794_303

def NamedBody794_305 : StackLang.HolProg 64 :=
.seq NamedBody794_297 NamedBody794_304

def NamedBody794_306 : StackLang.HolProg 64 :=
.seq NamedBody794_296 NamedBody794_305

def NamedBody794_307 : StackLang.HolProg 64 :=
.seq NamedBody794_295 NamedBody794_306

def NamedBody794_308 : StackLang.HolProg 64 :=
.seq NamedBody794_294 NamedBody794_307

def NamedBody794_309 : StackLang.HolProg 64 :=
.seq NamedBody794_293 NamedBody794_308

def NamedBody794_310 : StackLang.HolProg 64 :=
.seq NamedBody794_292 NamedBody794_309

def NamedBody794_311 : StackLang.HolProg 64 :=
.seq NamedBody794_291 NamedBody794_310

def NamedBody794_312 : StackLang.HolProg 64 :=
.seq NamedBody794_290 NamedBody794_311

def NamedBody794_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody794_320 : StackLang.HolProg 64 :=
.seq NamedBody794_318 NamedBody794_319

def NamedBody794_321 : StackLang.HolProg 64 :=
.seq NamedBody794_317 NamedBody794_320

def NamedBody794_322 : StackLang.HolProg 64 :=
.seq NamedBody794_316 NamedBody794_321

def NamedBody794_323 : StackLang.HolProg 64 :=
.seq NamedBody794_315 NamedBody794_322

def NamedBody794_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_325 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody794_326 : StackLang.HolProg 64 :=
.seq NamedBody794_324 NamedBody794_325

def NamedBody794_327 : StackLang.HolProg 64 :=
.call (some (NamedBody794_323, 1, 794, 10)) (Sum.inl 68) (some (NamedBody794_326, 794, 11))

def NamedBody794_328 : StackLang.HolProg 64 :=
.seq NamedBody794_314 NamedBody794_327

def NamedBody794_329 : StackLang.HolProg 64 :=
.seq NamedBody794_313 NamedBody794_328

def NamedBody794_330 : StackLang.HolProg 64 :=
.seq NamedBody794_312 NamedBody794_329

def NamedBody794_331 : StackLang.HolProg 64 :=
.seq NamedBody794_283 NamedBody794_330

def NamedBody794_332 : StackLang.HolProg 64 :=
.seq NamedBody794_280 NamedBody794_331

def NamedBody794_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 576#64)

def NamedBody794_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody794_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3775#64)

def NamedBody794_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_339 : StackLang.HolProg 64 :=
.seq NamedBody794_337 NamedBody794_338

def NamedBody794_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody794_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody794_343 : StackLang.HolProg 64 :=
.seq NamedBody794_341 NamedBody794_342

def NamedBody794_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_345 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody794_343 NamedBody794_344

def NamedBody794_346 : StackLang.HolProg 64 :=
.seq NamedBody794_340 NamedBody794_345

def NamedBody794_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody794_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 13

def NamedBody794_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody794_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody794_356 : StackLang.HolProg 64 :=
.seq NamedBody794_354 NamedBody794_355

def NamedBody794_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody794_358 : StackLang.HolProg 64 :=
.seq NamedBody794_356 NamedBody794_357

def NamedBody794_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_360 : StackLang.HolProg 64 :=
.seq NamedBody794_358 NamedBody794_359

def NamedBody794_361 : StackLang.HolProg 64 :=
.seq NamedBody794_353 NamedBody794_360

def NamedBody794_362 : StackLang.HolProg 64 :=
.seq NamedBody794_352 NamedBody794_361

def NamedBody794_363 : StackLang.HolProg 64 :=
.seq NamedBody794_351 NamedBody794_362

def NamedBody794_364 : StackLang.HolProg 64 :=
.seq NamedBody794_350 NamedBody794_363

def NamedBody794_365 : StackLang.HolProg 64 :=
.seq NamedBody794_349 NamedBody794_364

def NamedBody794_366 : StackLang.HolProg 64 :=
.seq NamedBody794_348 NamedBody794_365

def NamedBody794_367 : StackLang.HolProg 64 :=
.seq NamedBody794_347 NamedBody794_366

def NamedBody794_368 : StackLang.HolProg 64 :=
.seq NamedBody794_346 NamedBody794_367

def NamedBody794_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody794_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody794_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_379 : StackLang.HolProg 64 :=
.seq NamedBody794_377 NamedBody794_378

def NamedBody794_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody794_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody794_382 : StackLang.HolProg 64 :=
.seq NamedBody794_380 NamedBody794_381

def NamedBody794_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody794_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody794_386 : StackLang.HolProg 64 :=
.seq NamedBody794_384 NamedBody794_385

def NamedBody794_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_389 : StackLang.HolProg 64 :=
.seq NamedBody794_387 NamedBody794_388

def NamedBody794_390 : StackLang.HolProg 64 :=
.seq NamedBody794_386 NamedBody794_389

def NamedBody794_391 : StackLang.HolProg 64 :=
.seq NamedBody794_383 NamedBody794_390

def NamedBody794_392 : StackLang.HolProg 64 :=
.seq NamedBody794_382 NamedBody794_391

def NamedBody794_393 : StackLang.HolProg 64 :=
.seq NamedBody794_379 NamedBody794_392

def NamedBody794_394 : StackLang.HolProg 64 :=
.seq NamedBody794_376 NamedBody794_393

def NamedBody794_395 : StackLang.HolProg 64 :=
.seq NamedBody794_375 NamedBody794_394

def NamedBody794_396 : StackLang.HolProg 64 :=
.seq NamedBody794_374 NamedBody794_395

def NamedBody794_397 : StackLang.HolProg 64 :=
.seq NamedBody794_373 NamedBody794_396

def NamedBody794_398 : StackLang.HolProg 64 :=
.seq NamedBody794_372 NamedBody794_397

def NamedBody794_399 : StackLang.HolProg 64 :=
.seq NamedBody794_371 NamedBody794_398

def NamedBody794_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody794_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_403 : StackLang.HolProg 64 :=
.seq NamedBody794_401 NamedBody794_402

def NamedBody794_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody794_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody794_406 : StackLang.HolProg 64 :=
.seq NamedBody794_404 NamedBody794_405

def NamedBody794_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody794_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody794_410 : StackLang.HolProg 64 :=
.seq NamedBody794_408 NamedBody794_409

def NamedBody794_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_413 : StackLang.HolProg 64 :=
.seq NamedBody794_411 NamedBody794_412

def NamedBody794_414 : StackLang.HolProg 64 :=
.seq NamedBody794_410 NamedBody794_413

def NamedBody794_415 : StackLang.HolProg 64 :=
.seq NamedBody794_407 NamedBody794_414

def NamedBody794_416 : StackLang.HolProg 64 :=
.seq NamedBody794_406 NamedBody794_415

def NamedBody794_417 : StackLang.HolProg 64 :=
.seq NamedBody794_403 NamedBody794_416

def NamedBody794_418 : StackLang.HolProg 64 :=
.seq NamedBody794_400 NamedBody794_417

def NamedBody794_419 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody794_420 : StackLang.HolProg 64 :=
.seq NamedBody794_418 NamedBody794_419

def NamedBody794_421 : StackLang.HolProg 64 :=
.call (some (NamedBody794_399, 1, 794, 12)) (Sum.inl 68) (some (NamedBody794_420, 794, 13))

def NamedBody794_422 : StackLang.HolProg 64 :=
.seq NamedBody794_370 NamedBody794_421

def NamedBody794_423 : StackLang.HolProg 64 :=
.seq NamedBody794_369 NamedBody794_422

def NamedBody794_424 : StackLang.HolProg 64 :=
.seq NamedBody794_368 NamedBody794_423

def NamedBody794_425 : StackLang.HolProg 64 :=
.seq NamedBody794_339 NamedBody794_424

def NamedBody794_426 : StackLang.HolProg 64 :=
.seq NamedBody794_336 NamedBody794_425

def NamedBody794_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody794_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody794_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_431 : StackLang.HolProg 64 :=
.seq NamedBody794_429 NamedBody794_430

def NamedBody794_432 : StackLang.HolProg 64 :=
.seq NamedBody794_428 NamedBody794_431

def NamedBody794_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3776#64)

def NamedBody794_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_436 : StackLang.HolProg 64 :=
.seq NamedBody794_434 NamedBody794_435

def NamedBody794_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody794_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody794_440 : StackLang.HolProg 64 :=
.seq NamedBody794_438 NamedBody794_439

def NamedBody794_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_442 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody794_440 NamedBody794_441

def NamedBody794_443 : StackLang.HolProg 64 :=
.seq NamedBody794_437 NamedBody794_442

def NamedBody794_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody794_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 15

def NamedBody794_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody794_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody794_453 : StackLang.HolProg 64 :=
.seq NamedBody794_451 NamedBody794_452

def NamedBody794_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody794_455 : StackLang.HolProg 64 :=
.seq NamedBody794_453 NamedBody794_454

def NamedBody794_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_457 : StackLang.HolProg 64 :=
.seq NamedBody794_455 NamedBody794_456

def NamedBody794_458 : StackLang.HolProg 64 :=
.seq NamedBody794_450 NamedBody794_457

def NamedBody794_459 : StackLang.HolProg 64 :=
.seq NamedBody794_449 NamedBody794_458

def NamedBody794_460 : StackLang.HolProg 64 :=
.seq NamedBody794_448 NamedBody794_459

def NamedBody794_461 : StackLang.HolProg 64 :=
.seq NamedBody794_447 NamedBody794_460

def NamedBody794_462 : StackLang.HolProg 64 :=
.seq NamedBody794_446 NamedBody794_461

def NamedBody794_463 : StackLang.HolProg 64 :=
.seq NamedBody794_445 NamedBody794_462

def NamedBody794_464 : StackLang.HolProg 64 :=
.seq NamedBody794_444 NamedBody794_463

def NamedBody794_465 : StackLang.HolProg 64 :=
.seq NamedBody794_443 NamedBody794_464

def NamedBody794_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_476 : StackLang.HolProg 64 :=
.seq NamedBody794_474 NamedBody794_475

def NamedBody794_477 : StackLang.HolProg 64 :=
.seq NamedBody794_473 NamedBody794_476

def NamedBody794_478 : StackLang.HolProg 64 :=
.seq NamedBody794_472 NamedBody794_477

def NamedBody794_479 : StackLang.HolProg 64 :=
.seq NamedBody794_471 NamedBody794_478

def NamedBody794_480 : StackLang.HolProg 64 :=
.seq NamedBody794_470 NamedBody794_479

def NamedBody794_481 : StackLang.HolProg 64 :=
.seq NamedBody794_469 NamedBody794_480

def NamedBody794_482 : StackLang.HolProg 64 :=
.seq NamedBody794_468 NamedBody794_481

def NamedBody794_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_487 : StackLang.HolProg 64 :=
.seq NamedBody794_485 NamedBody794_486

def NamedBody794_488 : StackLang.HolProg 64 :=
.seq NamedBody794_484 NamedBody794_487

def NamedBody794_489 : StackLang.HolProg 64 :=
.seq NamedBody794_483 NamedBody794_488

def NamedBody794_490 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody794_491 : StackLang.HolProg 64 :=
.seq NamedBody794_489 NamedBody794_490

def NamedBody794_492 : StackLang.HolProg 64 :=
.call (some (NamedBody794_482, 1, 794, 14)) (Sum.inl 773) (some (NamedBody794_491, 794, 15))

def NamedBody794_493 : StackLang.HolProg 64 :=
.seq NamedBody794_467 NamedBody794_492

def NamedBody794_494 : StackLang.HolProg 64 :=
.seq NamedBody794_466 NamedBody794_493

def NamedBody794_495 : StackLang.HolProg 64 :=
.seq NamedBody794_465 NamedBody794_494

def NamedBody794_496 : StackLang.HolProg 64 :=
.seq NamedBody794_436 NamedBody794_495

def NamedBody794_497 : StackLang.HolProg 64 :=
.seq NamedBody794_433 NamedBody794_496

def NamedBody794_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody794_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_501 : StackLang.HolProg 64 :=
.seq NamedBody794_499 NamedBody794_500

def NamedBody794_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3777#64)

def NamedBody794_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_505 : StackLang.HolProg 64 :=
.seq NamedBody794_503 NamedBody794_504

def NamedBody794_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody794_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody794_509 : StackLang.HolProg 64 :=
.seq NamedBody794_507 NamedBody794_508

def NamedBody794_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_511 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody794_509 NamedBody794_510

def NamedBody794_512 : StackLang.HolProg 64 :=
.seq NamedBody794_506 NamedBody794_511

def NamedBody794_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody794_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 17

def NamedBody794_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody794_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody794_522 : StackLang.HolProg 64 :=
.seq NamedBody794_520 NamedBody794_521

def NamedBody794_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody794_524 : StackLang.HolProg 64 :=
.seq NamedBody794_522 NamedBody794_523

def NamedBody794_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_526 : StackLang.HolProg 64 :=
.seq NamedBody794_524 NamedBody794_525

def NamedBody794_527 : StackLang.HolProg 64 :=
.seq NamedBody794_519 NamedBody794_526

def NamedBody794_528 : StackLang.HolProg 64 :=
.seq NamedBody794_518 NamedBody794_527

def NamedBody794_529 : StackLang.HolProg 64 :=
.seq NamedBody794_517 NamedBody794_528

def NamedBody794_530 : StackLang.HolProg 64 :=
.seq NamedBody794_516 NamedBody794_529

def NamedBody794_531 : StackLang.HolProg 64 :=
.seq NamedBody794_515 NamedBody794_530

def NamedBody794_532 : StackLang.HolProg 64 :=
.seq NamedBody794_514 NamedBody794_531

def NamedBody794_533 : StackLang.HolProg 64 :=
.seq NamedBody794_513 NamedBody794_532

def NamedBody794_534 : StackLang.HolProg 64 :=
.seq NamedBody794_512 NamedBody794_533

def NamedBody794_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody794_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_544 : StackLang.HolProg 64 :=
.seq NamedBody794_542 NamedBody794_543

def NamedBody794_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody794_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody794_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody794_548 : StackLang.HolProg 64 :=
.seq NamedBody794_546 NamedBody794_547

def NamedBody794_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_550 : StackLang.HolProg 64 :=
.seq NamedBody794_548 NamedBody794_549

def NamedBody794_551 : StackLang.HolProg 64 :=
.seq NamedBody794_545 NamedBody794_550

def NamedBody794_552 : StackLang.HolProg 64 :=
.seq NamedBody794_544 NamedBody794_551

def NamedBody794_553 : StackLang.HolProg 64 :=
.seq NamedBody794_541 NamedBody794_552

def NamedBody794_554 : StackLang.HolProg 64 :=
.seq NamedBody794_540 NamedBody794_553

def NamedBody794_555 : StackLang.HolProg 64 :=
.seq NamedBody794_539 NamedBody794_554

def NamedBody794_556 : StackLang.HolProg 64 :=
.seq NamedBody794_538 NamedBody794_555

def NamedBody794_557 : StackLang.HolProg 64 :=
.seq NamedBody794_537 NamedBody794_556

def NamedBody794_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody794_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_561 : StackLang.HolProg 64 :=
.seq NamedBody794_559 NamedBody794_560

def NamedBody794_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody794_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody794_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody794_565 : StackLang.HolProg 64 :=
.seq NamedBody794_563 NamedBody794_564

def NamedBody794_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_567 : StackLang.HolProg 64 :=
.seq NamedBody794_565 NamedBody794_566

def NamedBody794_568 : StackLang.HolProg 64 :=
.seq NamedBody794_562 NamedBody794_567

def NamedBody794_569 : StackLang.HolProg 64 :=
.seq NamedBody794_561 NamedBody794_568

def NamedBody794_570 : StackLang.HolProg 64 :=
.seq NamedBody794_558 NamedBody794_569

def NamedBody794_571 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody794_572 : StackLang.HolProg 64 :=
.seq NamedBody794_570 NamedBody794_571

def NamedBody794_573 : StackLang.HolProg 64 :=
.call (some (NamedBody794_557, 1, 794, 16)) (Sum.inl 785) (some (NamedBody794_572, 794, 17))

def NamedBody794_574 : StackLang.HolProg 64 :=
.seq NamedBody794_536 NamedBody794_573

def NamedBody794_575 : StackLang.HolProg 64 :=
.seq NamedBody794_535 NamedBody794_574

def NamedBody794_576 : StackLang.HolProg 64 :=
.seq NamedBody794_534 NamedBody794_575

def NamedBody794_577 : StackLang.HolProg 64 :=
.seq NamedBody794_505 NamedBody794_576

def NamedBody794_578 : StackLang.HolProg 64 :=
.seq NamedBody794_502 NamedBody794_577

def NamedBody794_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody794_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody794_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody794_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody794_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody794_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def NamedBody794_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def NamedBody794_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def NamedBody794_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def NamedBody794_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def NamedBody794_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 80#64))

def NamedBody794_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def NamedBody794_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 15
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 15)))

def NamedBody794_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody794_606 : StackLang.HolProg 64 :=
.seq NamedBody794_604 NamedBody794_605

def NamedBody794_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3778#64)

def NamedBody794_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_610 : StackLang.HolProg 64 :=
.seq NamedBody794_608 NamedBody794_609

def NamedBody794_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody794_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody794_614 : StackLang.HolProg 64 :=
.seq NamedBody794_612 NamedBody794_613

def NamedBody794_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_616 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody794_614 NamedBody794_615

def NamedBody794_617 : StackLang.HolProg 64 :=
.seq NamedBody794_611 NamedBody794_616

def NamedBody794_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody794_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 19

def NamedBody794_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody794_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody794_627 : StackLang.HolProg 64 :=
.seq NamedBody794_625 NamedBody794_626

def NamedBody794_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody794_629 : StackLang.HolProg 64 :=
.seq NamedBody794_627 NamedBody794_628

def NamedBody794_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_631 : StackLang.HolProg 64 :=
.seq NamedBody794_629 NamedBody794_630

def NamedBody794_632 : StackLang.HolProg 64 :=
.seq NamedBody794_624 NamedBody794_631

def NamedBody794_633 : StackLang.HolProg 64 :=
.seq NamedBody794_623 NamedBody794_632

def NamedBody794_634 : StackLang.HolProg 64 :=
.seq NamedBody794_622 NamedBody794_633

def NamedBody794_635 : StackLang.HolProg 64 :=
.seq NamedBody794_621 NamedBody794_634

def NamedBody794_636 : StackLang.HolProg 64 :=
.seq NamedBody794_620 NamedBody794_635

def NamedBody794_637 : StackLang.HolProg 64 :=
.seq NamedBody794_619 NamedBody794_636

def NamedBody794_638 : StackLang.HolProg 64 :=
.seq NamedBody794_618 NamedBody794_637

def NamedBody794_639 : StackLang.HolProg 64 :=
.seq NamedBody794_617 NamedBody794_638

def NamedBody794_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody794_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_649 : StackLang.HolProg 64 :=
.seq NamedBody794_647 NamedBody794_648

def NamedBody794_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody794_651 : StackLang.HolProg 64 :=
.seq NamedBody794_649 NamedBody794_650

def NamedBody794_652 : StackLang.HolProg 64 :=
.seq NamedBody794_646 NamedBody794_651

def NamedBody794_653 : StackLang.HolProg 64 :=
.seq NamedBody794_645 NamedBody794_652

def NamedBody794_654 : StackLang.HolProg 64 :=
.seq NamedBody794_644 NamedBody794_653

def NamedBody794_655 : StackLang.HolProg 64 :=
.seq NamedBody794_643 NamedBody794_654

def NamedBody794_656 : StackLang.HolProg 64 :=
.seq NamedBody794_642 NamedBody794_655

def NamedBody794_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody794_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_660 : StackLang.HolProg 64 :=
.seq NamedBody794_658 NamedBody794_659

def NamedBody794_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody794_662 : StackLang.HolProg 64 :=
.seq NamedBody794_660 NamedBody794_661

def NamedBody794_663 : StackLang.HolProg 64 :=
.seq NamedBody794_657 NamedBody794_662

def NamedBody794_664 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody794_665 : StackLang.HolProg 64 :=
.seq NamedBody794_663 NamedBody794_664

def NamedBody794_666 : StackLang.HolProg 64 :=
.call (some (NamedBody794_656, 1, 794, 18)) (Sum.inl 793) (some (NamedBody794_665, 794, 19))

def NamedBody794_667 : StackLang.HolProg 64 :=
.seq NamedBody794_641 NamedBody794_666

def NamedBody794_668 : StackLang.HolProg 64 :=
.seq NamedBody794_640 NamedBody794_667

def NamedBody794_669 : StackLang.HolProg 64 :=
.seq NamedBody794_639 NamedBody794_668

def NamedBody794_670 : StackLang.HolProg 64 :=
.seq NamedBody794_610 NamedBody794_669

def NamedBody794_671 : StackLang.HolProg 64 :=
.seq NamedBody794_607 NamedBody794_670

def NamedBody794_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody794_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3779#64)

def NamedBody794_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_677 : StackLang.HolProg 64 :=
.seq NamedBody794_675 NamedBody794_676

def NamedBody794_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody794_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody794_681 : StackLang.HolProg 64 :=
.seq NamedBody794_679 NamedBody794_680

def NamedBody794_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_683 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody794_681 NamedBody794_682

def NamedBody794_684 : StackLang.HolProg 64 :=
.seq NamedBody794_678 NamedBody794_683

def NamedBody794_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody794_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 21

def NamedBody794_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody794_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody794_694 : StackLang.HolProg 64 :=
.seq NamedBody794_692 NamedBody794_693

def NamedBody794_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody794_696 : StackLang.HolProg 64 :=
.seq NamedBody794_694 NamedBody794_695

def NamedBody794_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_698 : StackLang.HolProg 64 :=
.seq NamedBody794_696 NamedBody794_697

def NamedBody794_699 : StackLang.HolProg 64 :=
.seq NamedBody794_691 NamedBody794_698

def NamedBody794_700 : StackLang.HolProg 64 :=
.seq NamedBody794_690 NamedBody794_699

def NamedBody794_701 : StackLang.HolProg 64 :=
.seq NamedBody794_689 NamedBody794_700

def NamedBody794_702 : StackLang.HolProg 64 :=
.seq NamedBody794_688 NamedBody794_701

def NamedBody794_703 : StackLang.HolProg 64 :=
.seq NamedBody794_687 NamedBody794_702

def NamedBody794_704 : StackLang.HolProg 64 :=
.seq NamedBody794_686 NamedBody794_703

def NamedBody794_705 : StackLang.HolProg 64 :=
.seq NamedBody794_685 NamedBody794_704

def NamedBody794_706 : StackLang.HolProg 64 :=
.seq NamedBody794_684 NamedBody794_705

def NamedBody794_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_714 : StackLang.HolProg 64 :=
.seq NamedBody794_712 NamedBody794_713

def NamedBody794_715 : StackLang.HolProg 64 :=
.seq NamedBody794_711 NamedBody794_714

def NamedBody794_716 : StackLang.HolProg 64 :=
.seq NamedBody794_710 NamedBody794_715

def NamedBody794_717 : StackLang.HolProg 64 :=
.seq NamedBody794_709 NamedBody794_716

def NamedBody794_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody794_719 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody794_720 : StackLang.HolProg 64 :=
.seq NamedBody794_718 NamedBody794_719

def NamedBody794_721 : StackLang.HolProg 64 :=
.call (some (NamedBody794_717, 1, 794, 20)) (Sum.inl 758) (some (NamedBody794_720, 794, 21))

def NamedBody794_722 : StackLang.HolProg 64 :=
.seq NamedBody794_708 NamedBody794_721

def NamedBody794_723 : StackLang.HolProg 64 :=
.seq NamedBody794_707 NamedBody794_722

def NamedBody794_724 : StackLang.HolProg 64 :=
.seq NamedBody794_706 NamedBody794_723

def NamedBody794_725 : StackLang.HolProg 64 :=
.seq NamedBody794_677 NamedBody794_724

def NamedBody794_726 : StackLang.HolProg 64 :=
.seq NamedBody794_674 NamedBody794_725

def NamedBody794_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody794_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3780#64)

def NamedBody794_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_732 : StackLang.HolProg 64 :=
.seq NamedBody794_730 NamedBody794_731

def NamedBody794_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody794_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody794_736 : StackLang.HolProg 64 :=
.seq NamedBody794_734 NamedBody794_735

def NamedBody794_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_738 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody794_736 NamedBody794_737

def NamedBody794_739 : StackLang.HolProg 64 :=
.seq NamedBody794_733 NamedBody794_738

def NamedBody794_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody794_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody794_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 23

def NamedBody794_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody794_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody794_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody794_749 : StackLang.HolProg 64 :=
.seq NamedBody794_747 NamedBody794_748

def NamedBody794_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody794_751 : StackLang.HolProg 64 :=
.seq NamedBody794_749 NamedBody794_750

def NamedBody794_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_753 : StackLang.HolProg 64 :=
.seq NamedBody794_751 NamedBody794_752

def NamedBody794_754 : StackLang.HolProg 64 :=
.seq NamedBody794_746 NamedBody794_753

def NamedBody794_755 : StackLang.HolProg 64 :=
.seq NamedBody794_745 NamedBody794_754

def NamedBody794_756 : StackLang.HolProg 64 :=
.seq NamedBody794_744 NamedBody794_755

def NamedBody794_757 : StackLang.HolProg 64 :=
.seq NamedBody794_743 NamedBody794_756

def NamedBody794_758 : StackLang.HolProg 64 :=
.seq NamedBody794_742 NamedBody794_757

def NamedBody794_759 : StackLang.HolProg 64 :=
.seq NamedBody794_741 NamedBody794_758

def NamedBody794_760 : StackLang.HolProg 64 :=
.seq NamedBody794_740 NamedBody794_759

def NamedBody794_761 : StackLang.HolProg 64 :=
.seq NamedBody794_739 NamedBody794_760

def NamedBody794_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody794_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody794_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody794_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody794_769 : StackLang.HolProg 64 :=
.seq NamedBody794_767 NamedBody794_768

def NamedBody794_770 : StackLang.HolProg 64 :=
.seq NamedBody794_766 NamedBody794_769

def NamedBody794_771 : StackLang.HolProg 64 :=
.seq NamedBody794_765 NamedBody794_770

def NamedBody794_772 : StackLang.HolProg 64 :=
.seq NamedBody794_764 NamedBody794_771

def NamedBody794_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody794_774 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody794_775 : StackLang.HolProg 64 :=
.seq NamedBody794_773 NamedBody794_774

def NamedBody794_776 : StackLang.HolProg 64 :=
.call (some (NamedBody794_772, 1, 794, 22)) (Sum.inl 70) (some (NamedBody794_775, 794, 23))

def NamedBody794_777 : StackLang.HolProg 64 :=
.seq NamedBody794_763 NamedBody794_776

def NamedBody794_778 : StackLang.HolProg 64 :=
.seq NamedBody794_762 NamedBody794_777

def NamedBody794_779 : StackLang.HolProg 64 :=
.seq NamedBody794_761 NamedBody794_778

def NamedBody794_780 : StackLang.HolProg 64 :=
.seq NamedBody794_732 NamedBody794_779

def NamedBody794_781 : StackLang.HolProg 64 :=
.seq NamedBody794_729 NamedBody794_780

def NamedBody794_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody794_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody794_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody794_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody794_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody794_787 : StackLang.HolProg 64 :=
.seq NamedBody794_785 NamedBody794_786

def NamedBody794_788 : StackLang.HolProg 64 :=
.seq NamedBody794_784 NamedBody794_787

def NamedBody794_789 : StackLang.HolProg 64 :=
.seq NamedBody794_783 NamedBody794_788

def NamedBody794_790 : StackLang.HolProg 64 :=
.seq NamedBody794_782 NamedBody794_789

def NamedBody794_791 : StackLang.HolProg 64 :=
.seq NamedBody794_781 NamedBody794_790

def NamedBody794_792 : StackLang.HolProg 64 :=
.seq NamedBody794_728 NamedBody794_791

def NamedBody794_793 : StackLang.HolProg 64 :=
.seq NamedBody794_727 NamedBody794_792

def NamedBody794_794 : StackLang.HolProg 64 :=
.seq NamedBody794_726 NamedBody794_793

def NamedBody794_795 : StackLang.HolProg 64 :=
.seq NamedBody794_673 NamedBody794_794

def NamedBody794_796 : StackLang.HolProg 64 :=
.seq NamedBody794_672 NamedBody794_795

def NamedBody794_797 : StackLang.HolProg 64 :=
.seq NamedBody794_671 NamedBody794_796

def NamedBody794_798 : StackLang.HolProg 64 :=
.seq NamedBody794_606 NamedBody794_797

def NamedBody794_799 : StackLang.HolProg 64 :=
.seq NamedBody794_603 NamedBody794_798

def NamedBody794_800 : StackLang.HolProg 64 :=
.seq NamedBody794_602 NamedBody794_799

def NamedBody794_801 : StackLang.HolProg 64 :=
.seq NamedBody794_601 NamedBody794_800

def NamedBody794_802 : StackLang.HolProg 64 :=
.seq NamedBody794_600 NamedBody794_801

def NamedBody794_803 : StackLang.HolProg 64 :=
.seq NamedBody794_599 NamedBody794_802

def NamedBody794_804 : StackLang.HolProg 64 :=
.seq NamedBody794_598 NamedBody794_803

def NamedBody794_805 : StackLang.HolProg 64 :=
.seq NamedBody794_597 NamedBody794_804

def NamedBody794_806 : StackLang.HolProg 64 :=
.seq NamedBody794_596 NamedBody794_805

def NamedBody794_807 : StackLang.HolProg 64 :=
.seq NamedBody794_595 NamedBody794_806

def NamedBody794_808 : StackLang.HolProg 64 :=
.seq NamedBody794_594 NamedBody794_807

def NamedBody794_809 : StackLang.HolProg 64 :=
.seq NamedBody794_593 NamedBody794_808

def NamedBody794_810 : StackLang.HolProg 64 :=
.seq NamedBody794_592 NamedBody794_809

def NamedBody794_811 : StackLang.HolProg 64 :=
.seq NamedBody794_591 NamedBody794_810

def NamedBody794_812 : StackLang.HolProg 64 :=
.seq NamedBody794_590 NamedBody794_811

def NamedBody794_813 : StackLang.HolProg 64 :=
.seq NamedBody794_589 NamedBody794_812

def NamedBody794_814 : StackLang.HolProg 64 :=
.seq NamedBody794_588 NamedBody794_813

def NamedBody794_815 : StackLang.HolProg 64 :=
.seq NamedBody794_587 NamedBody794_814

def NamedBody794_816 : StackLang.HolProg 64 :=
.seq NamedBody794_586 NamedBody794_815

def NamedBody794_817 : StackLang.HolProg 64 :=
.seq NamedBody794_585 NamedBody794_816

def NamedBody794_818 : StackLang.HolProg 64 :=
.seq NamedBody794_584 NamedBody794_817

def NamedBody794_819 : StackLang.HolProg 64 :=
.seq NamedBody794_583 NamedBody794_818

def NamedBody794_820 : StackLang.HolProg 64 :=
.seq NamedBody794_582 NamedBody794_819

def NamedBody794_821 : StackLang.HolProg 64 :=
.seq NamedBody794_581 NamedBody794_820

def NamedBody794_822 : StackLang.HolProg 64 :=
.seq NamedBody794_580 NamedBody794_821

def NamedBody794_823 : StackLang.HolProg 64 :=
.seq NamedBody794_579 NamedBody794_822

def NamedBody794_824 : StackLang.HolProg 64 :=
.seq NamedBody794_578 NamedBody794_823

def NamedBody794_825 : StackLang.HolProg 64 :=
.seq NamedBody794_501 NamedBody794_824

def NamedBody794_826 : StackLang.HolProg 64 :=
.seq NamedBody794_498 NamedBody794_825

def NamedBody794_827 : StackLang.HolProg 64 :=
.seq NamedBody794_497 NamedBody794_826

def NamedBody794_828 : StackLang.HolProg 64 :=
.seq NamedBody794_432 NamedBody794_827

def NamedBody794_829 : StackLang.HolProg 64 :=
.seq NamedBody794_427 NamedBody794_828

def NamedBody794_830 : StackLang.HolProg 64 :=
.seq NamedBody794_426 NamedBody794_829

def NamedBody794_831 : StackLang.HolProg 64 :=
.seq NamedBody794_335 NamedBody794_830

def NamedBody794_832 : StackLang.HolProg 64 :=
.seq NamedBody794_334 NamedBody794_831

def NamedBody794_833 : StackLang.HolProg 64 :=
.seq NamedBody794_333 NamedBody794_832

def NamedBody794_834 : StackLang.HolProg 64 :=
.seq NamedBody794_332 NamedBody794_833

def NamedBody794_835 : StackLang.HolProg 64 :=
.seq NamedBody794_279 NamedBody794_834

def NamedBody794_836 : StackLang.HolProg 64 :=
.seq NamedBody794_278 NamedBody794_835

def NamedBody794_837 : StackLang.HolProg 64 :=
.seq NamedBody794_277 NamedBody794_836

def NamedBody794_838 : StackLang.HolProg 64 :=
.seq NamedBody794_276 NamedBody794_837

def NamedBody794_839 : StackLang.HolProg 64 :=
.seq NamedBody794_223 NamedBody794_838

def NamedBody794_840 : StackLang.HolProg 64 :=
.seq NamedBody794_222 NamedBody794_839

def NamedBody794_841 : StackLang.HolProg 64 :=
.seq NamedBody794_221 NamedBody794_840

def NamedBody794_842 : StackLang.HolProg 64 :=
.seq NamedBody794_220 NamedBody794_841

def NamedBody794_843 : StackLang.HolProg 64 :=
.seq NamedBody794_167 NamedBody794_842

def NamedBody794_844 : StackLang.HolProg 64 :=
.seq NamedBody794_166 NamedBody794_843

def NamedBody794_845 : StackLang.HolProg 64 :=
.seq NamedBody794_165 NamedBody794_844

def NamedBody794_846 : StackLang.HolProg 64 :=
.seq NamedBody794_164 NamedBody794_845

def NamedBody794_847 : StackLang.HolProg 64 :=
.seq NamedBody794_153 NamedBody794_846

def NamedBody794_848 : StackLang.HolProg 64 :=
.seq NamedBody794_152 NamedBody794_847

def NamedBody794_849 : StackLang.HolProg 64 :=
.seq NamedBody794_151 NamedBody794_848

def NamedBody794_850 : StackLang.HolProg 64 :=
.seq NamedBody794_150 NamedBody794_849

def NamedBody794_851 : StackLang.HolProg 64 :=
.seq NamedBody794_95 NamedBody794_850

def NamedBody794_852 : StackLang.HolProg 64 :=
.seq NamedBody794_90 NamedBody794_851

def NamedBody794_853 : StackLang.HolProg 64 :=
.seq NamedBody794_89 NamedBody794_852

def NamedBody794_854 : StackLang.HolProg 64 :=
.seq NamedBody794_88 NamedBody794_853

def NamedBody794_855 : StackLang.HolProg 64 :=
.seq NamedBody794_77 NamedBody794_854

def NamedBody794_856 : StackLang.HolProg 64 :=
.seq NamedBody794_76 NamedBody794_855

def NamedBody794_857 : StackLang.HolProg 64 :=
.seq NamedBody794_75 NamedBody794_856

def NamedBody794_858 : StackLang.HolProg 64 :=
.seq NamedBody794_74 NamedBody794_857

def NamedBody794_859 : StackLang.HolProg 64 :=
.seq NamedBody794_15 NamedBody794_858

def NamedBody794_860 : StackLang.HolProg 64 :=
.seq NamedBody794_6 NamedBody794_859

def Named794 : Nat × StackLang.HolProg 64 := (794, NamedBody794_860)
theorem Named794_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed794 = Named794 := by
  kernel_rfl
#print axioms Named794_eq
end InitECandidate.Proofs.BackendStages
