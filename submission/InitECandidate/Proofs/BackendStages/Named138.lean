import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed138
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody138_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody138_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody138_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody138_3 : StackLang.HolProg 64 :=
.seq NamedBody138_1 NamedBody138_2

def NamedBody138_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody138_3 NamedBody138_4

def NamedBody138_6 : StackLang.HolProg 64 :=
.seq NamedBody138_0 NamedBody138_5

def NamedBody138_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody138_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody138_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody138_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody138_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody138_12 : StackLang.HolProg 64 :=
.seq NamedBody138_10 NamedBody138_11

def NamedBody138_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 97#64)

def NamedBody138_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody138_16 : StackLang.HolProg 64 :=
.seq NamedBody138_14 NamedBody138_15

def NamedBody138_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody138_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody138_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody138_20 : StackLang.HolProg 64 :=
.seq NamedBody138_18 NamedBody138_19

def NamedBody138_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody138_20 NamedBody138_21

def NamedBody138_23 : StackLang.HolProg 64 :=
.seq NamedBody138_17 NamedBody138_22

def NamedBody138_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody138_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody138_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 138 3

def NamedBody138_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody138_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody138_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody138_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody138_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody138_33 : StackLang.HolProg 64 :=
.seq NamedBody138_31 NamedBody138_32

def NamedBody138_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody138_35 : StackLang.HolProg 64 :=
.seq NamedBody138_33 NamedBody138_34

def NamedBody138_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody138_37 : StackLang.HolProg 64 :=
.seq NamedBody138_35 NamedBody138_36

def NamedBody138_38 : StackLang.HolProg 64 :=
.seq NamedBody138_30 NamedBody138_37

def NamedBody138_39 : StackLang.HolProg 64 :=
.seq NamedBody138_29 NamedBody138_38

def NamedBody138_40 : StackLang.HolProg 64 :=
.seq NamedBody138_28 NamedBody138_39

def NamedBody138_41 : StackLang.HolProg 64 :=
.seq NamedBody138_27 NamedBody138_40

def NamedBody138_42 : StackLang.HolProg 64 :=
.seq NamedBody138_26 NamedBody138_41

def NamedBody138_43 : StackLang.HolProg 64 :=
.seq NamedBody138_25 NamedBody138_42

def NamedBody138_44 : StackLang.HolProg 64 :=
.seq NamedBody138_24 NamedBody138_43

def NamedBody138_45 : StackLang.HolProg 64 :=
.seq NamedBody138_23 NamedBody138_44

def NamedBody138_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody138_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody138_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody138_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody138_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody138_54 : StackLang.HolProg 64 :=
.seq NamedBody138_52 NamedBody138_53

def NamedBody138_55 : StackLang.HolProg 64 :=
.seq NamedBody138_51 NamedBody138_54

def NamedBody138_56 : StackLang.HolProg 64 :=
.seq NamedBody138_50 NamedBody138_55

def NamedBody138_57 : StackLang.HolProg 64 :=
.seq NamedBody138_49 NamedBody138_56

def NamedBody138_58 : StackLang.HolProg 64 :=
.seq NamedBody138_48 NamedBody138_57

def NamedBody138_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody138_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody138_61 : StackLang.HolProg 64 :=
.seq NamedBody138_59 NamedBody138_60

def NamedBody138_62 : StackLang.HolProg 64 :=
.call (some (NamedBody138_58, 1, 138, 2)) (Sum.inl 137) (some (NamedBody138_61, 138, 3))

def NamedBody138_63 : StackLang.HolProg 64 :=
.seq NamedBody138_47 NamedBody138_62

def NamedBody138_64 : StackLang.HolProg 64 :=
.seq NamedBody138_46 NamedBody138_63

def NamedBody138_65 : StackLang.HolProg 64 :=
.seq NamedBody138_45 NamedBody138_64

def NamedBody138_66 : StackLang.HolProg 64 :=
.seq NamedBody138_16 NamedBody138_65

def NamedBody138_67 : StackLang.HolProg 64 :=
.seq NamedBody138_13 NamedBody138_66

def NamedBody138_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody138_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody138_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody138_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody138_74 : StackLang.HolProg 64 :=
.seq NamedBody138_72 NamedBody138_73

