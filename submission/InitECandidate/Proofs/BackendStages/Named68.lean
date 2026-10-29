import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed68
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody68_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody68_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody68_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody68_3 : StackLang.HolProg 64 :=
.seq NamedBody68_1 NamedBody68_2

def NamedBody68_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody68_3 NamedBody68_4

def NamedBody68_6 : StackLang.HolProg 64 :=
.seq NamedBody68_0 NamedBody68_5

def NamedBody68_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody68_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody68_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody68_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551608#64))

def NamedBody68_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 2952790016#64)

def NamedBody68_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody68_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody68_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody68_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody68_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody68_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody68_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody68_21 : StackLang.HolProg 64 :=
.seq NamedBody68_19 NamedBody68_20

def NamedBody68_22 : StackLang.HolProg 64 :=
.seq NamedBody68_18 NamedBody68_21

def NamedBody68_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 27#64)

def NamedBody68_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody68_26 : StackLang.HolProg 64 :=
.seq NamedBody68_24 NamedBody68_25

def NamedBody68_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody68_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody68_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody68_30 : StackLang.HolProg 64 :=
.seq NamedBody68_28 NamedBody68_29

def NamedBody68_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_32 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody68_30 NamedBody68_31

def NamedBody68_33 : StackLang.HolProg 64 :=
.seq NamedBody68_27 NamedBody68_32

def NamedBody68_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody68_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody68_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 68 3

def NamedBody68_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody68_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody68_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody68_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody68_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody68_43 : StackLang.HolProg 64 :=
.seq NamedBody68_41 NamedBody68_42

def NamedBody68_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody68_45 : StackLang.HolProg 64 :=
.seq NamedBody68_43 NamedBody68_44

def NamedBody68_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody68_47 : StackLang.HolProg 64 :=
.seq NamedBody68_45 NamedBody68_46

def NamedBody68_48 : StackLang.HolProg 64 :=
.seq NamedBody68_40 NamedBody68_47

def NamedBody68_49 : StackLang.HolProg 64 :=
.seq NamedBody68_39 NamedBody68_48

def NamedBody68_50 : StackLang.HolProg 64 :=
.seq NamedBody68_38 NamedBody68_49

def NamedBody68_51 : StackLang.HolProg 64 :=
.seq NamedBody68_37 NamedBody68_50

def NamedBody68_52 : StackLang.HolProg 64 :=
.seq NamedBody68_36 NamedBody68_51

def NamedBody68_53 : StackLang.HolProg 64 :=
.seq NamedBody68_35 NamedBody68_52

def NamedBody68_54 : StackLang.HolProg 64 :=
.seq NamedBody68_34 NamedBody68_53

def NamedBody68_55 : StackLang.HolProg 64 :=
.seq NamedBody68_33 NamedBody68_54

def NamedBody68_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody68_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody68_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody68_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody68_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody68_64 : StackLang.HolProg 64 :=
.seq NamedBody68_62 NamedBody68_63

def NamedBody68_65 : StackLang.HolProg 64 :=
.seq NamedBody68_61 NamedBody68_64

def NamedBody68_66 : StackLang.HolProg 64 :=
.seq NamedBody68_60 NamedBody68_65

def NamedBody68_67 : StackLang.HolProg 64 :=
.seq NamedBody68_59 NamedBody68_66

def NamedBody68_68 : StackLang.HolProg 64 :=
.seq NamedBody68_58 NamedBody68_67

def NamedBody68_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody68_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody68_71 : StackLang.HolProg 64 :=
.seq NamedBody68_69 NamedBody68_70

def NamedBody68_72 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody68_73 : StackLang.HolProg 64 :=
.seq NamedBody68_71 NamedBody68_72

def NamedBody68_74 : StackLang.HolProg 64 :=
.call (some (NamedBody68_68, 1, 68, 2)) (Sum.inl 66) (some (NamedBody68_73, 68, 3))

def NamedBody68_75 : StackLang.HolProg 64 :=
.seq NamedBody68_57 NamedBody68_74

def NamedBody68_76 : StackLang.HolProg 64 :=
.seq NamedBody68_56 NamedBody68_75

def NamedBody68_77 : StackLang.HolProg 64 :=
.seq NamedBody68_55 NamedBody68_76

def NamedBody68_78 : StackLang.HolProg 64 :=
.seq NamedBody68_26 NamedBody68_77

def NamedBody68_79 : StackLang.HolProg 64 :=
.seq NamedBody68_23 NamedBody68_78

def NamedBody68_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody68_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_82 : StackLang.HolProg 64 :=
.seq NamedBody68_80 NamedBody68_81

