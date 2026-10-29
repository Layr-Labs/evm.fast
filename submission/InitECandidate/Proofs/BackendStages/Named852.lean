import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed852
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody852_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody852_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_3 : StackLang.HolProg 64 :=
.seq NamedBody852_1 NamedBody852_2

def NamedBody852_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_3 NamedBody852_4

def NamedBody852_6 : StackLang.HolProg 64 :=
.seq NamedBody852_0 NamedBody852_5

def NamedBody852_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody852_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4310#64)

def NamedBody852_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_13 : StackLang.HolProg 64 :=
.seq NamedBody852_11 NamedBody852_12

def NamedBody852_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_17 : StackLang.HolProg 64 :=
.seq NamedBody852_15 NamedBody852_16

def NamedBody852_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_17 NamedBody852_18

def NamedBody852_20 : StackLang.HolProg 64 :=
.seq NamedBody852_14 NamedBody852_19

def NamedBody852_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 3

def NamedBody852_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_30 : StackLang.HolProg 64 :=
.seq NamedBody852_28 NamedBody852_29

def NamedBody852_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_32 : StackLang.HolProg 64 :=
.seq NamedBody852_30 NamedBody852_31

def NamedBody852_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_34 : StackLang.HolProg 64 :=
.seq NamedBody852_32 NamedBody852_33

def NamedBody852_35 : StackLang.HolProg 64 :=
.seq NamedBody852_27 NamedBody852_34

def NamedBody852_36 : StackLang.HolProg 64 :=
.seq NamedBody852_26 NamedBody852_35

def NamedBody852_37 : StackLang.HolProg 64 :=
.seq NamedBody852_25 NamedBody852_36

def NamedBody852_38 : StackLang.HolProg 64 :=
.seq NamedBody852_24 NamedBody852_37

def NamedBody852_39 : StackLang.HolProg 64 :=
.seq NamedBody852_23 NamedBody852_38

def NamedBody852_40 : StackLang.HolProg 64 :=
.seq NamedBody852_22 NamedBody852_39

def NamedBody852_41 : StackLang.HolProg 64 :=
.seq NamedBody852_21 NamedBody852_40

def NamedBody852_42 : StackLang.HolProg 64 :=
.seq NamedBody852_20 NamedBody852_41

def NamedBody852_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody852_50 : StackLang.HolProg 64 :=
.seq NamedBody852_48 NamedBody852_49

def NamedBody852_51 : StackLang.HolProg 64 :=
.seq NamedBody852_47 NamedBody852_50

def NamedBody852_52 : StackLang.HolProg 64 :=
.seq NamedBody852_46 NamedBody852_51

def NamedBody852_53 : StackLang.HolProg 64 :=
.seq NamedBody852_45 NamedBody852_52

def NamedBody852_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_56 : StackLang.HolProg 64 :=
.seq NamedBody852_54 NamedBody852_55

def NamedBody852_57 : StackLang.HolProg 64 :=
.call (some (NamedBody852_53, 1, 852, 2)) (Sum.inl 68) (some (NamedBody852_56, 852, 3))

def NamedBody852_58 : StackLang.HolProg 64 :=
.seq NamedBody852_44 NamedBody852_57

def NamedBody852_59 : StackLang.HolProg 64 :=
.seq NamedBody852_43 NamedBody852_58

def NamedBody852_60 : StackLang.HolProg 64 :=
.seq NamedBody852_42 NamedBody852_59

def NamedBody852_61 : StackLang.HolProg 64 :=
.seq NamedBody852_13 NamedBody852_60

def NamedBody852_62 : StackLang.HolProg 64 :=
.seq NamedBody852_10 NamedBody852_61

def NamedBody852_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551184#64)))

def NamedBody852_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody852_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551184#64))

def NamedBody852_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody852_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4311#64)

def NamedBody852_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_77 : StackLang.HolProg 64 :=
.seq NamedBody852_75 NamedBody852_76

def NamedBody852_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_81 : StackLang.HolProg 64 :=
.seq NamedBody852_79 NamedBody852_80

def NamedBody852_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_81 NamedBody852_82

def NamedBody852_84 : StackLang.HolProg 64 :=
.seq NamedBody852_78 NamedBody852_83

def NamedBody852_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 5

def NamedBody852_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_94 : StackLang.HolProg 64 :=
.seq NamedBody852_92 NamedBody852_93

def NamedBody852_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_96 : StackLang.HolProg 64 :=
.seq NamedBody852_94 NamedBody852_95

def NamedBody852_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_98 : StackLang.HolProg 64 :=
.seq NamedBody852_96 NamedBody852_97

def NamedBody852_99 : StackLang.HolProg 64 :=
.seq NamedBody852_91 NamedBody852_98

def NamedBody852_100 : StackLang.HolProg 64 :=
.seq NamedBody852_90 NamedBody852_99

def NamedBody852_101 : StackLang.HolProg 64 :=
.seq NamedBody852_89 NamedBody852_100

def NamedBody852_102 : StackLang.HolProg 64 :=
.seq NamedBody852_88 NamedBody852_101

def NamedBody852_103 : StackLang.HolProg 64 :=
.seq NamedBody852_87 NamedBody852_102

def NamedBody852_104 : StackLang.HolProg 64 :=
.seq NamedBody852_86 NamedBody852_103

def NamedBody852_105 : StackLang.HolProg 64 :=
.seq NamedBody852_85 NamedBody852_104

def NamedBody852_106 : StackLang.HolProg 64 :=
.seq NamedBody852_84 NamedBody852_105

def NamedBody852_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_114 : StackLang.HolProg 64 :=
.seq NamedBody852_112 NamedBody852_113

def NamedBody852_115 : StackLang.HolProg 64 :=
.seq NamedBody852_111 NamedBody852_114

def NamedBody852_116 : StackLang.HolProg 64 :=
.seq NamedBody852_110 NamedBody852_115

def NamedBody852_117 : StackLang.HolProg 64 :=
.seq NamedBody852_109 NamedBody852_116

def NamedBody852_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_119 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_120 : StackLang.HolProg 64 :=
.seq NamedBody852_118 NamedBody852_119

def NamedBody852_121 : StackLang.HolProg 64 :=
.call (some (NamedBody852_117, 1, 852, 4)) (Sum.inl 78) (some (NamedBody852_120, 852, 5))

def NamedBody852_122 : StackLang.HolProg 64 :=
.seq NamedBody852_108 NamedBody852_121

def NamedBody852_123 : StackLang.HolProg 64 :=
.seq NamedBody852_107 NamedBody852_122

def NamedBody852_124 : StackLang.HolProg 64 :=
.seq NamedBody852_106 NamedBody852_123

def NamedBody852_125 : StackLang.HolProg 64 :=
.seq NamedBody852_77 NamedBody852_124

def NamedBody852_126 : StackLang.HolProg 64 :=
.seq NamedBody852_74 NamedBody852_125

def NamedBody852_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 360#64)

def NamedBody852_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4312#64)

def NamedBody852_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_133 : StackLang.HolProg 64 :=
.seq NamedBody852_131 NamedBody852_132

def NamedBody852_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_137 : StackLang.HolProg 64 :=
.seq NamedBody852_135 NamedBody852_136

def NamedBody852_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_137 NamedBody852_138

def NamedBody852_140 : StackLang.HolProg 64 :=
.seq NamedBody852_134 NamedBody852_139

def NamedBody852_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 7

def NamedBody852_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_150 : StackLang.HolProg 64 :=
.seq NamedBody852_148 NamedBody852_149

def NamedBody852_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_152 : StackLang.HolProg 64 :=
.seq NamedBody852_150 NamedBody852_151

def NamedBody852_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_154 : StackLang.HolProg 64 :=
.seq NamedBody852_152 NamedBody852_153

def NamedBody852_155 : StackLang.HolProg 64 :=
.seq NamedBody852_147 NamedBody852_154

def NamedBody852_156 : StackLang.HolProg 64 :=
.seq NamedBody852_146 NamedBody852_155

def NamedBody852_157 : StackLang.HolProg 64 :=
.seq NamedBody852_145 NamedBody852_156

def NamedBody852_158 : StackLang.HolProg 64 :=
.seq NamedBody852_144 NamedBody852_157

def NamedBody852_159 : StackLang.HolProg 64 :=
.seq NamedBody852_143 NamedBody852_158

def NamedBody852_160 : StackLang.HolProg 64 :=
.seq NamedBody852_142 NamedBody852_159

def NamedBody852_161 : StackLang.HolProg 64 :=
.seq NamedBody852_141 NamedBody852_160

def NamedBody852_162 : StackLang.HolProg 64 :=
.seq NamedBody852_140 NamedBody852_161

def NamedBody852_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody852_170 : StackLang.HolProg 64 :=
.seq NamedBody852_168 NamedBody852_169

def NamedBody852_171 : StackLang.HolProg 64 :=
.seq NamedBody852_167 NamedBody852_170

def NamedBody852_172 : StackLang.HolProg 64 :=
.seq NamedBody852_166 NamedBody852_171

def NamedBody852_173 : StackLang.HolProg 64 :=
.seq NamedBody852_165 NamedBody852_172

def NamedBody852_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_176 : StackLang.HolProg 64 :=
.seq NamedBody852_174 NamedBody852_175

def NamedBody852_177 : StackLang.HolProg 64 :=
.call (some (NamedBody852_173, 1, 852, 6)) (Sum.inl 68) (some (NamedBody852_176, 852, 7))

def NamedBody852_178 : StackLang.HolProg 64 :=
.seq NamedBody852_164 NamedBody852_177

def NamedBody852_179 : StackLang.HolProg 64 :=
.seq NamedBody852_163 NamedBody852_178

def NamedBody852_180 : StackLang.HolProg 64 :=
.seq NamedBody852_162 NamedBody852_179

def NamedBody852_181 : StackLang.HolProg 64 :=
.seq NamedBody852_133 NamedBody852_180

def NamedBody852_182 : StackLang.HolProg 64 :=
.seq NamedBody852_130 NamedBody852_181

def NamedBody852_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551192#64)))

def NamedBody852_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody852_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551192#64))

def NamedBody852_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 360#64)

def NamedBody852_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4313#64)

def NamedBody852_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_197 : StackLang.HolProg 64 :=
.seq NamedBody852_195 NamedBody852_196

def NamedBody852_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_201 : StackLang.HolProg 64 :=
.seq NamedBody852_199 NamedBody852_200

def NamedBody852_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_203 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_201 NamedBody852_202

def NamedBody852_204 : StackLang.HolProg 64 :=
.seq NamedBody852_198 NamedBody852_203

def NamedBody852_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 9

def NamedBody852_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_214 : StackLang.HolProg 64 :=
.seq NamedBody852_212 NamedBody852_213

def NamedBody852_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_216 : StackLang.HolProg 64 :=
.seq NamedBody852_214 NamedBody852_215

def NamedBody852_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_218 : StackLang.HolProg 64 :=
.seq NamedBody852_216 NamedBody852_217

def NamedBody852_219 : StackLang.HolProg 64 :=
.seq NamedBody852_211 NamedBody852_218

def NamedBody852_220 : StackLang.HolProg 64 :=
.seq NamedBody852_210 NamedBody852_219

def NamedBody852_221 : StackLang.HolProg 64 :=
.seq NamedBody852_209 NamedBody852_220

def NamedBody852_222 : StackLang.HolProg 64 :=
.seq NamedBody852_208 NamedBody852_221

def NamedBody852_223 : StackLang.HolProg 64 :=
.seq NamedBody852_207 NamedBody852_222

def NamedBody852_224 : StackLang.HolProg 64 :=
.seq NamedBody852_206 NamedBody852_223

def NamedBody852_225 : StackLang.HolProg 64 :=
.seq NamedBody852_205 NamedBody852_224

def NamedBody852_226 : StackLang.HolProg 64 :=
.seq NamedBody852_204 NamedBody852_225

def NamedBody852_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_234 : StackLang.HolProg 64 :=
.seq NamedBody852_232 NamedBody852_233

def NamedBody852_235 : StackLang.HolProg 64 :=
.seq NamedBody852_231 NamedBody852_234

def NamedBody852_236 : StackLang.HolProg 64 :=
.seq NamedBody852_230 NamedBody852_235

def NamedBody852_237 : StackLang.HolProg 64 :=
.seq NamedBody852_229 NamedBody852_236

def NamedBody852_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_240 : StackLang.HolProg 64 :=
.seq NamedBody852_238 NamedBody852_239

def NamedBody852_241 : StackLang.HolProg 64 :=
.call (some (NamedBody852_237, 1, 852, 8)) (Sum.inl 78) (some (NamedBody852_240, 852, 9))

def NamedBody852_242 : StackLang.HolProg 64 :=
.seq NamedBody852_228 NamedBody852_241

def NamedBody852_243 : StackLang.HolProg 64 :=
.seq NamedBody852_227 NamedBody852_242

def NamedBody852_244 : StackLang.HolProg 64 :=
.seq NamedBody852_226 NamedBody852_243

def NamedBody852_245 : StackLang.HolProg 64 :=
.seq NamedBody852_197 NamedBody852_244

def NamedBody852_246 : StackLang.HolProg 64 :=
.seq NamedBody852_194 NamedBody852_245

def NamedBody852_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody852_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 17#64)

def NamedBody852_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 20#64)

def NamedBody852_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody852_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody852_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551192#64))

def NamedBody852_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody852_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 19#64)))