def NamedBody138_75 : StackLang.HolProg 64 :=
.seq NamedBody138_71 NamedBody138_74

def NamedBody138_76 : StackLang.HolProg 64 :=
.seq NamedBody138_70 NamedBody138_75

def NamedBody138_77 : StackLang.HolProg 64 :=
.seq NamedBody138_69 NamedBody138_76

def NamedBody138_78 : StackLang.HolProg 64 :=
.seq NamedBody138_68 NamedBody138_77

def NamedBody138_79 : StackLang.HolProg 64 :=
.seq NamedBody138_67 NamedBody138_78

def NamedBody138_80 : StackLang.HolProg 64 :=
.seq NamedBody138_12 NamedBody138_79

def NamedBody138_81 : StackLang.HolProg 64 :=
.seq NamedBody138_9 NamedBody138_80

def NamedBody138_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody138_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody138_81 NamedBody138_82

def NamedBody138_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody138_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody138_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody138_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody138_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody138_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody138_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody138_91 : StackLang.HolProg 64 :=
.seq NamedBody138_89 NamedBody138_90

def NamedBody138_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 98#64)

def NamedBody138_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody138_95 : StackLang.HolProg 64 :=
.seq NamedBody138_93 NamedBody138_94

def NamedBody138_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody138_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody138_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody138_99 : StackLang.HolProg 64 :=
.seq NamedBody138_97 NamedBody138_98

def NamedBody138_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody138_99 NamedBody138_100

def NamedBody138_102 : StackLang.HolProg 64 :=
.seq NamedBody138_96 NamedBody138_101

def NamedBody138_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody138_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody138_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 138 5

def NamedBody138_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody138_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody138_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody138_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody138_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody138_112 : StackLang.HolProg 64 :=
.seq NamedBody138_110 NamedBody138_111

def NamedBody138_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody138_114 : StackLang.HolProg 64 :=
.seq NamedBody138_112 NamedBody138_113

def NamedBody138_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody138_116 : StackLang.HolProg 64 :=
.seq NamedBody138_114 NamedBody138_115

def NamedBody138_117 : StackLang.HolProg 64 :=
.seq NamedBody138_109 NamedBody138_116

def NamedBody138_118 : StackLang.HolProg 64 :=
.seq NamedBody138_108 NamedBody138_117

def NamedBody138_119 : StackLang.HolProg 64 :=
.seq NamedBody138_107 NamedBody138_118

def NamedBody138_120 : StackLang.HolProg 64 :=
.seq NamedBody138_106 NamedBody138_119

def NamedBody138_121 : StackLang.HolProg 64 :=
.seq NamedBody138_105 NamedBody138_120

def NamedBody138_122 : StackLang.HolProg 64 :=
.seq NamedBody138_104 NamedBody138_121

def NamedBody138_123 : StackLang.HolProg 64 :=
.seq NamedBody138_103 NamedBody138_122

def NamedBody138_124 : StackLang.HolProg 64 :=
.seq NamedBody138_102 NamedBody138_123

def NamedBody138_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody138_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody138_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody138_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody138_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody138_133 : StackLang.HolProg 64 :=
.seq NamedBody138_131 NamedBody138_132

def NamedBody138_134 : StackLang.HolProg 64 :=
.seq NamedBody138_130 NamedBody138_133

def NamedBody138_135 : StackLang.HolProg 64 :=
.seq NamedBody138_129 NamedBody138_134

def NamedBody138_136 : StackLang.HolProg 64 :=
.seq NamedBody138_128 NamedBody138_135

def NamedBody138_137 : StackLang.HolProg 64 :=
.seq NamedBody138_127 NamedBody138_136

def NamedBody138_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody138_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody138_140 : StackLang.HolProg 64 :=
.seq NamedBody138_138 NamedBody138_139

def NamedBody138_141 : StackLang.HolProg 64 :=
.call (some (NamedBody138_137, 1, 138, 4)) (Sum.inl 137) (some (NamedBody138_140, 138, 5))

def NamedBody138_142 : StackLang.HolProg 64 :=
.seq NamedBody138_126 NamedBody138_141

def NamedBody138_143 : StackLang.HolProg 64 :=
.seq NamedBody138_125 NamedBody138_142

