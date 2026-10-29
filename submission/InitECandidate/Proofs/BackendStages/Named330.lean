import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed330
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody330_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody330_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody330_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody330_3 : StackLang.HolProg 64 :=
.seq NamedBody330_1 NamedBody330_2

def NamedBody330_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody330_3 NamedBody330_4

def NamedBody330_6 : StackLang.HolProg 64 :=
.seq NamedBody330_0 NamedBody330_5

def NamedBody330_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody330_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 24#64))

def NamedBody330_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody330_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody330_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody330_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody330_15 : StackLang.HolProg 64 :=
.seq NamedBody330_13 NamedBody330_14

def NamedBody330_16 : StackLang.HolProg 64 :=
.seq NamedBody330_12 NamedBody330_15

def NamedBody330_17 : StackLang.HolProg 64 :=
.seq NamedBody330_11 NamedBody330_16

def NamedBody330_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody330_17 NamedBody330_18

def NamedBody330_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody330_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody330_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody330_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody330_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody330_25 : StackLang.HolProg 64 :=
.seq NamedBody330_23 NamedBody330_24

def NamedBody330_26 : StackLang.HolProg 64 :=
.seq NamedBody330_22 NamedBody330_25

def NamedBody330_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 934#64)

def NamedBody330_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody330_30 : StackLang.HolProg 64 :=
.seq NamedBody330_28 NamedBody330_29

def NamedBody330_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody330_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody330_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody330_34 : StackLang.HolProg 64 :=
.seq NamedBody330_32 NamedBody330_33

def NamedBody330_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody330_34 NamedBody330_35

def NamedBody330_37 : StackLang.HolProg 64 :=
.seq NamedBody330_31 NamedBody330_36

def NamedBody330_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody330_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody330_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 330 3

def NamedBody330_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody330_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody330_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody330_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody330_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody330_47 : StackLang.HolProg 64 :=
.seq NamedBody330_45 NamedBody330_46

def NamedBody330_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody330_49 : StackLang.HolProg 64 :=
.seq NamedBody330_47 NamedBody330_48

def NamedBody330_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody330_51 : StackLang.HolProg 64 :=
.seq NamedBody330_49 NamedBody330_50

def NamedBody330_52 : StackLang.HolProg 64 :=
.seq NamedBody330_44 NamedBody330_51

def NamedBody330_53 : StackLang.HolProg 64 :=
.seq NamedBody330_43 NamedBody330_52

def NamedBody330_54 : StackLang.HolProg 64 :=
.seq NamedBody330_42 NamedBody330_53

def NamedBody330_55 : StackLang.HolProg 64 :=
.seq NamedBody330_41 NamedBody330_54

def NamedBody330_56 : StackLang.HolProg 64 :=
.seq NamedBody330_40 NamedBody330_55

def NamedBody330_57 : StackLang.HolProg 64 :=
.seq NamedBody330_39 NamedBody330_56

def NamedBody330_58 : StackLang.HolProg 64 :=
.seq NamedBody330_38 NamedBody330_57

def NamedBody330_59 : StackLang.HolProg 64 :=
.seq NamedBody330_37 NamedBody330_58

def NamedBody330_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody330_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody330_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody330_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody330_67 : StackLang.HolProg 64 :=
.seq NamedBody330_65 NamedBody330_66

def NamedBody330_68 : StackLang.HolProg 64 :=
.seq NamedBody330_64 NamedBody330_67

def NamedBody330_69 : StackLang.HolProg 64 :=
.seq NamedBody330_63 NamedBody330_68

def NamedBody330_70 : StackLang.HolProg 64 :=
.seq NamedBody330_62 NamedBody330_69

def NamedBody330_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_72 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody330_73 : StackLang.HolProg 64 :=
.seq NamedBody330_71 NamedBody330_72

def NamedBody330_74 : StackLang.HolProg 64 :=
.call (some (NamedBody330_70, 1, 330, 2)) (Sum.inl 325) (some (NamedBody330_73, 330, 3))