def NamedBody852_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody852_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody852_270 : StackLang.HolProg 64 :=
.seq NamedBody852_268 NamedBody852_269

def NamedBody852_271 : StackLang.HolProg 64 :=
.seq NamedBody852_267 NamedBody852_270

def NamedBody852_272 : StackLang.HolProg 64 :=
.seq NamedBody852_266 NamedBody852_271

def NamedBody852_273 : StackLang.HolProg 64 :=
.seq NamedBody852_265 NamedBody852_272

def NamedBody852_274 : StackLang.HolProg 64 :=
.seq NamedBody852_264 NamedBody852_273

def NamedBody852_275 : StackLang.HolProg 64 :=
.seq NamedBody852_263 NamedBody852_274

def NamedBody852_276 : StackLang.HolProg 64 :=
.seq NamedBody852_262 NamedBody852_275

def NamedBody852_277 : StackLang.HolProg 64 :=
.seq NamedBody852_261 NamedBody852_276

def NamedBody852_278 : StackLang.HolProg 64 :=
.seq NamedBody852_260 NamedBody852_277

def NamedBody852_279 : StackLang.HolProg 64 :=
.seq NamedBody852_259 NamedBody852_278

def NamedBody852_280 : StackLang.HolProg 64 :=
.seq NamedBody852_258 NamedBody852_279

def NamedBody852_281 : StackLang.HolProg 64 :=
.seq NamedBody852_257 NamedBody852_280

def NamedBody852_282 : StackLang.HolProg 64 :=
.seq NamedBody852_256 NamedBody852_281

def NamedBody852_283 : StackLang.HolProg 64 :=
.seq NamedBody852_255 NamedBody852_282

def NamedBody852_284 : StackLang.HolProg 64 :=
.seq NamedBody852_254 NamedBody852_283

def NamedBody852_285 : StackLang.HolProg 64 :=
.seq NamedBody852_253 NamedBody852_284

def NamedBody852_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody852_288 : StackLang.HolProg 64 :=
.seq NamedBody852_286 NamedBody852_287

def NamedBody852_289 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody852_285 NamedBody852_288

def NamedBody852_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_292 : StackLang.HolProg 64 :=
.seq NamedBody852_290 NamedBody852_291

def NamedBody852_293 : StackLang.HolProg 64 :=
.seq NamedBody852_289 NamedBody852_292

def NamedBody852_294 : StackLang.HolProg 64 :=
.seq NamedBody852_252 NamedBody852_293

def NamedBody852_295 : StackLang.HolProg 64 :=
.seq NamedBody852_251 NamedBody852_294

def NamedBody852_296 : StackLang.HolProg 64 :=
.loop NamedBody852_295

def NamedBody852_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551192#64))

def NamedBody852_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 358#64)))

def NamedBody852_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody852_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody852_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 24#64)

def NamedBody852_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4314#64)

def NamedBody852_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_310 : StackLang.HolProg 64 :=
.seq NamedBody852_308 NamedBody852_309

def NamedBody852_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_314 : StackLang.HolProg 64 :=
.seq NamedBody852_312 NamedBody852_313

def NamedBody852_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_316 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_314 NamedBody852_315

def NamedBody852_317 : StackLang.HolProg 64 :=
.seq NamedBody852_311 NamedBody852_316

def NamedBody852_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 11

def NamedBody852_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_327 : StackLang.HolProg 64 :=
.seq NamedBody852_325 NamedBody852_326

def NamedBody852_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_329 : StackLang.HolProg 64 :=
.seq NamedBody852_327 NamedBody852_328

def NamedBody852_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_331 : StackLang.HolProg 64 :=
.seq NamedBody852_329 NamedBody852_330

def NamedBody852_332 : StackLang.HolProg 64 :=
.seq NamedBody852_324 NamedBody852_331

def NamedBody852_333 : StackLang.HolProg 64 :=
.seq NamedBody852_323 NamedBody852_332

def NamedBody852_334 : StackLang.HolProg 64 :=
.seq NamedBody852_322 NamedBody852_333

def NamedBody852_335 : StackLang.HolProg 64 :=
.seq NamedBody852_321 NamedBody852_334

def NamedBody852_336 : StackLang.HolProg 64 :=
.seq NamedBody852_320 NamedBody852_335

def NamedBody852_337 : StackLang.HolProg 64 :=
.seq NamedBody852_319 NamedBody852_336

def NamedBody852_338 : StackLang.HolProg 64 :=
.seq NamedBody852_318 NamedBody852_337

def NamedBody852_339 : StackLang.HolProg 64 :=
.seq NamedBody852_317 NamedBody852_338

def NamedBody852_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody852_347 : StackLang.HolProg 64 :=
.seq NamedBody852_345 NamedBody852_346

def NamedBody852_348 : StackLang.HolProg 64 :=
.seq NamedBody852_344 NamedBody852_347

def NamedBody852_349 : StackLang.HolProg 64 :=
.seq NamedBody852_343 NamedBody852_348

def NamedBody852_350 : StackLang.HolProg 64 :=
.seq NamedBody852_342 NamedBody852_349

def NamedBody852_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_352 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_353 : StackLang.HolProg 64 :=
.seq NamedBody852_351 NamedBody852_352

def NamedBody852_354 : StackLang.HolProg 64 :=
.call (some (NamedBody852_350, 1, 852, 10)) (Sum.inl 68) (some (NamedBody852_353, 852, 11))

def NamedBody852_355 : StackLang.HolProg 64 :=
.seq NamedBody852_341 NamedBody852_354

def NamedBody852_356 : StackLang.HolProg 64 :=
.seq NamedBody852_340 NamedBody852_355

def NamedBody852_357 : StackLang.HolProg 64 :=
.seq NamedBody852_339 NamedBody852_356

def NamedBody852_358 : StackLang.HolProg 64 :=
.seq NamedBody852_310 NamedBody852_357

def NamedBody852_359 : StackLang.HolProg 64 :=
.seq NamedBody852_307 NamedBody852_358

def NamedBody852_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551152#64)))

def NamedBody852_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody852_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551152#64))

def NamedBody852_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 13311379508201171970#64)

def NamedBody852_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 15506597749690834871#64)

def NamedBody852_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 998902#64)

def NamedBody852_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4315#64)

def NamedBody852_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_376 : StackLang.HolProg 64 :=
.seq NamedBody852_374 NamedBody852_375

def NamedBody852_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_380 : StackLang.HolProg 64 :=
.seq NamedBody852_378 NamedBody852_379

def NamedBody852_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_382 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_380 NamedBody852_381

def NamedBody852_383 : StackLang.HolProg 64 :=
.seq NamedBody852_377 NamedBody852_382

def NamedBody852_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 13

def NamedBody852_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_393 : StackLang.HolProg 64 :=
.seq NamedBody852_391 NamedBody852_392

def NamedBody852_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_395 : StackLang.HolProg 64 :=
.seq NamedBody852_393 NamedBody852_394

def NamedBody852_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_397 : StackLang.HolProg 64 :=
.seq NamedBody852_395 NamedBody852_396

def NamedBody852_398 : StackLang.HolProg 64 :=
.seq NamedBody852_390 NamedBody852_397

def NamedBody852_399 : StackLang.HolProg 64 :=
.seq NamedBody852_389 NamedBody852_398

def NamedBody852_400 : StackLang.HolProg 64 :=
.seq NamedBody852_388 NamedBody852_399

def NamedBody852_401 : StackLang.HolProg 64 :=
.seq NamedBody852_387 NamedBody852_400

def NamedBody852_402 : StackLang.HolProg 64 :=
.seq NamedBody852_386 NamedBody852_401

def NamedBody852_403 : StackLang.HolProg 64 :=
.seq NamedBody852_385 NamedBody852_402

def NamedBody852_404 : StackLang.HolProg 64 :=
.seq NamedBody852_384 NamedBody852_403

def NamedBody852_405 : StackLang.HolProg 64 :=
.seq NamedBody852_383 NamedBody852_404

def NamedBody852_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_413 : StackLang.HolProg 64 :=
.seq NamedBody852_411 NamedBody852_412

def NamedBody852_414 : StackLang.HolProg 64 :=
.seq NamedBody852_410 NamedBody852_413

def NamedBody852_415 : StackLang.HolProg 64 :=
.seq NamedBody852_409 NamedBody852_414

def NamedBody852_416 : StackLang.HolProg 64 :=
.seq NamedBody852_408 NamedBody852_415

def NamedBody852_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_418 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_419 : StackLang.HolProg 64 :=
.seq NamedBody852_417 NamedBody852_418

def NamedBody852_420 : StackLang.HolProg 64 :=
.call (some (NamedBody852_416, 1, 852, 12)) (Sum.inl 851) (some (NamedBody852_419, 852, 13))

def NamedBody852_421 : StackLang.HolProg 64 :=
.seq NamedBody852_407 NamedBody852_420

def NamedBody852_422 : StackLang.HolProg 64 :=
.seq NamedBody852_406 NamedBody852_421

def NamedBody852_423 : StackLang.HolProg 64 :=
.seq NamedBody852_405 NamedBody852_422

def NamedBody852_424 : StackLang.HolProg 64 :=
.seq NamedBody852_376 NamedBody852_423

def NamedBody852_425 : StackLang.HolProg 64 :=
.seq NamedBody852_373 NamedBody852_424

def NamedBody852_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 24#64)

def NamedBody852_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4316#64)

def NamedBody852_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_432 : StackLang.HolProg 64 :=
.seq NamedBody852_430 NamedBody852_431

def NamedBody852_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_436 : StackLang.HolProg 64 :=
.seq NamedBody852_434 NamedBody852_435

def NamedBody852_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_438 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_436 NamedBody852_437

def NamedBody852_439 : StackLang.HolProg 64 :=
.seq NamedBody852_433 NamedBody852_438

def NamedBody852_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 15

def NamedBody852_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_449 : StackLang.HolProg 64 :=
.seq NamedBody852_447 NamedBody852_448

def NamedBody852_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_451 : StackLang.HolProg 64 :=
.seq NamedBody852_449 NamedBody852_450

def NamedBody852_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_453 : StackLang.HolProg 64 :=
.seq NamedBody852_451 NamedBody852_452

def NamedBody852_454 : StackLang.HolProg 64 :=
.seq NamedBody852_446 NamedBody852_453

def NamedBody852_455 : StackLang.HolProg 64 :=
.seq NamedBody852_445 NamedBody852_454

def NamedBody852_456 : StackLang.HolProg 64 :=
.seq NamedBody852_444 NamedBody852_455

def NamedBody852_457 : StackLang.HolProg 64 :=
.seq NamedBody852_443 NamedBody852_456

def NamedBody852_458 : StackLang.HolProg 64 :=
.seq NamedBody852_442 NamedBody852_457

def NamedBody852_459 : StackLang.HolProg 64 :=
.seq NamedBody852_441 NamedBody852_458

def NamedBody852_460 : StackLang.HolProg 64 :=
.seq NamedBody852_440 NamedBody852_459

def NamedBody852_461 : StackLang.HolProg 64 :=
.seq NamedBody852_439 NamedBody852_460

def NamedBody852_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody852_469 : StackLang.HolProg 64 :=
.seq NamedBody852_467 NamedBody852_468

def NamedBody852_470 : StackLang.HolProg 64 :=
.seq NamedBody852_466 NamedBody852_469

def NamedBody852_471 : StackLang.HolProg 64 :=
.seq NamedBody852_465 NamedBody852_470

def NamedBody852_472 : StackLang.HolProg 64 :=
.seq NamedBody852_464 NamedBody852_471

def NamedBody852_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_474 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_475 : StackLang.HolProg 64 :=
.seq NamedBody852_473 NamedBody852_474

def NamedBody852_476 : StackLang.HolProg 64 :=
.call (some (NamedBody852_472, 1, 852, 14)) (Sum.inl 68) (some (NamedBody852_475, 852, 15))

def NamedBody852_477 : StackLang.HolProg 64 :=
.seq NamedBody852_463 NamedBody852_476

def NamedBody852_478 : StackLang.HolProg 64 :=
.seq NamedBody852_462 NamedBody852_477

def NamedBody852_479 : StackLang.HolProg 64 :=
.seq NamedBody852_461 NamedBody852_478

def NamedBody852_480 : StackLang.HolProg 64 :=
.seq NamedBody852_432 NamedBody852_479

def NamedBody852_481 : StackLang.HolProg 64 :=
.seq NamedBody852_429 NamedBody852_480

def NamedBody852_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551144#64)))

def NamedBody852_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody852_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551144#64))

def NamedBody852_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 3700577164601600309#64)

def NamedBody852_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 2878298490047003138#64)

def NamedBody852_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 63752#64)

def NamedBody852_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4317#64)

def NamedBody852_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_498 : StackLang.HolProg 64 :=
.seq NamedBody852_496 NamedBody852_497

def NamedBody852_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_502 : StackLang.HolProg 64 :=
.seq NamedBody852_500 NamedBody852_501

def NamedBody852_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_504 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_502 NamedBody852_503

def NamedBody852_505 : StackLang.HolProg 64 :=
.seq NamedBody852_499 NamedBody852_504

def NamedBody852_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 17

def NamedBody852_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_515 : StackLang.HolProg 64 :=
.seq NamedBody852_513 NamedBody852_514

def NamedBody852_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_517 : StackLang.HolProg 64 :=
.seq NamedBody852_515 NamedBody852_516

