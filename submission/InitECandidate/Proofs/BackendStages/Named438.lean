import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed438
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody438_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody438_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody438_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody438_3 : StackLang.HolProg 64 :=
.seq NamedBody438_1 NamedBody438_2

def NamedBody438_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody438_3 NamedBody438_4

def NamedBody438_6 : StackLang.HolProg 64 :=
.seq NamedBody438_0 NamedBody438_5

def NamedBody438_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 64#64)

def NamedBody438_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 20#64)

def NamedBody438_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody438_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1319#64)

def NamedBody438_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody438_14 : StackLang.HolProg 64 :=
.seq NamedBody438_12 NamedBody438_13

def NamedBody438_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody438_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody438_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody438_18 : StackLang.HolProg 64 :=
.seq NamedBody438_16 NamedBody438_17

def NamedBody438_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody438_18 NamedBody438_19

def NamedBody438_21 : StackLang.HolProg 64 :=
.seq NamedBody438_15 NamedBody438_20

def NamedBody438_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody438_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody438_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 3

def NamedBody438_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody438_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody438_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody438_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody438_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody438_31 : StackLang.HolProg 64 :=
.seq NamedBody438_29 NamedBody438_30

def NamedBody438_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody438_33 : StackLang.HolProg 64 :=
.seq NamedBody438_31 NamedBody438_32

def NamedBody438_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody438_35 : StackLang.HolProg 64 :=
.seq NamedBody438_33 NamedBody438_34

def NamedBody438_36 : StackLang.HolProg 64 :=
.seq NamedBody438_28 NamedBody438_35

def NamedBody438_37 : StackLang.HolProg 64 :=
.seq NamedBody438_27 NamedBody438_36

def NamedBody438_38 : StackLang.HolProg 64 :=
.seq NamedBody438_26 NamedBody438_37

def NamedBody438_39 : StackLang.HolProg 64 :=
.seq NamedBody438_25 NamedBody438_38

def NamedBody438_40 : StackLang.HolProg 64 :=
.seq NamedBody438_24 NamedBody438_39

def NamedBody438_41 : StackLang.HolProg 64 :=
.seq NamedBody438_23 NamedBody438_40

def NamedBody438_42 : StackLang.HolProg 64 :=
.seq NamedBody438_22 NamedBody438_41

def NamedBody438_43 : StackLang.HolProg 64 :=
.seq NamedBody438_21 NamedBody438_42

def NamedBody438_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody438_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody438_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody438_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody438_51 : StackLang.HolProg 64 :=
.seq NamedBody438_49 NamedBody438_50

def NamedBody438_52 : StackLang.HolProg 64 :=
.seq NamedBody438_48 NamedBody438_51

def NamedBody438_53 : StackLang.HolProg 64 :=
.seq NamedBody438_47 NamedBody438_52

def NamedBody438_54 : StackLang.HolProg 64 :=
.seq NamedBody438_46 NamedBody438_53

def NamedBody438_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_56 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody438_57 : StackLang.HolProg 64 :=
.seq NamedBody438_55 NamedBody438_56

def NamedBody438_58 : StackLang.HolProg 64 :=
.call (some (NamedBody438_54, 1, 438, 2)) (Sum.inl 182) (some (NamedBody438_57, 438, 3))

def NamedBody438_59 : StackLang.HolProg 64 :=
.seq NamedBody438_45 NamedBody438_58

def NamedBody438_60 : StackLang.HolProg 64 :=
.seq NamedBody438_44 NamedBody438_59

def NamedBody438_61 : StackLang.HolProg 64 :=
.seq NamedBody438_43 NamedBody438_60

def NamedBody438_62 : StackLang.HolProg 64 :=
.seq NamedBody438_14 NamedBody438_61

def NamedBody438_63 : StackLang.HolProg 64 :=
.seq NamedBody438_11 NamedBody438_62

def NamedBody438_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody438_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody438_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody438_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody438_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551400#64)))

def NamedBody438_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody438_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 64#64)

def NamedBody438_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 28#64)

def NamedBody438_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1320#64)

def NamedBody438_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody438_77 : StackLang.HolProg 64 :=
.seq NamedBody438_75 NamedBody438_76

