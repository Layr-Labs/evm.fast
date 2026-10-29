import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed187
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody187_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody187_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody187_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody187_3 : StackLang.HolProg 64 :=
.seq NamedBody187_1 NamedBody187_2

def NamedBody187_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody187_3 NamedBody187_4

def NamedBody187_6 : StackLang.HolProg 64 :=
.seq NamedBody187_0 NamedBody187_5

def NamedBody187_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody187_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody187_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody187_10 : StackLang.HolProg 64 :=
.seq NamedBody187_8 NamedBody187_9

def NamedBody187_11 : StackLang.HolProg 64 :=
.seq NamedBody187_7 NamedBody187_10

def NamedBody187_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 213#64)

def NamedBody187_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody187_15 : StackLang.HolProg 64 :=
.seq NamedBody187_13 NamedBody187_14

def NamedBody187_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody187_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody187_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody187_19 : StackLang.HolProg 64 :=
.seq NamedBody187_17 NamedBody187_18

def NamedBody187_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody187_19 NamedBody187_20

def NamedBody187_22 : StackLang.HolProg 64 :=
.seq NamedBody187_16 NamedBody187_21

def NamedBody187_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody187_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody187_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 187 3

def NamedBody187_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody187_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody187_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody187_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody187_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody187_32 : StackLang.HolProg 64 :=
.seq NamedBody187_30 NamedBody187_31

def NamedBody187_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody187_34 : StackLang.HolProg 64 :=
.seq NamedBody187_32 NamedBody187_33

def NamedBody187_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody187_36 : StackLang.HolProg 64 :=
.seq NamedBody187_34 NamedBody187_35

def NamedBody187_37 : StackLang.HolProg 64 :=
.seq NamedBody187_29 NamedBody187_36

def NamedBody187_38 : StackLang.HolProg 64 :=
.seq NamedBody187_28 NamedBody187_37

def NamedBody187_39 : StackLang.HolProg 64 :=
.seq NamedBody187_27 NamedBody187_38

def NamedBody187_40 : StackLang.HolProg 64 :=
.seq NamedBody187_26 NamedBody187_39

def NamedBody187_41 : StackLang.HolProg 64 :=
.seq NamedBody187_25 NamedBody187_40

def NamedBody187_42 : StackLang.HolProg 64 :=
.seq NamedBody187_24 NamedBody187_41

def NamedBody187_43 : StackLang.HolProg 64 :=
.seq NamedBody187_23 NamedBody187_42

def NamedBody187_44 : StackLang.HolProg 64 :=
.seq NamedBody187_22 NamedBody187_43

def NamedBody187_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody187_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody187_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody187_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody187_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody187_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody187_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody187_55 : StackLang.HolProg 64 :=
.seq NamedBody187_53 NamedBody187_54

def NamedBody187_56 : StackLang.HolProg 64 :=
.seq NamedBody187_52 NamedBody187_55

def NamedBody187_57 : StackLang.HolProg 64 :=
.seq NamedBody187_51 NamedBody187_56

def NamedBody187_58 : StackLang.HolProg 64 :=
.seq NamedBody187_50 NamedBody187_57

def NamedBody187_59 : StackLang.HolProg 64 :=
.seq NamedBody187_49 NamedBody187_58

def NamedBody187_60 : StackLang.HolProg 64 :=
.seq NamedBody187_48 NamedBody187_59

def NamedBody187_61 : StackLang.HolProg 64 :=
.seq NamedBody187_47 NamedBody187_60

def NamedBody187_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody187_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody187_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody187_65 : StackLang.HolProg 64 :=
.seq NamedBody187_63 NamedBody187_64

def NamedBody187_66 : StackLang.HolProg 64 :=
.seq NamedBody187_62 NamedBody187_65

def NamedBody187_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody187_68 : StackLang.HolProg 64 :=
.seq NamedBody187_66 NamedBody187_67

def NamedBody187_69 : StackLang.HolProg 64 :=
.call (some (NamedBody187_61, 1, 187, 2)) (Sum.inl 185) (some (NamedBody187_68, 187, 3))

