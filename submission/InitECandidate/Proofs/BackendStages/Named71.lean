import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed71
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody71_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody71_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody71_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody71_3 : StackLang.HolProg 64 :=
.seq NamedBody71_1 NamedBody71_2

def NamedBody71_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody71_3 NamedBody71_4

def NamedBody71_6 : StackLang.HolProg 64 :=
.seq NamedBody71_0 NamedBody71_5

def NamedBody71_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody71_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody71_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody71_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 18446744073709551584#64))

def NamedBody71_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 18446744073709551592#64))

def NamedBody71_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody71_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody71_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody71_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody71_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody71_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody71_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody71_22 : StackLang.HolProg 64 :=
.seq NamedBody71_20 NamedBody71_21

def NamedBody71_23 : StackLang.HolProg 64 :=
.seq NamedBody71_19 NamedBody71_22

def NamedBody71_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 29#64)

def NamedBody71_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody71_27 : StackLang.HolProg 64 :=
.seq NamedBody71_25 NamedBody71_26

def NamedBody71_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody71_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody71_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody71_31 : StackLang.HolProg 64 :=
.seq NamedBody71_29 NamedBody71_30

def NamedBody71_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody71_31 NamedBody71_32

def NamedBody71_34 : StackLang.HolProg 64 :=
.seq NamedBody71_28 NamedBody71_33

def NamedBody71_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody71_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody71_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 71 3

def NamedBody71_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody71_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody71_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody71_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody71_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody71_44 : StackLang.HolProg 64 :=
.seq NamedBody71_42 NamedBody71_43

def NamedBody71_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody71_46 : StackLang.HolProg 64 :=
.seq NamedBody71_44 NamedBody71_45

def NamedBody71_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody71_48 : StackLang.HolProg 64 :=
.seq NamedBody71_46 NamedBody71_47

def NamedBody71_49 : StackLang.HolProg 64 :=
.seq NamedBody71_41 NamedBody71_48

def NamedBody71_50 : StackLang.HolProg 64 :=
.seq NamedBody71_40 NamedBody71_49

def NamedBody71_51 : StackLang.HolProg 64 :=
.seq NamedBody71_39 NamedBody71_50

def NamedBody71_52 : StackLang.HolProg 64 :=
.seq NamedBody71_38 NamedBody71_51

def NamedBody71_53 : StackLang.HolProg 64 :=
.seq NamedBody71_37 NamedBody71_52

def NamedBody71_54 : StackLang.HolProg 64 :=
.seq NamedBody71_36 NamedBody71_53

def NamedBody71_55 : StackLang.HolProg 64 :=
.seq NamedBody71_35 NamedBody71_54

def NamedBody71_56 : StackLang.HolProg 64 :=
.seq NamedBody71_34 NamedBody71_55

def NamedBody71_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody71_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody71_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody71_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody71_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody71_65 : StackLang.HolProg 64 :=
.seq NamedBody71_63 NamedBody71_64

def NamedBody71_66 : StackLang.HolProg 64 :=
.seq NamedBody71_62 NamedBody71_65

def NamedBody71_67 : StackLang.HolProg 64 :=
.seq NamedBody71_61 NamedBody71_66

def NamedBody71_68 : StackLang.HolProg 64 :=
.seq NamedBody71_60 NamedBody71_67

def NamedBody71_69 : StackLang.HolProg 64 :=
.seq NamedBody71_59 NamedBody71_68

def NamedBody71_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody71_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody71_72 : StackLang.HolProg 64 :=
.seq NamedBody71_70 NamedBody71_71

def NamedBody71_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody71_74 : StackLang.HolProg 64 :=
.seq NamedBody71_72 NamedBody71_73

def NamedBody71_75 : StackLang.HolProg 64 :=
.call (some (NamedBody71_69, 1, 71, 2)) (Sum.inl 66) (some (NamedBody71_74, 71, 3))

def NamedBody71_76 : StackLang.HolProg 64 :=
.seq NamedBody71_58 NamedBody71_75

def NamedBody71_77 : StackLang.HolProg 64 :=
.seq NamedBody71_57 NamedBody71_76

def NamedBody71_78 : StackLang.HolProg 64 :=
.seq NamedBody71_56 NamedBody71_77

def NamedBody71_79 : StackLang.HolProg 64 :=
.seq NamedBody71_27 NamedBody71_78

def NamedBody71_80 : StackLang.HolProg 64 :=
.seq NamedBody71_24 NamedBody71_79

def NamedBody71_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody71_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_83 : StackLang.HolProg 64 :=
.seq NamedBody71_81 NamedBody71_82

def NamedBody71_84 : StackLang.HolProg 64 :=
.seq NamedBody71_80 NamedBody71_83

