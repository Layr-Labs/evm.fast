import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed423
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody423_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody423_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody423_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody423_3 : StackLang.HolProg 64 :=
.seq NamedBody423_1 NamedBody423_2

def NamedBody423_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody423_3 NamedBody423_4

def NamedBody423_6 : StackLang.HolProg 64 :=
.seq NamedBody423_0 NamedBody423_5

def NamedBody423_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody423_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody423_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody423_10 : StackLang.HolProg 64 :=
.seq NamedBody423_8 NamedBody423_9

def NamedBody423_11 : StackLang.HolProg 64 :=
.seq NamedBody423_7 NamedBody423_10

def NamedBody423_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1261#64)

def NamedBody423_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody423_15 : StackLang.HolProg 64 :=
.seq NamedBody423_13 NamedBody423_14

def NamedBody423_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody423_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody423_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody423_19 : StackLang.HolProg 64 :=
.seq NamedBody423_17 NamedBody423_18

def NamedBody423_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody423_19 NamedBody423_20

def NamedBody423_22 : StackLang.HolProg 64 :=
.seq NamedBody423_16 NamedBody423_21

def NamedBody423_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody423_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody423_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 423 3

def NamedBody423_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody423_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody423_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody423_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody423_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody423_32 : StackLang.HolProg 64 :=
.seq NamedBody423_30 NamedBody423_31

def NamedBody423_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody423_34 : StackLang.HolProg 64 :=
.seq NamedBody423_32 NamedBody423_33

def NamedBody423_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody423_36 : StackLang.HolProg 64 :=
.seq NamedBody423_34 NamedBody423_35

def NamedBody423_37 : StackLang.HolProg 64 :=
.seq NamedBody423_29 NamedBody423_36

def NamedBody423_38 : StackLang.HolProg 64 :=
.seq NamedBody423_28 NamedBody423_37

def NamedBody423_39 : StackLang.HolProg 64 :=
.seq NamedBody423_27 NamedBody423_38

def NamedBody423_40 : StackLang.HolProg 64 :=
.seq NamedBody423_26 NamedBody423_39

def NamedBody423_41 : StackLang.HolProg 64 :=
.seq NamedBody423_25 NamedBody423_40

def NamedBody423_42 : StackLang.HolProg 64 :=
.seq NamedBody423_24 NamedBody423_41

def NamedBody423_43 : StackLang.HolProg 64 :=
.seq NamedBody423_23 NamedBody423_42

def NamedBody423_44 : StackLang.HolProg 64 :=
.seq NamedBody423_22 NamedBody423_43

def NamedBody423_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody423_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody423_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody423_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody423_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody423_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody423_54 : StackLang.HolProg 64 :=
.seq NamedBody423_52 NamedBody423_53

def NamedBody423_55 : StackLang.HolProg 64 :=
.seq NamedBody423_51 NamedBody423_54

def NamedBody423_56 : StackLang.HolProg 64 :=
.seq NamedBody423_50 NamedBody423_55

def NamedBody423_57 : StackLang.HolProg 64 :=
.seq NamedBody423_49 NamedBody423_56

def NamedBody423_58 : StackLang.HolProg 64 :=
.seq NamedBody423_48 NamedBody423_57

def NamedBody423_59 : StackLang.HolProg 64 :=
.seq NamedBody423_47 NamedBody423_58

def NamedBody423_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody423_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody423_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody423_63 : StackLang.HolProg 64 :=
.seq NamedBody423_61 NamedBody423_62

def NamedBody423_64 : StackLang.HolProg 64 :=
.seq NamedBody423_60 NamedBody423_63

def NamedBody423_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody423_66 : StackLang.HolProg 64 :=
.seq NamedBody423_64 NamedBody423_65

def NamedBody423_67 : StackLang.HolProg 64 :=
.call (some (NamedBody423_59, 1, 423, 2)) (Sum.inl 419) (some (NamedBody423_66, 423, 3))

def NamedBody423_68 : StackLang.HolProg 64 :=
.seq NamedBody423_46 NamedBody423_67

def NamedBody423_69 : StackLang.HolProg 64 :=
.seq NamedBody423_45 NamedBody423_68

def NamedBody423_70 : StackLang.HolProg 64 :=
.seq NamedBody423_44 NamedBody423_69

def NamedBody423_71 : StackLang.HolProg 64 :=
.seq NamedBody423_15 NamedBody423_70

def NamedBody423_72 : StackLang.HolProg 64 :=
.seq NamedBody423_12 NamedBody423_71

def NamedBody423_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody423_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody423_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1262#64)

def NamedBody423_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody423_78 : StackLang.HolProg 64 :=
.seq NamedBody423_76 NamedBody423_77