def NamedBody187_70 : StackLang.HolProg 64 :=
.seq NamedBody187_46 NamedBody187_69

def NamedBody187_71 : StackLang.HolProg 64 :=
.seq NamedBody187_45 NamedBody187_70

def NamedBody187_72 : StackLang.HolProg 64 :=
.seq NamedBody187_44 NamedBody187_71

def NamedBody187_73 : StackLang.HolProg 64 :=
.seq NamedBody187_15 NamedBody187_72

def NamedBody187_74 : StackLang.HolProg 64 :=
.seq NamedBody187_12 NamedBody187_73

def NamedBody187_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody187_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody187_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody187_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody187_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody187_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody187_83 : StackLang.HolProg 64 :=
.seq NamedBody187_81 NamedBody187_82

def NamedBody187_84 : StackLang.HolProg 64 :=
.seq NamedBody187_80 NamedBody187_83

def NamedBody187_85 : StackLang.HolProg 64 :=
.seq NamedBody187_79 NamedBody187_84

def NamedBody187_86 : StackLang.HolProg 64 :=
.seq NamedBody187_78 NamedBody187_85

def NamedBody187_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody187_86 NamedBody187_87

def NamedBody187_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody187_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody187_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody187_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 8#64))

def NamedBody187_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 32#64))

def NamedBody187_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody187_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody187_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody187_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody187_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody187_104 : StackLang.HolProg 64 :=
.seq NamedBody187_102 NamedBody187_103

def NamedBody187_105 : StackLang.HolProg 64 :=
.seq NamedBody187_101 NamedBody187_104

def NamedBody187_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 214#64)

def NamedBody187_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody187_109 : StackLang.HolProg 64 :=
.seq NamedBody187_107 NamedBody187_108

def NamedBody187_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody187_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody187_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody187_113 : StackLang.HolProg 64 :=
.seq NamedBody187_111 NamedBody187_112

def NamedBody187_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody187_113 NamedBody187_114

def NamedBody187_116 : StackLang.HolProg 64 :=
.seq NamedBody187_110 NamedBody187_115

def NamedBody187_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody187_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody187_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 187 5

def NamedBody187_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody187_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody187_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody187_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody187_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody187_126 : StackLang.HolProg 64 :=
.seq NamedBody187_124 NamedBody187_125

def NamedBody187_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody187_128 : StackLang.HolProg 64 :=
.seq NamedBody187_126 NamedBody187_127

def NamedBody187_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody187_130 : StackLang.HolProg 64 :=
.seq NamedBody187_128 NamedBody187_129

def NamedBody187_131 : StackLang.HolProg 64 :=
.seq NamedBody187_123 NamedBody187_130

def NamedBody187_132 : StackLang.HolProg 64 :=
.seq NamedBody187_122 NamedBody187_131

def NamedBody187_133 : StackLang.HolProg 64 :=
.seq NamedBody187_121 NamedBody187_132

def NamedBody187_134 : StackLang.HolProg 64 :=
.seq NamedBody187_120 NamedBody187_133

def NamedBody187_135 : StackLang.HolProg 64 :=
.seq NamedBody187_119 NamedBody187_134

def NamedBody187_136 : StackLang.HolProg 64 :=
.seq NamedBody187_118 NamedBody187_135

def NamedBody187_137 : StackLang.HolProg 64 :=
.seq NamedBody187_117 NamedBody187_136

def NamedBody187_138 : StackLang.HolProg 64 :=
.seq NamedBody187_116 NamedBody187_137

def NamedBody187_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody187_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody187_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody187_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody187_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody187_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody187_147 : StackLang.HolProg 64 :=
.seq NamedBody187_145 NamedBody187_146

def NamedBody187_148 : StackLang.HolProg 64 :=
.seq NamedBody187_144 NamedBody187_147

def NamedBody187_149 : StackLang.HolProg 64 :=
.seq NamedBody187_143 NamedBody187_148

def NamedBody187_150 : StackLang.HolProg 64 :=
.seq NamedBody187_142 NamedBody187_149