def NamedBody68_83 : StackLang.HolProg 64 :=
.seq NamedBody68_79 NamedBody68_82

def NamedBody68_84 : StackLang.HolProg 64 :=
.seq NamedBody68_22 NamedBody68_83

def NamedBody68_85 : StackLang.HolProg 64 :=
.seq NamedBody68_17 NamedBody68_84

def NamedBody68_86 : StackLang.HolProg 64 :=
.seq NamedBody68_16 NamedBody68_85

def NamedBody68_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody68_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody68_89 : StackLang.HolProg 64 :=
.seq NamedBody68_87 NamedBody68_88

def NamedBody68_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody68_86 NamedBody68_89

def NamedBody68_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody68_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody68_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody68_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def NamedBody68_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2952790016#64)

def NamedBody68_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody68_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody68_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody68_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody68_102 : StackLang.HolProg 64 :=
.seq NamedBody68_100 NamedBody68_101

def NamedBody68_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 28#64)

def NamedBody68_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody68_106 : StackLang.HolProg 64 :=
.seq NamedBody68_104 NamedBody68_105

def NamedBody68_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody68_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody68_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody68_110 : StackLang.HolProg 64 :=
.seq NamedBody68_108 NamedBody68_109

def NamedBody68_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody68_110 NamedBody68_111

def NamedBody68_113 : StackLang.HolProg 64 :=
.seq NamedBody68_107 NamedBody68_112

def NamedBody68_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody68_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody68_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 68 5

def NamedBody68_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody68_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody68_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody68_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody68_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody68_123 : StackLang.HolProg 64 :=
.seq NamedBody68_121 NamedBody68_122

def NamedBody68_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody68_125 : StackLang.HolProg 64 :=
.seq NamedBody68_123 NamedBody68_124

def NamedBody68_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody68_127 : StackLang.HolProg 64 :=
.seq NamedBody68_125 NamedBody68_126

def NamedBody68_128 : StackLang.HolProg 64 :=
.seq NamedBody68_120 NamedBody68_127

def NamedBody68_129 : StackLang.HolProg 64 :=
.seq NamedBody68_119 NamedBody68_128

def NamedBody68_130 : StackLang.HolProg 64 :=
.seq NamedBody68_118 NamedBody68_129

def NamedBody68_131 : StackLang.HolProg 64 :=
.seq NamedBody68_117 NamedBody68_130

def NamedBody68_132 : StackLang.HolProg 64 :=
.seq NamedBody68_116 NamedBody68_131

def NamedBody68_133 : StackLang.HolProg 64 :=
.seq NamedBody68_115 NamedBody68_132

def NamedBody68_134 : StackLang.HolProg 64 :=
.seq NamedBody68_114 NamedBody68_133

def NamedBody68_135 : StackLang.HolProg 64 :=
.seq NamedBody68_113 NamedBody68_134

def NamedBody68_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody68_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody68_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody68_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody68_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody68_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody68_145 : StackLang.HolProg 64 :=
.seq NamedBody68_143 NamedBody68_144

def NamedBody68_146 : StackLang.HolProg 64 :=
.seq NamedBody68_142 NamedBody68_145

def NamedBody68_147 : StackLang.HolProg 64 :=
.seq NamedBody68_141 NamedBody68_146

def NamedBody68_148 : StackLang.HolProg 64 :=
.seq NamedBody68_140 NamedBody68_147

def NamedBody68_149 : StackLang.HolProg 64 :=
.seq NamedBody68_139 NamedBody68_148

def NamedBody68_150 : StackLang.HolProg 64 :=
.seq NamedBody68_138 NamedBody68_149

def NamedBody68_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody68_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody68_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody68_154 : StackLang.HolProg 64 :=
.seq NamedBody68_152 NamedBody68_153

def NamedBody68_155 : StackLang.HolProg 64 :=
.seq NamedBody68_151 NamedBody68_154

def NamedBody68_156 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody68_157 : StackLang.HolProg 64 :=
.seq NamedBody68_155 NamedBody68_156

def NamedBody68_158 : StackLang.HolProg 64 :=
.call (some (NamedBody68_150, 1, 68, 4)) (Sum.inl 66) (some (NamedBody68_157, 68, 5))

def NamedBody68_159 : StackLang.HolProg 64 :=
.seq NamedBody68_137 NamedBody68_158

def NamedBody68_160 : StackLang.HolProg 64 :=
.seq NamedBody68_136 NamedBody68_159

def NamedBody68_161 : StackLang.HolProg 64 :=
.seq NamedBody68_135 NamedBody68_160