def NamedBody71_85 : StackLang.HolProg 64 :=
.seq NamedBody71_23 NamedBody71_84

def NamedBody71_86 : StackLang.HolProg 64 :=
.seq NamedBody71_18 NamedBody71_85

def NamedBody71_87 : StackLang.HolProg 64 :=
.seq NamedBody71_17 NamedBody71_86

def NamedBody71_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody71_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody71_90 : StackLang.HolProg 64 :=
.seq NamedBody71_88 NamedBody71_89

def NamedBody71_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody71_87 NamedBody71_90

def NamedBody71_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody71_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody71_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody71_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def NamedBody71_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody71_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody71_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody71_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551592#64))

def NamedBody71_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody71_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody71_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody71_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody71_106 : StackLang.HolProg 64 :=
.seq NamedBody71_104 NamedBody71_105

def NamedBody71_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 30#64)

def NamedBody71_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody71_110 : StackLang.HolProg 64 :=
.seq NamedBody71_108 NamedBody71_109

def NamedBody71_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody71_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody71_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody71_114 : StackLang.HolProg 64 :=
.seq NamedBody71_112 NamedBody71_113

def NamedBody71_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_116 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody71_114 NamedBody71_115

def NamedBody71_117 : StackLang.HolProg 64 :=
.seq NamedBody71_111 NamedBody71_116

def NamedBody71_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody71_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody71_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 71 5

def NamedBody71_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody71_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody71_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody71_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody71_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody71_127 : StackLang.HolProg 64 :=
.seq NamedBody71_125 NamedBody71_126

def NamedBody71_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody71_129 : StackLang.HolProg 64 :=
.seq NamedBody71_127 NamedBody71_128

def NamedBody71_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody71_131 : StackLang.HolProg 64 :=
.seq NamedBody71_129 NamedBody71_130

def NamedBody71_132 : StackLang.HolProg 64 :=
.seq NamedBody71_124 NamedBody71_131

def NamedBody71_133 : StackLang.HolProg 64 :=
.seq NamedBody71_123 NamedBody71_132

def NamedBody71_134 : StackLang.HolProg 64 :=
.seq NamedBody71_122 NamedBody71_133

def NamedBody71_135 : StackLang.HolProg 64 :=
.seq NamedBody71_121 NamedBody71_134

def NamedBody71_136 : StackLang.HolProg 64 :=
.seq NamedBody71_120 NamedBody71_135

def NamedBody71_137 : StackLang.HolProg 64 :=
.seq NamedBody71_119 NamedBody71_136

def NamedBody71_138 : StackLang.HolProg 64 :=
.seq NamedBody71_118 NamedBody71_137

def NamedBody71_139 : StackLang.HolProg 64 :=
.seq NamedBody71_117 NamedBody71_138

def NamedBody71_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody71_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody71_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody71_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody71_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody71_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody71_149 : StackLang.HolProg 64 :=
.seq NamedBody71_147 NamedBody71_148

def NamedBody71_150 : StackLang.HolProg 64 :=
.seq NamedBody71_146 NamedBody71_149

def NamedBody71_151 : StackLang.HolProg 64 :=
.seq NamedBody71_145 NamedBody71_150

def NamedBody71_152 : StackLang.HolProg 64 :=
.seq NamedBody71_144 NamedBody71_151

def NamedBody71_153 : StackLang.HolProg 64 :=
.seq NamedBody71_143 NamedBody71_152

def NamedBody71_154 : StackLang.HolProg 64 :=
.seq NamedBody71_142 NamedBody71_153

def NamedBody71_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody71_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody71_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody71_158 : StackLang.HolProg 64 :=
.seq NamedBody71_156 NamedBody71_157

def NamedBody71_159 : StackLang.HolProg 64 :=
.seq NamedBody71_155 NamedBody71_158

def NamedBody71_160 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody71_161 : StackLang.HolProg 64 :=
.seq NamedBody71_159 NamedBody71_160

def NamedBody71_162 : StackLang.HolProg 64 :=
.call (some (NamedBody71_154, 1, 71, 4)) (Sum.inl 66) (some (NamedBody71_161, 71, 5))

def NamedBody71_163 : StackLang.HolProg 64 :=
.seq NamedBody71_141 NamedBody71_162

def NamedBody71_164 : StackLang.HolProg 64 :=
.seq NamedBody71_140 NamedBody71_163

def NamedBody71_165 : StackLang.HolProg 64 :=
.seq NamedBody71_139 NamedBody71_164

def NamedBody71_166 : StackLang.HolProg 64 :=
.seq NamedBody71_110 NamedBody71_165

def NamedBody71_167 : StackLang.HolProg 64 :=
.seq NamedBody71_107 NamedBody71_166

def NamedBody71_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody71_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_170 : StackLang.HolProg 64 :=
.seq NamedBody71_168 NamedBody71_169