def NamedBody187_151 : StackLang.HolProg 64 :=
.seq NamedBody187_141 NamedBody187_150

def NamedBody187_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody187_153 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody187_154 : StackLang.HolProg 64 :=
.seq NamedBody187_152 NamedBody187_153

def NamedBody187_155 : StackLang.HolProg 64 :=
.call (some (NamedBody187_151, 1, 187, 4)) (Sum.inl 79) (some (NamedBody187_154, 187, 5))

def NamedBody187_156 : StackLang.HolProg 64 :=
.seq NamedBody187_140 NamedBody187_155

def NamedBody187_157 : StackLang.HolProg 64 :=
.seq NamedBody187_139 NamedBody187_156

def NamedBody187_158 : StackLang.HolProg 64 :=
.seq NamedBody187_138 NamedBody187_157

def NamedBody187_159 : StackLang.HolProg 64 :=
.seq NamedBody187_109 NamedBody187_158

def NamedBody187_160 : StackLang.HolProg 64 :=
.seq NamedBody187_106 NamedBody187_159

def NamedBody187_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody187_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody187_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody187_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody187_165 : StackLang.HolProg 64 :=
.seq NamedBody187_163 NamedBody187_164

def NamedBody187_166 : StackLang.HolProg 64 :=
.seq NamedBody187_162 NamedBody187_165

def NamedBody187_167 : StackLang.HolProg 64 :=
.seq NamedBody187_161 NamedBody187_166

def NamedBody187_168 : StackLang.HolProg 64 :=
.seq NamedBody187_160 NamedBody187_167

def NamedBody187_169 : StackLang.HolProg 64 :=
.seq NamedBody187_105 NamedBody187_168

def NamedBody187_170 : StackLang.HolProg 64 :=
.seq NamedBody187_100 NamedBody187_169

def NamedBody187_171 : StackLang.HolProg 64 :=
.seq NamedBody187_99 NamedBody187_170

def NamedBody187_172 : StackLang.HolProg 64 :=
.seq NamedBody187_98 NamedBody187_171

def NamedBody187_173 : StackLang.HolProg 64 :=
.seq NamedBody187_97 NamedBody187_172

def NamedBody187_174 : StackLang.HolProg 64 :=
.seq NamedBody187_96 NamedBody187_173

def NamedBody187_175 : StackLang.HolProg 64 :=
.seq NamedBody187_95 NamedBody187_174

def NamedBody187_176 : StackLang.HolProg 64 :=
.seq NamedBody187_94 NamedBody187_175

def NamedBody187_177 : StackLang.HolProg 64 :=
.seq NamedBody187_93 NamedBody187_176

def NamedBody187_178 : StackLang.HolProg 64 :=
.seq NamedBody187_92 NamedBody187_177

def NamedBody187_179 : StackLang.HolProg 64 :=
.seq NamedBody187_91 NamedBody187_178

def NamedBody187_180 : StackLang.HolProg 64 :=
.seq NamedBody187_90 NamedBody187_179

def NamedBody187_181 : StackLang.HolProg 64 :=
.seq NamedBody187_89 NamedBody187_180

def NamedBody187_182 : StackLang.HolProg 64 :=
.seq NamedBody187_88 NamedBody187_181

def NamedBody187_183 : StackLang.HolProg 64 :=
.seq NamedBody187_77 NamedBody187_182

def NamedBody187_184 : StackLang.HolProg 64 :=
.seq NamedBody187_76 NamedBody187_183

def NamedBody187_185 : StackLang.HolProg 64 :=
.seq NamedBody187_75 NamedBody187_184

def NamedBody187_186 : StackLang.HolProg 64 :=
.seq NamedBody187_74 NamedBody187_185

def NamedBody187_187 : StackLang.HolProg 64 :=
.seq NamedBody187_11 NamedBody187_186

def NamedBody187_188 : StackLang.HolProg 64 :=
.seq NamedBody187_6 NamedBody187_187

def Named187 : Nat × StackLang.HolProg 64 := (187, NamedBody187_188)
theorem Named187_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed187 = Named187 := by
  kernel_rfl
#print axioms Named187_eq
end InitECandidate.Proofs.BackendStages