def NamedBody330_75 : StackLang.HolProg 64 :=
.seq NamedBody330_61 NamedBody330_74

def NamedBody330_76 : StackLang.HolProg 64 :=
.seq NamedBody330_60 NamedBody330_75

def NamedBody330_77 : StackLang.HolProg 64 :=
.seq NamedBody330_59 NamedBody330_76

def NamedBody330_78 : StackLang.HolProg 64 :=
.seq NamedBody330_30 NamedBody330_77

def NamedBody330_79 : StackLang.HolProg 64 :=
.seq NamedBody330_27 NamedBody330_78

def NamedBody330_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody330_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody330_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody330_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody330_84 : StackLang.HolProg 64 :=
.seq NamedBody330_82 NamedBody330_83

def NamedBody330_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 935#64)

def NamedBody330_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody330_88 : StackLang.HolProg 64 :=
.seq NamedBody330_86 NamedBody330_87

def NamedBody330_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody330_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody330_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody330_92 : StackLang.HolProg 64 :=
.seq NamedBody330_90 NamedBody330_91

def NamedBody330_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody330_92 NamedBody330_93

def NamedBody330_95 : StackLang.HolProg 64 :=
.seq NamedBody330_89 NamedBody330_94

def NamedBody330_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody330_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody330_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 330 5

def NamedBody330_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody330_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody330_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody330_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody330_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody330_105 : StackLang.HolProg 64 :=
.seq NamedBody330_103 NamedBody330_104

def NamedBody330_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody330_107 : StackLang.HolProg 64 :=
.seq NamedBody330_105 NamedBody330_106

def NamedBody330_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody330_109 : StackLang.HolProg 64 :=
.seq NamedBody330_107 NamedBody330_108

def NamedBody330_110 : StackLang.HolProg 64 :=
.seq NamedBody330_102 NamedBody330_109

def NamedBody330_111 : StackLang.HolProg 64 :=
.seq NamedBody330_101 NamedBody330_110

def NamedBody330_112 : StackLang.HolProg 64 :=
.seq NamedBody330_100 NamedBody330_111

def NamedBody330_113 : StackLang.HolProg 64 :=
.seq NamedBody330_99 NamedBody330_112

def NamedBody330_114 : StackLang.HolProg 64 :=
.seq NamedBody330_98 NamedBody330_113

def NamedBody330_115 : StackLang.HolProg 64 :=
.seq NamedBody330_97 NamedBody330_114

def NamedBody330_116 : StackLang.HolProg 64 :=
.seq NamedBody330_96 NamedBody330_115

def NamedBody330_117 : StackLang.HolProg 64 :=
.seq NamedBody330_95 NamedBody330_116

def NamedBody330_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody330_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody330_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody330_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody330_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody330_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody330_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody330_128 : StackLang.HolProg 64 :=
.seq NamedBody330_126 NamedBody330_127

def NamedBody330_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody330_130 : StackLang.HolProg 64 :=
.seq NamedBody330_128 NamedBody330_129

def NamedBody330_131 : StackLang.HolProg 64 :=
.seq NamedBody330_125 NamedBody330_130

def NamedBody330_132 : StackLang.HolProg 64 :=
.seq NamedBody330_124 NamedBody330_131

def NamedBody330_133 : StackLang.HolProg 64 :=
.seq NamedBody330_123 NamedBody330_132

def NamedBody330_134 : StackLang.HolProg 64 :=
.seq NamedBody330_122 NamedBody330_133

def NamedBody330_135 : StackLang.HolProg 64 :=
.seq NamedBody330_121 NamedBody330_134

def NamedBody330_136 : StackLang.HolProg 64 :=
.seq NamedBody330_120 NamedBody330_135

def NamedBody330_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody330_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody330_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody330_140 : StackLang.HolProg 64 :=
.seq NamedBody330_138 NamedBody330_139

def NamedBody330_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody330_142 : StackLang.HolProg 64 :=
.seq NamedBody330_140 NamedBody330_141

def NamedBody330_143 : StackLang.HolProg 64 :=
.seq NamedBody330_137 NamedBody330_142