def NamedBody138_144 : StackLang.HolProg 64 :=
.seq NamedBody138_124 NamedBody138_143

def NamedBody138_145 : StackLang.HolProg 64 :=
.seq NamedBody138_95 NamedBody138_144

def NamedBody138_146 : StackLang.HolProg 64 :=
.seq NamedBody138_92 NamedBody138_145

def NamedBody138_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody138_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody138_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody138_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody138_153 : StackLang.HolProg 64 :=
.seq NamedBody138_151 NamedBody138_152

def NamedBody138_154 : StackLang.HolProg 64 :=
.seq NamedBody138_150 NamedBody138_153

def NamedBody138_155 : StackLang.HolProg 64 :=
.seq NamedBody138_149 NamedBody138_154

def NamedBody138_156 : StackLang.HolProg 64 :=
.seq NamedBody138_148 NamedBody138_155

def NamedBody138_157 : StackLang.HolProg 64 :=
.seq NamedBody138_147 NamedBody138_156

def NamedBody138_158 : StackLang.HolProg 64 :=
.seq NamedBody138_146 NamedBody138_157

def NamedBody138_159 : StackLang.HolProg 64 :=
.seq NamedBody138_91 NamedBody138_158

def NamedBody138_160 : StackLang.HolProg 64 :=
.seq NamedBody138_88 NamedBody138_159

def NamedBody138_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody138_160 NamedBody138_161

def NamedBody138_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody138_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody138_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody138_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody138_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody138_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 99#64)

def NamedBody138_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody138_172 : StackLang.HolProg 64 :=
.seq NamedBody138_170 NamedBody138_171

def NamedBody138_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody138_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody138_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody138_176 : StackLang.HolProg 64 :=
.seq NamedBody138_174 NamedBody138_175

def NamedBody138_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_178 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody138_176 NamedBody138_177

def NamedBody138_179 : StackLang.HolProg 64 :=
.seq NamedBody138_173 NamedBody138_178

def NamedBody138_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody138_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody138_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 138 7

def NamedBody138_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody138_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody138_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody138_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody138_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody138_189 : StackLang.HolProg 64 :=
.seq NamedBody138_187 NamedBody138_188

def NamedBody138_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody138_191 : StackLang.HolProg 64 :=
.seq NamedBody138_189 NamedBody138_190

def NamedBody138_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody138_193 : StackLang.HolProg 64 :=
.seq NamedBody138_191 NamedBody138_192

def NamedBody138_194 : StackLang.HolProg 64 :=
.seq NamedBody138_186 NamedBody138_193

def NamedBody138_195 : StackLang.HolProg 64 :=
.seq NamedBody138_185 NamedBody138_194

def NamedBody138_196 : StackLang.HolProg 64 :=
.seq NamedBody138_184 NamedBody138_195

def NamedBody138_197 : StackLang.HolProg 64 :=
.seq NamedBody138_183 NamedBody138_196

def NamedBody138_198 : StackLang.HolProg 64 :=
.seq NamedBody138_182 NamedBody138_197

def NamedBody138_199 : StackLang.HolProg 64 :=
.seq NamedBody138_181 NamedBody138_198

def NamedBody138_200 : StackLang.HolProg 64 :=
.seq NamedBody138_180 NamedBody138_199

def NamedBody138_201 : StackLang.HolProg 64 :=
.seq NamedBody138_179 NamedBody138_200

def NamedBody138_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody138_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody138_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody138_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody138_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody138_210 : StackLang.HolProg 64 :=
.seq NamedBody138_208 NamedBody138_209

def NamedBody138_211 : StackLang.HolProg 64 :=
.seq NamedBody138_207 NamedBody138_210

def NamedBody138_212 : StackLang.HolProg 64 :=
.seq NamedBody138_206 NamedBody138_211

def NamedBody138_213 : StackLang.HolProg 64 :=
.seq NamedBody138_205 NamedBody138_212

def NamedBody138_214 : StackLang.HolProg 64 :=
.seq NamedBody138_204 NamedBody138_213

def NamedBody138_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody138_216 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody138_217 : StackLang.HolProg 64 :=
.seq NamedBody138_215 NamedBody138_216

def NamedBody138_218 : StackLang.HolProg 64 :=
.call (some (NamedBody138_214, 1, 138, 6)) (Sum.inl 137) (some (NamedBody138_217, 138, 7))

