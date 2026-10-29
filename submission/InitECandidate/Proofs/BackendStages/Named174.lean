import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed174
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody174_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody174_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody174_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody174_3 : StackLang.HolProg 64 :=
.seq NamedBody174_1 NamedBody174_2

def NamedBody174_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody174_3 NamedBody174_4

def NamedBody174_6 : StackLang.HolProg 64 :=
.seq NamedBody174_0 NamedBody174_5

def NamedBody174_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 55#64)

def NamedBody174_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody174_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody174_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody174_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody174_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody174_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody174_18 : StackLang.HolProg 64 :=
.seq NamedBody174_16 NamedBody174_17

def NamedBody174_19 : StackLang.HolProg 64 :=
.seq NamedBody174_15 NamedBody174_18

def NamedBody174_20 : StackLang.HolProg 64 :=
.seq NamedBody174_14 NamedBody174_19

def NamedBody174_21 : StackLang.HolProg 64 :=
.seq NamedBody174_13 NamedBody174_20

def NamedBody174_22 : StackLang.HolProg 64 :=
.seq NamedBody174_12 NamedBody174_21

def NamedBody174_23 : StackLang.HolProg 64 :=
.seq NamedBody174_11 NamedBody174_22

def NamedBody174_24 : StackLang.HolProg 64 :=
.seq NamedBody174_10 NamedBody174_23

def NamedBody174_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody174_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody174_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody174_28 : StackLang.HolProg 64 :=
.seq NamedBody174_26 NamedBody174_27

def NamedBody174_29 : StackLang.HolProg 64 :=
.seq NamedBody174_25 NamedBody174_28

def NamedBody174_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody174_24 NamedBody174_29

def NamedBody174_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody174_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody174_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody174_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody174_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody174_36 : StackLang.HolProg 64 :=
.seq NamedBody174_34 NamedBody174_35

def NamedBody174_37 : StackLang.HolProg 64 :=
.seq NamedBody174_33 NamedBody174_36

def NamedBody174_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 194#64)

def NamedBody174_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody174_41 : StackLang.HolProg 64 :=
.seq NamedBody174_39 NamedBody174_40

def NamedBody174_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody174_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody174_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody174_45 : StackLang.HolProg 64 :=
.seq NamedBody174_43 NamedBody174_44

def NamedBody174_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_47 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody174_45 NamedBody174_46

def NamedBody174_48 : StackLang.HolProg 64 :=
.seq NamedBody174_42 NamedBody174_47

def NamedBody174_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody174_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody174_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 174 3

def NamedBody174_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody174_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody174_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody174_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody174_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody174_58 : StackLang.HolProg 64 :=
.seq NamedBody174_56 NamedBody174_57

def NamedBody174_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody174_60 : StackLang.HolProg 64 :=
.seq NamedBody174_58 NamedBody174_59

def NamedBody174_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody174_62 : StackLang.HolProg 64 :=
.seq NamedBody174_60 NamedBody174_61

def NamedBody174_63 : StackLang.HolProg 64 :=
.seq NamedBody174_55 NamedBody174_62

def NamedBody174_64 : StackLang.HolProg 64 :=
.seq NamedBody174_54 NamedBody174_63

def NamedBody174_65 : StackLang.HolProg 64 :=
.seq NamedBody174_53 NamedBody174_64

def NamedBody174_66 : StackLang.HolProg 64 :=
.seq NamedBody174_52 NamedBody174_65

def NamedBody174_67 : StackLang.HolProg 64 :=
.seq NamedBody174_51 NamedBody174_66

def NamedBody174_68 : StackLang.HolProg 64 :=
.seq NamedBody174_50 NamedBody174_67

def NamedBody174_69 : StackLang.HolProg 64 :=
.seq NamedBody174_49 NamedBody174_68

def NamedBody174_70 : StackLang.HolProg 64 :=
.seq NamedBody174_48 NamedBody174_69

def NamedBody174_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody174_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody174_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody174_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody174_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody174_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody174_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody174_81 : StackLang.HolProg 64 :=
.seq NamedBody174_79 NamedBody174_80

def NamedBody174_82 : StackLang.HolProg 64 :=
.seq NamedBody174_78 NamedBody174_81