def NamedBody71_171 : StackLang.HolProg 64 :=
.seq NamedBody71_167 NamedBody71_170

def NamedBody71_172 : StackLang.HolProg 64 :=
.seq NamedBody71_106 NamedBody71_171

def NamedBody71_173 : StackLang.HolProg 64 :=
.seq NamedBody71_103 NamedBody71_172

def NamedBody71_174 : StackLang.HolProg 64 :=
.seq NamedBody71_102 NamedBody71_173

def NamedBody71_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody71_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody71_177 : StackLang.HolProg 64 :=
.seq NamedBody71_175 NamedBody71_176

def NamedBody71_178 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody71_174 NamedBody71_177

def NamedBody71_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody71_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody71_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody71_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody71_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def NamedBody71_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody71_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody71_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody71_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody71_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody71_189 : StackLang.HolProg 64 :=
.seq NamedBody71_187 NamedBody71_188

def NamedBody71_190 : StackLang.HolProg 64 :=
.seq NamedBody71_186 NamedBody71_189

def NamedBody71_191 : StackLang.HolProg 64 :=
.seq NamedBody71_185 NamedBody71_190

def NamedBody71_192 : StackLang.HolProg 64 :=
.seq NamedBody71_184 NamedBody71_191

def NamedBody71_193 : StackLang.HolProg 64 :=
.seq NamedBody71_183 NamedBody71_192

def NamedBody71_194 : StackLang.HolProg 64 :=
.seq NamedBody71_182 NamedBody71_193

def NamedBody71_195 : StackLang.HolProg 64 :=
.seq NamedBody71_181 NamedBody71_194

def NamedBody71_196 : StackLang.HolProg 64 :=
.seq NamedBody71_180 NamedBody71_195

def NamedBody71_197 : StackLang.HolProg 64 :=
.seq NamedBody71_179 NamedBody71_196

def NamedBody71_198 : StackLang.HolProg 64 :=
.seq NamedBody71_178 NamedBody71_197

def NamedBody71_199 : StackLang.HolProg 64 :=
.seq NamedBody71_101 NamedBody71_198

def NamedBody71_200 : StackLang.HolProg 64 :=
.seq NamedBody71_100 NamedBody71_199

def NamedBody71_201 : StackLang.HolProg 64 :=
.seq NamedBody71_99 NamedBody71_200

def NamedBody71_202 : StackLang.HolProg 64 :=
.seq NamedBody71_98 NamedBody71_201

def NamedBody71_203 : StackLang.HolProg 64 :=
.seq NamedBody71_97 NamedBody71_202

def NamedBody71_204 : StackLang.HolProg 64 :=
.seq NamedBody71_96 NamedBody71_203

def NamedBody71_205 : StackLang.HolProg 64 :=
.seq NamedBody71_95 NamedBody71_204

def NamedBody71_206 : StackLang.HolProg 64 :=
.seq NamedBody71_94 NamedBody71_205

def NamedBody71_207 : StackLang.HolProg 64 :=
.seq NamedBody71_93 NamedBody71_206

def NamedBody71_208 : StackLang.HolProg 64 :=
.seq NamedBody71_92 NamedBody71_207

def NamedBody71_209 : StackLang.HolProg 64 :=
.seq NamedBody71_91 NamedBody71_208

def NamedBody71_210 : StackLang.HolProg 64 :=
.seq NamedBody71_16 NamedBody71_209

def NamedBody71_211 : StackLang.HolProg 64 :=
.seq NamedBody71_15 NamedBody71_210

def NamedBody71_212 : StackLang.HolProg 64 :=
.seq NamedBody71_14 NamedBody71_211

def NamedBody71_213 : StackLang.HolProg 64 :=
.seq NamedBody71_13 NamedBody71_212

def NamedBody71_214 : StackLang.HolProg 64 :=
.seq NamedBody71_12 NamedBody71_213

def NamedBody71_215 : StackLang.HolProg 64 :=
.seq NamedBody71_11 NamedBody71_214

def NamedBody71_216 : StackLang.HolProg 64 :=
.seq NamedBody71_10 NamedBody71_215

def NamedBody71_217 : StackLang.HolProg 64 :=
.seq NamedBody71_9 NamedBody71_216

def NamedBody71_218 : StackLang.HolProg 64 :=
.seq NamedBody71_8 NamedBody71_217

def NamedBody71_219 : StackLang.HolProg 64 :=
.seq NamedBody71_7 NamedBody71_218

def NamedBody71_220 : StackLang.HolProg 64 :=
.seq NamedBody71_6 NamedBody71_219

def Named71 : Nat × StackLang.HolProg 64 := (71, NamedBody71_220)
theorem Named71_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed71 = Named71 := by
  kernel_rfl
#print axioms Named71_eq
end InitECandidate.Proofs.BackendStages