def NamedBody852_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_519 : StackLang.HolProg 64 :=
.seq NamedBody852_517 NamedBody852_518

def NamedBody852_520 : StackLang.HolProg 64 :=
.seq NamedBody852_512 NamedBody852_519

def NamedBody852_521 : StackLang.HolProg 64 :=
.seq NamedBody852_511 NamedBody852_520

def NamedBody852_522 : StackLang.HolProg 64 :=
.seq NamedBody852_510 NamedBody852_521

def NamedBody852_523 : StackLang.HolProg 64 :=
.seq NamedBody852_509 NamedBody852_522

def NamedBody852_524 : StackLang.HolProg 64 :=
.seq NamedBody852_508 NamedBody852_523

def NamedBody852_525 : StackLang.HolProg 64 :=
.seq NamedBody852_507 NamedBody852_524

def NamedBody852_526 : StackLang.HolProg 64 :=
.seq NamedBody852_506 NamedBody852_525

def NamedBody852_527 : StackLang.HolProg 64 :=
.seq NamedBody852_505 NamedBody852_526

def NamedBody852_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_535 : StackLang.HolProg 64 :=
.seq NamedBody852_533 NamedBody852_534

def NamedBody852_536 : StackLang.HolProg 64 :=
.seq NamedBody852_532 NamedBody852_535

def NamedBody852_537 : StackLang.HolProg 64 :=
.seq NamedBody852_531 NamedBody852_536

def NamedBody852_538 : StackLang.HolProg 64 :=
.seq NamedBody852_530 NamedBody852_537

def NamedBody852_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_540 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_541 : StackLang.HolProg 64 :=
.seq NamedBody852_539 NamedBody852_540

def NamedBody852_542 : StackLang.HolProg 64 :=
.call (some (NamedBody852_538, 1, 852, 16)) (Sum.inl 851) (some (NamedBody852_541, 852, 17))

def NamedBody852_543 : StackLang.HolProg 64 :=
.seq NamedBody852_529 NamedBody852_542

def NamedBody852_544 : StackLang.HolProg 64 :=
.seq NamedBody852_528 NamedBody852_543

def NamedBody852_545 : StackLang.HolProg 64 :=
.seq NamedBody852_527 NamedBody852_544

def NamedBody852_546 : StackLang.HolProg 64 :=
.seq NamedBody852_498 NamedBody852_545

def NamedBody852_547 : StackLang.HolProg 64 :=
.seq NamedBody852_495 NamedBody852_546

def NamedBody852_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 24#64)

def NamedBody852_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4318#64)

def NamedBody852_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_554 : StackLang.HolProg 64 :=
.seq NamedBody852_552 NamedBody852_553

def NamedBody852_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_558 : StackLang.HolProg 64 :=
.seq NamedBody852_556 NamedBody852_557

def NamedBody852_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_560 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_558 NamedBody852_559

def NamedBody852_561 : StackLang.HolProg 64 :=
.seq NamedBody852_555 NamedBody852_560

def NamedBody852_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 19

def NamedBody852_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_571 : StackLang.HolProg 64 :=
.seq NamedBody852_569 NamedBody852_570

def NamedBody852_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_573 : StackLang.HolProg 64 :=
.seq NamedBody852_571 NamedBody852_572

def NamedBody852_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_575 : StackLang.HolProg 64 :=
.seq NamedBody852_573 NamedBody852_574

def NamedBody852_576 : StackLang.HolProg 64 :=
.seq NamedBody852_568 NamedBody852_575

def NamedBody852_577 : StackLang.HolProg 64 :=
.seq NamedBody852_567 NamedBody852_576

def NamedBody852_578 : StackLang.HolProg 64 :=
.seq NamedBody852_566 NamedBody852_577

def NamedBody852_579 : StackLang.HolProg 64 :=
.seq NamedBody852_565 NamedBody852_578

def NamedBody852_580 : StackLang.HolProg 64 :=
.seq NamedBody852_564 NamedBody852_579

def NamedBody852_581 : StackLang.HolProg 64 :=
.seq NamedBody852_563 NamedBody852_580

def NamedBody852_582 : StackLang.HolProg 64 :=
.seq NamedBody852_562 NamedBody852_581

def NamedBody852_583 : StackLang.HolProg 64 :=
.seq NamedBody852_561 NamedBody852_582

def NamedBody852_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody852_591 : StackLang.HolProg 64 :=
.seq NamedBody852_589 NamedBody852_590

def NamedBody852_592 : StackLang.HolProg 64 :=
.seq NamedBody852_588 NamedBody852_591

def NamedBody852_593 : StackLang.HolProg 64 :=
.seq NamedBody852_587 NamedBody852_592

def NamedBody852_594 : StackLang.HolProg 64 :=
.seq NamedBody852_586 NamedBody852_593

def NamedBody852_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_596 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_597 : StackLang.HolProg 64 :=
.seq NamedBody852_595 NamedBody852_596

def NamedBody852_598 : StackLang.HolProg 64 :=
.call (some (NamedBody852_594, 1, 852, 18)) (Sum.inl 68) (some (NamedBody852_597, 852, 19))

def NamedBody852_599 : StackLang.HolProg 64 :=
.seq NamedBody852_585 NamedBody852_598

def NamedBody852_600 : StackLang.HolProg 64 :=
.seq NamedBody852_584 NamedBody852_599

def NamedBody852_601 : StackLang.HolProg 64 :=
.seq NamedBody852_583 NamedBody852_600

def NamedBody852_602 : StackLang.HolProg 64 :=
.seq NamedBody852_554 NamedBody852_601

def NamedBody852_603 : StackLang.HolProg 64 :=
.seq NamedBody852_551 NamedBody852_602

def NamedBody852_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551136#64)))

def NamedBody852_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody852_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551136#64))

def NamedBody852_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 15579492241104728066#64)

def NamedBody852_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 17242047345525313946#64)

def NamedBody852_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 2401#64)

def NamedBody852_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4319#64)

def NamedBody852_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_620 : StackLang.HolProg 64 :=
.seq NamedBody852_618 NamedBody852_619

def NamedBody852_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_624 : StackLang.HolProg 64 :=
.seq NamedBody852_622 NamedBody852_623

def NamedBody852_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_626 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_624 NamedBody852_625

def NamedBody852_627 : StackLang.HolProg 64 :=
.seq NamedBody852_621 NamedBody852_626

def NamedBody852_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 21

def NamedBody852_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_637 : StackLang.HolProg 64 :=
.seq NamedBody852_635 NamedBody852_636

def NamedBody852_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_639 : StackLang.HolProg 64 :=
.seq NamedBody852_637 NamedBody852_638

def NamedBody852_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_641 : StackLang.HolProg 64 :=
.seq NamedBody852_639 NamedBody852_640

def NamedBody852_642 : StackLang.HolProg 64 :=
.seq NamedBody852_634 NamedBody852_641

def NamedBody852_643 : StackLang.HolProg 64 :=
.seq NamedBody852_633 NamedBody852_642

def NamedBody852_644 : StackLang.HolProg 64 :=
.seq NamedBody852_632 NamedBody852_643

def NamedBody852_645 : StackLang.HolProg 64 :=
.seq NamedBody852_631 NamedBody852_644

def NamedBody852_646 : StackLang.HolProg 64 :=
.seq NamedBody852_630 NamedBody852_645

def NamedBody852_647 : StackLang.HolProg 64 :=
.seq NamedBody852_629 NamedBody852_646

def NamedBody852_648 : StackLang.HolProg 64 :=
.seq NamedBody852_628 NamedBody852_647

def NamedBody852_649 : StackLang.HolProg 64 :=
.seq NamedBody852_627 NamedBody852_648

def NamedBody852_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_657 : StackLang.HolProg 64 :=
.seq NamedBody852_655 NamedBody852_656

def NamedBody852_658 : StackLang.HolProg 64 :=
.seq NamedBody852_654 NamedBody852_657

def NamedBody852_659 : StackLang.HolProg 64 :=
.seq NamedBody852_653 NamedBody852_658

def NamedBody852_660 : StackLang.HolProg 64 :=
.seq NamedBody852_652 NamedBody852_659

def NamedBody852_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_662 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_663 : StackLang.HolProg 64 :=
.seq NamedBody852_661 NamedBody852_662

def NamedBody852_664 : StackLang.HolProg 64 :=
.call (some (NamedBody852_660, 1, 852, 20)) (Sum.inl 851) (some (NamedBody852_663, 852, 21))

def NamedBody852_665 : StackLang.HolProg 64 :=
.seq NamedBody852_651 NamedBody852_664

def NamedBody852_666 : StackLang.HolProg 64 :=
.seq NamedBody852_650 NamedBody852_665

def NamedBody852_667 : StackLang.HolProg 64 :=
.seq NamedBody852_649 NamedBody852_666

def NamedBody852_668 : StackLang.HolProg 64 :=
.seq NamedBody852_620 NamedBody852_667

def NamedBody852_669 : StackLang.HolProg 64 :=
.seq NamedBody852_617 NamedBody852_668

def NamedBody852_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 24#64)

def NamedBody852_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4320#64)

def NamedBody852_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_676 : StackLang.HolProg 64 :=
.seq NamedBody852_674 NamedBody852_675

def NamedBody852_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_680 : StackLang.HolProg 64 :=
.seq NamedBody852_678 NamedBody852_679

def NamedBody852_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_682 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_680 NamedBody852_681

def NamedBody852_683 : StackLang.HolProg 64 :=
.seq NamedBody852_677 NamedBody852_682

def NamedBody852_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 23

def NamedBody852_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_693 : StackLang.HolProg 64 :=
.seq NamedBody852_691 NamedBody852_692

def NamedBody852_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_695 : StackLang.HolProg 64 :=
.seq NamedBody852_693 NamedBody852_694

def NamedBody852_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_697 : StackLang.HolProg 64 :=
.seq NamedBody852_695 NamedBody852_696

def NamedBody852_698 : StackLang.HolProg 64 :=
.seq NamedBody852_690 NamedBody852_697

def NamedBody852_699 : StackLang.HolProg 64 :=
.seq NamedBody852_689 NamedBody852_698

def NamedBody852_700 : StackLang.HolProg 64 :=
.seq NamedBody852_688 NamedBody852_699

def NamedBody852_701 : StackLang.HolProg 64 :=
.seq NamedBody852_687 NamedBody852_700

def NamedBody852_702 : StackLang.HolProg 64 :=
.seq NamedBody852_686 NamedBody852_701

def NamedBody852_703 : StackLang.HolProg 64 :=
.seq NamedBody852_685 NamedBody852_702

def NamedBody852_704 : StackLang.HolProg 64 :=
.seq NamedBody852_684 NamedBody852_703

def NamedBody852_705 : StackLang.HolProg 64 :=
.seq NamedBody852_683 NamedBody852_704

def NamedBody852_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody852_713 : StackLang.HolProg 64 :=
.seq NamedBody852_711 NamedBody852_712

def NamedBody852_714 : StackLang.HolProg 64 :=
.seq NamedBody852_710 NamedBody852_713

def NamedBody852_715 : StackLang.HolProg 64 :=
.seq NamedBody852_709 NamedBody852_714

def NamedBody852_716 : StackLang.HolProg 64 :=
.seq NamedBody852_708 NamedBody852_715

def NamedBody852_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_718 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_719 : StackLang.HolProg 64 :=
.seq NamedBody852_717 NamedBody852_718

def NamedBody852_720 : StackLang.HolProg 64 :=
.call (some (NamedBody852_716, 1, 852, 22)) (Sum.inl 68) (some (NamedBody852_719, 852, 23))

def NamedBody852_721 : StackLang.HolProg 64 :=
.seq NamedBody852_707 NamedBody852_720

def NamedBody852_722 : StackLang.HolProg 64 :=
.seq NamedBody852_706 NamedBody852_721

def NamedBody852_723 : StackLang.HolProg 64 :=
.seq NamedBody852_705 NamedBody852_722

def NamedBody852_724 : StackLang.HolProg 64 :=
.seq NamedBody852_676 NamedBody852_723

def NamedBody852_725 : StackLang.HolProg 64 :=
.seq NamedBody852_673 NamedBody852_724

def NamedBody852_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551128#64)))

def NamedBody852_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody852_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551128#64))

def NamedBody852_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 10016273463683084881#64)

def NamedBody852_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 14397524800236640159#64)

def NamedBody852_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 48093#64)

def NamedBody852_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4321#64)

def NamedBody852_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_742 : StackLang.HolProg 64 :=
.seq NamedBody852_740 NamedBody852_741

def NamedBody852_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_746 : StackLang.HolProg 64 :=
.seq NamedBody852_744 NamedBody852_745

def NamedBody852_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_748 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_746 NamedBody852_747

def NamedBody852_749 : StackLang.HolProg 64 :=
.seq NamedBody852_743 NamedBody852_748

def NamedBody852_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 25

def NamedBody852_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_759 : StackLang.HolProg 64 :=
.seq NamedBody852_757 NamedBody852_758

def NamedBody852_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_761 : StackLang.HolProg 64 :=
.seq NamedBody852_759 NamedBody852_760

def NamedBody852_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_763 : StackLang.HolProg 64 :=
.seq NamedBody852_761 NamedBody852_762

def NamedBody852_764 : StackLang.HolProg 64 :=
.seq NamedBody852_756 NamedBody852_763