def NamedBody174_83 : StackLang.HolProg 64 :=
.seq NamedBody174_77 NamedBody174_82

def NamedBody174_84 : StackLang.HolProg 64 :=
.seq NamedBody174_76 NamedBody174_83

def NamedBody174_85 : StackLang.HolProg 64 :=
.seq NamedBody174_75 NamedBody174_84

def NamedBody174_86 : StackLang.HolProg 64 :=
.seq NamedBody174_74 NamedBody174_85

def NamedBody174_87 : StackLang.HolProg 64 :=
.seq NamedBody174_73 NamedBody174_86

def NamedBody174_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody174_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody174_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody174_91 : StackLang.HolProg 64 :=
.seq NamedBody174_89 NamedBody174_90

def NamedBody174_92 : StackLang.HolProg 64 :=
.seq NamedBody174_88 NamedBody174_91

def NamedBody174_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody174_94 : StackLang.HolProg 64 :=
.seq NamedBody174_92 NamedBody174_93

def NamedBody174_95 : StackLang.HolProg 64 :=
.call (some (NamedBody174_87, 1, 174, 2)) (Sum.inl 172) (some (NamedBody174_94, 174, 3))

def NamedBody174_96 : StackLang.HolProg 64 :=
.seq NamedBody174_72 NamedBody174_95

def NamedBody174_97 : StackLang.HolProg 64 :=
.seq NamedBody174_71 NamedBody174_96

def NamedBody174_98 : StackLang.HolProg 64 :=
.seq NamedBody174_70 NamedBody174_97

def NamedBody174_99 : StackLang.HolProg 64 :=
.seq NamedBody174_41 NamedBody174_98

def NamedBody174_100 : StackLang.HolProg 64 :=
.seq NamedBody174_38 NamedBody174_99

def NamedBody174_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody174_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody174_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 55#64)))

def NamedBody174_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody174_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody174_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody174_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 195#64)

def NamedBody174_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody174_112 : StackLang.HolProg 64 :=
.seq NamedBody174_110 NamedBody174_111

def NamedBody174_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody174_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody174_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody174_116 : StackLang.HolProg 64 :=
.seq NamedBody174_114 NamedBody174_115

def NamedBody174_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_118 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody174_116 NamedBody174_117

def NamedBody174_119 : StackLang.HolProg 64 :=
.seq NamedBody174_113 NamedBody174_118

def NamedBody174_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody174_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody174_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 174 5

def NamedBody174_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody174_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody174_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody174_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody174_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody174_129 : StackLang.HolProg 64 :=
.seq NamedBody174_127 NamedBody174_128

def NamedBody174_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody174_131 : StackLang.HolProg 64 :=
.seq NamedBody174_129 NamedBody174_130

def NamedBody174_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody174_133 : StackLang.HolProg 64 :=
.seq NamedBody174_131 NamedBody174_132

def NamedBody174_134 : StackLang.HolProg 64 :=
.seq NamedBody174_126 NamedBody174_133

def NamedBody174_135 : StackLang.HolProg 64 :=
.seq NamedBody174_125 NamedBody174_134

def NamedBody174_136 : StackLang.HolProg 64 :=
.seq NamedBody174_124 NamedBody174_135

def NamedBody174_137 : StackLang.HolProg 64 :=
.seq NamedBody174_123 NamedBody174_136

def NamedBody174_138 : StackLang.HolProg 64 :=
.seq NamedBody174_122 NamedBody174_137

def NamedBody174_139 : StackLang.HolProg 64 :=
.seq NamedBody174_121 NamedBody174_138

def NamedBody174_140 : StackLang.HolProg 64 :=
.seq NamedBody174_120 NamedBody174_139

def NamedBody174_141 : StackLang.HolProg 64 :=
.seq NamedBody174_119 NamedBody174_140

def NamedBody174_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody174_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody174_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody174_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody174_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody174_150 : StackLang.HolProg 64 :=
.seq NamedBody174_148 NamedBody174_149

def NamedBody174_151 : StackLang.HolProg 64 :=
.seq NamedBody174_147 NamedBody174_150

def NamedBody174_152 : StackLang.HolProg 64 :=
.seq NamedBody174_146 NamedBody174_151