def NamedBody330_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody330_145 : StackLang.HolProg 64 :=
.seq NamedBody330_143 NamedBody330_144

def NamedBody330_146 : StackLang.HolProg 64 :=
.call (some (NamedBody330_136, 1, 330, 4)) (Sum.inl 68) (some (NamedBody330_145, 330, 5))

def NamedBody330_147 : StackLang.HolProg 64 :=
.seq NamedBody330_119 NamedBody330_146

def NamedBody330_148 : StackLang.HolProg 64 :=
.seq NamedBody330_118 NamedBody330_147

def NamedBody330_149 : StackLang.HolProg 64 :=
.seq NamedBody330_117 NamedBody330_148

def NamedBody330_150 : StackLang.HolProg 64 :=
.seq NamedBody330_88 NamedBody330_149

def NamedBody330_151 : StackLang.HolProg 64 :=
.seq NamedBody330_85 NamedBody330_150

def NamedBody330_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody330_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody330_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody330_155 : StackLang.HolProg 64 :=
.seq NamedBody330_153 NamedBody330_154

def NamedBody330_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 936#64)

def NamedBody330_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody330_159 : StackLang.HolProg 64 :=
.seq NamedBody330_157 NamedBody330_158

def NamedBody330_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody330_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody330_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody330_163 : StackLang.HolProg 64 :=
.seq NamedBody330_161 NamedBody330_162

def NamedBody330_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_165 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody330_163 NamedBody330_164

def NamedBody330_166 : StackLang.HolProg 64 :=
.seq NamedBody330_160 NamedBody330_165

def NamedBody330_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody330_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody330_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 330 7

def NamedBody330_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody330_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody330_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody330_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody330_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody330_176 : StackLang.HolProg 64 :=
.seq NamedBody330_174 NamedBody330_175

def NamedBody330_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody330_178 : StackLang.HolProg 64 :=
.seq NamedBody330_176 NamedBody330_177

def NamedBody330_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody330_180 : StackLang.HolProg 64 :=
.seq NamedBody330_178 NamedBody330_179

def NamedBody330_181 : StackLang.HolProg 64 :=
.seq NamedBody330_173 NamedBody330_180

def NamedBody330_182 : StackLang.HolProg 64 :=
.seq NamedBody330_172 NamedBody330_181

def NamedBody330_183 : StackLang.HolProg 64 :=
.seq NamedBody330_171 NamedBody330_182

def NamedBody330_184 : StackLang.HolProg 64 :=
.seq NamedBody330_170 NamedBody330_183

def NamedBody330_185 : StackLang.HolProg 64 :=
.seq NamedBody330_169 NamedBody330_184

def NamedBody330_186 : StackLang.HolProg 64 :=
.seq NamedBody330_168 NamedBody330_185

def NamedBody330_187 : StackLang.HolProg 64 :=
.seq NamedBody330_167 NamedBody330_186

def NamedBody330_188 : StackLang.HolProg 64 :=
.seq NamedBody330_166 NamedBody330_187

def NamedBody330_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody330_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody330_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody330_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody330_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody330_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody330_198 : StackLang.HolProg 64 :=
.seq NamedBody330_196 NamedBody330_197

def NamedBody330_199 : StackLang.HolProg 64 :=
.seq NamedBody330_195 NamedBody330_198

def NamedBody330_200 : StackLang.HolProg 64 :=
.seq NamedBody330_194 NamedBody330_199

def NamedBody330_201 : StackLang.HolProg 64 :=
.seq NamedBody330_193 NamedBody330_200

def NamedBody330_202 : StackLang.HolProg 64 :=
.seq NamedBody330_192 NamedBody330_201

def NamedBody330_203 : StackLang.HolProg 64 :=
.seq NamedBody330_191 NamedBody330_202

def NamedBody330_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody330_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody330_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody330_207 : StackLang.HolProg 64 :=
.seq NamedBody330_205 NamedBody330_206

def NamedBody330_208 : StackLang.HolProg 64 :=
.seq NamedBody330_204 NamedBody330_207

