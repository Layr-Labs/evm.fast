import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed565
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody565_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody565_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody565_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody565_3 : StackLang.HolProg 64 :=
.seq NamedBody565_1 NamedBody565_2

def NamedBody565_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody565_3 NamedBody565_4

def NamedBody565_6 : StackLang.HolProg 64 :=
.seq NamedBody565_0 NamedBody565_5

def NamedBody565_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody565_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody565_9 : StackLang.HolProg 64 :=
.seq NamedBody565_7 NamedBody565_8

def NamedBody565_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1932#64)

def NamedBody565_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody565_13 : StackLang.HolProg 64 :=
.seq NamedBody565_11 NamedBody565_12

def NamedBody565_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody565_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody565_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody565_17 : StackLang.HolProg 64 :=
.seq NamedBody565_15 NamedBody565_16

def NamedBody565_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody565_17 NamedBody565_18

def NamedBody565_20 : StackLang.HolProg 64 :=
.seq NamedBody565_14 NamedBody565_19

def NamedBody565_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody565_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody565_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 565 3

def NamedBody565_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody565_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody565_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody565_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody565_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody565_30 : StackLang.HolProg 64 :=
.seq NamedBody565_28 NamedBody565_29

def NamedBody565_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody565_32 : StackLang.HolProg 64 :=
.seq NamedBody565_30 NamedBody565_31

def NamedBody565_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody565_34 : StackLang.HolProg 64 :=
.seq NamedBody565_32 NamedBody565_33

def NamedBody565_35 : StackLang.HolProg 64 :=
.seq NamedBody565_27 NamedBody565_34

def NamedBody565_36 : StackLang.HolProg 64 :=
.seq NamedBody565_26 NamedBody565_35

def NamedBody565_37 : StackLang.HolProg 64 :=
.seq NamedBody565_25 NamedBody565_36

def NamedBody565_38 : StackLang.HolProg 64 :=
.seq NamedBody565_24 NamedBody565_37

def NamedBody565_39 : StackLang.HolProg 64 :=
.seq NamedBody565_23 NamedBody565_38

def NamedBody565_40 : StackLang.HolProg 64 :=
.seq NamedBody565_22 NamedBody565_39

def NamedBody565_41 : StackLang.HolProg 64 :=
.seq NamedBody565_21 NamedBody565_40

def NamedBody565_42 : StackLang.HolProg 64 :=
.seq NamedBody565_20 NamedBody565_41

def NamedBody565_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody565_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody565_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody565_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody565_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody565_51 : StackLang.HolProg 64 :=
.seq NamedBody565_49 NamedBody565_50

def NamedBody565_52 : StackLang.HolProg 64 :=
.seq NamedBody565_48 NamedBody565_51

def NamedBody565_53 : StackLang.HolProg 64 :=
.seq NamedBody565_47 NamedBody565_52

def NamedBody565_54 : StackLang.HolProg 64 :=
.seq NamedBody565_46 NamedBody565_53

def NamedBody565_55 : StackLang.HolProg 64 :=
.seq NamedBody565_45 NamedBody565_54

def NamedBody565_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody565_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody565_58 : StackLang.HolProg 64 :=
.seq NamedBody565_56 NamedBody565_57

def NamedBody565_59 : StackLang.HolProg 64 :=
.call (some (NamedBody565_55, 1, 565, 2)) (Sum.inl 407) (some (NamedBody565_58, 565, 3))

def NamedBody565_60 : StackLang.HolProg 64 :=
.seq NamedBody565_44 NamedBody565_59

def NamedBody565_61 : StackLang.HolProg 64 :=
.seq NamedBody565_43 NamedBody565_60

def NamedBody565_62 : StackLang.HolProg 64 :=
.seq NamedBody565_42 NamedBody565_61

def NamedBody565_63 : StackLang.HolProg 64 :=
.seq NamedBody565_13 NamedBody565_62

def NamedBody565_64 : StackLang.HolProg 64 :=
.seq NamedBody565_10 NamedBody565_63

def NamedBody565_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody565_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def NamedBody565_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1933#64)

def NamedBody565_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody565_72 : StackLang.HolProg 64 :=
.seq NamedBody565_70 NamedBody565_71

def NamedBody565_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody565_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody565_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody565_76 : StackLang.HolProg 64 :=
.seq NamedBody565_74 NamedBody565_75

def NamedBody565_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody565_76 NamedBody565_77

def NamedBody565_79 : StackLang.HolProg 64 :=
.seq NamedBody565_73 NamedBody565_78

