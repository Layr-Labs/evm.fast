import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed186
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody186_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody186_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody186_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody186_3 : StackLang.HolProg 64 :=
.seq NamedBody186_1 NamedBody186_2

def NamedBody186_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody186_3 NamedBody186_4

def NamedBody186_6 : StackLang.HolProg 64 :=
.seq NamedBody186_0 NamedBody186_5

def NamedBody186_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody186_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody186_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody186_10 : StackLang.HolProg 64 :=
.seq NamedBody186_8 NamedBody186_9

def NamedBody186_11 : StackLang.HolProg 64 :=
.seq NamedBody186_7 NamedBody186_10

def NamedBody186_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 211#64)

def NamedBody186_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody186_15 : StackLang.HolProg 64 :=
.seq NamedBody186_13 NamedBody186_14

def NamedBody186_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody186_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody186_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody186_19 : StackLang.HolProg 64 :=
.seq NamedBody186_17 NamedBody186_18

def NamedBody186_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody186_19 NamedBody186_20

def NamedBody186_22 : StackLang.HolProg 64 :=
.seq NamedBody186_16 NamedBody186_21

def NamedBody186_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody186_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody186_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 186 3

def NamedBody186_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody186_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody186_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody186_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody186_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody186_32 : StackLang.HolProg 64 :=
.seq NamedBody186_30 NamedBody186_31

def NamedBody186_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody186_34 : StackLang.HolProg 64 :=
.seq NamedBody186_32 NamedBody186_33

def NamedBody186_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody186_36 : StackLang.HolProg 64 :=
.seq NamedBody186_34 NamedBody186_35

def NamedBody186_37 : StackLang.HolProg 64 :=
.seq NamedBody186_29 NamedBody186_36

def NamedBody186_38 : StackLang.HolProg 64 :=
.seq NamedBody186_28 NamedBody186_37

def NamedBody186_39 : StackLang.HolProg 64 :=
.seq NamedBody186_27 NamedBody186_38

def NamedBody186_40 : StackLang.HolProg 64 :=
.seq NamedBody186_26 NamedBody186_39

def NamedBody186_41 : StackLang.HolProg 64 :=
.seq NamedBody186_25 NamedBody186_40

def NamedBody186_42 : StackLang.HolProg 64 :=
.seq NamedBody186_24 NamedBody186_41

def NamedBody186_43 : StackLang.HolProg 64 :=
.seq NamedBody186_23 NamedBody186_42

def NamedBody186_44 : StackLang.HolProg 64 :=
.seq NamedBody186_22 NamedBody186_43

def NamedBody186_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody186_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody186_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody186_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody186_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody186_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody186_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody186_55 : StackLang.HolProg 64 :=
.seq NamedBody186_53 NamedBody186_54

def NamedBody186_56 : StackLang.HolProg 64 :=
.seq NamedBody186_52 NamedBody186_55

def NamedBody186_57 : StackLang.HolProg 64 :=
.seq NamedBody186_51 NamedBody186_56

def NamedBody186_58 : StackLang.HolProg 64 :=
.seq NamedBody186_50 NamedBody186_57

def NamedBody186_59 : StackLang.HolProg 64 :=
.seq NamedBody186_49 NamedBody186_58

def NamedBody186_60 : StackLang.HolProg 64 :=
.seq NamedBody186_48 NamedBody186_59

def NamedBody186_61 : StackLang.HolProg 64 :=
.seq NamedBody186_47 NamedBody186_60

def NamedBody186_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody186_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody186_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody186_65 : StackLang.HolProg 64 :=
.seq NamedBody186_63 NamedBody186_64

def NamedBody186_66 : StackLang.HolProg 64 :=
.seq NamedBody186_62 NamedBody186_65

def NamedBody186_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody186_68 : StackLang.HolProg 64 :=
.seq NamedBody186_66 NamedBody186_67

def NamedBody186_69 : StackLang.HolProg 64 :=
.call (some (NamedBody186_61, 1, 186, 2)) (Sum.inl 185) (some (NamedBody186_68, 186, 3))

def NamedBody186_70 : StackLang.HolProg 64 :=
.seq NamedBody186_46 NamedBody186_69

def NamedBody186_71 : StackLang.HolProg 64 :=
.seq NamedBody186_45 NamedBody186_70

def NamedBody186_72 : StackLang.HolProg 64 :=
.seq NamedBody186_44 NamedBody186_71

def NamedBody186_73 : StackLang.HolProg 64 :=
.seq NamedBody186_15 NamedBody186_72

def NamedBody186_74 : StackLang.HolProg 64 :=
.seq NamedBody186_12 NamedBody186_73

def NamedBody186_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody186_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody186_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody186_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody186_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody186_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody186_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def NamedBody186_84 : StackLang.HolProg 64 :=
.seq NamedBody186_82 NamedBody186_83

def NamedBody186_85 : StackLang.HolProg 64 :=
.seq NamedBody186_81 NamedBody186_84

def NamedBody186_86 : StackLang.HolProg 64 :=
.seq NamedBody186_80 NamedBody186_85