def NamedBody330_209 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody330_210 : StackLang.HolProg 64 :=
.seq NamedBody330_208 NamedBody330_209

def NamedBody330_211 : StackLang.HolProg 64 :=
.call (some (NamedBody330_203, 1, 330, 6)) (Sum.inl 158) (some (NamedBody330_210, 330, 7))

def NamedBody330_212 : StackLang.HolProg 64 :=
.seq NamedBody330_190 NamedBody330_211

def NamedBody330_213 : StackLang.HolProg 64 :=
.seq NamedBody330_189 NamedBody330_212

def NamedBody330_214 : StackLang.HolProg 64 :=
.seq NamedBody330_188 NamedBody330_213

def NamedBody330_215 : StackLang.HolProg 64 :=
.seq NamedBody330_159 NamedBody330_214

def NamedBody330_216 : StackLang.HolProg 64 :=
.seq NamedBody330_156 NamedBody330_215

def NamedBody330_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody330_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody330_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody330_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody330_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody330_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody330_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody330_225 : StackLang.HolProg 64 :=
.seq NamedBody330_223 NamedBody330_224

def NamedBody330_226 : StackLang.HolProg 64 :=
.seq NamedBody330_222 NamedBody330_225

def NamedBody330_227 : StackLang.HolProg 64 :=
.seq NamedBody330_221 NamedBody330_226

def NamedBody330_228 : StackLang.HolProg 64 :=
.seq NamedBody330_220 NamedBody330_227

def NamedBody330_229 : StackLang.HolProg 64 :=
.seq NamedBody330_219 NamedBody330_228

def NamedBody330_230 : StackLang.HolProg 64 :=
.seq NamedBody330_218 NamedBody330_229

def NamedBody330_231 : StackLang.HolProg 64 :=
.seq NamedBody330_217 NamedBody330_230

def NamedBody330_232 : StackLang.HolProg 64 :=
.seq NamedBody330_216 NamedBody330_231

def NamedBody330_233 : StackLang.HolProg 64 :=
.seq NamedBody330_155 NamedBody330_232

def NamedBody330_234 : StackLang.HolProg 64 :=
.seq NamedBody330_152 NamedBody330_233

def NamedBody330_235 : StackLang.HolProg 64 :=
.seq NamedBody330_151 NamedBody330_234

def NamedBody330_236 : StackLang.HolProg 64 :=
.seq NamedBody330_84 NamedBody330_235

def NamedBody330_237 : StackLang.HolProg 64 :=
.seq NamedBody330_81 NamedBody330_236

def NamedBody330_238 : StackLang.HolProg 64 :=
.seq NamedBody330_80 NamedBody330_237

def NamedBody330_239 : StackLang.HolProg 64 :=
.seq NamedBody330_79 NamedBody330_238

def NamedBody330_240 : StackLang.HolProg 64 :=
.seq NamedBody330_26 NamedBody330_239

def NamedBody330_241 : StackLang.HolProg 64 :=
.seq NamedBody330_21 NamedBody330_240

def NamedBody330_242 : StackLang.HolProg 64 :=
.seq NamedBody330_20 NamedBody330_241

def NamedBody330_243 : StackLang.HolProg 64 :=
.seq NamedBody330_19 NamedBody330_242

def NamedBody330_244 : StackLang.HolProg 64 :=
.seq NamedBody330_10 NamedBody330_243

def NamedBody330_245 : StackLang.HolProg 64 :=
.seq NamedBody330_9 NamedBody330_244

def NamedBody330_246 : StackLang.HolProg 64 :=
.seq NamedBody330_8 NamedBody330_245

def NamedBody330_247 : StackLang.HolProg 64 :=
.seq NamedBody330_7 NamedBody330_246

def NamedBody330_248 : StackLang.HolProg 64 :=
.seq NamedBody330_6 NamedBody330_247

def Named330 : Nat × StackLang.HolProg 64 := (330, NamedBody330_248)
theorem Named330_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed330 = Named330 := by
  kernel_rfl
#print axioms Named330_eq
end InitECandidate.Proofs.BackendStages