def NamedBody565_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody565_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody565_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 565 5

def NamedBody565_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody565_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody565_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody565_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody565_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody565_89 : StackLang.HolProg 64 :=
.seq NamedBody565_87 NamedBody565_88

def NamedBody565_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody565_91 : StackLang.HolProg 64 :=
.seq NamedBody565_89 NamedBody565_90

def NamedBody565_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody565_93 : StackLang.HolProg 64 :=
.seq NamedBody565_91 NamedBody565_92

def NamedBody565_94 : StackLang.HolProg 64 :=
.seq NamedBody565_86 NamedBody565_93

def NamedBody565_95 : StackLang.HolProg 64 :=
.seq NamedBody565_85 NamedBody565_94

def NamedBody565_96 : StackLang.HolProg 64 :=
.seq NamedBody565_84 NamedBody565_95

def NamedBody565_97 : StackLang.HolProg 64 :=
.seq NamedBody565_83 NamedBody565_96

def NamedBody565_98 : StackLang.HolProg 64 :=
.seq NamedBody565_82 NamedBody565_97

def NamedBody565_99 : StackLang.HolProg 64 :=
.seq NamedBody565_81 NamedBody565_98

def NamedBody565_100 : StackLang.HolProg 64 :=
.seq NamedBody565_80 NamedBody565_99

def NamedBody565_101 : StackLang.HolProg 64 :=
.seq NamedBody565_79 NamedBody565_100

def NamedBody565_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody565_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody565_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody565_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody565_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody565_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody565_110 : StackLang.HolProg 64 :=
.seq NamedBody565_108 NamedBody565_109

def NamedBody565_111 : StackLang.HolProg 64 :=
.seq NamedBody565_107 NamedBody565_110

def NamedBody565_112 : StackLang.HolProg 64 :=
.seq NamedBody565_106 NamedBody565_111

def NamedBody565_113 : StackLang.HolProg 64 :=
.seq NamedBody565_105 NamedBody565_112

def NamedBody565_114 : StackLang.HolProg 64 :=
.seq NamedBody565_104 NamedBody565_113

def NamedBody565_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody565_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody565_117 : StackLang.HolProg 64 :=
.seq NamedBody565_115 NamedBody565_116

def NamedBody565_118 : StackLang.HolProg 64 :=
.call (some (NamedBody565_114, 1, 565, 4)) (Sum.inl 408) (some (NamedBody565_117, 565, 5))

def NamedBody565_119 : StackLang.HolProg 64 :=
.seq NamedBody565_103 NamedBody565_118

def NamedBody565_120 : StackLang.HolProg 64 :=
.seq NamedBody565_102 NamedBody565_119

def NamedBody565_121 : StackLang.HolProg 64 :=
.seq NamedBody565_101 NamedBody565_120

def NamedBody565_122 : StackLang.HolProg 64 :=
.seq NamedBody565_72 NamedBody565_121

def NamedBody565_123 : StackLang.HolProg 64 :=
.seq NamedBody565_69 NamedBody565_122

def NamedBody565_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody565_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody565_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody565_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody565_128 : StackLang.HolProg 64 :=
.seq NamedBody565_126 NamedBody565_127

def NamedBody565_129 : StackLang.HolProg 64 :=
.seq NamedBody565_125 NamedBody565_128

def NamedBody565_130 : StackLang.HolProg 64 :=
.seq NamedBody565_124 NamedBody565_129

def NamedBody565_131 : StackLang.HolProg 64 :=
.seq NamedBody565_123 NamedBody565_130

def NamedBody565_132 : StackLang.HolProg 64 :=
.seq NamedBody565_68 NamedBody565_131

def NamedBody565_133 : StackLang.HolProg 64 :=
.seq NamedBody565_67 NamedBody565_132

def NamedBody565_134 : StackLang.HolProg 64 :=
.seq NamedBody565_66 NamedBody565_133

def NamedBody565_135 : StackLang.HolProg 64 :=
.seq NamedBody565_65 NamedBody565_134

def NamedBody565_136 : StackLang.HolProg 64 :=
.seq NamedBody565_64 NamedBody565_135

def NamedBody565_137 : StackLang.HolProg 64 :=
.seq NamedBody565_9 NamedBody565_136

def NamedBody565_138 : StackLang.HolProg 64 :=
.seq NamedBody565_6 NamedBody565_137

def Named565 : Nat × StackLang.HolProg 64 := (565, NamedBody565_138)
theorem Named565_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed565 = Named565 := by
  kernel_rfl
#print axioms Named565_eq
end InitECandidate.Proofs.BackendStages