def NamedBody852_765 : StackLang.HolProg 64 :=
.seq NamedBody852_755 NamedBody852_764

def NamedBody852_766 : StackLang.HolProg 64 :=
.seq NamedBody852_754 NamedBody852_765

def NamedBody852_767 : StackLang.HolProg 64 :=
.seq NamedBody852_753 NamedBody852_766

def NamedBody852_768 : StackLang.HolProg 64 :=
.seq NamedBody852_752 NamedBody852_767

def NamedBody852_769 : StackLang.HolProg 64 :=
.seq NamedBody852_751 NamedBody852_768

def NamedBody852_770 : StackLang.HolProg 64 :=
.seq NamedBody852_750 NamedBody852_769

def NamedBody852_771 : StackLang.HolProg 64 :=
.seq NamedBody852_749 NamedBody852_770

def NamedBody852_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_779 : StackLang.HolProg 64 :=
.seq NamedBody852_777 NamedBody852_778

def NamedBody852_780 : StackLang.HolProg 64 :=
.seq NamedBody852_776 NamedBody852_779

def NamedBody852_781 : StackLang.HolProg 64 :=
.seq NamedBody852_775 NamedBody852_780

def NamedBody852_782 : StackLang.HolProg 64 :=
.seq NamedBody852_774 NamedBody852_781

def NamedBody852_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_784 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_785 : StackLang.HolProg 64 :=
.seq NamedBody852_783 NamedBody852_784

def NamedBody852_786 : StackLang.HolProg 64 :=
.call (some (NamedBody852_782, 1, 852, 24)) (Sum.inl 851) (some (NamedBody852_785, 852, 25))

def NamedBody852_787 : StackLang.HolProg 64 :=
.seq NamedBody852_773 NamedBody852_786

def NamedBody852_788 : StackLang.HolProg 64 :=
.seq NamedBody852_772 NamedBody852_787

def NamedBody852_789 : StackLang.HolProg 64 :=
.seq NamedBody852_771 NamedBody852_788

def NamedBody852_790 : StackLang.HolProg 64 :=
.seq NamedBody852_742 NamedBody852_789

def NamedBody852_791 : StackLang.HolProg 64 :=
.seq NamedBody852_739 NamedBody852_790

def NamedBody852_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 24#64)

def NamedBody852_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4322#64)

def NamedBody852_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_798 : StackLang.HolProg 64 :=
.seq NamedBody852_796 NamedBody852_797

def NamedBody852_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_802 : StackLang.HolProg 64 :=
.seq NamedBody852_800 NamedBody852_801

def NamedBody852_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_804 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_802 NamedBody852_803

def NamedBody852_805 : StackLang.HolProg 64 :=
.seq NamedBody852_799 NamedBody852_804

def NamedBody852_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 27

def NamedBody852_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_815 : StackLang.HolProg 64 :=
.seq NamedBody852_813 NamedBody852_814

def NamedBody852_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_817 : StackLang.HolProg 64 :=
.seq NamedBody852_815 NamedBody852_816

def NamedBody852_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_819 : StackLang.HolProg 64 :=
.seq NamedBody852_817 NamedBody852_818

def NamedBody852_820 : StackLang.HolProg 64 :=
.seq NamedBody852_812 NamedBody852_819

def NamedBody852_821 : StackLang.HolProg 64 :=
.seq NamedBody852_811 NamedBody852_820

def NamedBody852_822 : StackLang.HolProg 64 :=
.seq NamedBody852_810 NamedBody852_821

def NamedBody852_823 : StackLang.HolProg 64 :=
.seq NamedBody852_809 NamedBody852_822

def NamedBody852_824 : StackLang.HolProg 64 :=
.seq NamedBody852_808 NamedBody852_823

def NamedBody852_825 : StackLang.HolProg 64 :=
.seq NamedBody852_807 NamedBody852_824

def NamedBody852_826 : StackLang.HolProg 64 :=
.seq NamedBody852_806 NamedBody852_825

def NamedBody852_827 : StackLang.HolProg 64 :=
.seq NamedBody852_805 NamedBody852_826

def NamedBody852_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody852_835 : StackLang.HolProg 64 :=
.seq NamedBody852_833 NamedBody852_834

def NamedBody852_836 : StackLang.HolProg 64 :=
.seq NamedBody852_832 NamedBody852_835

def NamedBody852_837 : StackLang.HolProg 64 :=
.seq NamedBody852_831 NamedBody852_836

def NamedBody852_838 : StackLang.HolProg 64 :=
.seq NamedBody852_830 NamedBody852_837

def NamedBody852_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_840 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_841 : StackLang.HolProg 64 :=
.seq NamedBody852_839 NamedBody852_840

def NamedBody852_842 : StackLang.HolProg 64 :=
.call (some (NamedBody852_838, 1, 852, 26)) (Sum.inl 68) (some (NamedBody852_841, 852, 27))

def NamedBody852_843 : StackLang.HolProg 64 :=
.seq NamedBody852_829 NamedBody852_842

def NamedBody852_844 : StackLang.HolProg 64 :=
.seq NamedBody852_828 NamedBody852_843

def NamedBody852_845 : StackLang.HolProg 64 :=
.seq NamedBody852_827 NamedBody852_844

def NamedBody852_846 : StackLang.HolProg 64 :=
.seq NamedBody852_798 NamedBody852_845

def NamedBody852_847 : StackLang.HolProg 64 :=
.seq NamedBody852_795 NamedBody852_846

def NamedBody852_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551120#64)))

def NamedBody852_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody852_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551120#64))

def NamedBody852_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 760111669195932290#64)

def NamedBody852_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 7603452151126424148#64)

def NamedBody852_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 49140#64)

def NamedBody852_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4323#64)

def NamedBody852_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_864 : StackLang.HolProg 64 :=
.seq NamedBody852_862 NamedBody852_863

def NamedBody852_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_868 : StackLang.HolProg 64 :=
.seq NamedBody852_866 NamedBody852_867

def NamedBody852_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_870 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_868 NamedBody852_869

def NamedBody852_871 : StackLang.HolProg 64 :=
.seq NamedBody852_865 NamedBody852_870

def NamedBody852_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 29

def NamedBody852_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_881 : StackLang.HolProg 64 :=
.seq NamedBody852_879 NamedBody852_880

def NamedBody852_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_883 : StackLang.HolProg 64 :=
.seq NamedBody852_881 NamedBody852_882

def NamedBody852_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_885 : StackLang.HolProg 64 :=
.seq NamedBody852_883 NamedBody852_884

def NamedBody852_886 : StackLang.HolProg 64 :=
.seq NamedBody852_878 NamedBody852_885

def NamedBody852_887 : StackLang.HolProg 64 :=
.seq NamedBody852_877 NamedBody852_886

def NamedBody852_888 : StackLang.HolProg 64 :=
.seq NamedBody852_876 NamedBody852_887

def NamedBody852_889 : StackLang.HolProg 64 :=
.seq NamedBody852_875 NamedBody852_888

def NamedBody852_890 : StackLang.HolProg 64 :=
.seq NamedBody852_874 NamedBody852_889

def NamedBody852_891 : StackLang.HolProg 64 :=
.seq NamedBody852_873 NamedBody852_890

def NamedBody852_892 : StackLang.HolProg 64 :=
.seq NamedBody852_872 NamedBody852_891

def NamedBody852_893 : StackLang.HolProg 64 :=
.seq NamedBody852_871 NamedBody852_892

def NamedBody852_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_901 : StackLang.HolProg 64 :=
.seq NamedBody852_899 NamedBody852_900

def NamedBody852_902 : StackLang.HolProg 64 :=
.seq NamedBody852_898 NamedBody852_901

def NamedBody852_903 : StackLang.HolProg 64 :=
.seq NamedBody852_897 NamedBody852_902

def NamedBody852_904 : StackLang.HolProg 64 :=
.seq NamedBody852_896 NamedBody852_903

def NamedBody852_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_906 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_907 : StackLang.HolProg 64 :=
.seq NamedBody852_905 NamedBody852_906

def NamedBody852_908 : StackLang.HolProg 64 :=
.call (some (NamedBody852_904, 1, 852, 28)) (Sum.inl 851) (some (NamedBody852_907, 852, 29))

def NamedBody852_909 : StackLang.HolProg 64 :=
.seq NamedBody852_895 NamedBody852_908

def NamedBody852_910 : StackLang.HolProg 64 :=
.seq NamedBody852_894 NamedBody852_909

def NamedBody852_911 : StackLang.HolProg 64 :=
.seq NamedBody852_893 NamedBody852_910

def NamedBody852_912 : StackLang.HolProg 64 :=
.seq NamedBody852_864 NamedBody852_911

def NamedBody852_913 : StackLang.HolProg 64 :=
.seq NamedBody852_861 NamedBody852_912

def NamedBody852_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 24#64)

def NamedBody852_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4324#64)

def NamedBody852_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_920 : StackLang.HolProg 64 :=
.seq NamedBody852_918 NamedBody852_919

def NamedBody852_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_924 : StackLang.HolProg 64 :=
.seq NamedBody852_922 NamedBody852_923

def NamedBody852_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_926 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_924 NamedBody852_925

def NamedBody852_927 : StackLang.HolProg 64 :=
.seq NamedBody852_921 NamedBody852_926

def NamedBody852_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 31

def NamedBody852_931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_937 : StackLang.HolProg 64 :=
.seq NamedBody852_935 NamedBody852_936

def NamedBody852_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_939 : StackLang.HolProg 64 :=
.seq NamedBody852_937 NamedBody852_938

def NamedBody852_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_941 : StackLang.HolProg 64 :=
.seq NamedBody852_939 NamedBody852_940

def NamedBody852_942 : StackLang.HolProg 64 :=
.seq NamedBody852_934 NamedBody852_941

def NamedBody852_943 : StackLang.HolProg 64 :=
.seq NamedBody852_933 NamedBody852_942

def NamedBody852_944 : StackLang.HolProg 64 :=
.seq NamedBody852_932 NamedBody852_943

def NamedBody852_945 : StackLang.HolProg 64 :=
.seq NamedBody852_931 NamedBody852_944

def NamedBody852_946 : StackLang.HolProg 64 :=
.seq NamedBody852_930 NamedBody852_945

def NamedBody852_947 : StackLang.HolProg 64 :=
.seq NamedBody852_929 NamedBody852_946

def NamedBody852_948 : StackLang.HolProg 64 :=
.seq NamedBody852_928 NamedBody852_947

def NamedBody852_949 : StackLang.HolProg 64 :=
.seq NamedBody852_927 NamedBody852_948

def NamedBody852_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody852_957 : StackLang.HolProg 64 :=
.seq NamedBody852_955 NamedBody852_956

def NamedBody852_958 : StackLang.HolProg 64 :=
.seq NamedBody852_954 NamedBody852_957

def NamedBody852_959 : StackLang.HolProg 64 :=
.seq NamedBody852_953 NamedBody852_958

def NamedBody852_960 : StackLang.HolProg 64 :=
.seq NamedBody852_952 NamedBody852_959

def NamedBody852_961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_962 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_963 : StackLang.HolProg 64 :=
.seq NamedBody852_961 NamedBody852_962

def NamedBody852_964 : StackLang.HolProg 64 :=
.call (some (NamedBody852_960, 1, 852, 30)) (Sum.inl 68) (some (NamedBody852_963, 852, 31))

def NamedBody852_965 : StackLang.HolProg 64 :=
.seq NamedBody852_951 NamedBody852_964

def NamedBody852_966 : StackLang.HolProg 64 :=
.seq NamedBody852_950 NamedBody852_965

def NamedBody852_967 : StackLang.HolProg 64 :=
.seq NamedBody852_949 NamedBody852_966

def NamedBody852_968 : StackLang.HolProg 64 :=
.seq NamedBody852_920 NamedBody852_967

def NamedBody852_969 : StackLang.HolProg 64 :=
.seq NamedBody852_917 NamedBody852_968

def NamedBody852_970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551112#64)))

def NamedBody852_975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody852_977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551112#64))

def NamedBody852_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 4307224735379260034#64)

def NamedBody852_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 8669529151676140297#64)

def NamedBody852_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 25814#64)

def NamedBody852_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4325#64)

def NamedBody852_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_986 : StackLang.HolProg 64 :=
.seq NamedBody852_984 NamedBody852_985

def NamedBody852_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_990 : StackLang.HolProg 64 :=
.seq NamedBody852_988 NamedBody852_989

def NamedBody852_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_992 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_990 NamedBody852_991

def NamedBody852_993 : StackLang.HolProg 64 :=
.seq NamedBody852_987 NamedBody852_992

def NamedBody852_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 33

def NamedBody852_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_1003 : StackLang.HolProg 64 :=
.seq NamedBody852_1001 NamedBody852_1002

def NamedBody852_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_1005 : StackLang.HolProg 64 :=
.seq NamedBody852_1003 NamedBody852_1004

def NamedBody852_1006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1007 : StackLang.HolProg 64 :=
.seq NamedBody852_1005 NamedBody852_1006

def NamedBody852_1008 : StackLang.HolProg 64 :=
.seq NamedBody852_1000 NamedBody852_1007

def NamedBody852_1009 : StackLang.HolProg 64 :=
.seq NamedBody852_999 NamedBody852_1008

def NamedBody852_1010 : StackLang.HolProg 64 :=
.seq NamedBody852_998 NamedBody852_1009