def NamedBody438_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody438_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody438_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody438_81 : StackLang.HolProg 64 :=
.seq NamedBody438_79 NamedBody438_80

def NamedBody438_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody438_81 NamedBody438_82

def NamedBody438_84 : StackLang.HolProg 64 :=
.seq NamedBody438_78 NamedBody438_83

def NamedBody438_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody438_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody438_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 5

def NamedBody438_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody438_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody438_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody438_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody438_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody438_94 : StackLang.HolProg 64 :=
.seq NamedBody438_92 NamedBody438_93

def NamedBody438_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody438_96 : StackLang.HolProg 64 :=
.seq NamedBody438_94 NamedBody438_95

def NamedBody438_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody438_98 : StackLang.HolProg 64 :=
.seq NamedBody438_96 NamedBody438_97

def NamedBody438_99 : StackLang.HolProg 64 :=
.seq NamedBody438_91 NamedBody438_98

def NamedBody438_100 : StackLang.HolProg 64 :=
.seq NamedBody438_90 NamedBody438_99

def NamedBody438_101 : StackLang.HolProg 64 :=
.seq NamedBody438_89 NamedBody438_100

def NamedBody438_102 : StackLang.HolProg 64 :=
.seq NamedBody438_88 NamedBody438_101

def NamedBody438_103 : StackLang.HolProg 64 :=
.seq NamedBody438_87 NamedBody438_102

def NamedBody438_104 : StackLang.HolProg 64 :=
.seq NamedBody438_86 NamedBody438_103

def NamedBody438_105 : StackLang.HolProg 64 :=
.seq NamedBody438_85 NamedBody438_104

def NamedBody438_106 : StackLang.HolProg 64 :=
.seq NamedBody438_84 NamedBody438_105

def NamedBody438_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody438_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody438_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody438_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody438_114 : StackLang.HolProg 64 :=
.seq NamedBody438_112 NamedBody438_113

def NamedBody438_115 : StackLang.HolProg 64 :=
.seq NamedBody438_111 NamedBody438_114

def NamedBody438_116 : StackLang.HolProg 64 :=
.seq NamedBody438_110 NamedBody438_115

def NamedBody438_117 : StackLang.HolProg 64 :=
.seq NamedBody438_109 NamedBody438_116

def NamedBody438_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_119 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody438_120 : StackLang.HolProg 64 :=
.seq NamedBody438_118 NamedBody438_119

def NamedBody438_121 : StackLang.HolProg 64 :=
.call (some (NamedBody438_117, 1, 438, 4)) (Sum.inl 182) (some (NamedBody438_120, 438, 5))

def NamedBody438_122 : StackLang.HolProg 64 :=
.seq NamedBody438_108 NamedBody438_121

def NamedBody438_123 : StackLang.HolProg 64 :=
.seq NamedBody438_107 NamedBody438_122

def NamedBody438_124 : StackLang.HolProg 64 :=
.seq NamedBody438_106 NamedBody438_123

def NamedBody438_125 : StackLang.HolProg 64 :=
.seq NamedBody438_77 NamedBody438_124

def NamedBody438_126 : StackLang.HolProg 64 :=
.seq NamedBody438_74 NamedBody438_125

def NamedBody438_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody438_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody438_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody438_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody438_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551384#64)))

def NamedBody438_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody438_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 64#64)

def NamedBody438_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 60#64)

def NamedBody438_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1321#64)

def NamedBody438_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody438_140 : StackLang.HolProg 64 :=
.seq NamedBody438_138 NamedBody438_139

def NamedBody438_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody438_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody438_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody438_144 : StackLang.HolProg 64 :=
.seq NamedBody438_142 NamedBody438_143

def NamedBody438_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody438_144 NamedBody438_145

def NamedBody438_147 : StackLang.HolProg 64 :=
.seq NamedBody438_141 NamedBody438_146

def NamedBody438_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody438_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody438_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 7

def NamedBody438_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody438_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody438_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody438_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody438_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody438_157 : StackLang.HolProg 64 :=
.seq NamedBody438_155 NamedBody438_156

def NamedBody438_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody438_159 : StackLang.HolProg 64 :=
.seq NamedBody438_157 NamedBody438_158

