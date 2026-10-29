import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed74
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody74_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody74_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody74_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody74_3 : StackLang.HolProg 64 :=
.seq NamedBody74_1 NamedBody74_2

def NamedBody74_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody74_3 NamedBody74_4

def NamedBody74_6 : StackLang.HolProg 64 :=
.seq NamedBody74_0 NamedBody74_5

def NamedBody74_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody74_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody74_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody74_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 18446744073709551592#64))

def NamedBody74_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 18446744073709551584#64))

def NamedBody74_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody74_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody74_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody74_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7#64)

def NamedBody74_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody74_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody74_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody74_21 : StackLang.HolProg 64 :=
.seq NamedBody74_19 NamedBody74_20

def NamedBody74_22 : StackLang.HolProg 64 :=
.seq NamedBody74_18 NamedBody74_21

def NamedBody74_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 31#64)

def NamedBody74_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody74_26 : StackLang.HolProg 64 :=
.seq NamedBody74_24 NamedBody74_25

def NamedBody74_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody74_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody74_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody74_30 : StackLang.HolProg 64 :=
.seq NamedBody74_28 NamedBody74_29

def NamedBody74_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_32 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody74_30 NamedBody74_31

def NamedBody74_33 : StackLang.HolProg 64 :=
.seq NamedBody74_27 NamedBody74_32

def NamedBody74_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody74_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody74_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 74 3

def NamedBody74_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody74_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody74_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody74_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody74_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody74_43 : StackLang.HolProg 64 :=
.seq NamedBody74_41 NamedBody74_42

def NamedBody74_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody74_45 : StackLang.HolProg 64 :=
.seq NamedBody74_43 NamedBody74_44

def NamedBody74_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody74_47 : StackLang.HolProg 64 :=
.seq NamedBody74_45 NamedBody74_46

def NamedBody74_48 : StackLang.HolProg 64 :=
.seq NamedBody74_40 NamedBody74_47

def NamedBody74_49 : StackLang.HolProg 64 :=
.seq NamedBody74_39 NamedBody74_48

def NamedBody74_50 : StackLang.HolProg 64 :=
.seq NamedBody74_38 NamedBody74_49

def NamedBody74_51 : StackLang.HolProg 64 :=
.seq NamedBody74_37 NamedBody74_50

def NamedBody74_52 : StackLang.HolProg 64 :=
.seq NamedBody74_36 NamedBody74_51

def NamedBody74_53 : StackLang.HolProg 64 :=
.seq NamedBody74_35 NamedBody74_52

def NamedBody74_54 : StackLang.HolProg 64 :=
.seq NamedBody74_34 NamedBody74_53

def NamedBody74_55 : StackLang.HolProg 64 :=
.seq NamedBody74_33 NamedBody74_54

def NamedBody74_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody74_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody74_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody74_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody74_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody74_64 : StackLang.HolProg 64 :=
.seq NamedBody74_62 NamedBody74_63

def NamedBody74_65 : StackLang.HolProg 64 :=
.seq NamedBody74_61 NamedBody74_64

def NamedBody74_66 : StackLang.HolProg 64 :=
.seq NamedBody74_60 NamedBody74_65

def NamedBody74_67 : StackLang.HolProg 64 :=
.seq NamedBody74_59 NamedBody74_66

def NamedBody74_68 : StackLang.HolProg 64 :=
.seq NamedBody74_58 NamedBody74_67

def NamedBody74_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody74_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody74_71 : StackLang.HolProg 64 :=
.seq NamedBody74_69 NamedBody74_70

def NamedBody74_72 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody74_73 : StackLang.HolProg 64 :=
.seq NamedBody74_71 NamedBody74_72

def NamedBody74_74 : StackLang.HolProg 64 :=
.call (some (NamedBody74_68, 1, 74, 2)) (Sum.inl 66) (some (NamedBody74_73, 74, 3))

def NamedBody74_75 : StackLang.HolProg 64 :=
.seq NamedBody74_57 NamedBody74_74

def NamedBody74_76 : StackLang.HolProg 64 :=
.seq NamedBody74_56 NamedBody74_75

def NamedBody74_77 : StackLang.HolProg 64 :=
.seq NamedBody74_55 NamedBody74_76

def NamedBody74_78 : StackLang.HolProg 64 :=
.seq NamedBody74_26 NamedBody74_77

def NamedBody74_79 : StackLang.HolProg 64 :=
.seq NamedBody74_23 NamedBody74_78

def NamedBody74_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody74_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_82 : StackLang.HolProg 64 :=
.seq NamedBody74_80 NamedBody74_81