def NamedBody852_1011 : StackLang.HolProg 64 :=
.seq NamedBody852_997 NamedBody852_1010

def NamedBody852_1012 : StackLang.HolProg 64 :=
.seq NamedBody852_996 NamedBody852_1011

def NamedBody852_1013 : StackLang.HolProg 64 :=
.seq NamedBody852_995 NamedBody852_1012

def NamedBody852_1014 : StackLang.HolProg 64 :=
.seq NamedBody852_994 NamedBody852_1013

def NamedBody852_1015 : StackLang.HolProg 64 :=
.seq NamedBody852_993 NamedBody852_1014

def NamedBody852_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1023 : StackLang.HolProg 64 :=
.seq NamedBody852_1021 NamedBody852_1022

def NamedBody852_1024 : StackLang.HolProg 64 :=
.seq NamedBody852_1020 NamedBody852_1023

def NamedBody852_1025 : StackLang.HolProg 64 :=
.seq NamedBody852_1019 NamedBody852_1024

def NamedBody852_1026 : StackLang.HolProg 64 :=
.seq NamedBody852_1018 NamedBody852_1025

def NamedBody852_1027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1028 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_1029 : StackLang.HolProg 64 :=
.seq NamedBody852_1027 NamedBody852_1028

def NamedBody852_1030 : StackLang.HolProg 64 :=
.call (some (NamedBody852_1026, 1, 852, 32)) (Sum.inl 851) (some (NamedBody852_1029, 852, 33))

def NamedBody852_1031 : StackLang.HolProg 64 :=
.seq NamedBody852_1017 NamedBody852_1030

def NamedBody852_1032 : StackLang.HolProg 64 :=
.seq NamedBody852_1016 NamedBody852_1031

def NamedBody852_1033 : StackLang.HolProg 64 :=
.seq NamedBody852_1015 NamedBody852_1032

def NamedBody852_1034 : StackLang.HolProg 64 :=
.seq NamedBody852_986 NamedBody852_1033

def NamedBody852_1035 : StackLang.HolProg 64 :=
.seq NamedBody852_983 NamedBody852_1034

def NamedBody852_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 24#64)

def NamedBody852_1038 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4326#64)

def NamedBody852_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_1042 : StackLang.HolProg 64 :=
.seq NamedBody852_1040 NamedBody852_1041

def NamedBody852_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_1045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_1046 : StackLang.HolProg 64 :=
.seq NamedBody852_1044 NamedBody852_1045

def NamedBody852_1047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1048 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_1046 NamedBody852_1047

def NamedBody852_1049 : StackLang.HolProg 64 :=
.seq NamedBody852_1043 NamedBody852_1048

def NamedBody852_1050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 35

def NamedBody852_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_1059 : StackLang.HolProg 64 :=
.seq NamedBody852_1057 NamedBody852_1058

def NamedBody852_1060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_1061 : StackLang.HolProg 64 :=
.seq NamedBody852_1059 NamedBody852_1060

def NamedBody852_1062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1063 : StackLang.HolProg 64 :=
.seq NamedBody852_1061 NamedBody852_1062

def NamedBody852_1064 : StackLang.HolProg 64 :=
.seq NamedBody852_1056 NamedBody852_1063

def NamedBody852_1065 : StackLang.HolProg 64 :=
.seq NamedBody852_1055 NamedBody852_1064

def NamedBody852_1066 : StackLang.HolProg 64 :=
.seq NamedBody852_1054 NamedBody852_1065

def NamedBody852_1067 : StackLang.HolProg 64 :=
.seq NamedBody852_1053 NamedBody852_1066

def NamedBody852_1068 : StackLang.HolProg 64 :=
.seq NamedBody852_1052 NamedBody852_1067

def NamedBody852_1069 : StackLang.HolProg 64 :=
.seq NamedBody852_1051 NamedBody852_1068

def NamedBody852_1070 : StackLang.HolProg 64 :=
.seq NamedBody852_1050 NamedBody852_1069

def NamedBody852_1071 : StackLang.HolProg 64 :=
.seq NamedBody852_1049 NamedBody852_1070

def NamedBody852_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody852_1079 : StackLang.HolProg 64 :=
.seq NamedBody852_1077 NamedBody852_1078

def NamedBody852_1080 : StackLang.HolProg 64 :=
.seq NamedBody852_1076 NamedBody852_1079

def NamedBody852_1081 : StackLang.HolProg 64 :=
.seq NamedBody852_1075 NamedBody852_1080

def NamedBody852_1082 : StackLang.HolProg 64 :=
.seq NamedBody852_1074 NamedBody852_1081

def NamedBody852_1083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1084 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_1085 : StackLang.HolProg 64 :=
.seq NamedBody852_1083 NamedBody852_1084

def NamedBody852_1086 : StackLang.HolProg 64 :=
.call (some (NamedBody852_1082, 1, 852, 34)) (Sum.inl 68) (some (NamedBody852_1085, 852, 35))

def NamedBody852_1087 : StackLang.HolProg 64 :=
.seq NamedBody852_1073 NamedBody852_1086

def NamedBody852_1088 : StackLang.HolProg 64 :=
.seq NamedBody852_1072 NamedBody852_1087

def NamedBody852_1089 : StackLang.HolProg 64 :=
.seq NamedBody852_1071 NamedBody852_1088

def NamedBody852_1090 : StackLang.HolProg 64 :=
.seq NamedBody852_1042 NamedBody852_1089

def NamedBody852_1091 : StackLang.HolProg 64 :=
.seq NamedBody852_1039 NamedBody852_1090

def NamedBody852_1092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_1094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_1095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551104#64)))

def NamedBody852_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody852_1099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551104#64))

def NamedBody852_1101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 11294470620239562234#64)

def NamedBody852_1102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 2421447037043915651#64)

def NamedBody852_1103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody852_1104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4327#64)

def NamedBody852_1107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_1108 : StackLang.HolProg 64 :=
.seq NamedBody852_1106 NamedBody852_1107

def NamedBody852_1109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_1111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_1112 : StackLang.HolProg 64 :=
.seq NamedBody852_1110 NamedBody852_1111

def NamedBody852_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_1112 NamedBody852_1113

def NamedBody852_1115 : StackLang.HolProg 64 :=
.seq NamedBody852_1109 NamedBody852_1114

def NamedBody852_1116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_1118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 37

def NamedBody852_1119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_1120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_1124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_1125 : StackLang.HolProg 64 :=
.seq NamedBody852_1123 NamedBody852_1124

def NamedBody852_1126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_1127 : StackLang.HolProg 64 :=
.seq NamedBody852_1125 NamedBody852_1126

def NamedBody852_1128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1129 : StackLang.HolProg 64 :=
.seq NamedBody852_1127 NamedBody852_1128

def NamedBody852_1130 : StackLang.HolProg 64 :=
.seq NamedBody852_1122 NamedBody852_1129

def NamedBody852_1131 : StackLang.HolProg 64 :=
.seq NamedBody852_1121 NamedBody852_1130

def NamedBody852_1132 : StackLang.HolProg 64 :=
.seq NamedBody852_1120 NamedBody852_1131

def NamedBody852_1133 : StackLang.HolProg 64 :=
.seq NamedBody852_1119 NamedBody852_1132

def NamedBody852_1134 : StackLang.HolProg 64 :=
.seq NamedBody852_1118 NamedBody852_1133

def NamedBody852_1135 : StackLang.HolProg 64 :=
.seq NamedBody852_1117 NamedBody852_1134

def NamedBody852_1136 : StackLang.HolProg 64 :=
.seq NamedBody852_1116 NamedBody852_1135

def NamedBody852_1137 : StackLang.HolProg 64 :=
.seq NamedBody852_1115 NamedBody852_1136

def NamedBody852_1138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1145 : StackLang.HolProg 64 :=
.seq NamedBody852_1143 NamedBody852_1144

def NamedBody852_1146 : StackLang.HolProg 64 :=
.seq NamedBody852_1142 NamedBody852_1145

def NamedBody852_1147 : StackLang.HolProg 64 :=
.seq NamedBody852_1141 NamedBody852_1146

def NamedBody852_1148 : StackLang.HolProg 64 :=
.seq NamedBody852_1140 NamedBody852_1147

def NamedBody852_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1150 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_1151 : StackLang.HolProg 64 :=
.seq NamedBody852_1149 NamedBody852_1150

def NamedBody852_1152 : StackLang.HolProg 64 :=
.call (some (NamedBody852_1148, 1, 852, 36)) (Sum.inl 851) (some (NamedBody852_1151, 852, 37))

def NamedBody852_1153 : StackLang.HolProg 64 :=
.seq NamedBody852_1139 NamedBody852_1152

def NamedBody852_1154 : StackLang.HolProg 64 :=
.seq NamedBody852_1138 NamedBody852_1153

def NamedBody852_1155 : StackLang.HolProg 64 :=
.seq NamedBody852_1137 NamedBody852_1154

def NamedBody852_1156 : StackLang.HolProg 64 :=
.seq NamedBody852_1108 NamedBody852_1155

def NamedBody852_1157 : StackLang.HolProg 64 :=
.seq NamedBody852_1105 NamedBody852_1156

def NamedBody852_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody852_1160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4328#64)

def NamedBody852_1163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_1164 : StackLang.HolProg 64 :=
.seq NamedBody852_1162 NamedBody852_1163

def NamedBody852_1165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_1167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_1168 : StackLang.HolProg 64 :=
.seq NamedBody852_1166 NamedBody852_1167

def NamedBody852_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_1168 NamedBody852_1169

def NamedBody852_1171 : StackLang.HolProg 64 :=
.seq NamedBody852_1165 NamedBody852_1170

def NamedBody852_1172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_1173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 39

def NamedBody852_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_1176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_1181 : StackLang.HolProg 64 :=
.seq NamedBody852_1179 NamedBody852_1180

def NamedBody852_1182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_1183 : StackLang.HolProg 64 :=
.seq NamedBody852_1181 NamedBody852_1182

def NamedBody852_1184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1185 : StackLang.HolProg 64 :=
.seq NamedBody852_1183 NamedBody852_1184

def NamedBody852_1186 : StackLang.HolProg 64 :=
.seq NamedBody852_1178 NamedBody852_1185

def NamedBody852_1187 : StackLang.HolProg 64 :=
.seq NamedBody852_1177 NamedBody852_1186

def NamedBody852_1188 : StackLang.HolProg 64 :=
.seq NamedBody852_1176 NamedBody852_1187

def NamedBody852_1189 : StackLang.HolProg 64 :=
.seq NamedBody852_1175 NamedBody852_1188

def NamedBody852_1190 : StackLang.HolProg 64 :=
.seq NamedBody852_1174 NamedBody852_1189

def NamedBody852_1191 : StackLang.HolProg 64 :=
.seq NamedBody852_1173 NamedBody852_1190

def NamedBody852_1192 : StackLang.HolProg 64 :=
.seq NamedBody852_1172 NamedBody852_1191

def NamedBody852_1193 : StackLang.HolProg 64 :=
.seq NamedBody852_1171 NamedBody852_1192

def NamedBody852_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody852_1201 : StackLang.HolProg 64 :=
.seq NamedBody852_1199 NamedBody852_1200

def NamedBody852_1202 : StackLang.HolProg 64 :=
.seq NamedBody852_1198 NamedBody852_1201

def NamedBody852_1203 : StackLang.HolProg 64 :=
.seq NamedBody852_1197 NamedBody852_1202

def NamedBody852_1204 : StackLang.HolProg 64 :=
.seq NamedBody852_1196 NamedBody852_1203

def NamedBody852_1205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_1207 : StackLang.HolProg 64 :=
.seq NamedBody852_1205 NamedBody852_1206

def NamedBody852_1208 : StackLang.HolProg 64 :=
.call (some (NamedBody852_1204, 1, 852, 38)) (Sum.inl 68) (some (NamedBody852_1207, 852, 39))

def NamedBody852_1209 : StackLang.HolProg 64 :=
.seq NamedBody852_1195 NamedBody852_1208

def NamedBody852_1210 : StackLang.HolProg 64 :=
.seq NamedBody852_1194 NamedBody852_1209

def NamedBody852_1211 : StackLang.HolProg 64 :=
.seq NamedBody852_1193 NamedBody852_1210

def NamedBody852_1212 : StackLang.HolProg 64 :=
.seq NamedBody852_1164 NamedBody852_1211

def NamedBody852_1213 : StackLang.HolProg 64 :=
.seq NamedBody852_1161 NamedBody852_1212

def NamedBody852_1214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_1215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_1216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_1217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_1218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551096#64)))

def NamedBody852_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody852_1221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551096#64))

def NamedBody852_1223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 7249595157780304706#64)

def NamedBody852_1224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4329#64)

def NamedBody852_1227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_1228 : StackLang.HolProg 64 :=
.seq NamedBody852_1226 NamedBody852_1227

def NamedBody852_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_1231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_1232 : StackLang.HolProg 64 :=
.seq NamedBody852_1230 NamedBody852_1231

def NamedBody852_1233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1234 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_1232 NamedBody852_1233

def NamedBody852_1235 : StackLang.HolProg 64 :=
.seq NamedBody852_1229 NamedBody852_1234

def NamedBody852_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_1237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_1238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 41

def NamedBody852_1239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_1240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_1244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_1245 : StackLang.HolProg 64 :=
.seq NamedBody852_1243 NamedBody852_1244