def NamedBody174_153 : StackLang.HolProg 64 :=
.seq NamedBody174_145 NamedBody174_152

def NamedBody174_154 : StackLang.HolProg 64 :=
.seq NamedBody174_144 NamedBody174_153

def NamedBody174_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody174_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody174_157 : StackLang.HolProg 64 :=
.seq NamedBody174_155 NamedBody174_156

def NamedBody174_158 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody174_159 : StackLang.HolProg 64 :=
.seq NamedBody174_157 NamedBody174_158

def NamedBody174_160 : StackLang.HolProg 64 :=
.call (some (NamedBody174_154, 1, 174, 4)) (Sum.inl 173) (some (NamedBody174_159, 174, 5))

def NamedBody174_161 : StackLang.HolProg 64 :=
.seq NamedBody174_143 NamedBody174_160

def NamedBody174_162 : StackLang.HolProg 64 :=
.seq NamedBody174_142 NamedBody174_161

def NamedBody174_163 : StackLang.HolProg 64 :=
.seq NamedBody174_141 NamedBody174_162

def NamedBody174_164 : StackLang.HolProg 64 :=
.seq NamedBody174_112 NamedBody174_163

def NamedBody174_165 : StackLang.HolProg 64 :=
.seq NamedBody174_109 NamedBody174_164

def NamedBody174_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody174_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody174_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody174_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody174_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody174_172 : StackLang.HolProg 64 :=
.seq NamedBody174_170 NamedBody174_171

def NamedBody174_173 : StackLang.HolProg 64 :=
.seq NamedBody174_169 NamedBody174_172

def NamedBody174_174 : StackLang.HolProg 64 :=
.seq NamedBody174_168 NamedBody174_173

def NamedBody174_175 : StackLang.HolProg 64 :=
.seq NamedBody174_167 NamedBody174_174

def NamedBody174_176 : StackLang.HolProg 64 :=
.seq NamedBody174_166 NamedBody174_175

def NamedBody174_177 : StackLang.HolProg 64 :=
.seq NamedBody174_165 NamedBody174_176

def NamedBody174_178 : StackLang.HolProg 64 :=
.seq NamedBody174_108 NamedBody174_177

def NamedBody174_179 : StackLang.HolProg 64 :=
.seq NamedBody174_107 NamedBody174_178

def NamedBody174_180 : StackLang.HolProg 64 :=
.seq NamedBody174_106 NamedBody174_179

def NamedBody174_181 : StackLang.HolProg 64 :=
.seq NamedBody174_105 NamedBody174_180

def NamedBody174_182 : StackLang.HolProg 64 :=
.seq NamedBody174_104 NamedBody174_181

def NamedBody174_183 : StackLang.HolProg 64 :=
.seq NamedBody174_103 NamedBody174_182

def NamedBody174_184 : StackLang.HolProg 64 :=
.seq NamedBody174_102 NamedBody174_183

def NamedBody174_185 : StackLang.HolProg 64 :=
.seq NamedBody174_101 NamedBody174_184

def NamedBody174_186 : StackLang.HolProg 64 :=
.seq NamedBody174_100 NamedBody174_185

def NamedBody174_187 : StackLang.HolProg 64 :=
.seq NamedBody174_37 NamedBody174_186

def NamedBody174_188 : StackLang.HolProg 64 :=
.seq NamedBody174_32 NamedBody174_187

def NamedBody174_189 : StackLang.HolProg 64 :=
.seq NamedBody174_31 NamedBody174_188

def NamedBody174_190 : StackLang.HolProg 64 :=
.seq NamedBody174_30 NamedBody174_189

def NamedBody174_191 : StackLang.HolProg 64 :=
.seq NamedBody174_9 NamedBody174_190

def NamedBody174_192 : StackLang.HolProg 64 :=
.seq NamedBody174_8 NamedBody174_191

def NamedBody174_193 : StackLang.HolProg 64 :=
.seq NamedBody174_7 NamedBody174_192

def NamedBody174_194 : StackLang.HolProg 64 :=
.seq NamedBody174_6 NamedBody174_193

def Named174 : Nat × StackLang.HolProg 64 := (174, NamedBody174_194)
theorem Named174_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed174 = Named174 := by
  kernel_rfl
#print axioms Named174_eq
end InitECandidate.Proofs.BackendStages