def NamedBody423_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody423_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody423_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody423_82 : StackLang.HolProg 64 :=
.seq NamedBody423_80 NamedBody423_81

def NamedBody423_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody423_82 NamedBody423_83

def NamedBody423_85 : StackLang.HolProg 64 :=
.seq NamedBody423_79 NamedBody423_84

def NamedBody423_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody423_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody423_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 423 5

def NamedBody423_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody423_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody423_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody423_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody423_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody423_95 : StackLang.HolProg 64 :=
.seq NamedBody423_93 NamedBody423_94

def NamedBody423_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody423_97 : StackLang.HolProg 64 :=
.seq NamedBody423_95 NamedBody423_96

def NamedBody423_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody423_99 : StackLang.HolProg 64 :=
.seq NamedBody423_97 NamedBody423_98

def NamedBody423_100 : StackLang.HolProg 64 :=
.seq NamedBody423_92 NamedBody423_99

def NamedBody423_101 : StackLang.HolProg 64 :=
.seq NamedBody423_91 NamedBody423_100

def NamedBody423_102 : StackLang.HolProg 64 :=
.seq NamedBody423_90 NamedBody423_101

def NamedBody423_103 : StackLang.HolProg 64 :=
.seq NamedBody423_89 NamedBody423_102

def NamedBody423_104 : StackLang.HolProg 64 :=
.seq NamedBody423_88 NamedBody423_103

def NamedBody423_105 : StackLang.HolProg 64 :=
.seq NamedBody423_87 NamedBody423_104

def NamedBody423_106 : StackLang.HolProg 64 :=
.seq NamedBody423_86 NamedBody423_105

def NamedBody423_107 : StackLang.HolProg 64 :=
.seq NamedBody423_85 NamedBody423_106

def NamedBody423_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody423_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody423_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody423_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody423_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody423_116 : StackLang.HolProg 64 :=
.seq NamedBody423_114 NamedBody423_115

def NamedBody423_117 : StackLang.HolProg 64 :=
.seq NamedBody423_113 NamedBody423_116

def NamedBody423_118 : StackLang.HolProg 64 :=
.seq NamedBody423_112 NamedBody423_117

def NamedBody423_119 : StackLang.HolProg 64 :=
.seq NamedBody423_111 NamedBody423_118

def NamedBody423_120 : StackLang.HolProg 64 :=
.seq NamedBody423_110 NamedBody423_119

def NamedBody423_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody423_122 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody423_123 : StackLang.HolProg 64 :=
.seq NamedBody423_121 NamedBody423_122

def NamedBody423_124 : StackLang.HolProg 64 :=
.call (some (NamedBody423_120, 1, 423, 4)) (Sum.inl 416) (some (NamedBody423_123, 423, 5))

def NamedBody423_125 : StackLang.HolProg 64 :=
.seq NamedBody423_109 NamedBody423_124

def NamedBody423_126 : StackLang.HolProg 64 :=
.seq NamedBody423_108 NamedBody423_125

def NamedBody423_127 : StackLang.HolProg 64 :=
.seq NamedBody423_107 NamedBody423_126

def NamedBody423_128 : StackLang.HolProg 64 :=
.seq NamedBody423_78 NamedBody423_127

def NamedBody423_129 : StackLang.HolProg 64 :=
.seq NamedBody423_75 NamedBody423_128

def NamedBody423_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody423_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody423_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody423_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody423_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1263#64)

def NamedBody423_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody423_138 : StackLang.HolProg 64 :=
.seq NamedBody423_136 NamedBody423_137

def NamedBody423_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody423_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody423_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody423_142 : StackLang.HolProg 64 :=
.seq NamedBody423_140 NamedBody423_141

def NamedBody423_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_144 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody423_142 NamedBody423_143

def NamedBody423_145 : StackLang.HolProg 64 :=
.seq NamedBody423_139 NamedBody423_144

def NamedBody423_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody423_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody423_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 423 7

def NamedBody423_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody423_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody423_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody423_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody423_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody423_155 : StackLang.HolProg 64 :=
.seq NamedBody423_153 NamedBody423_154

def NamedBody423_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody423_157 : StackLang.HolProg 64 :=
.seq NamedBody423_155 NamedBody423_156

def NamedBody423_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody423_159 : StackLang.HolProg 64 :=
.seq NamedBody423_157 NamedBody423_158

def NamedBody423_160 : StackLang.HolProg 64 :=
.seq NamedBody423_152 NamedBody423_159

def NamedBody423_161 : StackLang.HolProg 64 :=
.seq NamedBody423_151 NamedBody423_160

def NamedBody423_162 : StackLang.HolProg 64 :=
.seq NamedBody423_150 NamedBody423_161