def NamedBody74_83 : StackLang.HolProg 64 :=
.seq NamedBody74_79 NamedBody74_82

def NamedBody74_84 : StackLang.HolProg 64 :=
.seq NamedBody74_22 NamedBody74_83

def NamedBody74_85 : StackLang.HolProg 64 :=
.seq NamedBody74_17 NamedBody74_84

def NamedBody74_86 : StackLang.HolProg 64 :=
.seq NamedBody74_16 NamedBody74_85

def NamedBody74_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody74_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody74_89 : StackLang.HolProg 64 :=
.seq NamedBody74_87 NamedBody74_88

def NamedBody74_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody74_86 NamedBody74_89

def NamedBody74_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody74_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody74_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def NamedBody74_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody74_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody74_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody74_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551584#64))

def NamedBody74_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody74_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7#64)

def NamedBody74_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody74_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 32#64)

def NamedBody74_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody74_106 : StackLang.HolProg 64 :=
.seq NamedBody74_104 NamedBody74_105

def NamedBody74_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody74_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody74_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody74_110 : StackLang.HolProg 64 :=
.seq NamedBody74_108 NamedBody74_109

def NamedBody74_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody74_110 NamedBody74_111

def NamedBody74_113 : StackLang.HolProg 64 :=
.seq NamedBody74_107 NamedBody74_112

def NamedBody74_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody74_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody74_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 74 5

def NamedBody74_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody74_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody74_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody74_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody74_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody74_123 : StackLang.HolProg 64 :=
.seq NamedBody74_121 NamedBody74_122

def NamedBody74_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody74_125 : StackLang.HolProg 64 :=
.seq NamedBody74_123 NamedBody74_124

def NamedBody74_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody74_127 : StackLang.HolProg 64 :=
.seq NamedBody74_125 NamedBody74_126

def NamedBody74_128 : StackLang.HolProg 64 :=
.seq NamedBody74_120 NamedBody74_127

def NamedBody74_129 : StackLang.HolProg 64 :=
.seq NamedBody74_119 NamedBody74_128

def NamedBody74_130 : StackLang.HolProg 64 :=
.seq NamedBody74_118 NamedBody74_129

def NamedBody74_131 : StackLang.HolProg 64 :=
.seq NamedBody74_117 NamedBody74_130

def NamedBody74_132 : StackLang.HolProg 64 :=
.seq NamedBody74_116 NamedBody74_131

def NamedBody74_133 : StackLang.HolProg 64 :=
.seq NamedBody74_115 NamedBody74_132

def NamedBody74_134 : StackLang.HolProg 64 :=
.seq NamedBody74_114 NamedBody74_133

def NamedBody74_135 : StackLang.HolProg 64 :=
.seq NamedBody74_113 NamedBody74_134

def NamedBody74_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody74_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody74_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody74_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody74_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody74_144 : StackLang.HolProg 64 :=
.seq NamedBody74_142 NamedBody74_143

def NamedBody74_145 : StackLang.HolProg 64 :=
.seq NamedBody74_141 NamedBody74_144

def NamedBody74_146 : StackLang.HolProg 64 :=
.seq NamedBody74_140 NamedBody74_145

def NamedBody74_147 : StackLang.HolProg 64 :=
.seq NamedBody74_139 NamedBody74_146

def NamedBody74_148 : StackLang.HolProg 64 :=
.seq NamedBody74_138 NamedBody74_147

def NamedBody74_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody74_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody74_151 : StackLang.HolProg 64 :=
.seq NamedBody74_149 NamedBody74_150

def NamedBody74_152 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody74_153 : StackLang.HolProg 64 :=
.seq NamedBody74_151 NamedBody74_152

def NamedBody74_154 : StackLang.HolProg 64 :=
.call (some (NamedBody74_148, 1, 74, 4)) (Sum.inl 66) (some (NamedBody74_153, 74, 5))

def NamedBody74_155 : StackLang.HolProg 64 :=
.seq NamedBody74_137 NamedBody74_154

def NamedBody74_156 : StackLang.HolProg 64 :=
.seq NamedBody74_136 NamedBody74_155

def NamedBody74_157 : StackLang.HolProg 64 :=
.seq NamedBody74_135 NamedBody74_156

def NamedBody74_158 : StackLang.HolProg 64 :=
.seq NamedBody74_106 NamedBody74_157

def NamedBody74_159 : StackLang.HolProg 64 :=
.seq NamedBody74_103 NamedBody74_158

def NamedBody74_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody74_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_162 : StackLang.HolProg 64 :=
.seq NamedBody74_160 NamedBody74_161