def NamedBody438_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody438_161 : StackLang.HolProg 64 :=
.seq NamedBody438_159 NamedBody438_160

def NamedBody438_162 : StackLang.HolProg 64 :=
.seq NamedBody438_154 NamedBody438_161

def NamedBody438_163 : StackLang.HolProg 64 :=
.seq NamedBody438_153 NamedBody438_162

def NamedBody438_164 : StackLang.HolProg 64 :=
.seq NamedBody438_152 NamedBody438_163

def NamedBody438_165 : StackLang.HolProg 64 :=
.seq NamedBody438_151 NamedBody438_164

def NamedBody438_166 : StackLang.HolProg 64 :=
.seq NamedBody438_150 NamedBody438_165

def NamedBody438_167 : StackLang.HolProg 64 :=
.seq NamedBody438_149 NamedBody438_166

def NamedBody438_168 : StackLang.HolProg 64 :=
.seq NamedBody438_148 NamedBody438_167

def NamedBody438_169 : StackLang.HolProg 64 :=
.seq NamedBody438_147 NamedBody438_168

def NamedBody438_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody438_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody438_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody438_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody438_177 : StackLang.HolProg 64 :=
.seq NamedBody438_175 NamedBody438_176

def NamedBody438_178 : StackLang.HolProg 64 :=
.seq NamedBody438_174 NamedBody438_177

def NamedBody438_179 : StackLang.HolProg 64 :=
.seq NamedBody438_173 NamedBody438_178

def NamedBody438_180 : StackLang.HolProg 64 :=
.seq NamedBody438_172 NamedBody438_179

def NamedBody438_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_182 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody438_183 : StackLang.HolProg 64 :=
.seq NamedBody438_181 NamedBody438_182

def NamedBody438_184 : StackLang.HolProg 64 :=
.call (some (NamedBody438_180, 1, 438, 6)) (Sum.inl 182) (some (NamedBody438_183, 438, 7))

def NamedBody438_185 : StackLang.HolProg 64 :=
.seq NamedBody438_171 NamedBody438_184

def NamedBody438_186 : StackLang.HolProg 64 :=
.seq NamedBody438_170 NamedBody438_185

def NamedBody438_187 : StackLang.HolProg 64 :=
.seq NamedBody438_169 NamedBody438_186

def NamedBody438_188 : StackLang.HolProg 64 :=
.seq NamedBody438_140 NamedBody438_187

def NamedBody438_189 : StackLang.HolProg 64 :=
.seq NamedBody438_137 NamedBody438_188

def NamedBody438_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody438_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody438_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody438_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody438_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551376#64)))

def NamedBody438_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody438_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody438_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1322#64)

def NamedBody438_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody438_202 : StackLang.HolProg 64 :=
.seq NamedBody438_200 NamedBody438_201

def NamedBody438_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody438_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody438_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody438_206 : StackLang.HolProg 64 :=
.seq NamedBody438_204 NamedBody438_205

def NamedBody438_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_208 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody438_206 NamedBody438_207

def NamedBody438_209 : StackLang.HolProg 64 :=
.seq NamedBody438_203 NamedBody438_208

def NamedBody438_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody438_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody438_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 9

def NamedBody438_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody438_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody438_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody438_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody438_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody438_219 : StackLang.HolProg 64 :=
.seq NamedBody438_217 NamedBody438_218

def NamedBody438_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody438_221 : StackLang.HolProg 64 :=
.seq NamedBody438_219 NamedBody438_220

def NamedBody438_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody438_223 : StackLang.HolProg 64 :=
.seq NamedBody438_221 NamedBody438_222

def NamedBody438_224 : StackLang.HolProg 64 :=
.seq NamedBody438_216 NamedBody438_223

def NamedBody438_225 : StackLang.HolProg 64 :=
.seq NamedBody438_215 NamedBody438_224

def NamedBody438_226 : StackLang.HolProg 64 :=
.seq NamedBody438_214 NamedBody438_225

def NamedBody438_227 : StackLang.HolProg 64 :=
.seq NamedBody438_213 NamedBody438_226

def NamedBody438_228 : StackLang.HolProg 64 :=
.seq NamedBody438_212 NamedBody438_227

def NamedBody438_229 : StackLang.HolProg 64 :=
.seq NamedBody438_211 NamedBody438_228