def NamedBody68_162 : StackLang.HolProg 64 :=
.seq NamedBody68_106 NamedBody68_161

def NamedBody68_163 : StackLang.HolProg 64 :=
.seq NamedBody68_103 NamedBody68_162

def NamedBody68_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody68_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_166 : StackLang.HolProg 64 :=
.seq NamedBody68_164 NamedBody68_165

def NamedBody68_167 : StackLang.HolProg 64 :=
.seq NamedBody68_163 NamedBody68_166

def NamedBody68_168 : StackLang.HolProg 64 :=
.seq NamedBody68_102 NamedBody68_167

def NamedBody68_169 : StackLang.HolProg 64 :=
.seq NamedBody68_99 NamedBody68_168

def NamedBody68_170 : StackLang.HolProg 64 :=
.seq NamedBody68_98 NamedBody68_169

def NamedBody68_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody68_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody68_173 : StackLang.HolProg 64 :=
.seq NamedBody68_171 NamedBody68_172

def NamedBody68_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody68_170 NamedBody68_173

def NamedBody68_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody68_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody68_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody68_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody68_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def NamedBody68_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody68_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody68_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody68_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody68_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody68_185 : StackLang.HolProg 64 :=
.seq NamedBody68_183 NamedBody68_184

def NamedBody68_186 : StackLang.HolProg 64 :=
.seq NamedBody68_182 NamedBody68_185

def NamedBody68_187 : StackLang.HolProg 64 :=
.seq NamedBody68_181 NamedBody68_186

def NamedBody68_188 : StackLang.HolProg 64 :=
.seq NamedBody68_180 NamedBody68_187

def NamedBody68_189 : StackLang.HolProg 64 :=
.seq NamedBody68_179 NamedBody68_188

def NamedBody68_190 : StackLang.HolProg 64 :=
.seq NamedBody68_178 NamedBody68_189

def NamedBody68_191 : StackLang.HolProg 64 :=
.seq NamedBody68_177 NamedBody68_190

def NamedBody68_192 : StackLang.HolProg 64 :=
.seq NamedBody68_176 NamedBody68_191

def NamedBody68_193 : StackLang.HolProg 64 :=
.seq NamedBody68_175 NamedBody68_192

def NamedBody68_194 : StackLang.HolProg 64 :=
.seq NamedBody68_174 NamedBody68_193

def NamedBody68_195 : StackLang.HolProg 64 :=
.seq NamedBody68_97 NamedBody68_194

def NamedBody68_196 : StackLang.HolProg 64 :=
.seq NamedBody68_96 NamedBody68_195

def NamedBody68_197 : StackLang.HolProg 64 :=
.seq NamedBody68_95 NamedBody68_196

def NamedBody68_198 : StackLang.HolProg 64 :=
.seq NamedBody68_94 NamedBody68_197

def NamedBody68_199 : StackLang.HolProg 64 :=
.seq NamedBody68_93 NamedBody68_198

def NamedBody68_200 : StackLang.HolProg 64 :=
.seq NamedBody68_92 NamedBody68_199

def NamedBody68_201 : StackLang.HolProg 64 :=
.seq NamedBody68_91 NamedBody68_200

def NamedBody68_202 : StackLang.HolProg 64 :=
.seq NamedBody68_90 NamedBody68_201

def NamedBody68_203 : StackLang.HolProg 64 :=
.seq NamedBody68_15 NamedBody68_202

def NamedBody68_204 : StackLang.HolProg 64 :=
.seq NamedBody68_14 NamedBody68_203

def NamedBody68_205 : StackLang.HolProg 64 :=
.seq NamedBody68_13 NamedBody68_204

def NamedBody68_206 : StackLang.HolProg 64 :=
.seq NamedBody68_12 NamedBody68_205

def NamedBody68_207 : StackLang.HolProg 64 :=
.seq NamedBody68_11 NamedBody68_206

def NamedBody68_208 : StackLang.HolProg 64 :=
.seq NamedBody68_10 NamedBody68_207

def NamedBody68_209 : StackLang.HolProg 64 :=
.seq NamedBody68_9 NamedBody68_208

def NamedBody68_210 : StackLang.HolProg 64 :=
.seq NamedBody68_8 NamedBody68_209

def NamedBody68_211 : StackLang.HolProg 64 :=
.seq NamedBody68_7 NamedBody68_210

def NamedBody68_212 : StackLang.HolProg 64 :=
.seq NamedBody68_6 NamedBody68_211

def Named68 : Nat × StackLang.HolProg 64 := (68, NamedBody68_212)
theorem Named68_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed68 = Named68 := by
  kernel_rfl
#print axioms Named68_eq
end InitECandidate.Proofs.BackendStages