def NamedBody138_219 : StackLang.HolProg 64 :=
.seq NamedBody138_203 NamedBody138_218

def NamedBody138_220 : StackLang.HolProg 64 :=
.seq NamedBody138_202 NamedBody138_219

def NamedBody138_221 : StackLang.HolProg 64 :=
.seq NamedBody138_201 NamedBody138_220

def NamedBody138_222 : StackLang.HolProg 64 :=
.seq NamedBody138_172 NamedBody138_221

def NamedBody138_223 : StackLang.HolProg 64 :=
.seq NamedBody138_169 NamedBody138_222

def NamedBody138_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody138_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody138_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody138_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody138_230 : StackLang.HolProg 64 :=
.seq NamedBody138_228 NamedBody138_229

def NamedBody138_231 : StackLang.HolProg 64 :=
.seq NamedBody138_227 NamedBody138_230

def NamedBody138_232 : StackLang.HolProg 64 :=
.seq NamedBody138_226 NamedBody138_231

def NamedBody138_233 : StackLang.HolProg 64 :=
.seq NamedBody138_225 NamedBody138_232

def NamedBody138_234 : StackLang.HolProg 64 :=
.seq NamedBody138_224 NamedBody138_233

def NamedBody138_235 : StackLang.HolProg 64 :=
.seq NamedBody138_223 NamedBody138_234

def NamedBody138_236 : StackLang.HolProg 64 :=
.seq NamedBody138_168 NamedBody138_235

def NamedBody138_237 : StackLang.HolProg 64 :=
.seq NamedBody138_167 NamedBody138_236

def NamedBody138_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody138_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody138_237 NamedBody138_238

def NamedBody138_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody138_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody138_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody138_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody138_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody138_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 137

def NamedBody138_246 : StackLang.HolProg 64 :=
.seq NamedBody138_244 NamedBody138_245

def NamedBody138_247 : StackLang.HolProg 64 :=
.seq NamedBody138_243 NamedBody138_246

def NamedBody138_248 : StackLang.HolProg 64 :=
.seq NamedBody138_242 NamedBody138_247

def NamedBody138_249 : StackLang.HolProg 64 :=
.seq NamedBody138_241 NamedBody138_248

def NamedBody138_250 : StackLang.HolProg 64 :=
.seq NamedBody138_240 NamedBody138_249

def NamedBody138_251 : StackLang.HolProg 64 :=
.seq NamedBody138_239 NamedBody138_250

def NamedBody138_252 : StackLang.HolProg 64 :=
.seq NamedBody138_166 NamedBody138_251

def NamedBody138_253 : StackLang.HolProg 64 :=
.seq NamedBody138_165 NamedBody138_252

def NamedBody138_254 : StackLang.HolProg 64 :=
.seq NamedBody138_164 NamedBody138_253

def NamedBody138_255 : StackLang.HolProg 64 :=
.seq NamedBody138_163 NamedBody138_254

def NamedBody138_256 : StackLang.HolProg 64 :=
.seq NamedBody138_162 NamedBody138_255

def NamedBody138_257 : StackLang.HolProg 64 :=
.seq NamedBody138_87 NamedBody138_256

def NamedBody138_258 : StackLang.HolProg 64 :=
.seq NamedBody138_86 NamedBody138_257

def NamedBody138_259 : StackLang.HolProg 64 :=
.seq NamedBody138_85 NamedBody138_258

def NamedBody138_260 : StackLang.HolProg 64 :=
.seq NamedBody138_84 NamedBody138_259

def NamedBody138_261 : StackLang.HolProg 64 :=
.seq NamedBody138_83 NamedBody138_260

def NamedBody138_262 : StackLang.HolProg 64 :=
.seq NamedBody138_8 NamedBody138_261

def NamedBody138_263 : StackLang.HolProg 64 :=
.seq NamedBody138_7 NamedBody138_262

def NamedBody138_264 : StackLang.HolProg 64 :=
.seq NamedBody138_6 NamedBody138_263

def Named138 : Nat × StackLang.HolProg 64 := (138, NamedBody138_264)
theorem Named138_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed138 = Named138 := by
  kernel_rfl
#print axioms Named138_eq
end InitECandidate.Proofs.BackendStages