def NamedBody852_1246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_1247 : StackLang.HolProg 64 :=
.seq NamedBody852_1245 NamedBody852_1246

def NamedBody852_1248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1249 : StackLang.HolProg 64 :=
.seq NamedBody852_1247 NamedBody852_1248

def NamedBody852_1250 : StackLang.HolProg 64 :=
.seq NamedBody852_1242 NamedBody852_1249

def NamedBody852_1251 : StackLang.HolProg 64 :=
.seq NamedBody852_1241 NamedBody852_1250

def NamedBody852_1252 : StackLang.HolProg 64 :=
.seq NamedBody852_1240 NamedBody852_1251

def NamedBody852_1253 : StackLang.HolProg 64 :=
.seq NamedBody852_1239 NamedBody852_1252

def NamedBody852_1254 : StackLang.HolProg 64 :=
.seq NamedBody852_1238 NamedBody852_1253

def NamedBody852_1255 : StackLang.HolProg 64 :=
.seq NamedBody852_1237 NamedBody852_1254

def NamedBody852_1256 : StackLang.HolProg 64 :=
.seq NamedBody852_1236 NamedBody852_1255

def NamedBody852_1257 : StackLang.HolProg 64 :=
.seq NamedBody852_1235 NamedBody852_1256

def NamedBody852_1258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1265 : StackLang.HolProg 64 :=
.seq NamedBody852_1263 NamedBody852_1264

def NamedBody852_1266 : StackLang.HolProg 64 :=
.seq NamedBody852_1262 NamedBody852_1265

def NamedBody852_1267 : StackLang.HolProg 64 :=
.seq NamedBody852_1261 NamedBody852_1266

def NamedBody852_1268 : StackLang.HolProg 64 :=
.seq NamedBody852_1260 NamedBody852_1267

def NamedBody852_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1270 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_1271 : StackLang.HolProg 64 :=
.seq NamedBody852_1269 NamedBody852_1270

def NamedBody852_1272 : StackLang.HolProg 64 :=
.call (some (NamedBody852_1268, 1, 852, 40)) (Sum.inl 89) (some (NamedBody852_1271, 852, 41))

def NamedBody852_1273 : StackLang.HolProg 64 :=
.seq NamedBody852_1259 NamedBody852_1272

def NamedBody852_1274 : StackLang.HolProg 64 :=
.seq NamedBody852_1258 NamedBody852_1273

def NamedBody852_1275 : StackLang.HolProg 64 :=
.seq NamedBody852_1257 NamedBody852_1274

def NamedBody852_1276 : StackLang.HolProg 64 :=
.seq NamedBody852_1228 NamedBody852_1275

def NamedBody852_1277 : StackLang.HolProg 64 :=
.seq NamedBody852_1225 NamedBody852_1276

def NamedBody852_1278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_1279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_1280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_1281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_1282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551096#64))

def NamedBody852_1283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody852_1284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 12676030261858484297#64)

def NamedBody852_1285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4330#64)

def NamedBody852_1288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_1289 : StackLang.HolProg 64 :=
.seq NamedBody852_1287 NamedBody852_1288

def NamedBody852_1290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_1293 : StackLang.HolProg 64 :=
.seq NamedBody852_1291 NamedBody852_1292

def NamedBody852_1294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1295 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_1293 NamedBody852_1294

def NamedBody852_1296 : StackLang.HolProg 64 :=
.seq NamedBody852_1290 NamedBody852_1295

def NamedBody852_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_1299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 43

def NamedBody852_1300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_1305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_1306 : StackLang.HolProg 64 :=
.seq NamedBody852_1304 NamedBody852_1305

def NamedBody852_1307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_1308 : StackLang.HolProg 64 :=
.seq NamedBody852_1306 NamedBody852_1307

def NamedBody852_1309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1310 : StackLang.HolProg 64 :=
.seq NamedBody852_1308 NamedBody852_1309

def NamedBody852_1311 : StackLang.HolProg 64 :=
.seq NamedBody852_1303 NamedBody852_1310

def NamedBody852_1312 : StackLang.HolProg 64 :=
.seq NamedBody852_1302 NamedBody852_1311

def NamedBody852_1313 : StackLang.HolProg 64 :=
.seq NamedBody852_1301 NamedBody852_1312

def NamedBody852_1314 : StackLang.HolProg 64 :=
.seq NamedBody852_1300 NamedBody852_1313

def NamedBody852_1315 : StackLang.HolProg 64 :=
.seq NamedBody852_1299 NamedBody852_1314

def NamedBody852_1316 : StackLang.HolProg 64 :=
.seq NamedBody852_1298 NamedBody852_1315

def NamedBody852_1317 : StackLang.HolProg 64 :=
.seq NamedBody852_1297 NamedBody852_1316

def NamedBody852_1318 : StackLang.HolProg 64 :=
.seq NamedBody852_1296 NamedBody852_1317

def NamedBody852_1319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1326 : StackLang.HolProg 64 :=
.seq NamedBody852_1324 NamedBody852_1325

def NamedBody852_1327 : StackLang.HolProg 64 :=
.seq NamedBody852_1323 NamedBody852_1326

def NamedBody852_1328 : StackLang.HolProg 64 :=
.seq NamedBody852_1322 NamedBody852_1327

def NamedBody852_1329 : StackLang.HolProg 64 :=
.seq NamedBody852_1321 NamedBody852_1328

def NamedBody852_1330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1331 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_1332 : StackLang.HolProg 64 :=
.seq NamedBody852_1330 NamedBody852_1331

def NamedBody852_1333 : StackLang.HolProg 64 :=
.call (some (NamedBody852_1329, 1, 852, 42)) (Sum.inl 89) (some (NamedBody852_1332, 852, 43))

def NamedBody852_1334 : StackLang.HolProg 64 :=
.seq NamedBody852_1320 NamedBody852_1333

def NamedBody852_1335 : StackLang.HolProg 64 :=
.seq NamedBody852_1319 NamedBody852_1334

def NamedBody852_1336 : StackLang.HolProg 64 :=
.seq NamedBody852_1318 NamedBody852_1335

def NamedBody852_1337 : StackLang.HolProg 64 :=
.seq NamedBody852_1289 NamedBody852_1336

def NamedBody852_1338 : StackLang.HolProg 64 :=
.seq NamedBody852_1286 NamedBody852_1337

def NamedBody852_1339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_1340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_1341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_1342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_1343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551096#64))

def NamedBody852_1344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody852_1345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 16708898399860066458#64)

def NamedBody852_1346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4331#64)

def NamedBody852_1349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_1350 : StackLang.HolProg 64 :=
.seq NamedBody852_1348 NamedBody852_1349

def NamedBody852_1351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_1353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_1354 : StackLang.HolProg 64 :=
.seq NamedBody852_1352 NamedBody852_1353

def NamedBody852_1355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1356 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_1354 NamedBody852_1355

def NamedBody852_1357 : StackLang.HolProg 64 :=
.seq NamedBody852_1351 NamedBody852_1356

def NamedBody852_1358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_1359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_1360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 45

def NamedBody852_1361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_1362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_1366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_1367 : StackLang.HolProg 64 :=
.seq NamedBody852_1365 NamedBody852_1366

def NamedBody852_1368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_1369 : StackLang.HolProg 64 :=
.seq NamedBody852_1367 NamedBody852_1368

def NamedBody852_1370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1371 : StackLang.HolProg 64 :=
.seq NamedBody852_1369 NamedBody852_1370

def NamedBody852_1372 : StackLang.HolProg 64 :=
.seq NamedBody852_1364 NamedBody852_1371

def NamedBody852_1373 : StackLang.HolProg 64 :=
.seq NamedBody852_1363 NamedBody852_1372

def NamedBody852_1374 : StackLang.HolProg 64 :=
.seq NamedBody852_1362 NamedBody852_1373

def NamedBody852_1375 : StackLang.HolProg 64 :=
.seq NamedBody852_1361 NamedBody852_1374

def NamedBody852_1376 : StackLang.HolProg 64 :=
.seq NamedBody852_1360 NamedBody852_1375

def NamedBody852_1377 : StackLang.HolProg 64 :=
.seq NamedBody852_1359 NamedBody852_1376

def NamedBody852_1378 : StackLang.HolProg 64 :=
.seq NamedBody852_1358 NamedBody852_1377

def NamedBody852_1379 : StackLang.HolProg 64 :=
.seq NamedBody852_1357 NamedBody852_1378

def NamedBody852_1380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1387 : StackLang.HolProg 64 :=
.seq NamedBody852_1385 NamedBody852_1386

def NamedBody852_1388 : StackLang.HolProg 64 :=
.seq NamedBody852_1384 NamedBody852_1387

def NamedBody852_1389 : StackLang.HolProg 64 :=
.seq NamedBody852_1383 NamedBody852_1388

def NamedBody852_1390 : StackLang.HolProg 64 :=
.seq NamedBody852_1382 NamedBody852_1389

def NamedBody852_1391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1392 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_1393 : StackLang.HolProg 64 :=
.seq NamedBody852_1391 NamedBody852_1392

def NamedBody852_1394 : StackLang.HolProg 64 :=
.call (some (NamedBody852_1390, 1, 852, 44)) (Sum.inl 89) (some (NamedBody852_1393, 852, 45))

def NamedBody852_1395 : StackLang.HolProg 64 :=
.seq NamedBody852_1381 NamedBody852_1394

def NamedBody852_1396 : StackLang.HolProg 64 :=
.seq NamedBody852_1380 NamedBody852_1395

def NamedBody852_1397 : StackLang.HolProg 64 :=
.seq NamedBody852_1379 NamedBody852_1396

def NamedBody852_1398 : StackLang.HolProg 64 :=
.seq NamedBody852_1350 NamedBody852_1397

def NamedBody852_1399 : StackLang.HolProg 64 :=
.seq NamedBody852_1347 NamedBody852_1398

def NamedBody852_1400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_1401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody852_1402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody852_1403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody852_1404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551096#64))

def NamedBody852_1405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 12074291595689605317#64)

def NamedBody852_1407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4332#64)

def NamedBody852_1410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_1411 : StackLang.HolProg 64 :=
.seq NamedBody852_1409 NamedBody852_1410

def NamedBody852_1412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody852_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody852_1415 : StackLang.HolProg 64 :=
.seq NamedBody852_1413 NamedBody852_1414

def NamedBody852_1416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1417 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody852_1415 NamedBody852_1416

def NamedBody852_1418 : StackLang.HolProg 64 :=
.seq NamedBody852_1412 NamedBody852_1417

def NamedBody852_1419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody852_1420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody852_1421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 47

def NamedBody852_1422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_1423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody852_1427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody852_1428 : StackLang.HolProg 64 :=
.seq NamedBody852_1426 NamedBody852_1427

def NamedBody852_1429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody852_1430 : StackLang.HolProg 64 :=
.seq NamedBody852_1428 NamedBody852_1429

def NamedBody852_1431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1432 : StackLang.HolProg 64 :=
.seq NamedBody852_1430 NamedBody852_1431

def NamedBody852_1433 : StackLang.HolProg 64 :=
.seq NamedBody852_1425 NamedBody852_1432

def NamedBody852_1434 : StackLang.HolProg 64 :=
.seq NamedBody852_1424 NamedBody852_1433

def NamedBody852_1435 : StackLang.HolProg 64 :=
.seq NamedBody852_1423 NamedBody852_1434

def NamedBody852_1436 : StackLang.HolProg 64 :=
.seq NamedBody852_1422 NamedBody852_1435

def NamedBody852_1437 : StackLang.HolProg 64 :=
.seq NamedBody852_1421 NamedBody852_1436

def NamedBody852_1438 : StackLang.HolProg 64 :=
.seq NamedBody852_1420 NamedBody852_1437

def NamedBody852_1439 : StackLang.HolProg 64 :=
.seq NamedBody852_1419 NamedBody852_1438

def NamedBody852_1440 : StackLang.HolProg 64 :=
.seq NamedBody852_1418 NamedBody852_1439

def NamedBody852_1441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody852_1445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody852_1446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody852_1447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_1448 : StackLang.HolProg 64 :=
.seq NamedBody852_1446 NamedBody852_1447

def NamedBody852_1449 : StackLang.HolProg 64 :=
.seq NamedBody852_1445 NamedBody852_1448

def NamedBody852_1450 : StackLang.HolProg 64 :=
.seq NamedBody852_1444 NamedBody852_1449

def NamedBody852_1451 : StackLang.HolProg 64 :=
.seq NamedBody852_1443 NamedBody852_1450

def NamedBody852_1452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody852_1453 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody852_1454 : StackLang.HolProg 64 :=
.seq NamedBody852_1452 NamedBody852_1453

def NamedBody852_1455 : StackLang.HolProg 64 :=
.call (some (NamedBody852_1451, 1, 852, 46)) (Sum.inl 89) (some (NamedBody852_1454, 852, 47))

def NamedBody852_1456 : StackLang.HolProg 64 :=
.seq NamedBody852_1442 NamedBody852_1455

def NamedBody852_1457 : StackLang.HolProg 64 :=
.seq NamedBody852_1441 NamedBody852_1456

def NamedBody852_1458 : StackLang.HolProg 64 :=
.seq NamedBody852_1440 NamedBody852_1457

def NamedBody852_1459 : StackLang.HolProg 64 :=
.seq NamedBody852_1411 NamedBody852_1458