def NamedBody74_163 : StackLang.HolProg 64 :=
.seq NamedBody74_159 NamedBody74_162

def NamedBody74_164 : StackLang.HolProg 64 :=
.seq NamedBody74_102 NamedBody74_163

def NamedBody74_165 : StackLang.HolProg 64 :=
.seq NamedBody74_101 NamedBody74_164

def NamedBody74_166 : StackLang.HolProg 64 :=
.seq NamedBody74_100 NamedBody74_165

def NamedBody74_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody74_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody74_169 : StackLang.HolProg 64 :=
.seq NamedBody74_167 NamedBody74_168

def NamedBody74_170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody74_166 NamedBody74_169

def NamedBody74_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody74_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody74_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody74_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody74_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551592#64)))

def NamedBody74_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody74_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody74_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody74_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody74_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody74_181 : StackLang.HolProg 64 :=
.seq NamedBody74_179 NamedBody74_180

def NamedBody74_182 : StackLang.HolProg 64 :=
.seq NamedBody74_178 NamedBody74_181

def NamedBody74_183 : StackLang.HolProg 64 :=
.seq NamedBody74_177 NamedBody74_182

def NamedBody74_184 : StackLang.HolProg 64 :=
.seq NamedBody74_176 NamedBody74_183

def NamedBody74_185 : StackLang.HolProg 64 :=
.seq NamedBody74_175 NamedBody74_184

def NamedBody74_186 : StackLang.HolProg 64 :=
.seq NamedBody74_174 NamedBody74_185

def NamedBody74_187 : StackLang.HolProg 64 :=
.seq NamedBody74_173 NamedBody74_186

def NamedBody74_188 : StackLang.HolProg 64 :=
.seq NamedBody74_172 NamedBody74_187

def NamedBody74_189 : StackLang.HolProg 64 :=
.seq NamedBody74_171 NamedBody74_188

def NamedBody74_190 : StackLang.HolProg 64 :=
.seq NamedBody74_170 NamedBody74_189

def NamedBody74_191 : StackLang.HolProg 64 :=
.seq NamedBody74_99 NamedBody74_190

def NamedBody74_192 : StackLang.HolProg 64 :=
.seq NamedBody74_98 NamedBody74_191

def NamedBody74_193 : StackLang.HolProg 64 :=
.seq NamedBody74_97 NamedBody74_192

def NamedBody74_194 : StackLang.HolProg 64 :=
.seq NamedBody74_96 NamedBody74_193

def NamedBody74_195 : StackLang.HolProg 64 :=
.seq NamedBody74_95 NamedBody74_194

def NamedBody74_196 : StackLang.HolProg 64 :=
.seq NamedBody74_94 NamedBody74_195

def NamedBody74_197 : StackLang.HolProg 64 :=
.seq NamedBody74_93 NamedBody74_196

def NamedBody74_198 : StackLang.HolProg 64 :=
.seq NamedBody74_92 NamedBody74_197

def NamedBody74_199 : StackLang.HolProg 64 :=
.seq NamedBody74_91 NamedBody74_198

def NamedBody74_200 : StackLang.HolProg 64 :=
.seq NamedBody74_90 NamedBody74_199

def NamedBody74_201 : StackLang.HolProg 64 :=
.seq NamedBody74_15 NamedBody74_200

def NamedBody74_202 : StackLang.HolProg 64 :=
.seq NamedBody74_14 NamedBody74_201

def NamedBody74_203 : StackLang.HolProg 64 :=
.seq NamedBody74_13 NamedBody74_202

def NamedBody74_204 : StackLang.HolProg 64 :=
.seq NamedBody74_12 NamedBody74_203

def NamedBody74_205 : StackLang.HolProg 64 :=
.seq NamedBody74_11 NamedBody74_204

def NamedBody74_206 : StackLang.HolProg 64 :=
.seq NamedBody74_10 NamedBody74_205

def NamedBody74_207 : StackLang.HolProg 64 :=
.seq NamedBody74_9 NamedBody74_206

def NamedBody74_208 : StackLang.HolProg 64 :=
.seq NamedBody74_8 NamedBody74_207

def NamedBody74_209 : StackLang.HolProg 64 :=
.seq NamedBody74_7 NamedBody74_208

def NamedBody74_210 : StackLang.HolProg 64 :=
.seq NamedBody74_6 NamedBody74_209

def Named74 : Nat × StackLang.HolProg 64 := (74, NamedBody74_210)
theorem Named74_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed74 = Named74 := by
  kernel_rfl
#print axioms Named74_eq
end InitECandidate.Proofs.BackendStages