def NamedBody186_87 : StackLang.HolProg 64 :=
.seq NamedBody186_79 NamedBody186_86

def NamedBody186_88 : StackLang.HolProg 64 :=
.seq NamedBody186_78 NamedBody186_87

def NamedBody186_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody186_88 NamedBody186_89

def NamedBody186_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody186_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody186_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody186_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody186_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 32#64))

def NamedBody186_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody186_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody186_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody186_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody186_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody186_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody186_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody186_107 : StackLang.HolProg 64 :=
.seq NamedBody186_105 NamedBody186_106

def NamedBody186_108 : StackLang.HolProg 64 :=
.seq NamedBody186_104 NamedBody186_107

def NamedBody186_109 : StackLang.HolProg 64 :=
.seq NamedBody186_103 NamedBody186_108

def NamedBody186_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 212#64)

def NamedBody186_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody186_113 : StackLang.HolProg 64 :=
.seq NamedBody186_111 NamedBody186_112

def NamedBody186_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody186_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody186_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody186_117 : StackLang.HolProg 64 :=
.seq NamedBody186_115 NamedBody186_116

def NamedBody186_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_119 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody186_117 NamedBody186_118

def NamedBody186_120 : StackLang.HolProg 64 :=
.seq NamedBody186_114 NamedBody186_119

def NamedBody186_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody186_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody186_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 186 5

def NamedBody186_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody186_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody186_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody186_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody186_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody186_130 : StackLang.HolProg 64 :=
.seq NamedBody186_128 NamedBody186_129

def NamedBody186_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody186_132 : StackLang.HolProg 64 :=
.seq NamedBody186_130 NamedBody186_131

def NamedBody186_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody186_134 : StackLang.HolProg 64 :=
.seq NamedBody186_132 NamedBody186_133

def NamedBody186_135 : StackLang.HolProg 64 :=
.seq NamedBody186_127 NamedBody186_134

def NamedBody186_136 : StackLang.HolProg 64 :=
.seq NamedBody186_126 NamedBody186_135

def NamedBody186_137 : StackLang.HolProg 64 :=
.seq NamedBody186_125 NamedBody186_136

def NamedBody186_138 : StackLang.HolProg 64 :=
.seq NamedBody186_124 NamedBody186_137

def NamedBody186_139 : StackLang.HolProg 64 :=
.seq NamedBody186_123 NamedBody186_138

def NamedBody186_140 : StackLang.HolProg 64 :=
.seq NamedBody186_122 NamedBody186_139

def NamedBody186_141 : StackLang.HolProg 64 :=
.seq NamedBody186_121 NamedBody186_140

def NamedBody186_142 : StackLang.HolProg 64 :=
.seq NamedBody186_120 NamedBody186_141

def NamedBody186_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody186_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody186_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody186_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody186_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody186_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody186_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody186_153 : StackLang.HolProg 64 :=
.seq NamedBody186_151 NamedBody186_152

def NamedBody186_154 : StackLang.HolProg 64 :=
.seq NamedBody186_150 NamedBody186_153

def NamedBody186_155 : StackLang.HolProg 64 :=
.seq NamedBody186_149 NamedBody186_154

def NamedBody186_156 : StackLang.HolProg 64 :=
.seq NamedBody186_148 NamedBody186_155

def NamedBody186_157 : StackLang.HolProg 64 :=
.seq NamedBody186_147 NamedBody186_156

def NamedBody186_158 : StackLang.HolProg 64 :=
.seq NamedBody186_146 NamedBody186_157

def NamedBody186_159 : StackLang.HolProg 64 :=
.seq NamedBody186_145 NamedBody186_158

def NamedBody186_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody186_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody186_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody186_163 : StackLang.HolProg 64 :=
.seq NamedBody186_161 NamedBody186_162

def NamedBody186_164 : StackLang.HolProg 64 :=
.seq NamedBody186_160 NamedBody186_163

def NamedBody186_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody186_166 : StackLang.HolProg 64 :=
.seq NamedBody186_164 NamedBody186_165

def NamedBody186_167 : StackLang.HolProg 64 :=
.call (some (NamedBody186_159, 1, 186, 4)) (Sum.inl 79) (some (NamedBody186_166, 186, 5))

def NamedBody186_168 : StackLang.HolProg 64 :=
.seq NamedBody186_144 NamedBody186_167

def NamedBody186_169 : StackLang.HolProg 64 :=
.seq NamedBody186_143 NamedBody186_168

def NamedBody186_170 : StackLang.HolProg 64 :=
.seq NamedBody186_142 NamedBody186_169

def NamedBody186_171 : StackLang.HolProg 64 :=
.seq NamedBody186_113 NamedBody186_170

def NamedBody186_172 : StackLang.HolProg 64 :=
.seq NamedBody186_110 NamedBody186_171

def NamedBody186_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody186_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody186_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody186_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody186_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody186_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody186_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody186_182 : StackLang.HolProg 64 :=
.seq NamedBody186_180 NamedBody186_181