def NamedBody423_163 : StackLang.HolProg 64 :=
.seq NamedBody423_149 NamedBody423_162

def NamedBody423_164 : StackLang.HolProg 64 :=
.seq NamedBody423_148 NamedBody423_163

def NamedBody423_165 : StackLang.HolProg 64 :=
.seq NamedBody423_147 NamedBody423_164

def NamedBody423_166 : StackLang.HolProg 64 :=
.seq NamedBody423_146 NamedBody423_165

def NamedBody423_167 : StackLang.HolProg 64 :=
.seq NamedBody423_145 NamedBody423_166

def NamedBody423_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody423_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody423_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody423_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody423_175 : StackLang.HolProg 64 :=
.seq NamedBody423_173 NamedBody423_174

def NamedBody423_176 : StackLang.HolProg 64 :=
.seq NamedBody423_172 NamedBody423_175

def NamedBody423_177 : StackLang.HolProg 64 :=
.seq NamedBody423_171 NamedBody423_176

def NamedBody423_178 : StackLang.HolProg 64 :=
.seq NamedBody423_170 NamedBody423_177

def NamedBody423_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody423_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody423_181 : StackLang.HolProg 64 :=
.seq NamedBody423_179 NamedBody423_180

def NamedBody423_182 : StackLang.HolProg 64 :=
.call (some (NamedBody423_178, 1, 423, 6)) (Sum.inl 422) (some (NamedBody423_181, 423, 7))

def NamedBody423_183 : StackLang.HolProg 64 :=
.seq NamedBody423_169 NamedBody423_182

def NamedBody423_184 : StackLang.HolProg 64 :=
.seq NamedBody423_168 NamedBody423_183

def NamedBody423_185 : StackLang.HolProg 64 :=
.seq NamedBody423_167 NamedBody423_184

def NamedBody423_186 : StackLang.HolProg 64 :=
.seq NamedBody423_138 NamedBody423_185

def NamedBody423_187 : StackLang.HolProg 64 :=
.seq NamedBody423_135 NamedBody423_186

def NamedBody423_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody423_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_190 : StackLang.HolProg 64 :=
.seq NamedBody423_188 NamedBody423_189

def NamedBody423_191 : StackLang.HolProg 64 :=
.seq NamedBody423_187 NamedBody423_190

def NamedBody423_192 : StackLang.HolProg 64 :=
.seq NamedBody423_134 NamedBody423_191

def NamedBody423_193 : StackLang.HolProg 64 :=
.seq NamedBody423_133 NamedBody423_192

def NamedBody423_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody423_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody423_196 : StackLang.HolProg 64 :=
.seq NamedBody423_194 NamedBody423_195

def NamedBody423_197 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody423_193 NamedBody423_196

def NamedBody423_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody423_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody423_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody423_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody423_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody423_203 : StackLang.HolProg 64 :=
.seq NamedBody423_201 NamedBody423_202

def NamedBody423_204 : StackLang.HolProg 64 :=
.seq NamedBody423_200 NamedBody423_203

def NamedBody423_205 : StackLang.HolProg 64 :=
.seq NamedBody423_199 NamedBody423_204

def NamedBody423_206 : StackLang.HolProg 64 :=
.seq NamedBody423_198 NamedBody423_205

def NamedBody423_207 : StackLang.HolProg 64 :=
.seq NamedBody423_197 NamedBody423_206

def NamedBody423_208 : StackLang.HolProg 64 :=
.seq NamedBody423_132 NamedBody423_207

def NamedBody423_209 : StackLang.HolProg 64 :=
.seq NamedBody423_131 NamedBody423_208

def NamedBody423_210 : StackLang.HolProg 64 :=
.seq NamedBody423_130 NamedBody423_209

def NamedBody423_211 : StackLang.HolProg 64 :=
.seq NamedBody423_129 NamedBody423_210

def NamedBody423_212 : StackLang.HolProg 64 :=
.seq NamedBody423_74 NamedBody423_211

def NamedBody423_213 : StackLang.HolProg 64 :=
.seq NamedBody423_73 NamedBody423_212

def NamedBody423_214 : StackLang.HolProg 64 :=
.seq NamedBody423_72 NamedBody423_213

def NamedBody423_215 : StackLang.HolProg 64 :=
.seq NamedBody423_11 NamedBody423_214

def NamedBody423_216 : StackLang.HolProg 64 :=
.seq NamedBody423_6 NamedBody423_215

def Named423 : Nat × StackLang.HolProg 64 := (423, NamedBody423_216)
theorem Named423_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed423 = Named423 := by
  kernel_rfl
#print axioms Named423_eq
end InitECandidate.Proofs.BackendStages