def NamedBody438_230 : StackLang.HolProg 64 :=
.seq NamedBody438_210 NamedBody438_229

def NamedBody438_231 : StackLang.HolProg 64 :=
.seq NamedBody438_209 NamedBody438_230

def NamedBody438_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody438_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody438_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody438_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody438_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody438_240 : StackLang.HolProg 64 :=
.seq NamedBody438_238 NamedBody438_239

def NamedBody438_241 : StackLang.HolProg 64 :=
.seq NamedBody438_237 NamedBody438_240

def NamedBody438_242 : StackLang.HolProg 64 :=
.seq NamedBody438_236 NamedBody438_241

def NamedBody438_243 : StackLang.HolProg 64 :=
.seq NamedBody438_235 NamedBody438_242

def NamedBody438_244 : StackLang.HolProg 64 :=
.seq NamedBody438_234 NamedBody438_243

def NamedBody438_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody438_246 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody438_247 : StackLang.HolProg 64 :=
.seq NamedBody438_245 NamedBody438_246

def NamedBody438_248 : StackLang.HolProg 64 :=
.call (some (NamedBody438_244, 1, 438, 8)) (Sum.inl 68) (some (NamedBody438_247, 438, 9))

def NamedBody438_249 : StackLang.HolProg 64 :=
.seq NamedBody438_233 NamedBody438_248

def NamedBody438_250 : StackLang.HolProg 64 :=
.seq NamedBody438_232 NamedBody438_249

def NamedBody438_251 : StackLang.HolProg 64 :=
.seq NamedBody438_231 NamedBody438_250

def NamedBody438_252 : StackLang.HolProg 64 :=
.seq NamedBody438_202 NamedBody438_251

def NamedBody438_253 : StackLang.HolProg 64 :=
.seq NamedBody438_199 NamedBody438_252

def NamedBody438_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody438_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody438_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody438_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody438_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551368#64)))

def NamedBody438_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody438_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551392#64)))

def NamedBody438_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody438_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody438_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody438_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody438_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody438_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody438_270 : StackLang.HolProg 64 :=
.seq NamedBody438_268 NamedBody438_269

def NamedBody438_271 : StackLang.HolProg 64 :=
.seq NamedBody438_267 NamedBody438_270

def NamedBody438_272 : StackLang.HolProg 64 :=
.seq NamedBody438_266 NamedBody438_271

def NamedBody438_273 : StackLang.HolProg 64 :=
.seq NamedBody438_265 NamedBody438_272

def NamedBody438_274 : StackLang.HolProg 64 :=
.seq NamedBody438_264 NamedBody438_273

def NamedBody438_275 : StackLang.HolProg 64 :=
.seq NamedBody438_263 NamedBody438_274

def NamedBody438_276 : StackLang.HolProg 64 :=
.seq NamedBody438_262 NamedBody438_275

def NamedBody438_277 : StackLang.HolProg 64 :=
.seq NamedBody438_261 NamedBody438_276

def NamedBody438_278 : StackLang.HolProg 64 :=
.seq NamedBody438_260 NamedBody438_277

def NamedBody438_279 : StackLang.HolProg 64 :=
.seq NamedBody438_259 NamedBody438_278

def NamedBody438_280 : StackLang.HolProg 64 :=
.seq NamedBody438_258 NamedBody438_279

def NamedBody438_281 : StackLang.HolProg 64 :=
.seq NamedBody438_257 NamedBody438_280

def NamedBody438_282 : StackLang.HolProg 64 :=
.seq NamedBody438_256 NamedBody438_281

def NamedBody438_283 : StackLang.HolProg 64 :=
.seq NamedBody438_255 NamedBody438_282

def NamedBody438_284 : StackLang.HolProg 64 :=
.seq NamedBody438_254 NamedBody438_283

def NamedBody438_285 : StackLang.HolProg 64 :=
.seq NamedBody438_253 NamedBody438_284

def NamedBody438_286 : StackLang.HolProg 64 :=
.seq NamedBody438_198 NamedBody438_285

def NamedBody438_287 : StackLang.HolProg 64 :=
.seq NamedBody438_197 NamedBody438_286

def NamedBody438_288 : StackLang.HolProg 64 :=
.seq NamedBody438_196 NamedBody438_287