def NamedBody186_183 : StackLang.HolProg 64 :=
.seq NamedBody186_179 NamedBody186_182

def NamedBody186_184 : StackLang.HolProg 64 :=
.seq NamedBody186_178 NamedBody186_183

def NamedBody186_185 : StackLang.HolProg 64 :=
.seq NamedBody186_177 NamedBody186_184

def NamedBody186_186 : StackLang.HolProg 64 :=
.seq NamedBody186_176 NamedBody186_185

def NamedBody186_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_188 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody186_186 NamedBody186_187

def NamedBody186_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody186_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody186_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody186_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody186_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def NamedBody186_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody186_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody186_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody186_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody186_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody186_201 : StackLang.HolProg 64 :=
.seq NamedBody186_199 NamedBody186_200

def NamedBody186_202 : StackLang.HolProg 64 :=
.seq NamedBody186_198 NamedBody186_201

def NamedBody186_203 : StackLang.HolProg 64 :=
.seq NamedBody186_197 NamedBody186_202

def NamedBody186_204 : StackLang.HolProg 64 :=
.seq NamedBody186_196 NamedBody186_203

def NamedBody186_205 : StackLang.HolProg 64 :=
.seq NamedBody186_195 NamedBody186_204

def NamedBody186_206 : StackLang.HolProg 64 :=
.seq NamedBody186_194 NamedBody186_205

def NamedBody186_207 : StackLang.HolProg 64 :=
.seq NamedBody186_193 NamedBody186_206

def NamedBody186_208 : StackLang.HolProg 64 :=
.seq NamedBody186_192 NamedBody186_207

def NamedBody186_209 : StackLang.HolProg 64 :=
.seq NamedBody186_191 NamedBody186_208

def NamedBody186_210 : StackLang.HolProg 64 :=
.seq NamedBody186_190 NamedBody186_209

def NamedBody186_211 : StackLang.HolProg 64 :=
.seq NamedBody186_189 NamedBody186_210

def NamedBody186_212 : StackLang.HolProg 64 :=
.seq NamedBody186_188 NamedBody186_211

def NamedBody186_213 : StackLang.HolProg 64 :=
.seq NamedBody186_175 NamedBody186_212

def NamedBody186_214 : StackLang.HolProg 64 :=
.seq NamedBody186_174 NamedBody186_213

def NamedBody186_215 : StackLang.HolProg 64 :=
.seq NamedBody186_173 NamedBody186_214

def NamedBody186_216 : StackLang.HolProg 64 :=
.seq NamedBody186_172 NamedBody186_215

def NamedBody186_217 : StackLang.HolProg 64 :=
.seq NamedBody186_109 NamedBody186_216

def NamedBody186_218 : StackLang.HolProg 64 :=
.seq NamedBody186_102 NamedBody186_217

def NamedBody186_219 : StackLang.HolProg 64 :=
.seq NamedBody186_101 NamedBody186_218

def NamedBody186_220 : StackLang.HolProg 64 :=
.seq NamedBody186_100 NamedBody186_219

def NamedBody186_221 : StackLang.HolProg 64 :=
.seq NamedBody186_99 NamedBody186_220

def NamedBody186_222 : StackLang.HolProg 64 :=
.seq NamedBody186_98 NamedBody186_221

def NamedBody186_223 : StackLang.HolProg 64 :=
.seq NamedBody186_97 NamedBody186_222

def NamedBody186_224 : StackLang.HolProg 64 :=
.seq NamedBody186_96 NamedBody186_223

def NamedBody186_225 : StackLang.HolProg 64 :=
.seq NamedBody186_95 NamedBody186_224

def NamedBody186_226 : StackLang.HolProg 64 :=
.seq NamedBody186_94 NamedBody186_225

def NamedBody186_227 : StackLang.HolProg 64 :=
.seq NamedBody186_93 NamedBody186_226

def NamedBody186_228 : StackLang.HolProg 64 :=
.seq NamedBody186_92 NamedBody186_227

def NamedBody186_229 : StackLang.HolProg 64 :=
.seq NamedBody186_91 NamedBody186_228

def NamedBody186_230 : StackLang.HolProg 64 :=
.seq NamedBody186_90 NamedBody186_229

def NamedBody186_231 : StackLang.HolProg 64 :=
.seq NamedBody186_77 NamedBody186_230

def NamedBody186_232 : StackLang.HolProg 64 :=
.seq NamedBody186_76 NamedBody186_231

def NamedBody186_233 : StackLang.HolProg 64 :=
.seq NamedBody186_75 NamedBody186_232

def NamedBody186_234 : StackLang.HolProg 64 :=
.seq NamedBody186_74 NamedBody186_233

def NamedBody186_235 : StackLang.HolProg 64 :=
.seq NamedBody186_11 NamedBody186_234

def NamedBody186_236 : StackLang.HolProg 64 :=
.seq NamedBody186_6 NamedBody186_235

def Named186 : Nat × StackLang.HolProg 64 := (186, NamedBody186_236)
theorem Named186_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed186 = Named186 := by
  kernel_rfl
#print axioms Named186_eq
end InitECandidate.Proofs.BackendStages