def NamedBody852_1460 : StackLang.HolProg 64 :=
.seq NamedBody852_1408 NamedBody852_1459

def NamedBody852_1461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody852_1462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody852_1463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody852_1464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody852_1465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody852_1466 : StackLang.HolProg 64 :=
.seq NamedBody852_1464 NamedBody852_1465

def NamedBody852_1467 : StackLang.HolProg 64 :=
.seq NamedBody852_1463 NamedBody852_1466

def NamedBody852_1468 : StackLang.HolProg 64 :=
.seq NamedBody852_1462 NamedBody852_1467

def NamedBody852_1469 : StackLang.HolProg 64 :=
.seq NamedBody852_1461 NamedBody852_1468

def NamedBody852_1470 : StackLang.HolProg 64 :=
.seq NamedBody852_1460 NamedBody852_1469

def NamedBody852_1471 : StackLang.HolProg 64 :=
.seq NamedBody852_1407 NamedBody852_1470

def NamedBody852_1472 : StackLang.HolProg 64 :=
.seq NamedBody852_1406 NamedBody852_1471

def NamedBody852_1473 : StackLang.HolProg 64 :=
.seq NamedBody852_1405 NamedBody852_1472

def NamedBody852_1474 : StackLang.HolProg 64 :=
.seq NamedBody852_1404 NamedBody852_1473

def NamedBody852_1475 : StackLang.HolProg 64 :=
.seq NamedBody852_1403 NamedBody852_1474

def NamedBody852_1476 : StackLang.HolProg 64 :=
.seq NamedBody852_1402 NamedBody852_1475

def NamedBody852_1477 : StackLang.HolProg 64 :=
.seq NamedBody852_1401 NamedBody852_1476

def NamedBody852_1478 : StackLang.HolProg 64 :=
.seq NamedBody852_1400 NamedBody852_1477

def NamedBody852_1479 : StackLang.HolProg 64 :=
.seq NamedBody852_1399 NamedBody852_1478

def NamedBody852_1480 : StackLang.HolProg 64 :=
.seq NamedBody852_1346 NamedBody852_1479

def NamedBody852_1481 : StackLang.HolProg 64 :=
.seq NamedBody852_1345 NamedBody852_1480

def NamedBody852_1482 : StackLang.HolProg 64 :=
.seq NamedBody852_1344 NamedBody852_1481

def NamedBody852_1483 : StackLang.HolProg 64 :=
.seq NamedBody852_1343 NamedBody852_1482

def NamedBody852_1484 : StackLang.HolProg 64 :=
.seq NamedBody852_1342 NamedBody852_1483

def NamedBody852_1485 : StackLang.HolProg 64 :=
.seq NamedBody852_1341 NamedBody852_1484

def NamedBody852_1486 : StackLang.HolProg 64 :=
.seq NamedBody852_1340 NamedBody852_1485

def NamedBody852_1487 : StackLang.HolProg 64 :=
.seq NamedBody852_1339 NamedBody852_1486

def NamedBody852_1488 : StackLang.HolProg 64 :=
.seq NamedBody852_1338 NamedBody852_1487

def NamedBody852_1489 : StackLang.HolProg 64 :=
.seq NamedBody852_1285 NamedBody852_1488

def NamedBody852_1490 : StackLang.HolProg 64 :=
.seq NamedBody852_1284 NamedBody852_1489

def NamedBody852_1491 : StackLang.HolProg 64 :=
.seq NamedBody852_1283 NamedBody852_1490

def NamedBody852_1492 : StackLang.HolProg 64 :=
.seq NamedBody852_1282 NamedBody852_1491

def NamedBody852_1493 : StackLang.HolProg 64 :=
.seq NamedBody852_1281 NamedBody852_1492

def NamedBody852_1494 : StackLang.HolProg 64 :=
.seq NamedBody852_1280 NamedBody852_1493

def NamedBody852_1495 : StackLang.HolProg 64 :=
.seq NamedBody852_1279 NamedBody852_1494

def NamedBody852_1496 : StackLang.HolProg 64 :=
.seq NamedBody852_1278 NamedBody852_1495

def NamedBody852_1497 : StackLang.HolProg 64 :=
.seq NamedBody852_1277 NamedBody852_1496

def NamedBody852_1498 : StackLang.HolProg 64 :=
.seq NamedBody852_1224 NamedBody852_1497

def NamedBody852_1499 : StackLang.HolProg 64 :=
.seq NamedBody852_1223 NamedBody852_1498

def NamedBody852_1500 : StackLang.HolProg 64 :=
.seq NamedBody852_1222 NamedBody852_1499

def NamedBody852_1501 : StackLang.HolProg 64 :=
.seq NamedBody852_1221 NamedBody852_1500

def NamedBody852_1502 : StackLang.HolProg 64 :=
.seq NamedBody852_1220 NamedBody852_1501

def NamedBody852_1503 : StackLang.HolProg 64 :=
.seq NamedBody852_1219 NamedBody852_1502

def NamedBody852_1504 : StackLang.HolProg 64 :=
.seq NamedBody852_1218 NamedBody852_1503

def NamedBody852_1505 : StackLang.HolProg 64 :=
.seq NamedBody852_1217 NamedBody852_1504

def NamedBody852_1506 : StackLang.HolProg 64 :=
.seq NamedBody852_1216 NamedBody852_1505

def NamedBody852_1507 : StackLang.HolProg 64 :=
.seq NamedBody852_1215 NamedBody852_1506

def NamedBody852_1508 : StackLang.HolProg 64 :=
.seq NamedBody852_1214 NamedBody852_1507

def NamedBody852_1509 : StackLang.HolProg 64 :=
.seq NamedBody852_1213 NamedBody852_1508

def NamedBody852_1510 : StackLang.HolProg 64 :=
.seq NamedBody852_1160 NamedBody852_1509

def NamedBody852_1511 : StackLang.HolProg 64 :=
.seq NamedBody852_1159 NamedBody852_1510

def NamedBody852_1512 : StackLang.HolProg 64 :=
.seq NamedBody852_1158 NamedBody852_1511

def NamedBody852_1513 : StackLang.HolProg 64 :=
.seq NamedBody852_1157 NamedBody852_1512

def NamedBody852_1514 : StackLang.HolProg 64 :=
.seq NamedBody852_1104 NamedBody852_1513

def NamedBody852_1515 : StackLang.HolProg 64 :=
.seq NamedBody852_1103 NamedBody852_1514

def NamedBody852_1516 : StackLang.HolProg 64 :=
.seq NamedBody852_1102 NamedBody852_1515

def NamedBody852_1517 : StackLang.HolProg 64 :=
.seq NamedBody852_1101 NamedBody852_1516

def NamedBody852_1518 : StackLang.HolProg 64 :=
.seq NamedBody852_1100 NamedBody852_1517

def NamedBody852_1519 : StackLang.HolProg 64 :=
.seq NamedBody852_1099 NamedBody852_1518

def NamedBody852_1520 : StackLang.HolProg 64 :=
.seq NamedBody852_1098 NamedBody852_1519

def NamedBody852_1521 : StackLang.HolProg 64 :=
.seq NamedBody852_1097 NamedBody852_1520

def NamedBody852_1522 : StackLang.HolProg 64 :=
.seq NamedBody852_1096 NamedBody852_1521

def NamedBody852_1523 : StackLang.HolProg 64 :=
.seq NamedBody852_1095 NamedBody852_1522

def NamedBody852_1524 : StackLang.HolProg 64 :=
.seq NamedBody852_1094 NamedBody852_1523

def NamedBody852_1525 : StackLang.HolProg 64 :=
.seq NamedBody852_1093 NamedBody852_1524

def NamedBody852_1526 : StackLang.HolProg 64 :=
.seq NamedBody852_1092 NamedBody852_1525

def NamedBody852_1527 : StackLang.HolProg 64 :=
.seq NamedBody852_1091 NamedBody852_1526

def NamedBody852_1528 : StackLang.HolProg 64 :=
.seq NamedBody852_1038 NamedBody852_1527

def NamedBody852_1529 : StackLang.HolProg 64 :=
.seq NamedBody852_1037 NamedBody852_1528

def NamedBody852_1530 : StackLang.HolProg 64 :=
.seq NamedBody852_1036 NamedBody852_1529

def NamedBody852_1531 : StackLang.HolProg 64 :=
.seq NamedBody852_1035 NamedBody852_1530

def NamedBody852_1532 : StackLang.HolProg 64 :=
.seq NamedBody852_982 NamedBody852_1531

def NamedBody852_1533 : StackLang.HolProg 64 :=
.seq NamedBody852_981 NamedBody852_1532

def NamedBody852_1534 : StackLang.HolProg 64 :=
.seq NamedBody852_980 NamedBody852_1533

def NamedBody852_1535 : StackLang.HolProg 64 :=
.seq NamedBody852_979 NamedBody852_1534

def NamedBody852_1536 : StackLang.HolProg 64 :=
.seq NamedBody852_978 NamedBody852_1535

def NamedBody852_1537 : StackLang.HolProg 64 :=
.seq NamedBody852_977 NamedBody852_1536

def NamedBody852_1538 : StackLang.HolProg 64 :=
.seq NamedBody852_976 NamedBody852_1537

def NamedBody852_1539 : StackLang.HolProg 64 :=
.seq NamedBody852_975 NamedBody852_1538

def NamedBody852_1540 : StackLang.HolProg 64 :=
.seq NamedBody852_974 NamedBody852_1539

def NamedBody852_1541 : StackLang.HolProg 64 :=
.seq NamedBody852_973 NamedBody852_1540

def NamedBody852_1542 : StackLang.HolProg 64 :=
.seq NamedBody852_972 NamedBody852_1541

def NamedBody852_1543 : StackLang.HolProg 64 :=
.seq NamedBody852_971 NamedBody852_1542

def NamedBody852_1544 : StackLang.HolProg 64 :=
.seq NamedBody852_970 NamedBody852_1543

def NamedBody852_1545 : StackLang.HolProg 64 :=
.seq NamedBody852_969 NamedBody852_1544

def NamedBody852_1546 : StackLang.HolProg 64 :=
.seq NamedBody852_916 NamedBody852_1545

def NamedBody852_1547 : StackLang.HolProg 64 :=
.seq NamedBody852_915 NamedBody852_1546

def NamedBody852_1548 : StackLang.HolProg 64 :=
.seq NamedBody852_914 NamedBody852_1547

def NamedBody852_1549 : StackLang.HolProg 64 :=
.seq NamedBody852_913 NamedBody852_1548

def NamedBody852_1550 : StackLang.HolProg 64 :=
.seq NamedBody852_860 NamedBody852_1549

def NamedBody852_1551 : StackLang.HolProg 64 :=
.seq NamedBody852_859 NamedBody852_1550

def NamedBody852_1552 : StackLang.HolProg 64 :=
.seq NamedBody852_858 NamedBody852_1551

def NamedBody852_1553 : StackLang.HolProg 64 :=
.seq NamedBody852_857 NamedBody852_1552

def NamedBody852_1554 : StackLang.HolProg 64 :=
.seq NamedBody852_856 NamedBody852_1553

def NamedBody852_1555 : StackLang.HolProg 64 :=
.seq NamedBody852_855 NamedBody852_1554

def NamedBody852_1556 : StackLang.HolProg 64 :=
.seq NamedBody852_854 NamedBody852_1555

def NamedBody852_1557 : StackLang.HolProg 64 :=
.seq NamedBody852_853 NamedBody852_1556

def NamedBody852_1558 : StackLang.HolProg 64 :=
.seq NamedBody852_852 NamedBody852_1557

def NamedBody852_1559 : StackLang.HolProg 64 :=
.seq NamedBody852_851 NamedBody852_1558

def NamedBody852_1560 : StackLang.HolProg 64 :=
.seq NamedBody852_850 NamedBody852_1559

def NamedBody852_1561 : StackLang.HolProg 64 :=
.seq NamedBody852_849 NamedBody852_1560

def NamedBody852_1562 : StackLang.HolProg 64 :=
.seq NamedBody852_848 NamedBody852_1561

def NamedBody852_1563 : StackLang.HolProg 64 :=
.seq NamedBody852_847 NamedBody852_1562

def NamedBody852_1564 : StackLang.HolProg 64 :=
.seq NamedBody852_794 NamedBody852_1563

def NamedBody852_1565 : StackLang.HolProg 64 :=
.seq NamedBody852_793 NamedBody852_1564

def NamedBody852_1566 : StackLang.HolProg 64 :=
.seq NamedBody852_792 NamedBody852_1565

def NamedBody852_1567 : StackLang.HolProg 64 :=
.seq NamedBody852_791 NamedBody852_1566

def NamedBody852_1568 : StackLang.HolProg 64 :=
.seq NamedBody852_738 NamedBody852_1567

def NamedBody852_1569 : StackLang.HolProg 64 :=
.seq NamedBody852_737 NamedBody852_1568

def NamedBody852_1570 : StackLang.HolProg 64 :=
.seq NamedBody852_736 NamedBody852_1569

def NamedBody852_1571 : StackLang.HolProg 64 :=
.seq NamedBody852_735 NamedBody852_1570

def NamedBody852_1572 : StackLang.HolProg 64 :=
.seq NamedBody852_734 NamedBody852_1571

def NamedBody852_1573 : StackLang.HolProg 64 :=
.seq NamedBody852_733 NamedBody852_1572

def NamedBody852_1574 : StackLang.HolProg 64 :=
.seq NamedBody852_732 NamedBody852_1573