def NamedBody438_289 : StackLang.HolProg 64 :=
.seq NamedBody438_195 NamedBody438_288

def NamedBody438_290 : StackLang.HolProg 64 :=
.seq NamedBody438_194 NamedBody438_289

def NamedBody438_291 : StackLang.HolProg 64 :=
.seq NamedBody438_193 NamedBody438_290

def NamedBody438_292 : StackLang.HolProg 64 :=
.seq NamedBody438_192 NamedBody438_291

def NamedBody438_293 : StackLang.HolProg 64 :=
.seq NamedBody438_191 NamedBody438_292

def NamedBody438_294 : StackLang.HolProg 64 :=
.seq NamedBody438_190 NamedBody438_293

def NamedBody438_295 : StackLang.HolProg 64 :=
.seq NamedBody438_189 NamedBody438_294

def NamedBody438_296 : StackLang.HolProg 64 :=
.seq NamedBody438_136 NamedBody438_295

def NamedBody438_297 : StackLang.HolProg 64 :=
.seq NamedBody438_135 NamedBody438_296

def NamedBody438_298 : StackLang.HolProg 64 :=
.seq NamedBody438_134 NamedBody438_297

def NamedBody438_299 : StackLang.HolProg 64 :=
.seq NamedBody438_133 NamedBody438_298

def NamedBody438_300 : StackLang.HolProg 64 :=
.seq NamedBody438_132 NamedBody438_299

def NamedBody438_301 : StackLang.HolProg 64 :=
.seq NamedBody438_131 NamedBody438_300

def NamedBody438_302 : StackLang.HolProg 64 :=
.seq NamedBody438_130 NamedBody438_301

def NamedBody438_303 : StackLang.HolProg 64 :=
.seq NamedBody438_129 NamedBody438_302

def NamedBody438_304 : StackLang.HolProg 64 :=
.seq NamedBody438_128 NamedBody438_303

def NamedBody438_305 : StackLang.HolProg 64 :=
.seq NamedBody438_127 NamedBody438_304

def NamedBody438_306 : StackLang.HolProg 64 :=
.seq NamedBody438_126 NamedBody438_305

def NamedBody438_307 : StackLang.HolProg 64 :=
.seq NamedBody438_73 NamedBody438_306

def NamedBody438_308 : StackLang.HolProg 64 :=
.seq NamedBody438_72 NamedBody438_307

def NamedBody438_309 : StackLang.HolProg 64 :=
.seq NamedBody438_71 NamedBody438_308

def NamedBody438_310 : StackLang.HolProg 64 :=
.seq NamedBody438_70 NamedBody438_309

def NamedBody438_311 : StackLang.HolProg 64 :=
.seq NamedBody438_69 NamedBody438_310

def NamedBody438_312 : StackLang.HolProg 64 :=
.seq NamedBody438_68 NamedBody438_311

def NamedBody438_313 : StackLang.HolProg 64 :=
.seq NamedBody438_67 NamedBody438_312

def NamedBody438_314 : StackLang.HolProg 64 :=
.seq NamedBody438_66 NamedBody438_313

def NamedBody438_315 : StackLang.HolProg 64 :=
.seq NamedBody438_65 NamedBody438_314

def NamedBody438_316 : StackLang.HolProg 64 :=
.seq NamedBody438_64 NamedBody438_315

def NamedBody438_317 : StackLang.HolProg 64 :=
.seq NamedBody438_63 NamedBody438_316

def NamedBody438_318 : StackLang.HolProg 64 :=
.seq NamedBody438_10 NamedBody438_317

def NamedBody438_319 : StackLang.HolProg 64 :=
.seq NamedBody438_9 NamedBody438_318

def NamedBody438_320 : StackLang.HolProg 64 :=
.seq NamedBody438_8 NamedBody438_319

def NamedBody438_321 : StackLang.HolProg 64 :=
.seq NamedBody438_7 NamedBody438_320

def NamedBody438_322 : StackLang.HolProg 64 :=
.seq NamedBody438_6 NamedBody438_321

def Named438 : Nat × StackLang.HolProg 64 := (438, NamedBody438_322)
theorem Named438_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed438 = Named438 := by
  kernel_rfl
#print axioms Named438_eq
end InitECandidate.Proofs.BackendStages