def NamedBody852_1575 : StackLang.HolProg 64 :=
.seq NamedBody852_731 NamedBody852_1574

def NamedBody852_1576 : StackLang.HolProg 64 :=
.seq NamedBody852_730 NamedBody852_1575

def NamedBody852_1577 : StackLang.HolProg 64 :=
.seq NamedBody852_729 NamedBody852_1576

def NamedBody852_1578 : StackLang.HolProg 64 :=
.seq NamedBody852_728 NamedBody852_1577

def NamedBody852_1579 : StackLang.HolProg 64 :=
.seq NamedBody852_727 NamedBody852_1578

def NamedBody852_1580 : StackLang.HolProg 64 :=
.seq NamedBody852_726 NamedBody852_1579

def NamedBody852_1581 : StackLang.HolProg 64 :=
.seq NamedBody852_725 NamedBody852_1580

def NamedBody852_1582 : StackLang.HolProg 64 :=
.seq NamedBody852_672 NamedBody852_1581

def NamedBody852_1583 : StackLang.HolProg 64 :=
.seq NamedBody852_671 NamedBody852_1582

def NamedBody852_1584 : StackLang.HolProg 64 :=
.seq NamedBody852_670 NamedBody852_1583

def NamedBody852_1585 : StackLang.HolProg 64 :=
.seq NamedBody852_669 NamedBody852_1584

def NamedBody852_1586 : StackLang.HolProg 64 :=
.seq NamedBody852_616 NamedBody852_1585

def NamedBody852_1587 : StackLang.HolProg 64 :=
.seq NamedBody852_615 NamedBody852_1586

def NamedBody852_1588 : StackLang.HolProg 64 :=
.seq NamedBody852_614 NamedBody852_1587

def NamedBody852_1589 : StackLang.HolProg 64 :=
.seq NamedBody852_613 NamedBody852_1588

def NamedBody852_1590 : StackLang.HolProg 64 :=
.seq NamedBody852_612 NamedBody852_1589

def NamedBody852_1591 : StackLang.HolProg 64 :=
.seq NamedBody852_611 NamedBody852_1590

def NamedBody852_1592 : StackLang.HolProg 64 :=
.seq NamedBody852_610 NamedBody852_1591

def NamedBody852_1593 : StackLang.HolProg 64 :=
.seq NamedBody852_609 NamedBody852_1592

def NamedBody852_1594 : StackLang.HolProg 64 :=
.seq NamedBody852_608 NamedBody852_1593

def NamedBody852_1595 : StackLang.HolProg 64 :=
.seq NamedBody852_607 NamedBody852_1594

def NamedBody852_1596 : StackLang.HolProg 64 :=
.seq NamedBody852_606 NamedBody852_1595

def NamedBody852_1597 : StackLang.HolProg 64 :=
.seq NamedBody852_605 NamedBody852_1596

def NamedBody852_1598 : StackLang.HolProg 64 :=
.seq NamedBody852_604 NamedBody852_1597

def NamedBody852_1599 : StackLang.HolProg 64 :=
.seq NamedBody852_603 NamedBody852_1598

def NamedBody852_1600 : StackLang.HolProg 64 :=
.seq NamedBody852_550 NamedBody852_1599

def NamedBody852_1601 : StackLang.HolProg 64 :=
.seq NamedBody852_549 NamedBody852_1600

def NamedBody852_1602 : StackLang.HolProg 64 :=
.seq NamedBody852_548 NamedBody852_1601

def NamedBody852_1603 : StackLang.HolProg 64 :=
.seq NamedBody852_547 NamedBody852_1602

def NamedBody852_1604 : StackLang.HolProg 64 :=
.seq NamedBody852_494 NamedBody852_1603

def NamedBody852_1605 : StackLang.HolProg 64 :=
.seq NamedBody852_493 NamedBody852_1604

def NamedBody852_1606 : StackLang.HolProg 64 :=
.seq NamedBody852_492 NamedBody852_1605

def NamedBody852_1607 : StackLang.HolProg 64 :=
.seq NamedBody852_491 NamedBody852_1606

def NamedBody852_1608 : StackLang.HolProg 64 :=
.seq NamedBody852_490 NamedBody852_1607

def NamedBody852_1609 : StackLang.HolProg 64 :=
.seq NamedBody852_489 NamedBody852_1608

def NamedBody852_1610 : StackLang.HolProg 64 :=
.seq NamedBody852_488 NamedBody852_1609

def NamedBody852_1611 : StackLang.HolProg 64 :=
.seq NamedBody852_487 NamedBody852_1610

def NamedBody852_1612 : StackLang.HolProg 64 :=
.seq NamedBody852_486 NamedBody852_1611

def NamedBody852_1613 : StackLang.HolProg 64 :=
.seq NamedBody852_485 NamedBody852_1612

def NamedBody852_1614 : StackLang.HolProg 64 :=
.seq NamedBody852_484 NamedBody852_1613

def NamedBody852_1615 : StackLang.HolProg 64 :=
.seq NamedBody852_483 NamedBody852_1614

def NamedBody852_1616 : StackLang.HolProg 64 :=
.seq NamedBody852_482 NamedBody852_1615

def NamedBody852_1617 : StackLang.HolProg 64 :=
.seq NamedBody852_481 NamedBody852_1616

def NamedBody852_1618 : StackLang.HolProg 64 :=
.seq NamedBody852_428 NamedBody852_1617

def NamedBody852_1619 : StackLang.HolProg 64 :=
.seq NamedBody852_427 NamedBody852_1618

def NamedBody852_1620 : StackLang.HolProg 64 :=
.seq NamedBody852_426 NamedBody852_1619

def NamedBody852_1621 : StackLang.HolProg 64 :=
.seq NamedBody852_425 NamedBody852_1620

def NamedBody852_1622 : StackLang.HolProg 64 :=
.seq NamedBody852_372 NamedBody852_1621

def NamedBody852_1623 : StackLang.HolProg 64 :=
.seq NamedBody852_371 NamedBody852_1622

def NamedBody852_1624 : StackLang.HolProg 64 :=
.seq NamedBody852_370 NamedBody852_1623

def NamedBody852_1625 : StackLang.HolProg 64 :=
.seq NamedBody852_369 NamedBody852_1624

def NamedBody852_1626 : StackLang.HolProg 64 :=
.seq NamedBody852_368 NamedBody852_1625

def NamedBody852_1627 : StackLang.HolProg 64 :=
.seq NamedBody852_367 NamedBody852_1626

def NamedBody852_1628 : StackLang.HolProg 64 :=
.seq NamedBody852_366 NamedBody852_1627

def NamedBody852_1629 : StackLang.HolProg 64 :=
.seq NamedBody852_365 NamedBody852_1628

def NamedBody852_1630 : StackLang.HolProg 64 :=
.seq NamedBody852_364 NamedBody852_1629

def NamedBody852_1631 : StackLang.HolProg 64 :=
.seq NamedBody852_363 NamedBody852_1630

def NamedBody852_1632 : StackLang.HolProg 64 :=
.seq NamedBody852_362 NamedBody852_1631

def NamedBody852_1633 : StackLang.HolProg 64 :=
.seq NamedBody852_361 NamedBody852_1632

def NamedBody852_1634 : StackLang.HolProg 64 :=
.seq NamedBody852_360 NamedBody852_1633

def NamedBody852_1635 : StackLang.HolProg 64 :=
.seq NamedBody852_359 NamedBody852_1634

def NamedBody852_1636 : StackLang.HolProg 64 :=
.seq NamedBody852_306 NamedBody852_1635

def NamedBody852_1637 : StackLang.HolProg 64 :=
.seq NamedBody852_305 NamedBody852_1636

def NamedBody852_1638 : StackLang.HolProg 64 :=
.seq NamedBody852_304 NamedBody852_1637

def NamedBody852_1639 : StackLang.HolProg 64 :=
.seq NamedBody852_303 NamedBody852_1638

def NamedBody852_1640 : StackLang.HolProg 64 :=
.seq NamedBody852_302 NamedBody852_1639

def NamedBody852_1641 : StackLang.HolProg 64 :=
.seq NamedBody852_301 NamedBody852_1640

def NamedBody852_1642 : StackLang.HolProg 64 :=
.seq NamedBody852_300 NamedBody852_1641

def NamedBody852_1643 : StackLang.HolProg 64 :=
.seq NamedBody852_299 NamedBody852_1642

def NamedBody852_1644 : StackLang.HolProg 64 :=
.seq NamedBody852_298 NamedBody852_1643

def NamedBody852_1645 : StackLang.HolProg 64 :=
.seq NamedBody852_297 NamedBody852_1644

def NamedBody852_1646 : StackLang.HolProg 64 :=
.seq NamedBody852_296 NamedBody852_1645

def NamedBody852_1647 : StackLang.HolProg 64 :=
.seq NamedBody852_250 NamedBody852_1646

def NamedBody852_1648 : StackLang.HolProg 64 :=
.seq NamedBody852_249 NamedBody852_1647

def NamedBody852_1649 : StackLang.HolProg 64 :=
.seq NamedBody852_248 NamedBody852_1648

def NamedBody852_1650 : StackLang.HolProg 64 :=
.seq NamedBody852_247 NamedBody852_1649

def NamedBody852_1651 : StackLang.HolProg 64 :=
.seq NamedBody852_246 NamedBody852_1650

def NamedBody852_1652 : StackLang.HolProg 64 :=
.seq NamedBody852_193 NamedBody852_1651

def NamedBody852_1653 : StackLang.HolProg 64 :=
.seq NamedBody852_192 NamedBody852_1652

def NamedBody852_1654 : StackLang.HolProg 64 :=
.seq NamedBody852_191 NamedBody852_1653

def NamedBody852_1655 : StackLang.HolProg 64 :=
.seq NamedBody852_190 NamedBody852_1654

def NamedBody852_1656 : StackLang.HolProg 64 :=
.seq NamedBody852_189 NamedBody852_1655

def NamedBody852_1657 : StackLang.HolProg 64 :=
.seq NamedBody852_188 NamedBody852_1656

def NamedBody852_1658 : StackLang.HolProg 64 :=
.seq NamedBody852_187 NamedBody852_1657

def NamedBody852_1659 : StackLang.HolProg 64 :=
.seq NamedBody852_186 NamedBody852_1658

def NamedBody852_1660 : StackLang.HolProg 64 :=
.seq NamedBody852_185 NamedBody852_1659

def NamedBody852_1661 : StackLang.HolProg 64 :=
.seq NamedBody852_184 NamedBody852_1660

def NamedBody852_1662 : StackLang.HolProg 64 :=
.seq NamedBody852_183 NamedBody852_1661

def NamedBody852_1663 : StackLang.HolProg 64 :=
.seq NamedBody852_182 NamedBody852_1662

def NamedBody852_1664 : StackLang.HolProg 64 :=
.seq NamedBody852_129 NamedBody852_1663

def NamedBody852_1665 : StackLang.HolProg 64 :=
.seq NamedBody852_128 NamedBody852_1664

def NamedBody852_1666 : StackLang.HolProg 64 :=
.seq NamedBody852_127 NamedBody852_1665

def NamedBody852_1667 : StackLang.HolProg 64 :=
.seq NamedBody852_126 NamedBody852_1666

def NamedBody852_1668 : StackLang.HolProg 64 :=
.seq NamedBody852_73 NamedBody852_1667

def NamedBody852_1669 : StackLang.HolProg 64 :=
.seq NamedBody852_72 NamedBody852_1668

def NamedBody852_1670 : StackLang.HolProg 64 :=
.seq NamedBody852_71 NamedBody852_1669

def NamedBody852_1671 : StackLang.HolProg 64 :=
.seq NamedBody852_70 NamedBody852_1670

def NamedBody852_1672 : StackLang.HolProg 64 :=
.seq NamedBody852_69 NamedBody852_1671

def NamedBody852_1673 : StackLang.HolProg 64 :=
.seq NamedBody852_68 NamedBody852_1672

def NamedBody852_1674 : StackLang.HolProg 64 :=
.seq NamedBody852_67 NamedBody852_1673

def NamedBody852_1675 : StackLang.HolProg 64 :=
.seq NamedBody852_66 NamedBody852_1674

def NamedBody852_1676 : StackLang.HolProg 64 :=
.seq NamedBody852_65 NamedBody852_1675

def NamedBody852_1677 : StackLang.HolProg 64 :=
.seq NamedBody852_64 NamedBody852_1676

def NamedBody852_1678 : StackLang.HolProg 64 :=
.seq NamedBody852_63 NamedBody852_1677

def NamedBody852_1679 : StackLang.HolProg 64 :=
.seq NamedBody852_62 NamedBody852_1678

def NamedBody852_1680 : StackLang.HolProg 64 :=
.seq NamedBody852_9 NamedBody852_1679

def NamedBody852_1681 : StackLang.HolProg 64 :=
.seq NamedBody852_8 NamedBody852_1680

def NamedBody852_1682 : StackLang.HolProg 64 :=
.seq NamedBody852_7 NamedBody852_1681

def NamedBody852_1683 : StackLang.HolProg 64 :=
.seq NamedBody852_6 NamedBody852_1682

def Named852 : Nat × StackLang.HolProg 64 := (852, NamedBody852_1683)
theorem Named852_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed852 = Named852 := by
  kernel_rfl
#print axioms Named852_eq
end InitECandidate.Proofs.BackendStages
